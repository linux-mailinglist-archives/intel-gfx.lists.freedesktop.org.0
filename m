Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A7B472DAF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 14:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5D210E794;
	Mon, 13 Dec 2021 13:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0641610E794
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 13:45:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="219415228"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="219415228"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 05:45:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="504907673"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2021 05:45:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Dec 2021 15:44:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Dec 2021 15:44:49 +0200
Message-Id: <20211213134450.3082-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/fbc: Introduce device info
 fbc_mask
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Declare which FBC instances are present via a fbc_mask
in device info. For the moment there is just the one.

TODO: Need to figure out how to expose multiple FBC
instances in debugs. Just different file names, or move
the files under some subdirectory (per-crtc maybe), or
something else? This will need igt changes as well.

v2: Put the mask into device_info.display (Jani)
    Put the magic pipe->fbc thing into skl_fbc_id_for_pipe() (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 38 ++++++++++---------
 .../drm/i915/display/skl_universal_plane.c    | 17 ++++++---
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 22 +++++------
 drivers/gpu/drm/i915/intel_device_info.c      |  4 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  2 +-
 6 files changed, 49 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6603058e3683..53c93387710c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -49,11 +49,12 @@
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
 
-#define for_each_fbc_id(__fbc_id) \
-	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++)
+#define for_each_fbc_id(__dev_priv, __fbc_id) \
+	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
+		for_each_if(INTEL_INFO(__dev_priv)->display.fbc_mask & BIT(__fbc_id))
 
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
+	enum intel_fbc_id fbc_id;
 
 	if (!drm_mm_initialized(&i915->mm.stolen))
-		mkwrite_device_info(i915)->display.has_fbc = false;
+		mkwrite_device_info(i915)->display.fbc_mask = 0;
 
 	if (need_fbc_vtd_wa(i915))
-		mkwrite_device_info(i915)->display.has_fbc = false;
+		mkwrite_device_info(i915)->display.fbc_mask = 0;
 
 	i915->params.enable_fbc = intel_sanitize_fbc_option(i915);
 	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
 		    i915->params.enable_fbc);
 
-	if (!HAS_FBC(i915))
-		return;
+	for_each_fbc_id(i915, fbc_id) {
+		struct intel_fbc *fbc;
 
-	fbc = intel_fbc_create(i915, INTEL_FBC_A);
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
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 3db57cd7474b..158d89b8d490 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1816,20 +1816,27 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
+{
+	return pipe - PIPE_A + INTEL_FBC_A;
+}
+
 static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
-			      enum pipe pipe, enum plane_id plane_id)
+			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
 {
-	if (!HAS_FBC(dev_priv))
+	if ((INTEL_INFO(dev_priv)->display.fbc_mask & BIT(fbc_id)) == 0)
 		return false;
 
-	return pipe == PIPE_A && plane_id == PLANE_PRIMARY;
+	return plane_id == PLANE_PRIMARY;
 }
 
 static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
 				       enum pipe pipe, enum plane_id plane_id)
 {
-	if (skl_plane_has_fbc(dev_priv, pipe, plane_id))
-		return dev_priv->fbc[INTEL_FBC_A];
+	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(pipe);
+
+	if (skl_plane_has_fbc(dev_priv, fbc_id, plane_id))
+		return dev_priv->fbc[fbc_id];
 	else
 		return NULL;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d16536d66b60..447468ef3e1a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1495,7 +1495,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
 
 #define HAS_FW_BLC(dev_priv)	(GRAPHICS_VER(dev_priv) > 2)
-#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_fbc)
+#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.fbc_mask != 0)
 #define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_priv) >= 7)
 
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 261294df535c..282685c2fb6a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -214,13 +214,13 @@ static const struct intel_device_info i845g_info = {
 static const struct intel_device_info i85x_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I85X),
-	.display.has_fbc = 1,
+	.display.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info i865g_info = {
 	I845_FEATURES,
 	PLATFORM(INTEL_I865G),
-	.display.has_fbc = 1,
+	.display.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define GEN3_FEATURES \
@@ -258,7 +258,7 @@ static const struct intel_device_info i915gm_info = {
 	.display.has_overlay = 1,
 	.display.overlay_needs_physical = 1,
 	.display.supports_tv = 1,
-	.display.has_fbc = 1,
+	.display.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -283,7 +283,7 @@ static const struct intel_device_info i945gm_info = {
 	.display.has_overlay = 1,
 	.display.overlay_needs_physical = 1,
 	.display.supports_tv = 1,
-	.display.has_fbc = 1,
+	.display.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -342,7 +342,7 @@ static const struct intel_device_info i965gm_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965GM),
 	.is_mobile = 1,
-	.display.has_fbc = 1,
+	.display.fbc_mask = BIT(INTEL_FBC_A),
 	.display.has_overlay = 1,
 	.display.supports_tv = 1,
 	.hws_needs_physical = 1,
@@ -360,7 +360,7 @@ static const struct intel_device_info gm45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
-	.display.has_fbc = 1,
+	.display.fbc_mask = BIT(INTEL_FBC_A),
 	.display.supports_tv = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
@@ -393,7 +393,7 @@ static const struct intel_device_info ilk_m_info = {
 	PLATFORM(INTEL_IRONLAKE),
 	.is_mobile = 1,
 	.has_rps = true,
-	.display.has_fbc = 1,
+	.display.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define GEN6_FEATURES \
@@ -401,7 +401,7 @@ static const struct intel_device_info ilk_m_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
-	.display.has_fbc = 1, \
+	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -452,7 +452,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
-	.display.has_fbc = 1, \
+	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -693,7 +693,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_64bit_reloc = 1, \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
-	.display.has_fbc = 1, \
+	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
@@ -948,7 +948,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
-	.display.has_fbc = 1,							\
+	.display.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
 	.display.has_hdcp = 1,							\
 	.display.has_hotplug = 1,						\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 04fd266d70e2..9c1cb549da8c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -328,6 +328,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 				 "Display fused off, disabling\n");
 			info->display.pipe_mask = 0;
 			info->display.cpu_transcoder_mask = 0;
+			info->display.fbc_mask = 0;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
 			info->display.pipe_mask &= ~BIT(PIPE_C);
@@ -339,6 +340,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
 			info->display.pipe_mask &= ~BIT(PIPE_A);
 			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
+			info->display.fbc_mask &= ~BIT(INTEL_FBC_A);
 		}
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
 			info->display.pipe_mask &= ~BIT(PIPE_B);
@@ -359,7 +361,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->display.has_hdcp = 0;
 
 		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
-			info->display.has_fbc = 0;
+			info->display.fbc_mask = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			info->display.has_dmc = 0;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 78597d382445..67253f4d6f4f 100644
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
@@ -206,6 +205,7 @@ struct intel_device_info {
 
 		u8 pipe_mask;
 		u8 cpu_transcoder_mask;
+		u8 fbc_mask;
 		u8 abox_mask;
 
 #define DEFINE_FLAG(name) u8 name:1
-- 
2.32.0

