Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F1646F2E8
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 19:21:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 239D910E1CE;
	Thu,  9 Dec 2021 18:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DAE210E1CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 18:21:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="301558337"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="301558337"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 10:21:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="606994646"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 09 Dec 2021 10:21:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 20:21:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 20:21:09 +0200
Message-Id: <20211209182109.29786-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
References: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/fbc: Introduce device info fbc_mask
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Declare which FBC instances are present via a fbc_mask
in device info. For the moment there is just the one.

TODO: Need to figure out how to expose multiple FBC
instances in debugs. Just different file names, or move
the files under some subdirectory (per-crtc maybe), or
something else? This will need igt changes as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 42 +++++++++++--------
 .../drm/i915/display/skl_universal_plane.c    | 12 +++---
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 22 +++++-----
 drivers/gpu/drm/i915/intel_device_info.c      |  4 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  2 +-
 6 files changed, 48 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 2f1a72f98c4b..359aa8389e5a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -49,11 +49,12 @@
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
 
-#define for_each_fbc_id(__fbc_id) \
-	for ((__fbc_id) = FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++)
+#define for_each_fbc_id(__dev_priv, __fbc_id) \
+	for ((__fbc_id) = FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
+		for_each_if(INTEL_INFO(__dev_priv)->fbc_mask & BIT(__fbc_id))
 
 #define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
-	for_each_fbc_id(__fbc_id) \
+	for_each_fbc_id((__dev_priv), (__fbc_id)) \
 		for_each_if((__fbc) = (__dev_priv)->fbc[(__fbc_id)])
 
 struct intel_fbc_funcs {
@@ -1693,32 +1694,35 @@ static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,
  */
 void intel_fbc_init(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc;
+	enum fbc_id fbc_id;
 
 	if (!drm_mm_initialized(&i915->mm.stolen))
-		mkwrite_device_info(i915)->display.has_fbc = false;
+		mkwrite_device_info(i915)->fbc_mask = 0;
 
 	if (need_fbc_vtd_wa(i915))
-		mkwrite_device_info(i915)->display.has_fbc = false;
+		mkwrite_device_info(i915)->fbc_mask = 0;
 
 	i915->params.enable_fbc = intel_sanitize_fbc_option(i915);
 	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
 		    i915->params.enable_fbc);
 
-	if (!HAS_FBC(i915))
-		return;
+	for_each_fbc_id(i915, fbc_id) {
+		struct intel_fbc *fbc;
 
-	fbc = intel_fbc_create(i915, FBC_A);
-	if (!fbc)
-		return;
+		fbc = intel_fbc_create(i915, fbc_id);
+		if (!fbc)
+			continue;
 
-	/* We still don't have any sort of hardware state readout for FBC, so
-	 * deactivate it in case the BIOS activated it to make sure software
-	 * matches the hardware state. */
-	if (intel_fbc_hw_is_active(fbc))
-		intel_fbc_hw_deactivate(fbc);
+		/*
+		 * We still don't have any sort of hardware state readout
+		 * for FBC, so deactivate it in case the BIOS activated it
+		 * to make sure software matches the hardware state.
+		 */
+		if (intel_fbc_hw_is_active(fbc))
+			intel_fbc_hw_deactivate(fbc);
 
-	i915->fbc[fbc->id] = fbc;
+		i915->fbc[fbc->id] = fbc;
+	}
 }
 
 static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
@@ -1814,6 +1818,10 @@ void intel_fbc_debugfs_register(struct drm_i915_private *i915)
 	struct intel_fbc *fbc;
 	enum fbc_id fbc_id;
 
+	/*
+	 * FIXME: need to figure out how to name/place
+	 * the debugfs files for each FBC instance.
+	 */
 	for_each_intel_fbc(i915, fbc, fbc_id)
 		intel_fbc_debugfs_add(fbc);
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9e31eb54b9f4..c8c96accf353 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1817,19 +1817,21 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 }
 
 static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
