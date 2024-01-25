import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile
from std_msgs.msg import Int32


class mode_select(Node):

    def __init__(self):
        super().__init__('mode_select_node')
        qos_profile = QoSProfile(depth=10)
        self.mode_select_node = self.create_publisher(Int32, 'GPIO_set', qos_profile)
        self.timer = self.create_timer(0.5, self.publish_GPIO_control_msg)
        self.count = 0

    def publish_GPIO_control_msg(self):
        msg = Int32()
        msg.data = self.count
        self.mode_select_node.publish(msg)
        self.get_logger().info('Published message: {0}'.format(msg.data))
        self.count += 1


def main(args=None):
    rclpy.init(args=args)
    node = mode_select()
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        node.get_logger().info('Keyboard Interrupt (SIGINT)')
    finally:
        node.destroy_node()
        rclpy.shutdown()


if __name__ == '__main__':
    main()