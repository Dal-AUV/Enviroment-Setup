import os

script_path = "./ros_dependencies.sh"
exit_status = os.system(f"sh {script_path}")

if exit_status != 0:
    print(f"Error executing {script_path}. Exit status: {exit_status}")
