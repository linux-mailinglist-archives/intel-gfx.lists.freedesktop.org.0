Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC935512F6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D9810E2BA;
	Mon, 20 Jun 2022 08:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A831210E2BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714316; x=1687250316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uy4WEQ0Bnu6Lcsf5yDPQg5NioscMLPJK7DSF9zfbe8U=;
 b=Cb+Fy59J1s5j3Q4jcMHQAoLLJhtM1oubRk8xAignz/AB/MWNPKCja5Vf
 1gMHiMUfaNAi1e1qaFqctnb2Arj3qb5RUNU76w6MC/i7u0eloLrgPE+hV
 covYas4GSykmgWT9CblAqFJj6aiOk5Eg2VnR0wjbFgiD+6fFYhT/HsDjZ
 GAIdUbWG0YU4DIBBLzmcC3K5cjPi1bELPrGMfDB3aJqGBapPECgC83Lyq
 jmKMTODyQRCGSIdabPjFEXgwdTH/BC9xIpCOXu1+Cn6p3RtmFBbYA3ENB
 P+1iXUAF5kkXjD4rW64FJQVoPs9UOS4aGKbtqyHhqGn6WpaEpQiiZHWrh A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="343831968"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="343831968"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:36 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643012458"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:38:03 +0300
Message-Id: <99ac70598bdba6205a93b3a9c966ddf9256521e3.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/16] drm/i915: move fbc_mask to runtime info
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If it's modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      |  6 ++---
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 22 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c      |  6 ++---
 drivers/gpu/drm/i915/intel_device_info.h      | 12 ++++++----
 6 files changed, 27 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8b807284cde1..deb0bfabd25d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -54,7 +54,7 @@
 
 #define for_each_fbc_id(__dev_priv, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
-		for_each_if(INTEL_INFO(__dev_priv)->display.fbc_mask & BIT(__fbc_id))
+		for_each_if(RUNTIME_INFO(__dev_priv)->fbc_mask & BIT(__fbc_id))
 
 #define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
 	for_each_fbc_id((__dev_priv), (__fbc_id)) \
@@ -1703,10 +1703,10 @@ void intel_fbc_init(struct drm_i915_private *i915)
 	enum intel_fbc_id fbc_id;
 
 	if (!drm_mm_initialized(&i915->mm.stolen))
-		mkwrite_device_info(i915)->display.fbc_mask = 0;
+		RUNTIME_INFO(i915)->fbc_mask = 0;
 
 	if (need_fbc_vtd_wa(i915))
-		mkwrite_device_info(i915)->display.fbc_mask = 0;
+		RUNTIME_INFO(i915)->fbc_mask = 0;
 
 	i915->params.enable_fbc = intel_sanitize_fbc_option(i915);
 	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index caa03324a733..0492596d1837 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1928,7 +1928,7 @@ static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
 static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
 			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
 {
-	if ((INTEL_INFO(dev_priv)->display.fbc_mask & BIT(fbc_id)) == 0)
+	if ((RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
 		return false;
 
 	return plane_id == PLANE_PRIMARY;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c22f29c3faa0..f4aa31499fd4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1244,7 +1244,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
 
 #define HAS_FW_BLC(dev_priv)	(DISPLAY_VER(dev_priv) > 2)
-#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.fbc_mask != 0)
+#define HAS_FBC(dev_priv)	(RUNTIME_INFO(dev_priv)->fbc_mask != 0)
 #define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) >= 7)
 
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 5e51fc29bb8b..fb063284befa 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -218,13 +218,13 @@ static const struct intel_device_info i845g_info = {
 static const struct intel_device_info i85x_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I85X),
-	.display.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info i865g_info = {
 	I845_FEATURES,
 	PLATFORM(INTEL_I865G),
-	.display.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define GEN3_FEATURES \
@@ -263,7 +263,7 @@ static const struct intel_device_info i915gm_info = {
 	.display.has_overlay = 1,
 	.display.overlay_needs_physical = 1,
 	.display.supports_tv = 1,
-	.display.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -288,7 +288,7 @@ static const struct intel_device_info i945gm_info = {
 	.display.has_overlay = 1,
 	.display.overlay_needs_physical = 1,
 	.display.supports_tv = 1,
-	.display.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -348,7 +348,7 @@ static const struct intel_device_info i965gm_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965GM),
 	.is_mobile = 1,
-	.display.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.display.has_overlay = 1,
 	.display.supports_tv = 1,
 	.hws_needs_physical = 1,
@@ -366,7 +366,7 @@ static const struct intel_device_info gm45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
-	.display.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.display.supports_tv = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
@@ -400,7 +400,7 @@ static const struct intel_device_info ilk_m_info = {
 	PLATFORM(INTEL_IRONLAKE),
 	.is_mobile = 1,
 	.has_rps = true,
-	.display.fbc_mask = BIT(INTEL_FBC_A),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define GEN6_FEATURES \
@@ -408,7 +408,7 @@ static const struct intel_device_info ilk_m_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
-	.display.fbc_mask = BIT(INTEL_FBC_A), \
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
@@ -460,7 +460,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
-	.display.fbc_mask = BIT(INTEL_FBC_A), \
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
@@ -703,7 +703,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_64bit_reloc = 1, \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
-	.display.fbc_mask = BIT(INTEL_FBC_A), \
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
@@ -959,7 +959,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
-	.display.fbc_mask = BIT(INTEL_FBC_A),					\
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
 	.display.has_hdcp = 1,							\
 	.display.has_hotplug = 1,						\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 77f435dd5626..82a82fd83673 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -348,7 +348,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 				 "Display fused off, disabling\n");
 			info->display.pipe_mask = 0;
 			info->display.cpu_transcoder_mask = 0;
-			info->display.fbc_mask = 0;
+			runtime->fbc_mask = 0;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
 			info->display.pipe_mask &= ~BIT(PIPE_C);
@@ -360,7 +360,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
 			info->display.pipe_mask &= ~BIT(PIPE_A);
 			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
-			info->display.fbc_mask &= ~BIT(INTEL_FBC_A);
+			runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
 		}
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
 			info->display.pipe_mask &= ~BIT(PIPE_B);
@@ -381,7 +381,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->display.has_hdcp = 0;
 
 		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
-			info->display.fbc_mask = 0;
+			runtime->fbc_mask = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			info->display.has_dmc = 0;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 85385c98b9f4..86d796eb93ad 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -210,12 +210,17 @@ struct intel_runtime_info {
 
 	u16 device_id;
 
-	u8 num_sprites[I915_MAX_PIPES];
-	u8 num_scalers[I915_MAX_PIPES];
-
 	u32 rawclk_freq;
 
 	struct intel_step_info step;
+
+	/* display */
+	struct {
+		u8 num_sprites[I915_MAX_PIPES];
+		u8 num_scalers[I915_MAX_PIPES];
+
+		u8 fbc_mask;
+	};
 };
 
 struct intel_device_info {
@@ -249,7 +254,6 @@ struct intel_device_info {
 
 		u8 pipe_mask;
 		u8 cpu_transcoder_mask;
-		u8 fbc_mask;
 		u8 abox_mask;
 
 #define DEFINE_FLAG(name) u8 name:1
-- 
2.30.2

