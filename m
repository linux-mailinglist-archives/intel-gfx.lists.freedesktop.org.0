Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EBE4BFC05
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 16:11:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9245A10EA6D;
	Tue, 22 Feb 2022 15:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E647E10EA6D;
 Tue, 22 Feb 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645542688; x=1677078688;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1Rc3tkCzwj+YfO1vaqNZBv7Dt+o0XKyWzuYcH5ibv3Y=;
 b=MSu9tkT6t3yuaWkGlDvJj5MERx6k7M2j5aU+6zwoEjpCthBe/0Ii7lWN
 m/I4hC7uPEqLVP/Vb/FodI5EP8iEnWxSoI3bOHXVDssAK96Y5Q0+EcMtl
 WbO50Y4Ttwgfm98KIHJ31/m2aPAiVgJ3LkFG5ahGigPnEzCNdSEPtqdNE
 DAUkPkv+XcQ6lxhJWnoSPvZ8BrlqyawQIoIN/2L0q9RURto0pagzV1Vx3
 d7RRASdaxOfe5TzqqNtZV+hM9eliRJdqmYvK6iS2wgt+Bzz7bE/g2YIzV
 wuv6qT0t0rLZvXY6ST6QHUjwEZcbty/pq12YgnKUhseQmwDZ3vJELGVqC A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="239117626"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="239117626"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 07:11:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="683548099"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.20.194])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 07:11:20 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 22 Feb 2022 16:11:00 +0100
Message-Id: <20220222151100.83283-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3] lib/igt_device: Add support for
 accessing unbound VF PCI devices
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
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

v2: refresh on top of IGT libpciaccess wrappers and drop previously added
    but no longer needed error unwind path and recommendations for users
    on calling pci_system_cleanup() after use (Chris),
  - fix incorrect validation of snprintf() result and misaligned
    formatting of igt_warn_on_f() arguments.
v3: follow VF numbering convention of Linux PCI ABI (Chris),
  - fix and improve DOC.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Chris Wilson <chris.p.wilson@intel.com> # v2
---
 lib/igt_device.c | 33 +++++++++++++++++++++++++++------
 lib/igt_device.h |  1 +
 2 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/lib/igt_device.c b/lib/igt_device.c
index c50bf4a1f7..46b7dbc490 100644
--- a/lib/igt_device.c
+++ b/lib/igt_device.c
@@ -149,9 +149,9 @@ struct igt_pci_addr {
 	unsigned int function;
 };
 
-static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
+static int igt_device_get_pci_addr(int fd, int vf_id, struct igt_pci_addr *pci)
 {
-	char path[IGT_DEV_PATH_LEN];
+	char link[20], path[IGT_DEV_PATH_LEN];
 	char *buf;
 	int sysfs;
 	int len;
@@ -159,11 +159,21 @@ static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
 	if (!igt_device_is_pci(fd))
 		return -ENODEV;
 
+	if (vf_id < 0)
+		len = snprintf(link, sizeof(link), "device");
+	else
+		len = snprintf(link, sizeof(link), "device/virtfn%u", vf_id);
+	if (igt_warn_on_f(len >= sizeof(link),
+			  "IGT bug: insufficient buffer space for rendering PCI device link name\n"))
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
@@ -183,12 +193,23 @@ static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
 	return 0;
 }
 
-static struct pci_device *__igt_device_get_pci_device(int fd)
+/**
+ * __igt_device_get_pci_device:
+ *
+ * @fd: DRM device file descriptor
+ * @vf_id: PCI virtual function number or -1 if native or PF itself
+ *
+ * Looks up a PCI interface of a DRM device or a VF PCI device of the DRM PF using libpciaccess.
+ *
+ * Returns:
+ * The pci_device, NULL on any failures.
+ */
+struct pci_device *__igt_device_get_pci_device(int fd, int vf_id)
 {
 	struct igt_pci_addr pci_addr;
 	struct pci_device *pci_dev;
 
-	if (igt_device_get_pci_addr(fd, &pci_addr)) {
+	if (igt_device_get_pci_addr(fd, vf_id, &pci_addr)) {
 		igt_warn("Unable to find device PCI address\n");
 		return NULL;
 	}
@@ -231,7 +252,7 @@ struct pci_device *igt_device_get_pci_device(int fd)
 {
 	struct pci_device *pci_dev;
 
-	pci_dev = __igt_device_get_pci_device(fd);
+	pci_dev = __igt_device_get_pci_device(fd, -1);
 	igt_require(pci_dev);
 
 	return pci_dev;
diff --git a/lib/igt_device.h b/lib/igt_device.h
index 278ba7a9b3..00da853e71 100644
--- a/lib/igt_device.h
+++ b/lib/igt_device.h
@@ -33,5 +33,6 @@ void igt_device_drop_master(int fd);
 
 int igt_device_get_card_index(int fd);
 struct pci_device *igt_device_get_pci_device(int fd);
+struct pci_device *__igt_device_get_pci_device(int fd, int vf_id);
 
 #endif /* __IGT_DEVICE_H__ */
-- 
2.25.1