-			      enum pipe pipe, enum plane_id plane_id)
+			      enum fbc_id fbc_id, enum plane_id plane_id)
 {
-	if (!HAS_FBC(dev_priv))
+	if ((INTEL_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
 		return false;
 
-	return pipe == PIPE_A && plane_id == PLANE_PRIMARY;
+	return plane_id == PLANE_PRIMARY;
 }
 
 static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
 				       enum pipe pipe, enum plane_id plane_id)
 {
-	if (skl_plane_has_fbc(dev_priv, pipe, plane_id))
-		return dev_priv->fbc[FBC_A];
+	enum fbc_id fbc_id = pipe - PIPE_A + FBC_A;
+
+	if (skl_plane_has_fbc(dev_priv, fbc_id, plane_id))
+		return dev_priv->fbc[fbc_id];
 	else
 		return NULL;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7ae62e8e6d02..11bf7f4dc12e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1495,7 +1495,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
 
 #define HAS_FW_BLC(dev_priv)	(GRAPHICS_VER(dev_priv) > 2)
-#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_fbc)
+#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->fbc_mask != 0)
 #define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_priv) >= 7)
 
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 708a23415e9c..c64cc276f169 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -214,13 +214,13 @@ static const struct intel_device_info i845g_info = {
 static const struct intel_device_info i85x_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I85X),
-	.display.has_fbc = 1,
+	.fbc_mask = BIT(FBC_A),
 };
 
 static const struct intel_device_info i865g_info = {
 	I845_FEATURES,
 	PLATFORM(INTEL_I865G),
-	.display.has_fbc = 1,
+	.fbc_mask = BIT(FBC_A),
 };
 
 #define GEN3_FEATURES \
@@ -258,7 +258,7 @@ static const struct intel_device_info i915gm_info = {
 	.display.has_overlay = 1,
 	.display.overlay_needs_physical = 1,
 	.display.supports_tv = 1,
-	.display.has_fbc = 1,
+	.fbc_mask = BIT(FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -283,7 +283,7 @@ static const struct intel_device_info i945gm_info = {
 	.display.has_overlay = 1,
 	.display.overlay_needs_physical = 1,
 	.display.supports_tv = 1,
-	.display.has_fbc = 1,
+	.fbc_mask = BIT(FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -342,7 +342,7 @@ static const struct intel_device_info i965gm_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965GM),
 	.is_mobile = 1,
-	.display.has_fbc = 1,
+	.fbc_mask = BIT(FBC_A),
 	.display.has_overlay = 1,
 	.display.supports_tv = 1,
 	.hws_needs_physical = 1,
@@ -360,7 +360,7 @@ static const struct intel_device_info gm45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
-	.display.has_fbc = 1,
+	.fbc_mask = BIT(FBC_A),
 	.display.supports_tv = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
@@ -393,7 +393,7 @@ static const struct intel_device_info ilk_m_info = {
 	PLATFORM(INTEL_IRONLAKE),
 	.is_mobile = 1,
 	.has_rps = true,
-	.display.has_fbc = 1,
+	.fbc_mask = BIT(FBC_A),
 };
 
 #define GEN6_FEATURES \
@@ -401,7 +401,7 @@ static const struct intel_device_info ilk_m_info = {
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
-	.display.has_fbc = 1, \
+	.fbc_mask = BIT(FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -452,7 +452,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
-	.display.has_fbc = 1, \
+	.fbc_mask = BIT(FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -693,7 +693,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_64bit_reloc = 1, \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
-	.display.has_fbc = 1, \
+	.fbc_mask = BIT(FBC_A), \
 	.display.has_hdcp = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
@@ -948,7 +948,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
-	.display.has_fbc = 1,							\
+	.fbc_mask = BIT(FBC_A),							\
 	.display.has_fpga_dbg = 1,						\
 	.display.has_hdcp = 1,							\
 	.display.has_hotplug = 1,						\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index a3446a2abcb2..284a8aac51ed 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -328,6 +328,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 				 "Display fused off, disabling\n");
 			info->pipe_mask = 0;
 			info->cpu_transcoder_mask = 0;
+			info->fbc_mask = 0;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
 			info->pipe_mask &= ~BIT(PIPE_C);
@@ -339,6 +340,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
 			info->pipe_mask &= ~BIT(PIPE_A);
 			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
+			info->fbc_mask &= ~BIT(FBC_A);
 		}
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
 			info->pipe_mask &= ~BIT(PIPE_B);
@@ -359,7 +361,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->display.has_hdcp = 0;
 
 		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
-			info->display.has_fbc = 0;
+			info->fbc_mask = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			info->display.has_dmc = 0;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 213ae2c07126..89712019f073 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -156,7 +156,6 @@ enum intel_ppgtt_type {
 	func(has_dp_mst); \
 	func(has_dsb); \
 	func(has_dsc); \
-	func(has_fbc); \
 	func(has_fpga_dbg); \
 	func(has_gmch); \
 	func(has_hdcp); \
@@ -198,6 +197,7 @@ struct intel_device_info {
 
 	u8 pipe_mask;
 	u8 cpu_transcoder_mask;
+	u8 fbc_mask;
 
 	u8 abox_mask;
 
-- 
2.32.0

