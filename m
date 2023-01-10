Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CB2663C54
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 10:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABF110E56F;
	Tue, 10 Jan 2023 09:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 542F789622
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 09:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Ss9q/iqMqNOstrbvF4lK/i2u58Z0DHgqmVOGxEGUPsI=; b=fgXnureZyJQf/EnjrziAVkti/l
 g1bOH0htz3Tv9vnFnNv4S90usEq26dSYsfWbE2adrHT9VvLGBHmIDKap0khBwF7kgbdhJOftY2dkB
 IjoZhrH7/IefJPfv0V2SMDG64jGeutnOMRdDKNKDzA2XV8PWA2OUp6/HaIlD4f5wjN1WnurVLzQiV
 nJ8RWn2CVDrrpvJugIDvb8tSATKaN4tMuNEYHIS5gVTWFU1JtRZoegGNAEnnJFr+78RIlSn3eyhXK
 UDO/mvITCJ2s1k2e5lrxW6hQFKnzZSCBxJch1YLDt6fvCiyeoWDBhZ/GBaBL/5j7D+BVk0jvx8GHR
 SvZpOWog==;
Received: from [2001:4bb8:181:656b:cb3a:c552:3fcc:12a6] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pFAeC-0060c3-43; Tue, 10 Jan 2023 09:10:20 +0000
From: Christoph Hellwig <hch@lst.de>
To: Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Tue, 10 Jan 2023 10:10:08 +0100
Message-Id: <20230110091009.474427-4-hch@lst.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230110091009.474427-1-hch@lst.de>
References: <20230110091009.474427-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 3/4] vfio-mdev: move the mtty usage documentation
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Tony Krowiak <akrowiak@linux.ibm.com>, Jason Herne <jjherne@linux.ibm.com>,
 kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Halil Pasic <pasic@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the documentation on how to use mtty to samples/vfio-mdev/README.rst
as it is in no way related to the vfio API.  This matches how the bpf
and pktgen samples are documented.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 .../driver-api/vfio-mediated-device.rst       | 100 ------------------
 samples/vfio-mdev/README.rst                  | 100 ++++++++++++++++++
 2 files changed, 100 insertions(+), 100 deletions(-)
 create mode 100644 samples/vfio-mdev/README.rst

diff --git a/Documentation/driver-api/vfio-mediated-device.rst b/Documentation/driver-api/vfio-mediated-device.rst
index fdf7d69378ec4a..d4267243b4f525 100644
--- a/Documentation/driver-api/vfio-mediated-device.rst
+++ b/Documentation/driver-api/vfio-mediated-device.rst
@@ -270,106 +270,6 @@ these callbacks are supported in the TYPE1 IOMMU module. To enable them for
 other IOMMU backend modules, such as PPC64 sPAPR module, they need to provide
 these two callback functions.
 
-Using the Sample Code
-=====================
-
-mtty.c in samples/vfio-mdev/ directory is a sample driver program to
-demonstrate how to use the mediated device framework.
-
-The sample driver creates an mdev device that simulates a serial port over a PCI
-card.
-
-1. Build and load the mtty.ko module.
-
-   This step creates a dummy device, /sys/devices/virtual/mtty/mtty/
-
-   Files in this device directory in sysfs are similar to the following::
-
-     # tree /sys/devices/virtual/mtty/mtty/
-        /sys/devices/virtual/mtty/mtty/
-        |-- mdev_supported_types
-        |   |-- mtty-1
-        |   |   |-- available_instances
-        |   |   |-- create
-        |   |   |-- device_api
-        |   |   |-- devices
-        |   |   `-- name
-        |   `-- mtty-2
-        |       |-- available_instances
-        |       |-- create
-        |       |-- device_api
-        |       |-- devices
-        |       `-- name
-        |-- mtty_dev
-        |   `-- sample_mtty_dev
-        |-- power
-        |   |-- autosuspend_delay_ms
-        |   |-- control
-        |   |-- runtime_active_time
-        |   |-- runtime_status
-        |   `-- runtime_suspended_time
-        |-- subsystem -> ../../../../class/mtty
-        `-- uevent
-
-2. Create a mediated device by using the dummy device that you created in the
-   previous step::
-
-     # echo "83b8f4f2-509f-382f-3c1e-e6bfe0fa1001" >	\
-              /sys/devices/virtual/mtty/mtty/mdev_supported_types/mtty-2/create
-
-3. Add parameters to qemu-kvm::
-
-     -device vfio-pci,\
-      sysfsdev=/sys/bus/mdev/devices/83b8f4f2-509f-382f-3c1e-e6bfe0fa1001
-
-4. Boot the VM.
-
-   In the Linux guest VM, with no hardware on the host, the device appears
-   as  follows::
-
-     # lspci -s 00:05.0 -xxvv
-     00:05.0 Serial controller: Device 4348:3253 (rev 10) (prog-if 02 [16550])
-             Subsystem: Device 4348:3253
-             Physical Slot: 5
-             Control: I/O+ Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr-
-     Stepping- SERR- FastB2B- DisINTx-
-             Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
-     <TAbort- <MAbort- >SERR- <PERR- INTx-
-             Interrupt: pin A routed to IRQ 10
-             Region 0: I/O ports at c150 [size=8]
-             Region 1: I/O ports at c158 [size=8]
-             Kernel driver in use: serial
-     00: 48 43 53 32 01 00 00 02 10 02 00 07 00 00 00 00
-     10: 51 c1 00 00 59 c1 00 00 00 00 00 00 00 00 00 00
-     20: 00 00 00 00 00 00 00 00 00 00 00 00 48 43 53 32
-     30: 00 00 00 00 00 00 00 00 00 00 00 00 0a 01 00 00
-
-     In the Linux guest VM, dmesg output for the device is as follows:
-
-     serial 0000:00:05.0: PCI INT A -> Link[LNKA] -> GSI 10 (level, high) -> IRQ 10
-     0000:00:05.0: ttyS1 at I/O 0xc150 (irq = 10) is a 16550A
-     0000:00:05.0: ttyS2 at I/O 0xc158 (irq = 10) is a 16550A
-
-
-5. In the Linux guest VM, check the serial ports::
-
-     # setserial -g /dev/ttyS*
-     /dev/ttyS0, UART: 16550A, Port: 0x03f8, IRQ: 4
-     /dev/ttyS1, UART: 16550A, Port: 0xc150, IRQ: 10
-     /dev/ttyS2, UART: 16550A, Port: 0xc158, IRQ: 10
-
-6. Using minicom or any terminal emulation program, open port /dev/ttyS1 or
-   /dev/ttyS2 with hardware flow control disabled.
-
-7. Type data on the minicom terminal or send data to the terminal emulation
-   program and read the data.
-
-   Data is loop backed from hosts mtty driver.
-
-8. Destroy the mediated device that you created::
-
-     # echo 1 > /sys/bus/mdev/devices/83b8f4f2-509f-382f-3c1e-e6bfe0fa1001/remove
-
 References
 ==========
 
