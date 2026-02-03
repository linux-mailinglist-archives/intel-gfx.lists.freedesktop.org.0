Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKxpKGzJgWl1JwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 11:09:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5269AD7554
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 11:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0DCE10E5DF;
	Tue,  3 Feb 2026 10:09:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eN9huFBF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98EE10E5D0;
 Tue,  3 Feb 2026 10:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770113385; x=1801649385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jVekW22HnYKs8fgW+xfJ9OxxYY8wGs8+/bNUbkFK344=;
 b=eN9huFBF348Fo0a1rODfr6YzPeGAsN5NA1Mfbf7WqGac+a8U44rroPmL
 b50d2CEt+IHWkbM+nUY8ZvYKommHH2ocSUYKJjyMqAIi7zkjHv0xhAmMF
 62TfKkhaFz7ck84w3KLn8QUKz0naR7AJ6DPCH3C+bJHcPIVwvbHqx5tyz
 V0sWHD/AKLl5Yw2n+TAgUJ5k0Qqak6ZF+h7jhm4IIdOlhvPlhzv4qxn1g
 dFrY4b7jbbmu498g8o7gj4R6CSqu607Uo0toAjIZDOY2G5In8ySY4LODV
 t34qzEVIvj0vRJLnuTwKJ0uj6CntTYNmKN8vhQCCMOg3Hd+wNtLKC1KiM Q==;
X-CSE-ConnectionGUID: 8/AFn6DTT2aIxJgeaolBAA==
X-CSE-MsgGUID: vYpfSkqjRtOBOwI/zsCj+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="88702717"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="88702717"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 02:09:45 -0800
X-CSE-ConnectionGUID: Tck6vx67QH+dHxvijzEQdA==
X-CSE-MsgGUID: pGhAC1DcT1ypw88L7GbQdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="240476177"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.210])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 02:09:43 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v4 3/6] lib/igt_device_scan: Include PCIe bridge
 upstream port if available
Date: Tue,  3 Feb 2026 11:05:05 +0100
Message-ID: <20260203100920.420551-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260203100920.420551-8-janusz.krzysztofik@linux.intel.com>
References: <20260203100920.420551-8-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,meson.build:url]
X-Rspamd-Queue-Id: 5269AD7554
X-Rspamd-Action: no action

Users of Intel discrete graphics adapters are confused with fake
information on PCIe link bandwidth (speed and size) of their GPU devices
reported by sysfs and userspace tools, including our lsgpu utility.  In
order for the lsgpu to show correct link bandwidth information, we need to
identify an upstream port of a PCIe bridge that sits on the GPU card and
get that information from that port.

Since the tool uses our udev based igt_device_scan library for identifying
GPU devices and printing their properties and attributes, modifications
that we need apply to that library.

When scanning for DRM devices and their PCI parents, the lsgpu utility
requests collection of all their attributes.  When running in this mode,
also try to collect information about upstream ports of PCIe bridges of
discrete GPU devices.  Once collected, the lsgpu utility will show that
information automatically while listing the devices.

While IGT tests are using libpciaccess library for processing PCI devices,
that library requires careful handling in order to avoid collisions among
multiple call sites potentially using it.  That protection is implemented
in igt_device with help of IGT exit handlers. That requires linking with
full igt_core library code, while the lsgpu tool now depends neither on
igt_device nor on igt_core.  To keep that independence, implement the new
code around libpci.  With that approach, refactoring of IGT use of either
libpciaccess or igt_device_scan is avoided.  As an additional benefit,
there is no need to re-implement some functionality, already provided by
libpci function pci_find_cap(), which has no equivalent in libpciaccess.

v4: Replace 0x7f constant with PCI_HEADER_TYPE_MASK symbol (Krzysztof).
v3: Fix incorrect use of ffs(),
  - fix bridge link attribute printing suppressed with DEVTYPE_DISCRETE,
  - in commit description, elaborate more on reasons for using libpci.
v2: Drop unclear GET_REG_MASK macro (Sebastian),
  - reuse no longer needed variable containing PCI_HEADER_TYPE for storing
    PCI_EXP_FLAGS_TYPE,
  - maintain a single instance of struct pci_access throughout processing
    of the whole udev device list (Sebastian).

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device_scan.c | 86 +++++++++++++++++++++++++++++++++++++++++--
 lib/meson.build       |  2 +
 meson.build           |  1 +
 3 files changed, 86 insertions(+), 3 deletions(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index 11b3034639..6668e7c686 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -35,7 +35,11 @@
 #include <libudev.h>
 #ifdef __linux__
 #include <linux/limits.h>
+#include <linux/pci_regs.h>
+#else
+#define PCI_HEADER_TYPE_MASK 0x7f
 #endif
+#include <pci/pci.h>
 #include <sys/stat.h>
 #include <sys/time.h>
 #include <sys/types.h>
@@ -913,6 +917,26 @@ static struct igt_device *igt_device_from_syspath(const char *syspath)
 	return NULL;
 }
 
