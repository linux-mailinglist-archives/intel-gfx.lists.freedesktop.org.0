Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B59716CE0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 20:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2C710E407;
	Tue, 30 May 2023 18:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4045C10E409
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 18:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685472843; x=1717008843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tv4EaIj3p08f4dfupPtJsfoSeHs0q+woPIaPy9w/PG0=;
 b=h9mQkyUEsmX6AD++dO2ZRczlkZySQQZhrD76hSpETPqYq/ZpFvzH17Mp
 eASLdrslThISwlxCMlvs1+JZyTDVGQSKHDhzwz/B+AT/kufbu3iDen0V3
 q9ngXNFcK+MLrdrhQcdEZuQ9Jqmys3+cCLPvmcpo5YlupydHGboYfypF9
 7VdqSCW+h2uKUrx4w86jyiTzAKGq9/ITjyCcmHCNSVPBKF9W7tDZKECqH
 u0HASMUkxiFBkJ7Uq8JBYGmYrqyEMHMbCCyCFLP82ibgmkZmszFujxzuD
 JegvATal8rdxAuoXMPawooQNj6Zpj2N+j5jaUspCAGH9M6uV5jWQJKapl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="418504044"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="418504044"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 11:54:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796381479"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="796381479"
Received: from anushasr-simics.jf.intel.com ([10.165.21.205])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 11:53:57 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 11:55:25 -0700
Message-Id: <20230530185529.3378520-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Driver refers to the platfrom Alderlake P as ADLP in places
and ALDERLAKE_P in some. Making the consistent change
to avoid confusion of the right naming convention for
the platform.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6bed75f1541a..013678caaca8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3541,7 +3541,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		/* Wa_22011320316:adl-p[a0] */
-		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
 		else if (IS_ADLP_RPLU(dev_priv))
 			dev_priv->display.cdclk.table = rplu_cdclk_table;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6b2d8a1e2aa9..81f3ce5a0a1e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3781,7 +3781,7 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
 {
 	u32 val;
 
-	if (!IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
+	if (!IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
 	    pll->info->id != DPLL_ID_ICL_DPLL0)
 		return;
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ea0389c5f656..c25457dae315 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -639,7 +639,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	}
 
 	/* Wa_22012278275:adl-p */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
+	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
 		static const u8 map[] = {
 			2, /* 5 lines */
 			1, /* 6 lines */
@@ -807,7 +807,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	/* Wa_16011303918:adl-p */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 		return;
 
 	/*
@@ -975,7 +975,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely functional in this stepping\n");
 		return false;
 	}
@@ -1033,7 +1033,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	/* Wa_16011303918:adl-p */
 	if (crtc_state->vrr.enable &&
-	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+	    IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
 		return false;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 36070d86550f..2019e0a87bd3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2174,7 +2174,7 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 		return false;
 
 	/* Wa_22011186057 */
-	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
+	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
 
 	if (DISPLAY_VER(i915) >= 11)
@@ -2200,7 +2200,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 		return false;
 
 	/* Wa_22011186057 */
-	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
+	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
 
 	/* Wa_14013215631 */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f1205ed3ba71..1a50b8b2f00d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -669,11 +669,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
+#define IS_ALDERLAKE_P_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
+#define IS_ALDERLAKE_P_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
-- 
2.25.1

