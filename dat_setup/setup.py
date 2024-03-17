import os

script_path = "./ros_dependencies.sh"
os.system(f"chmod +x {script_path}")
exit_status = os.system(f"sh {script_path}")

if exit_status != 0:
    print(f"Error executing {script_path}. Exit status: {exit_status}")