+static bool is_pcie_upstream_bridge(struct pci_dev *dev)
+{
+	struct pci_cap *pcie;
+	uint8_t type;
+
+	type = pci_read_byte(dev, PCI_HEADER_TYPE) & PCI_HEADER_TYPE_MASK;
+	if (type != PCI_HEADER_TYPE_BRIDGE)
+		return false;
+
+	pcie = pci_find_cap(dev, PCI_CAP_ID_EXP, PCI_CAP_NORMAL);
+	if (!pcie)
+		return false;
+
+	type = pci_read_word(dev, pcie->addr + PCI_EXP_FLAGS);
+	type &= PCI_EXP_FLAGS_TYPE;
+	type >>= ffs(PCI_EXP_FLAGS_TYPE) - 1;
+
+	return type == PCI_EXP_TYPE_UPSTREAM;
+}
+
 #define RETRIES_GET_DEVICE 5
 
 static struct igt_device *find_or_add_igt_device(struct udev *udev,
@@ -952,18 +976,52 @@ static struct igt_device *find_or_add_igt_device(struct udev *udev,
 	return idev;
 }
 
+static struct udev_device *get_pcie_upstream_bridge(struct udev *udev,
+						    struct udev_device *dev,
+						    struct pci_access *pacc)
+{
+	igt_assert(pacc);
+
+	for (dev = udev_device_get_parent(dev); dev; dev = udev_device_get_parent(dev)) {
+		struct pci_filter filter;
+		struct pci_dev *pci_dev;
+		const char *slot;
+
+		slot = udev_device_get_property_value(dev, "PCI_SLOT_NAME");
+		if (igt_debug_on(!slot))
+			continue;
+
+		pci_filter_init(pacc, &filter);
+		if (igt_debug_on(pci_filter_parse_slot(&filter, (char *)slot)))
+			continue;
+
+		pci_dev = pci_get_dev(pacc, filter.domain, filter.bus, filter.slot, filter.func);
+		if (igt_debug_on(!pci_dev))
+			continue;
+
+		if (is_pcie_upstream_bridge(pci_dev))
+			break;
+	}
+
+	return dev;
+}
+
 /*
  * For each drm igt_device add or update its parent igt_device to the array.
  * As card/render drm devices mostly have same parent (vkms is an exception)
  * link to it and update corresponding drm_card / drm_render fields.
+ *
+ * If collecting all attributes and the parent is a discrete GPU then also
+ * add or update its bridge's upstream port.
  */
 static void update_or_add_parent(struct udev *udev,
 				 struct udev_device *dev,
 				 struct igt_device *idev,
+				 struct pci_access *pacc,
 				 bool limit_attrs)
 {
-	struct udev_device *parent_dev;
-	struct igt_device *parent_idev;
+	struct igt_device *parent_idev, *bridge_idev;
+	struct udev_device *parent_dev, *bridge_dev;
 	const char *devname;
 
 	/*
@@ -983,6 +1041,19 @@ static void update_or_add_parent(struct udev *udev,
 		parent_idev->drm_render = strdup(devname);
 
 	idev->parent = parent_idev;
+
+	if (!pacc || parent_idev->dev_type != DEVTYPE_DISCRETE)
+		return;
+
+	bridge_dev = get_pcie_upstream_bridge(udev, parent_dev, pacc);
+	if (!bridge_dev)
+		return;
+
+	bridge_idev = find_or_add_igt_device(udev, bridge_dev, limit_attrs);
+	igt_assert(bridge_idev);
+
+	/* override DEVTYPE_INTEGRATED so link attributes won't be omitted */
+	bridge_idev->dev_type = DEVTYPE_ALL;
 }
 
 static struct igt_device *duplicate_device(struct igt_device *dev) {
@@ -1072,6 +1143,7 @@ static void scan_drm_devices(bool limit_attrs)
 	struct udev *udev;
 	struct udev_enumerate *enumerate;
 	struct udev_list_entry *devices, *dev_list_entry;
+	struct pci_access *pacc = NULL;
 	struct igt_device *dev;
 	int ret;
 
@@ -1095,6 +1167,12 @@ static void scan_drm_devices(bool limit_attrs)
 	if (!devices)
 		return;
 
+	/* prepare for upstream bridge port scan if called from lsgpu */
+	if (!limit_attrs) {
+		pacc = pci_alloc();
+		pci_init(pacc);
+	}
+
 	udev_list_entry_foreach(dev_list_entry, devices) {
 		const char *path;
 		struct udev_device *udev_dev;
@@ -1104,10 +1182,12 @@ static void scan_drm_devices(bool limit_attrs)
 		udev_dev = udev_device_new_from_syspath(udev, path);
 		idev = igt_device_new_from_udev(udev_dev, limit_attrs);
 		igt_list_add_tail(&idev->link, &igt_devs.all);
-		update_or_add_parent(udev, udev_dev, idev, limit_attrs);
+		update_or_add_parent(udev, udev_dev, idev, pacc, limit_attrs);
 
 		udev_device_unref(udev_dev);
 	}
+	if (pacc)
+		pci_cleanup(pacc);
 	udev_enumerate_unref(enumerate);
 	udev_unref(udev);
 
diff --git a/lib/meson.build b/lib/meson.build
index d851029e04..d4d2ffa127 100644
--- a/lib/meson.build
+++ b/lib/meson.build
@@ -141,6 +141,7 @@ lib_deps = [
 	libdrm,
 	libdw,
 	libkmod,
+	libpci,
 	libudev,
 	math,
 	pciaccess,
@@ -334,6 +335,7 @@ lib_igt_perf = declare_dependency(link_with : lib_igt_perf_build,
 
 scan_dep = [
 	glib,
+	libpci,
 	libudev,
 ]
 
diff --git a/meson.build b/meson.build
index 4b2496c016..57849648a3 100644
--- a/meson.build
+++ b/meson.build
@@ -162,6 +162,7 @@ endif
 build_info += 'Valgrind annotations: @0@'.format(valgrind.found())
 
 cairo = dependency('cairo', version : '>1.12.0', required : true)
+libpci = dependency('libpci', required : true)
 libudev = dependency('libudev', required : true)
 glib = dependency('glib-2.0', required : true)
 
-- 
2.52.0

