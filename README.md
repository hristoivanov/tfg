# tfg
Trabajo fin de grado

TODO
	Software. Reescribir System Services.
	Software. Usar Adafruit para configurar los puertos series.
	Appendix. System Services. RestartSec=5 ?????????
	Appendix. uSD. uEnv.

uSD
	ssh root@192.168.7.2
	insert uSD into slot
	fdisk -l
			/// eMMC
		  	Device Boot      Start         End      Blocks   Id  System
		/dev/mmcblk0p1            2048      198655       98304    e  W95 FAT16 (LBA)
		/dev/mmcblk0p2          198656     3751935     7662592   83  Linux

			/// uSD
		  	Device Boot      Start         End      Blocks   Id  System
		/dev/mmcblk0p1          198656     15523839    7662592    b  W95 FAT32 

	fdisk /dev/mmcblk1
		delete current partition
		make 2 partions
		
			/// uSD looks Like this....
		        Device Boot      Start         End      Blocks   Id  System
		/dev/mmcblk1p1            2048      198655       98304    e  W95 FAT16 (LBA)
		/dev/mmcblk1p2          198656    15523839     7662592   83  Linux


	mkfs -t vfat /dev//mmcblk1p1
  	mkfs -t ext3 /dev//mmcblk1p2

	mkdir trash
	mount /dev/mmcblk1p1 trash
	cd trash
	vim uEnv.txt // Copy from GitHub.

	mkdir /server
	vim /etc/fstab
		/dev/mmcblk0p2       /server   auto       defaults          0  0

	reboot

	fdisk -l
		/// uSD	
		Device Boot      Start         End      Blocks   Id  System
	/dev/mmcblk0p1            2048      198655       98304    e  W95 FAT16 (LBA)
	/dev/mmcblk0p2          198656    15523839     7662592   83  Linux

		/// eMMC 
        	Device Boot      Start         End      Blocks   Id  System
	/dev/mmcblk1p1   *        2048      198655       98304    e  W95 FAT16 (LBA)
	/dev/mmcblk1p2          198656     3751935     1776640   83  Linu
	
