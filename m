Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PkUOQO9cGkRZgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:48:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0C8563D4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00EA10E763;
	Wed, 21 Jan 2026 11:48:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DlN93HjZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3073A10E763;
 Wed, 21 Jan 2026 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768996096; x=1800532096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3P4PNLzr9rlBpEHYCMaY8ammxZ/hxoVim/dzA3yuPCQ=;
 b=DlN93HjZ61dv7KByBF46k4EGmmrsks3sK1zNuJ9OW60EoCO3FswCwluN
 xmUI9iXFw1HtlHSdk90WrGNuRvuBdU49K1aywlcOb1L4j8wF0wxWHdeym
 3iXbm9GLBA0wkHatKGDAlgL5Y/qQ83+aBFo1kVRTanQdeFyUL3rFgeCyW
 kIg/ktYY6klhOg/Uu6tQGOcPAqgaVb9fSgp/Iy5sD/wOGrHkIIGSI17a/
 gao7Iz9LQv4+nyLSwm2JrHpWeoQiBkbJfpUCDQoJATr2bwPAo0Wk3TTG9
 5d1O839XZGWU/MOnzorV7FPUk7XhyrAvBojFLFEWdQSS+CNZt1bcIALaA A==;
X-CSE-ConnectionGUID: E5W4GdGJQDW0FeTj/oUjNg==
X-CSE-MsgGUID: ufxHuntzTyCfiwfeHdYszA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="92889111"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="92889111"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:48:16 -0800
X-CSE-ConnectionGUID: H46DD99uQ3GrVPdZj7RCkA==
X-CSE-MsgGUID: rWtQClAkQvG6t/n7zWqhMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206347754"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.125])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:48:13 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 3/7] lib/igt_device_scan: Include PCIe bridge upstream
 port if available
Date: Wed, 21 Jan 2026 12:42:21 +0100
Message-ID: <20260121114656.1970684-12-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url,meson.build:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5E0C8563D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

While IGT tests are using pciaccess library for processing PCI devices,
that library requires careful handling in order to avoid collisions among
multiple processes or threads potentially using it.  That protection is
implemented in igt_device with help of IGT exit handlers. That requires
linking with full igt_core library code, while the lsgpu tool now depends
neither on igt_device nor on igt_core.  To keep that independence,
implement the new code around libpci.  With that approach, refactoring of
IGT use of pciaccess is avoided.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device_scan.c | 73 +++++++++++++++++++++++++++++++++++++++++--
 lib/meson.build       |  2 ++
 meson.build           |  1 +
 3 files changed, 74 insertions(+), 2 deletions(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index d3a2ebe8d2..34c7a8131b 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -36,6 +36,7 @@
 #ifdef __linux__
 #include <linux/limits.h>
 #endif
+#include <pci/pci.h>
 #include <sys/stat.h>
 #include <sys/time.h>
 #include <sys/types.h>
@@ -909,6 +910,27 @@ static struct igt_device *igt_device_from_syspath(const char *syspath)
 	return NULL;
 }
 
+static bool is_pcie_upstream_bridge(struct pci_dev *dev)
+{
+	struct pci_cap *pcie;
+	uint8_t type, dir;
+
+	type = pci_read_byte(dev, PCI_HEADER_TYPE) & 0x7f;
+	if (type != PCI_HEADER_TYPE_BRIDGE)
+		return false;
+
+	pcie = pci_find_cap(dev, PCI_CAP_ID_EXP, PCI_CAP_NORMAL);
+	if (!pcie)
+		return false;
+
+	/* GET_REG_MASK macro borrowed from pciutils' internal bitops.h */
+#define GET_REG_MASK(reg, mask) (((reg) & (mask)) / ((mask) & ~((mask) << 1)))
+	dir = GET_REG_MASK(pci_read_word(dev, pcie->addr + PCI_EXP_FLAGS), PCI_EXP_FLAGS_TYPE);
+#undef GET_REG_MASK
+
+	return dir == PCI_EXP_TYPE_UPSTREAM;
+}
+
 #define RETRIES_GET_PARENT 5
 
 static struct igt_device *find_or_add_igt_device(struct udev *udev,
@@ -948,18 +970,55 @@ static struct igt_device *find_or_add_igt_device(struct udev *udev,
 	return idev;
 }
 
+static struct udev_device *get_pcie_upstream_bridge(struct udev *udev,
+						    struct udev_device *dev)
+{
+	struct pci_access *pacc;
+
+	pacc = pci_alloc();
+	pci_init(pacc);
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
+	pci_cleanup(pacc);
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
 				 bool limit_attrs)
 {
-	struct udev_device *parent_dev;
-	struct igt_device *parent_idev;
+	struct igt_device *parent_idev, *bridge_idev;
+	struct udev_device *parent_dev, *bridge_dev;
 	const char *devname;
 
 	/*
@@ -979,6 +1038,16 @@ static void update_or_add_parent(struct udev *udev,
 		parent_idev->drm_render = strdup(devname);
 
 	idev->parent = parent_idev;
+
+	if (limit_attrs || parent_idev->dev_type != DEVTYPE_DISCRETE)
+		return;
+
+	bridge_dev = get_pcie_upstream_bridge(udev, parent_dev);
+	if (!bridge_dev)
+		return;
+
+	bridge_idev = find_or_add_igt_device(udev, bridge_dev, limit_attrs);
+	igt_assert(bridge_idev);
 }
 
 static struct igt_device *duplicate_device(struct igt_device *dev) {
diff --git a/lib/meson.build b/lib/meson.build
index 1a569ba52a..d10e1405ac 100644
--- a/lib/meson.build
+++ b/lib/meson.build
@@ -139,6 +139,7 @@ lib_deps = [
 	libdrm,
 	libdw,
 	libkmod,
+	libpci,
 	libudev,
 	math,
 	pciaccess,
@@ -332,6 +333,7 @@ lib_igt_perf = declare_dependency(link_with : lib_igt_perf_build,
 
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

