Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 990E84BF763
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 12:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF24B10E8AA;
	Tue, 22 Feb 2022 11:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D253010E89A;
 Tue, 22 Feb 2022 11:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645530088; x=1677066088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X3R+PBtl0Yegbpkmh/4yY7FvCBy0MB2PUjrrtFoD+so=;
 b=cxjvqUvA8TvjMKirlldERawph1f7bGayRylYYVu/8jNPHjxkTslakUIZ
 rOkP4gOl1YYmLh/HrjoxDunMNNBB8ZmsGLiYElXmObuiWcQRfTCX2cAQ5
 +lURPNFc5yk7y/zoQkL2gUBCw812kouEyeR8au3Aw2EbD5STk+pISrxDT
 1Gyl0lG8/x/+wANxi5evTvyeBTSbuC0QisqWFiSVt4X93iZ8jP7hwzsjg
 +h/mydaSnVHsUaziUlEoeB+rP6AsWAhIDGfLmH1IUkJkofkSE8odaE0O4
 R25am+fE/QG2Rw/JyawVftcTU14AH81yxyG51EP1SrBGj+Tk3+5CBUPf+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="312412387"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="312412387"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 03:41:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547708643"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.20.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 03:41:27 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 22 Feb 2022 12:41:05 +0100
Message-Id: <20220222114106.75641-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220222114106.75641-1-janusz.krzysztofik@linux.intel.com>
References: <20220222114106.75641-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] lib/igt_device: Add support for
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

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
---
 lib/igt_device.c | 34 ++++++++++++++++++++++++++++------
 lib/igt_device.h |  1 +
 2 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/lib/igt_device.c b/lib/igt_device.c
index c50bf4a1f7..1603bf351c 100644
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
@@ -183,12 +193,24 @@ static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
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
@@ -231,7 +253,7 @@ struct pci_device *igt_device_get_pci_device(int fd)
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

