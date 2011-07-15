# lv5219lg LMU configuration
dev=/sys/class/leds/lv5219lg:mled
echo 1 > $dev/als_enable
echo 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 > $dev/als_config
echo 1 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 > $dev/als_config
echo 2 7 7 7 7 7 7 7 7 7 15 15 15 15 15 15 15 > $dev/als_config
echo 3 7 7 11 11 11 15 15 15 15 19 19 19 19 23 23 23 > $dev/als_config
echo 4 11 11 11 15 15 19 19 19 19 23 23 23 23 27 27 31 > $dev/als_config
echo 5 11 11 15 15 15 19 23 23 23 31 31 35 35 43 43 51 > $dev/als_config
echo 6 11 15 15 15 19 19 23 23 23 31 45 45 51 51 67 67 > $dev/als_config
echo 7 15 19 19 19 23 23 31 31 43 43 51 51 67 67 83 83 > $dev/als_config
echo 8 19 19 23 23 31 31 43 43 51 51 67 67 83 83 95 103 > $dev/als_config
echo 9 27 35 35 43 43 51 51 59 59 67 75 75 91 91 99 103 > $dev/als_config
echo 10 43 43 51 51 59 59 67 67 75 75 83 83 95 95 103 107 > $dev/als_config
echo 11 55 59 59 67 67 75 75 83 83 91 91 99 99 103 103 111 > $dev/als_config
echo 12 67 67 75 75 83 83 91 91 95 95 99 103 103 107 107 115 > $dev/als_config
echo 13 79 83 83 87 87 95 95 99 99 103 103 107 107 111 111 115 > $dev/als_config
echo 14 99 99 107 107 107 107 111 111 111 111 115 115 115 115 119 119 > $dev/als_config
echo 15 115 115 115 115 115 115 115 115 115 123 123 123 123 123 123 123 > $dev/als_config
echo 16 123 123 123 123 123 123 123 123 123 123 123 123 123 123 123 123 > $dev/als_config


#freeXperia cpufreqence fix
echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 90 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
echo 30 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/down_differential
echo 500000 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate

# modules
insmod /system/lib/modules/dm-mod.ko
insmod /system/lib/modules/dm-crypt.ko
insmod /system/lib/modules/x10uv.ko
insmod /system/lib/modules/twofish_common.ko
insmod /system/lib/modules/twofish.ko

