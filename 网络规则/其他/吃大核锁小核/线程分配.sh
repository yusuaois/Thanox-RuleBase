function boost()
{
sleep 4
chmod -R 777 /dev/cpuset
pgrep -f $2 | while read pid; do
#echo $pid > /dev/cpuset/$1/tasks
echo $pid > /dev/cpuset/$1/cgroup.procs
done
}