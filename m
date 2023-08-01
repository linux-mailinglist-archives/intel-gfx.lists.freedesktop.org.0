Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF3D76B65E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 15:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748FC10E408;
	Tue,  1 Aug 2023 13:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB1810E408
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 13:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690898054; x=1722434054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UMXklkEQCL7Hw7GFxgnbcG5NaLOsHOLFCFyjAZpXrbo=;
 b=ZFsvO47bQsj4Yvto6Y84pGX47MikiCY1+Vnb3db+JRFpg7i7bPTdL4lO
 k+L2lL0YW+fpneW5nxPae2gUXMi8WkgpaT8KYbwAtUmT4FiM87+Gn38Cl
 AIDJfoxw1dUe/NyROBlXL+VXTBuoolGVT3KfegxQNefmg4DG06Iua8A3n
 WtwudJ32+5jR1FLYTSNPMDvt08F/6mnxxYa+SwDTrFCv7bgnyaBMXYyXa
 jEaLitFsHe+igvthlmjFNi1tTKjt+yngmbNXU6UVA7eVyu+BzuYiFb4I1
 Sh4qSiN/Y8OoknNoFQUoFbKacM1h1dB2vsi3wDGYdQJUQgFASVsczqQN3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435629391"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435629391"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="818803961"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="818803961"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 06:54:12 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 19:23:40 +0530
Message-Id: <20230801135344.3797924-11-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/14] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
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

Driver refers to the platform Alderlake P as ADLP in places
and ALDERLAKE_P in some. Making the consistent change
to avoid confusion of the right naming convention for
the platform.

v2:
- Unrolled wrapper IS_ADLP_GRAPHICS_STEP and Replace
- Added IS_ALDERLAKE_P() && IS_GRAPHICS_STEP() (Jani/Tvrtko).

v3:
- Removed unused macros of display steps.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h                    | 7 -------
 5 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index eab0f0dd057e..57113fb01fb2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3567,7 +3567,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		/* Wa_22011320316:adl-p[a0] */
-		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+		if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
 			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		} else if (IS_ADLP_RPLU(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 4c4108d404f6..664bce4c679b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3785,7 +3785,7 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
 {
 	u32 val;
 
-	if (!IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
+	if (!(IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0)) ||
 	    pll->info->id != DPLL_ID_ICL_DPLL0)
 		return;
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 94ec41b9d5ae..97d5eef10130 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -748,7 +748,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	}
 
 	/* Wa_22012278275:adl-p */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
 		static const u8 map[] = {
 			2, /* 5 lines */
 			1, /* 6 lines */
@@ -918,7 +918,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	/* Wa_16011303918:adl-p */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 		return;
 
 	/*
@@ -1086,7 +1086,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely functional in this stepping\n");
 		return false;
 	}
@@ -1144,7 +1144,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	/* Wa_16011303918:adl-p */
 	if (crtc_state->vrr.enable &&
-	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+	    IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
 		return false;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4ed1244c1a17..ffc15d278a39 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2174,7 +2174,7 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 		return false;
 
 	/* Wa_22011186057 */
-	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
+	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
 
 	if (DISPLAY_VER(i915) >= 11)
@@ -2200,7 +2200,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 		return false;
 
 	/* Wa_22011186057 */
-	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
+	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
 
 	/* Wa_14013215631 */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 44f3a368607e..c24be1875769 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -662,13 +662,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
-	(IS_ALDERLAKE_P(__i915) && \
-	 IS_DISPLAY_STEP(__i915, since, until))
-
-#define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
-	(IS_ALDERLAKE_P(__i915) && \
-	 IS_GRAPHICS_STEP(__i915, since, until))
 
 #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
 	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
-- 
2.34.1