diff --git a/samples/vfio-mdev/README.rst b/samples/vfio-mdev/README.rst
new file mode 100644
index 00000000000000..b52eb37739c039
--- /dev/null
+++ b/samples/vfio-mdev/README.rst
@@ -0,0 +1,100 @@
+Using the mtty vfio-mdev sample code
+====================================
+
+mtty is a sample vfio-mdev driver that demonstrates how to use the mediated
+device framework.
+
+The sample driver creates an mdev device that simulates a serial port over a PCI
+card.
+
+1. Build and load the mtty.ko module.
+
+   This step creates a dummy device, /sys/devices/virtual/mtty/mtty/
+
+   Files in this device directory in sysfs are similar to the following::
+
+     # tree /sys/devices/virtual/mtty/mtty/
+        /sys/devices/virtual/mtty/mtty/
+        |-- mdev_supported_types
+        |   |-- mtty-1
+        |   |   |-- available_instances
+        |   |   |-- create
+        |   |   |-- device_api
+        |   |   |-- devices
+        |   |   `-- name
+        |   `-- mtty-2
+        |       |-- available_instances
+        |       |-- create
+        |       |-- device_api
+        |       |-- devices
+        |       `-- name
+        |-- mtty_dev
+        |   `-- sample_mtty_dev
+        |-- power
+        |   |-- autosuspend_delay_ms
+        |   |-- control
+        |   |-- runtime_active_time
+        |   |-- runtime_status
+        |   `-- runtime_suspended_time
+        |-- subsystem -> ../../../../class/mtty
+        `-- uevent
+
+2. Create a mediated device by using the dummy device that you created in the
+   previous step::
+
+     # echo "83b8f4f2-509f-382f-3c1e-e6bfe0fa1001" >	\
+              /sys/devices/virtual/mtty/mtty/mdev_supported_types/mtty-2/create
+
+3. Add parameters to qemu-kvm::
+
+     -device vfio-pci,\
+      sysfsdev=/sys/bus/mdev/devices/83b8f4f2-509f-382f-3c1e-e6bfe0fa1001
+
+4. Boot the VM.
+
+   In the Linux guest VM, with no hardware on the host, the device appears
+   as  follows::
+
+     # lspci -s 00:05.0 -xxvv
+     00:05.0 Serial controller: Device 4348:3253 (rev 10) (prog-if 02 [16550])
+             Subsystem: Device 4348:3253
+             Physical Slot: 5
+             Control: I/O+ Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr-
+     Stepping- SERR- FastB2B- DisINTx-
+             Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
+     <TAbort- <MAbort- >SERR- <PERR- INTx-
+             Interrupt: pin A routed to IRQ 10
+             Region 0: I/O ports at c150 [size=8]
+             Region 1: I/O ports at c158 [size=8]
+             Kernel driver in use: serial
+     00: 48 43 53 32 01 00 00 02 10 02 00 07 00 00 00 00
+     10: 51 c1 00 00 59 c1 00 00 00 00 00 00 00 00 00 00
+     20: 00 00 00 00 00 00 00 00 00 00 00 00 48 43 53 32
+     30: 00 00 00 00 00 00 00 00 00 00 00 00 0a 01 00 00
+
+     In the Linux guest VM, dmesg output for the device is as follows:
+
+     serial 0000:00:05.0: PCI INT A -> Link[LNKA] -> GSI 10 (level, high) -> IRQ 10
+     0000:00:05.0: ttyS1 at I/O 0xc150 (irq = 10) is a 16550A
+     0000:00:05.0: ttyS2 at I/O 0xc158 (irq = 10) is a 16550A
+
+
+5. In the Linux guest VM, check the serial ports::
+
+     # setserial -g /dev/ttyS*
+     /dev/ttyS0, UART: 16550A, Port: 0x03f8, IRQ: 4
+     /dev/ttyS1, UART: 16550A, Port: 0xc150, IRQ: 10
+     /dev/ttyS2, UART: 16550A, Port: 0xc158, IRQ: 10
+
+6. Using minicom or any terminal emulation program, open port /dev/ttyS1 or
+   /dev/ttyS2 with hardware flow control disabled.
+
+7. Type data on the minicom terminal or send data to the terminal emulation
+   program and read the data.
+
+   Data is loop backed from hosts mtty driver.
+
+8. Destroy the mediated device that you created::
+
+     # echo 1 > /sys/bus/mdev/devices/83b8f4f2-509f-382f-3c1e-e6bfe0fa1001/remove
+
-- 
2.35.1

