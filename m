Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F653A69BF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 17:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B1589BE8;
	Mon, 14 Jun 2021 15:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB1D89BD2;
 Mon, 14 Jun 2021 15:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=biSLEExcQyfs5JwUr18Y2Ol3Go5SqvudQQgUU8kebvg=; b=C++ekE86qC10KCUGyxDe18MZNR
 IRV/yNxtAdQSs34z818hbIKSsRPFqFPTcCK2/NtUSXypdMJspdTna/DbIw1+x192rYbZoMC0XLcw4
 B8NVdAEl1bQB/icn6h4veqZy4oaSJWnYWnoSCk4gHcN9ftqBFQgSMhDQ6kRMHstvyr3Qzo7KhaoOV
 ZtAyWHqFBAwCDH6qUsCVh6GydKp523EWSOc3+sjCTZ/FSPP6fkPxUTRI6oIiXwxpPU7F7dNF0hubd
 yl0T/NYwUxnJxcqlN1HeLEHnrX9tnA6QfjfeVP7/fFn9LQpZNksVmMsZpOyCaP6PFOfF8kp6bW6ky
 1IZy7a7w==;
Received: from [2001:4bb8:19b:fdce:4b1a:b4aa:22d8:1629] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsoD7-00EfkT-5a; Mon, 14 Jun 2021 15:09:09 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Mon, 14 Jun 2021 17:08:42 +0200
Message-Id: <20210614150846.4111871-7-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210614150846.4111871-1-hch@lst.de>
References: <20210614150846.4111871-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 06/10] vfio/mdev: Remove CONFIG_VFIO_MDEV_DEVICE
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
 kvm@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-doc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jason Gunthorpe <jgg@nvidia.com>

For some reason the vfio_mdev shim mdev_driver has its own module and
kconfig. As the next patch requires access to it from mdev.ko merge the
two modules together and remove VFIO_MDEV_DEVICE.

A later patch deletes this driver entirely.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 Documentation/s390/vfio-ap.rst   |  1 -
 arch/s390/Kconfig                |  2 +-
 drivers/gpu/drm/i915/Kconfig     |  2 +-
 drivers/vfio/mdev/Kconfig        |  7 -------
 drivers/vfio/mdev/Makefile       |  3 +--
 drivers/vfio/mdev/mdev_core.c    | 16 ++++++++++++++--
 drivers/vfio/mdev/mdev_private.h |  2 ++
 drivers/vfio/mdev/vfio_mdev.c    | 24 +-----------------------
 samples/Kconfig                  |  6 +++---
 9 files changed, 23 insertions(+), 40 deletions(-)

diff --git a/Documentation/s390/vfio-ap.rst b/Documentation/s390/vfio-ap.rst
index e15436599086..f57ae621f33e 100644
--- a/Documentation/s390/vfio-ap.rst
+++ b/Documentation/s390/vfio-ap.rst
@@ -514,7 +514,6 @@ These are the steps:
    * S390_AP_IOMMU
    * VFIO
    * VFIO_MDEV
-   * VFIO_MDEV_DEVICE
    * KVM
 
    If using make menuconfig select the following to build the vfio_ap module::
diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index b4c7c34069f8..ea63fd22e119 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -768,7 +768,7 @@ config VFIO_CCW
 config VFIO_AP
 	def_tristate n
 	prompt "VFIO support for AP devices"
-	depends on S390_AP_IOMMU && VFIO_MDEV_DEVICE && KVM
+	depends on S390_AP_IOMMU && VFIO_MDEV && KVM
 	depends on ZCRYPT
 	help
 		This driver grants access to Adjunct Processor (AP) devices
diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 1e1cb245fca7..53bc68631861 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -124,7 +124,7 @@ config DRM_I915_GVT_KVMGT
 	tristate "Enable KVM/VFIO support for Intel GVT-g"
 	depends on DRM_I915_GVT
 	depends on KVM
-	depends on VFIO_MDEV && VFIO_MDEV_DEVICE
+	depends on VFIO_MDEV
 	default n
 	help
 	  Choose this option if you want to enable KVMGT support for
diff --git a/drivers/vfio/mdev/Kconfig b/drivers/vfio/mdev/Kconfig
index 5da27f2100f9..763c877a1318 100644
--- a/drivers/vfio/mdev/Kconfig
+++ b/drivers/vfio/mdev/Kconfig
@@ -9,10 +9,3 @@ config VFIO_MDEV
 	  See Documentation/driver-api/vfio-mediated-device.rst for more details.
 
 	  If you don't know what do here, say N.
-
-config VFIO_MDEV_DEVICE
-	tristate "VFIO driver for Mediated devices"
-	depends on VFIO && VFIO_MDEV
-	default n
-	help
-	  VFIO based driver for Mediated devices.
diff --git a/drivers/vfio/mdev/Makefile b/drivers/vfio/mdev/Makefile
index 101516fdf375..ff9ecd802125 100644
--- a/drivers/vfio/mdev/Makefile
+++ b/drivers/vfio/mdev/Makefile
@@ -1,6 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-mdev-y := mdev_core.o mdev_sysfs.o mdev_driver.o
+mdev-y := mdev_core.o mdev_sysfs.o mdev_driver.o vfio_mdev.o
 
 obj-$(CONFIG_VFIO_MDEV) += mdev.o
