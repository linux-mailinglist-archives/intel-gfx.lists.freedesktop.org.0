Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A176707860
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 05:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEAA10E4DD;
	Thu, 18 May 2023 03:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EBA710E4D4;
 Thu, 18 May 2023 03:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684379891; x=1715915891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=udWuEPCsrVB18cTWdX/jLtkTFQX7hAPmDVMMPK3y4A4=;
 b=jkNi6pOTJWrWtkju8BbQz+jeGhT3vg+gsAAHKIU8TeCzpIIxwubgy6UO
 ZamrZBp3JPKquCCRkCQtTrd0GENoB4xWVHlbSOd1XYXvXa5eucgIwx/Vz
 vVwliHjT0ZnjHyRJLNQtd/86eK+6wY0pBTYkJn9cRJvqM4v3LAKEm5CXM
 jEKLtXHURk9cKeTxtTRstXbXEgiVoZpHOhP6o0pt+RZN1MZk2OWT193n8
 +gLW45KDBaPiUZWEx7rtYwOfpu9HYSt05NqS8Hu/6eN50LELfed95dVBH
 5uMdBxMbvyMjg/Aho7P/p4+VUL10UK3RWk7ZEbg6O7TODuEPopMcuZKy8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="341348746"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="341348746"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 20:18:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="652472438"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="652472438"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 20:18:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 20:18:04 -0700
Message-Id: <20230518031804.3133486-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230518031804.3133486-1-matthew.d.roper@intel.com>
References: <20230518031804.3133486-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/display: Handle GMD_ID
 identification in display code
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For platforms with GMD_ID support (i.e., everything MTL and beyond),
identification of the display IP present should be based on the contents
of the GMD_ID register rather than a PCI devid match.

Note that since GMD_ID readout requires access to the PCI BAR, a slight
change to the driver init sequence is needed --- pci_enable_device() is
now called before i915_driver_create().

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 64 +++++++++++++++++--
 .../drm/i915/display/intel_display_device.h   |  5 +-
 drivers/gpu/drm/i915/i915_driver.c            | 10 +--
 drivers/gpu/drm/i915/intel_device_info.c      | 13 ++--
 4 files changed, 78 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 78fa522aaf0b..813a2a494082 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -6,7 +6,10 @@
 #include <drm/i915_pciids.h>
 #include <drm/drm_color_mgmt.h>
 #include <linux/mod_devicetable.h>
+#include <linux/pci.h>
 
+#include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_display_device.h"
 #include "intel_display_power.h"
 #include "intel_display_reg_defs.h"
@@ -674,18 +677,69 @@ static const struct pci_device_id intel_display_ids[] = {
 	INTEL_RPLP_IDS(&xe_lpd_display),
 	INTEL_DG2_IDS(&xe_hpd_display),
 
-	/* FIXME: Replace this with a GMD_ID lookup */
-	INTEL_MTL_IDS(&xe_lpdp_display),
+	/*
+	 * Do not add any GMD_ID-based platforms to this list.  They will
+	 * be probed automatically based on the IP version reported by
+	 * the hardware.
+	 */
 };
 
+struct {
+	u16 ver;
+	u16 rel;
+	const struct intel_display_device_info *display;
+} gmdid_display_map[] = {
+	{ 14,  0, &xe_lpdp_display },
+};
+
+static const struct intel_display_device_info *
+probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	void __iomem *addr;
+	u32 val;
+	int i;
+
+	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
+	if (!addr) {
+		drm_err(&i915->drm, "Cannot map MMIO BAR to read display GMD_ID\n");
+		return NULL;
+	}
+
+	val = ioread32(addr);
+	pci_iounmap(pdev, addr);
+
+	if (val == 0)
+		/* Platform doesn't have display */
+		return NULL;
+
+	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
+	*rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
+	*step = REG_FIELD_GET(GMD_ID_STEP, val);
+
+	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++)
+		if (*ver == gmdid_display_map[i].ver &&
+		    *rel == gmdid_display_map[i].rel)
+			return gmdid_display_map[i].display;
+
+	drm_err(&i915->drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
+		*ver, *rel);
+	return NULL;
+}
+
 const struct intel_display_device_info *
-intel_display_device_probe(u16 pci_devid)
+intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
+			   u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
 {
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	int i;
 
+	if (has_gmdid)
+		return probe_gmdid_display(i915, gmdid_ver, gmdid_rel, gmdid_step);
+
 	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
-		if (intel_display_ids[i].device == pci_devid)
-			return (struct intel_display_device_info *)intel_display_ids[i].driver_data;
+		if (intel_display_ids[i].device == pdev->device)
+			return (const struct intel_display_device_info *)intel_display_ids[i].driver_data;
 	}
 
 	return NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 0a60ebfaff80..9a344ee36d8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -80,7 +80,10 @@ struct intel_display_device_info {
 	} color;
 };
 
+struct drm_i915_private;
+
 const struct intel_display_device_info *
-intel_display_device_probe(u16 pci_devid);
+intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
+			   u16 *ver, u16 *rel, u16 *step);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 522733a89946..d02c602e9a0b 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -754,14 +754,16 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct drm_i915_private *i915;
 	int ret;
 
-	i915 = i915_driver_create(pdev, ent);
-	if (IS_ERR(i915))
-		return PTR_ERR(i915);
-
 	ret = pci_enable_device(pdev);
 	if (ret)
 		goto out_fini;
 
+	i915 = i915_driver_create(pdev, ent);
+	if (IS_ERR(i915)) {
+		ret = PTR_ERR(i915);
+		goto out_pci_disable;
+	}
+
 	ret = i915_driver_early_probe(i915);
 	if (ret < 0)
 		goto out_pci_disable;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 9d0b54ba50c1..5f38ff8caac0 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -345,7 +345,6 @@ static void ip_ver_read(struct drm_i915_private *i915, u32 offset, struct intel_
 static void intel_ipver_early_init(struct drm_i915_private *i915)
 {
 	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
-	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
 
 	if (!HAS_GMD_ID(i915)) {
 		drm_WARN_ON(&i915->drm, RUNTIME_INFO(i915)->graphics.ip.ver > 12);
@@ -366,8 +365,6 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
 		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
 		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
 	}
-	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
-		    (struct intel_ip_version *)&display_runtime->ip);
 	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
 		    &runtime->media.ip);
 }
@@ -575,6 +572,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	struct intel_device_info *info;
 	struct intel_runtime_info *runtime;
 	struct intel_display_runtime_info *display_runtime;
+	u16 ver, rel, step;
 
 	/* Setup the write-once "constant" device info */
 	info = mkwrite_device_info(i915);
@@ -585,11 +583,18 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
 
 	/* Probe display support */
-	info->display = intel_display_device_probe(device_id);
+	info->display = intel_display_device_probe(i915, info->has_gmd_id,
+						   &ver, &rel, &step);
 	if (info->display) {
 		display_runtime = DISPLAY_RUNTIME_INFO(i915);
 		memcpy(display_runtime, &DISPLAY_INFO(i915)->__runtime,
 		       sizeof(*display_runtime));
+
+		if (info->has_gmd_id) {
+			display_runtime->ip.ver = ver;
+			display_runtime->ip.rel = rel;
+			display_runtime->ip.step = step;
+		}
 	} else {
 		info->display = &no_display;
 	}
-- 
2.40.0