#freeXperia Fixes
chmod 777 /dev/oncrpc
chmod 777 /dev/oncrpc/*
chmod 777 /dev/pmem_adsp
chmod 777 /dev/pmem_smipool
chmod 777 /dev/pmem_venc
chmod 777 /dev/msm_*
chmod 777 /dev/vdec
chmod 777 /dev/q6venc
chmod 777 /dev/cpu_*
chmod 777 /dev/msm_camera/control0
chmod 777 /dev/graphics/fb0

#freeXperia Tweaks 
echo 60 > /proc/sys/vm/dirty_ratio;
echo 50 > /proc/sys/vm/vfs_cache_pressure;
echo 20480 > /proc/sys/vm/min_free_kbytes;
echo 1 > /proc/sys/vm/oom_kill_allocating_task;
echo 40 > /proc/sys/vm/dirty_background_ratio;
sync ; echo 3 > /proc/sys/vm/drop_caches
echo 8 > /proc/sys/vm/page-cluster;
echo 5 > /proc/sys/vm/laptop_mode;
echo 0 > /proc/sys/vm/dirty_expire_centisecs;
echo 6000 > /proc/sys/vm/dirty_writeback_centisecs;
echo 1536,2048,4096,15360,17920,20480 > /sys/module/lowmemorykiller/parameters/minfree
echo 24188 > /proc/sys/kernel/sched_features
echo 1200000 > /proc/sys/kernel/sched_latency_ns
echo 800000 > /proc/sys/kernel/sched_min_granularity_ns
echo 60000 > /proc/sys/kernel/sched_wakeup_granularity_ns

'#!/system/bin/sh
if [ -e /sys/devices/virtual/bdi/179:0/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/179:0/read_ahead_kb;

if [ -e /sys/devices/virtual/bdi/254:0/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/254:0/read_ahead_kb; 

if [ -e /sys/devices/virtual/bdi/254:1/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/254:1/read_ahead_kb;

if [ -e /sys/devices/virtual/bdi/254:2/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/254:2/read_ahead_kb;

if [ -e /sys/devices/virtual/bdi/31:0/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/31:0/read_ahead_kb;

if [ -e /sys/devices/virtual/bdi/7:0/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/7:0/read_ahead_kb;

if [ -e /sys/devices/virtual/bdi/7:1/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/7:1/read_ahead_kb;

if [ -e /sys/devices/virtual/bdi/7:2/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/7:2/read_ahead_kb;

if [ -e /sys/devices/virtual/bdi/7:3/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/7:3/read_ahead_kb; 

if [ -e /sys/devices/virtual/bdi/7:4/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/7:4/read_ahead_kb; 

if [ -e /sys/devices/virtual/bdi/7:5/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/7:5/read_ahead_kb; 

if [ -e /sys/devices/virtual/bdi/7:6/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/7:6/read_ahead_kb; 

if [ -e /sys/devices/virtual/bdi/7:7/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/7:7/read_ahead_kb; 

if [ -e /sys/devices/virtual/bdi/default/read_ahead_kb ]
  then
    /system/xbin/echo "2048" > /sys/devices/virtual/bdi/default/read_ahead_kb; 
fi;


mount -t debugfs none /sys/kernel/debug
echo NO_NEW_FAIR_SLEEPERS > /sys/kernel/debug/sched_features
cat /sys/kernel/debug/sched_features
umount /sys/kernel/debug

#!/system/bin/sh
insmod /system/lib/modules/overclock.ko
#echo 0xc05a8dcc > /proc/overclock/mpu_opps_addr
echo 0xc05c96d4 > /proc/overclock/mpu_opps_addr                     
#echo 0xc0048a00 > /proc/overclock/omap2_clk_init_cpufreq_table_addr
echo 0xc004963c > /proc/overclock/omap2_clk_init_cpufreq_table_addr 
#echo 0xc059b258 > /proc/overclock/cpufreq_stats_table_addr 
echo 0xc05bc810 > /proc/overclock/cpufreq_stats_table_addr  
#echo 0xc02d1104 > /proc/overclock/cpufreq_stats_update_addr
echo 0xc02ea454 > /proc/overclock/cpufreq_stats_update_addr 
echo 62 > /proc/overclock/max_vsel
echo 1100000 > /proc/overclock/max_rate
echo 1 300000000 22 > /proc/overclock/mpu_opps
echo 2 600000000 33 > /proc/overclock/mpu_opps
echo 3 900000000 48 > /proc/overclock/mpu_opps
echo 4 1100000000 63 > /proc/overclock/mpu_opps
echo 0 1100000 > /proc/overclock/freq_table
echo 1 900000 > /proc/overclock/freq_table
echo 2 600000 > /proc/overclock/freq_table
echo 3 300000 > /proc/overclock/freq_table


# I/O Scheduler Tweaks

mount -o remount,noatime / -t rootfs
mount -o remount,noatime /dev -t devpts
mount -o remount,noatime /proc -t proc
mount -o remount,noatime /sys -t sysfs
mount -o remount,noatime /mnt/asec -t tmpfs
mount -o remount,noatime /system -t yaffs2
mount -o remount,noatime /data -t yaffs2
mount -o remount,noatime /cache -t yaffs2
mount -o remount,noatime /mnt/sdcard -t vfat
mount -o remount,noatime /mnt/secure/asec -t vfat
mount -o remount,noatime /mnt/sdcard/.android_secure -t tmpfs

i=`ls -d /sys/block/mtdblock3/queue/scheduler`;
MMC=`ls -d /sys/block/mmc*`;
DM=`ls -d /sys/block/dm*`;
MTD=`ls -d /sys/block/mtd*`;
LOOP=`ls -d /sys/block/loop*`;
RAM=`ls -d /sys/block/ram*`;
IO_SCHEDULER=`echo noop > /sys/block/mtdblock3/queue/scheduler/queue/rotational`;

for i in `busybox ls -1 /sys/block/mtdblock*`
do
	echo "noop" > $i/queue/scheduler;
done

echo "noop" > /sys/block/mmcblk0/queue/scheduler;
echo "noop" > /sys/block/dm-0/queue/scheduler;
echo "noop" > /sys/block/dm-1/queue/scheduler;

for i in $MMC $MTD $LOOP;
do
echo 0 > $i/queue/rotational; 
done;

for i in $MMC $MTD;
do
echo noop > $i/queue/scheduler;
done;

for i in $MMC;
do
echo 2048 > $i/queue/read_ahead_kb;
echo 0 > $i/queue/rotational; 
echo 16 > $i/queue/iosched/quantum;
echo 2048 > $i/queue/nr_requests;
echo 16384 > $i/queue/iosched/back_seek_max;
done;
	case $IO_SCHEDULER in
	"noop")
		echo 1 > $i/queue/iosched/back_seek_penalty;
		echo 0 > $i/queue/iosched/slice_idle;;
	esac;
done;
	
# Phone Lag Tweaks

MAX_PHONE() 
{
pidphone=`pidof com.android.phone`;
if [ $pidphone ];
then
	echo -17 > /proc/$pidphone/oom_adj;
	renice -20 $pidphone;
	exit;
else
	sleep 5;
	MAX_PHONE;
fi;
}

(while [ 1 ];
do
	sleep 10;
	MAX_PHONE;
done &);


for j in $DM $MTD $LOOP $RAM;
do
	echo 0 > $j/queue/rotational;
done


sleep 60
if [ ! -e /data/data/com.android.providers.telephony/databases/telephony.db ]; then
    killall servicemanager
fi