-obj-$(CONFIG_VFIO_MDEV_DEVICE) += vfio_mdev.o
diff --git a/drivers/vfio/mdev/mdev_core.c b/drivers/vfio/mdev/mdev_core.c
index 2a85d6fcb7dd..ff8c1a845166 100644
--- a/drivers/vfio/mdev/mdev_core.c
+++ b/drivers/vfio/mdev/mdev_core.c
@@ -360,11 +360,24 @@ int mdev_device_remove(struct mdev_device *mdev)
 
 static int __init mdev_init(void)
 {
-	return mdev_bus_register();
+	int rc;
+
+	rc = mdev_bus_register();
+	if (rc)
+		return rc;
+	rc = mdev_register_driver(&vfio_mdev_driver);
+	if (rc)
+		goto err_bus;
+	return 0;
+err_bus:
+	mdev_bus_unregister();
+	return rc;
 }
 
 static void __exit mdev_exit(void)
 {
+	mdev_unregister_driver(&vfio_mdev_driver);
+
 	if (mdev_bus_compat_class)
 		class_compat_unregister(mdev_bus_compat_class);
 
@@ -378,4 +391,3 @@ MODULE_VERSION(DRIVER_VERSION);
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR(DRIVER_AUTHOR);
 MODULE_DESCRIPTION(DRIVER_DESC);
-MODULE_SOFTDEP("post: vfio_mdev");
diff --git a/drivers/vfio/mdev/mdev_private.h b/drivers/vfio/mdev/mdev_private.h
index 6999c89db7b1..afbad7b0a14a 100644
--- a/drivers/vfio/mdev/mdev_private.h
+++ b/drivers/vfio/mdev/mdev_private.h
@@ -37,6 +37,8 @@ struct mdev_type {
 #define to_mdev_type(_kobj)		\
 	container_of(_kobj, struct mdev_type, kobj)
 
+extern struct mdev_driver vfio_mdev_driver;
+
 int  parent_create_sysfs_files(struct mdev_parent *parent);
 void parent_remove_sysfs_files(struct mdev_parent *parent);
 
diff --git a/drivers/vfio/mdev/vfio_mdev.c b/drivers/vfio/mdev/vfio_mdev.c
index 922729071c5a..d5b4eede47c1 100644
--- a/drivers/vfio/mdev/vfio_mdev.c
+++ b/drivers/vfio/mdev/vfio_mdev.c
@@ -17,10 +17,6 @@
 
 #include "mdev_private.h"
 
-#define DRIVER_VERSION  "0.1"
-#define DRIVER_AUTHOR   "NVIDIA Corporation"
-#define DRIVER_DESC     "VFIO based driver for Mediated device"
-
 static int vfio_mdev_open(struct vfio_device *core_vdev)
 {
 	struct mdev_device *mdev = to_mdev_device(core_vdev->dev);
@@ -151,7 +147,7 @@ static void vfio_mdev_remove(struct mdev_device *mdev)
 	kfree(vdev);
 }
 
-static struct mdev_driver vfio_mdev_driver = {
+struct mdev_driver vfio_mdev_driver = {
 	.driver = {
 		.name = "vfio_mdev",
 		.owner = THIS_MODULE,
@@ -160,21 +156,3 @@ static struct mdev_driver vfio_mdev_driver = {
 	.probe	= vfio_mdev_probe,
 	.remove	= vfio_mdev_remove,
 };
-
-static int __init vfio_mdev_init(void)
-{
-	return mdev_register_driver(&vfio_mdev_driver);
-}
-
-static void __exit vfio_mdev_exit(void)
-{
-	mdev_unregister_driver(&vfio_mdev_driver);
-}
-
-module_init(vfio_mdev_init)
-module_exit(vfio_mdev_exit)
-
-MODULE_VERSION(DRIVER_VERSION);
-MODULE_LICENSE("GPL v2");
-MODULE_AUTHOR(DRIVER_AUTHOR);
-MODULE_DESCRIPTION(DRIVER_DESC);
diff --git a/samples/Kconfig b/samples/Kconfig
index b5a1a7aa7e23..b0503ef058d3 100644
--- a/samples/Kconfig
+++ b/samples/Kconfig
@@ -154,14 +154,14 @@ config SAMPLE_UHID
 
 config SAMPLE_VFIO_MDEV_MTTY
 	tristate "Build VFIO mtty example mediated device sample code -- loadable modules only"
-	depends on VFIO_MDEV_DEVICE && m
+	depends on VFIO_MDEV && m
 	help
 	  Build a virtual tty sample driver for use as a VFIO
 	  mediated device
 
 config SAMPLE_VFIO_MDEV_MDPY
 	tristate "Build VFIO mdpy example mediated device sample code -- loadable modules only"
-	depends on VFIO_MDEV_DEVICE && m
+	depends on VFIO_MDEV && m
 	help
 	  Build a virtual display sample driver for use as a VFIO
 	  mediated device.  It is a simple framebuffer and supports
@@ -178,7 +178,7 @@ config SAMPLE_VFIO_MDEV_MDPY_FB
 
 config SAMPLE_VFIO_MDEV_MBOCHS
 	tristate "Build VFIO mdpy example mediated device sample code -- loadable modules only"
-	depends on VFIO_MDEV_DEVICE && m
+	depends on VFIO_MDEV && m
 	select DMA_SHARED_BUFFER
 	help
 	  Build a virtual display sample driver for use as a VFIO
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
