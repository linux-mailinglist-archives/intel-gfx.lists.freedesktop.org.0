Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BB570E61D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 21:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D02B910E4D0;
	Tue, 23 May 2023 19:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95BFD10E4C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 19:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684871791; x=1716407791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=09gsIbxMZq1a5Tzkq890ihZfT08T2X2/ulfOyyU4N0o=;
 b=Fz3B/eG6AkJbppF/5UoaS3IwGPxdlRAoSUTxfLoz+WsfS8peyod2dSWP
 gBVTRHyh9sD+Fu2JcHRIIHVoyAI0KLsJx1FTsPNkKfoEnQuK6qu0S/bhi
 PGgbKf4hE3yJ4cv2lZAt0WJzNl8XCO9qm7xBHsise5ykvDUbbCBZIvjpN
 0q+/Dm5s7T+tsMi7SIgupzLvIT0AvIeoAqNcw6uwY3UyqS4y0uONiyhr+
 XF/pZO167G7nfLVfbBVzbon0eR53bp0Hn0A8VRm4GG1SdERXhx0+2IHBz
 apacXmh67qxuEQ9MGgsdRPWuHsztejdSN2Xyq5+mW2tnwY1u2X0psC5Fb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="353372872"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="353372872"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 12:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="681557166"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="681557166"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 12:56:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 12:56:08 -0700
Message-Id: <20230523195609.73627-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230523195609.73627-1-matthew.d.roper@intel.com>
References: <20230523195609.73627-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 5/6] drm/i915/display: Handle GMD_ID
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
Cc: matthew.d.roper@intel.com, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For platforms with GMD_ID support (i.e., everything MTL and beyond),
identification of the display IP present should be based on the contents
of the GMD_ID register rather than a PCI devid match.

Note that since GMD_ID readout requires access to the PCI BAR, a slight
change to the driver init sequence is needed --- pci_enable_device() is
now called before i915_driver_create().

v2:
 - Fix use of uninitialized i915 pointer in error path if
   pci_enable_device() fails before the i915 device is created.  (lkp)
 - Use drm_device parameter to intel_display_device_probe.  This goes
   against i915 conventions, but since the primary goal here is to make
   it easy to call this function from other drivers (like Xe) and since
   we don't need anything from the i915 structure, this seems like an
   exception where drm_device is a more natural fit.
v3:
 - Go back do drm_i915_private for intel_display_device_probe.  (Jani)
 - Move forward decl to top of header.  (Jani)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 65 +++++++++++++++++--
 .../drm/i915/display/intel_display_device.h   |  5 +-
 drivers/gpu/drm/i915/i915_driver.c            | 17 +++--
 drivers/gpu/drm/i915/intel_device_info.c      | 13 ++--
 4 files changed, 84 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 3e2f4cd0b9f5..a513ac8f71a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -5,7 +5,10 @@
 
 #include <drm/i915_pciids.h>
 #include <drm/drm_color_mgmt.h>
+#include <linux/pci.h>
 
+#include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_display_device.h"
 #include "intel_display_power.h"
 #include "intel_display_reg_defs.h"
@@ -700,19 +703,73 @@ static const struct {
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
 
+static const struct {
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
+		return &no_display;
+	}
+
+	val = ioread32(addr);
+	pci_iounmap(pdev, addr);
+
+	if (val == 0)
+		/* Platform doesn't have display */
+		return &no_display;
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
+	return &no_display;
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
-		if (intel_display_ids[i].devid == pci_devid)
+		if (intel_display_ids[i].devid == pdev->device)
 			return intel_display_ids[i].info;
 	}
 
+	drm_dbg(&i915->drm, "No display ID found for device ID %04x; disabling display.\n",
+		pdev->device);
+
 	return &no_display;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 1f7d08b3ad6b..d1d11581d85d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -10,6 +10,8 @@
 
 #include "display/intel_display_limits.h"
 
+struct drm_i915_private;
+
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
@@ -81,6 +83,7 @@ struct intel_display_device_info {
 };
 
 const struct intel_display_device_info *
-intel_display_device_probe(u16 pci_devid);
+intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
+			   u16 *ver, u16 *rel, u16 *step);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 522733a89946..37532e55327d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -754,13 +754,17 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct drm_i915_private *i915;
 	int ret;
 
-	i915 = i915_driver_create(pdev, ent);
-	if (IS_ERR(i915))
-		return PTR_ERR(i915);
-
 	ret = pci_enable_device(pdev);
-	if (ret)
-		goto out_fini;
+	if (ret) {
+		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	i915 = i915_driver_create(pdev, ent);
+	if (IS_ERR(i915)) {
+		ret = PTR_ERR(i915);
+		goto out_pci_disable;
+	}
 
 	ret = i915_driver_early_probe(i915);
 	if (ret < 0)
@@ -843,7 +847,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_driver_late_release(i915);
 out_pci_disable:
 	pci_disable_device(pdev);
-out_fini:
 	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 79523e55ca9c..2f79d232b04a 100644
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
@@ -574,6 +571,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 {
 	struct intel_device_info *info;
 	struct intel_runtime_info *runtime;
+	u16 ver, rel, step;
 
 	/* Setup the write-once "constant" device info */
 	info = mkwrite_device_info(i915);
@@ -584,11 +582,18 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
 
 	/* Probe display support */
-	info->display = intel_display_device_probe(device_id);
+	info->display = intel_display_device_probe(i915, info->has_gmd_id,
+						   &ver, &rel, &step);
 	memcpy(DISPLAY_RUNTIME_INFO(i915),
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
+	if (info->has_gmd_id) {
+		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
+		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
+		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
+	}
+
 	runtime->device_id = device_id;
 }
 
-- 
2.40.1

