Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A934BBC01
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 16:21:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9976510F0FE;
	Fri, 18 Feb 2022 15:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C24E10F0F9;
 Fri, 18 Feb 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645197685; x=1676733685;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h8CE2sNRxd9S/eKy5cfE55dk7mu7ikuyhi2rMHU+OkM=;
 b=Y8ZOqbNfPphfoHo8xUgm6Yk9hkQOkFgRmPjOOvVd2+QXYP6a182l66yM
 +EFfaQ2SeEhTFjahKcqy45R8Dol+7U4WkWcbxwmeA0GCSBFunrSSd/sDV
 ZRM5a8EsoVX3kcje0qp4fcDG4ZJN8C7cYbLlDUIF8RNO0YBf/6UkJ9cGV
 lBqVSbPo4hriBePwutyulLwu7P2JSr5U8z3X+6DSpKDaPWNfa3akxx3c/
 nO/rlxhOJrOxorsBqh7IvzSElf+RvEQkJ5TSEegOdz+L+27A+l3RzGBeA
 1w+WGqTR7wdkg/kVHQ+iH6OGYJzRPpu/KSm5++N0LMT8bVTKeB7pirirC Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="337588481"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="337588481"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 07:21:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="546316900"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.21.24])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 07:21:22 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 18 Feb 2022 16:19:35 +0100
Message-Id: <20220218151935.31688-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] lib/igt_device: Add support for accessing
 unbound VF PCI devices
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The library provides igt_device_get_pci_device() function that allows to
get access to a PCI device from an open DRM device file descriptor.  It
can be used on VF devices as long as a DRM driver is bound to them.
However, SR-IOV tests may want to exercise VF PCI devices created by a PF
without binding any DRM driver to them.

While keeping the API of igt_device_get_pci_device() untouched, extend API
of its underlying helper __igt_device_get_pci_device() with an extra
argument for specifying VF ID of the requested PCI device and expose this
function as public.

While being at it, fix pci_system_cleanup() not called on errors and
instruct users to call it for symmetry when the obtained struct pci_device
is no longer needed.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device.c | 44 ++++++++++++++++++++++++++++++++++++--------
 lib/igt_device.h |  1 +
 2 files changed, 37 insertions(+), 8 deletions(-)

diff --git a/lib/igt_device.c b/lib/igt_device.c
index 07bb0a0d41..56f66afc6f 100644
--- a/lib/igt_device.c
+++ b/lib/igt_device.c
@@ -149,9 +149,9 @@ struct igt_pci_addr {
 	unsigned int function;
 };
 
-static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
+static int igt_device_get_pci_addr(int fd, unsigned int vf_id, struct igt_pci_addr *pci)
 {
-	char path[IGT_DEV_PATH_LEN];
+	char link[20], path[IGT_DEV_PATH_LEN];
 	char *buf;
 	int sysfs;
 	int len;
@@ -159,11 +159,21 @@ static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
 	if (!igt_device_is_pci(fd))
 		return -ENODEV;
 
+	if (vf_id)
+		len = snprintf(link, sizeof(link), "device/virtfn%u", vf_id - 1);
+	else
+		len = snprintf(link, sizeof(link), "device");
+	if (igt_warn_on_f(len > sizeof(link) || link[len -1],
+	    "IGT bug: insufficient buffer space for rendering PCI device link name\n"))
+		return -ENOSPC;
+	else if (igt_debug_on_f(len < 0, "unexpected failure from snprintf()\n"))
+		return len;
+
 	sysfs = igt_sysfs_open(fd);
 	if (sysfs == -1)
 		return -ENOENT;
 
-	len = readlinkat(sysfs, "device", path, sizeof(path) - 1);
+	len = readlinkat(sysfs, link, path, sizeof(path) - 1);
 	close(sysfs);
 	if (len == -1)
 		return -ENOENT;
@@ -183,12 +193,25 @@ static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
 	return 0;
 }
 
-static struct pci_device *__igt_device_get_pci_device(int fd)
+/**
+ * __igt_device_get_pci_device:
+ *
+ * @fd: DRM device file descriptor
+ * @vf_id: virtual function number (0 if native or PF)
+ *
+ * Looks up the graphics pci device using libpciaccess.
+ * Since pci_system_init() is called, users are expected to call pci_sytem_clenup() after use
+ * unless an error occurs and NULL is returned.
+ *
+ * Returns:
+ * The pci_device, NULL on any failures.
+ */
+struct pci_device *__igt_device_get_pci_device(int fd, unsigned int vf_id)
 {
 	struct igt_pci_addr pci_addr;
 	struct pci_device *pci_dev;
 
-	if (igt_device_get_pci_addr(fd, &pci_addr)) {
+	if (igt_device_get_pci_addr(fd, vf_id, &pci_addr)) {
 		igt_warn("Unable to find device PCI address\n");
 		return NULL;
 	}
@@ -206,15 +229,19 @@ static struct pci_device *__igt_device_get_pci_device(int fd)
 		igt_warn("Couldn't find PCI device %04x:%02x:%02x:%02x\n",
 			 pci_addr.domain, pci_addr.bus,
 			 pci_addr.device, pci_addr.function);
-		return NULL;
+		goto cleanup;
 	}
 
 	if (pci_device_probe(pci_dev)) {
 		igt_warn("Couldn't probe PCI device\n");
-		return NULL;
+		goto cleanup;
 	}
 
 	return pci_dev;
+
+cleanup:
+	pci_system_cleanup();
+	return NULL;
 }
 
 /**
@@ -223,6 +250,7 @@ static struct pci_device *__igt_device_get_pci_device(int fd)
  * @fd: the device
  *
  * Looks up the main graphics pci device using libpciaccess.
+ * Since pci_system_init() is called, users are expected to call pci_sytem_clenup() after use.
  *
  * Returns:
  * The pci_device, skips the test on any failures.
@@ -231,7 +259,7 @@ struct pci_device *igt_device_get_pci_device(int fd)
 {
 	struct pci_device *pci_dev;
 
-	pci_dev = __igt_device_get_pci_device(fd);
+	pci_dev = __igt_device_get_pci_device(fd, 0);
 	igt_require(pci_dev);
 
 	return pci_dev;
diff --git a/lib/igt_device.h b/lib/igt_device.h
index 278ba7a9b3..1aaa840e25 100644
--- a/lib/igt_device.h
+++ b/lib/igt_device.h
@@ -33,5 +33,6 @@ void igt_device_drop_master(int fd);
 
 int igt_device_get_card_index(int fd);
 struct pci_device *igt_device_get_pci_device(int fd);
+struct pci_device *__igt_device_get_pci_device(int fd, unsigned int vf_id);
 
 #endif /* __IGT_DEVICE_H__ */
-- 
2.25.1

