Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A4775764A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DB410E2EE;
	Tue, 18 Jul 2023 08:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64FBB10E2FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667913; x=1721203913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l8dARy2Nd6C/vF0j7DF3rR1VYXM5VCSYLaRl6ZOWeh8=;
 b=RSAcdw6rGrSmEXu4IiWel/av5bcp2d8QL4Wp2Ep9qzA3hVFjhGNB34W4
 9QrOKmNIrYgf4hU2rFHKWljxH3lUwp+niCclk8UYnZ0uRZ8zpK8WTFArO
 jppsnPWog/BevdI0P2FhJUQqAi2JRWhvYWqfVTkH7TJ5JAs33FL0p3rrz
 G7rAOViQQei2RHB/wlVXzbVcNcdpT23bCOidIvebGWZF4xUnPjHr3ypvz
 EWElQPHIQuJx7Jk6hABof97wQ07+nQkfwhisezv8QPlw6tfeumIrmlPsn
 Q/7XSc8xHlJvj9OzIQyLO+gOkgM8enQRghnX3uKjHbSq6Ym2Q04Yez8Zh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696613"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696613"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723518321"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723518321"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:50 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:10 +0530
Message-Id: <20230718081115.166212-11-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 10/15] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Driver refers to the platform Alderlake P as ADLP in places
and ALDERLAKE_P in some. Making the consistent change
to avoid confusion of the right naming convention for
the platform.

v2:
- Updated commit messege (Anusha)

v3:
- Unrolled wrapper IS_ADLP_GRAPHICS_STEP and Replace
with IS_ALDERLAKE_P() && IS_GRAPHICS_STEP() (Jani/Tvrtko).

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e5b1e065e902..0f0aef3e90b0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3559,7 +3559,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		/* Wa_22011320316:adl-p[a0] */
-		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+		if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
 			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		} else if (IS_ADLP_RPLU(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b44e8aa46b18..bab3e40a59f2 100644
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
index 3c213f51e840..bf80029c8a5d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -639,7 +639,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	}
 
 	/* Wa_22012278275:adl-p */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
 		static const u8 map[] = {
 			2, /* 5 lines */
 			1, /* 6 lines */
@@ -807,7 +807,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	/* Wa_16011303918:adl-p */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 		return;
 
 	/*
@@ -975,7 +975,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely functional in this stepping\n");
 		return false;
 	}
@@ -1033,7 +1033,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
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
index ffb73554a55b..bfe19ecb390e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -672,11 +672,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
2.34.1

