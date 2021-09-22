Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A3B414C0C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F81E6EC05;
	Wed, 22 Sep 2021 14:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608F46EC05
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:32:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223252543"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="223252543"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:32:00 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="454751692"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:47 +0300
Message-Id: <f42a559132a58af68916cf6e75b6a115ecb52ea3.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 23/24] drm/i915: constify clock gating init
 vtable.
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

From: Dave Airlie <airlied@redhat.com>

I used a macro to avoid making any really silly mistakes here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h |  2 +-
 drivers/gpu/drm/i915/intel_pm.c | 78 +++++++++++++++++++++++----------
 2 files changed, 55 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6a6d08219526..390091b898d5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -975,7 +975,7 @@ struct drm_i915_private {
 	struct workqueue_struct *flip_wq;
 
 	/* pm private clock gating functions */
-	struct drm_i915_clock_gating_funcs clock_gating_funcs;
+	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
 
 	/* pm display functions */
 	struct drm_i915_wm_disp_funcs wm_disp;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 826216a115fd..0a5c1e3c798b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7871,7 +7871,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
 
 void intel_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	dev_priv->clock_gating_funcs.init_clock_gating(dev_priv);
+	dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
 }
 
 void intel_suspend_hw(struct drm_i915_private *dev_priv)
@@ -7886,6 +7886,36 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
 		    "No clock gating settings or workarounds applied.\n");
 }
 
+#define CG_FUNCS(platform)						\
+static const struct drm_i915_clock_gating_funcs platform##_clock_gating_funcs = { \
+	.init_clock_gating = platform##_init_clock_gating,		\
+}
+
+CG_FUNCS(adlp);
+CG_FUNCS(dg1);
+CG_FUNCS(gen12lp);
+CG_FUNCS(icl);
+CG_FUNCS(cfl);
+CG_FUNCS(skl);
+CG_FUNCS(kbl);
+CG_FUNCS(bxt);
+CG_FUNCS(glk);
+CG_FUNCS(bdw);
+CG_FUNCS(chv);
+CG_FUNCS(hsw);
+CG_FUNCS(ivb);
+CG_FUNCS(vlv);
+CG_FUNCS(gen6);
+CG_FUNCS(ilk);
+CG_FUNCS(g4x);
+CG_FUNCS(i965gm);
+CG_FUNCS(i965g);
+CG_FUNCS(gen3);
+CG_FUNCS(i85x);
+CG_FUNCS(i830);
+CG_FUNCS(nop);
+#undef CG_FUNCS
+
 /**
  * intel_init_clock_gating_hooks - setup the clock gating hooks
  * @dev_priv: device private
@@ -7898,52 +7928,52 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_ALDERLAKE_P(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = adlp_init_clock_gating;
+		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
 	else if (IS_DG1(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = dg1_init_clock_gating;
+		dev_priv->clock_gating_funcs = &dg1_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 12)
-		dev_priv->clock_gating_funcs.init_clock_gating = gen12lp_init_clock_gating;
+		dev_priv->clock_gating_funcs = &gen12lp_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 11)
-		dev_priv->clock_gating_funcs.init_clock_gating = icl_init_clock_gating;
+		dev_priv->clock_gating_funcs = &icl_clock_gating_funcs;
 	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = cfl_init_clock_gating;
+		dev_priv->clock_gating_funcs = &cfl_clock_gating_funcs;
 	else if (IS_SKYLAKE(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = skl_init_clock_gating;
+		dev_priv->clock_gating_funcs = &skl_clock_gating_funcs;
 	else if (IS_KABYLAKE(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = kbl_init_clock_gating;
+		dev_priv->clock_gating_funcs = &kbl_clock_gating_funcs;
 	else if (IS_BROXTON(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = bxt_init_clock_gating;
+		dev_priv->clock_gating_funcs = &bxt_clock_gating_funcs;
 	else if (IS_GEMINILAKE(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = glk_init_clock_gating;
+		dev_priv->clock_gating_funcs = &glk_clock_gating_funcs;
 	else if (IS_BROADWELL(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = bdw_init_clock_gating;
+		dev_priv->clock_gating_funcs = &bdw_clock_gating_funcs;
 	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = chv_init_clock_gating;
+		dev_priv->clock_gating_funcs = &chv_clock_gating_funcs;
 	else if (IS_HASWELL(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = hsw_init_clock_gating;
+		dev_priv->clock_gating_funcs = &hsw_clock_gating_funcs;
 	else if (IS_IVYBRIDGE(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = ivb_init_clock_gating;
+		dev_priv->clock_gating_funcs = &ivb_clock_gating_funcs;
 	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = vlv_init_clock_gating;
+		dev_priv->clock_gating_funcs = &vlv_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 6)
-		dev_priv->clock_gating_funcs.init_clock_gating = gen6_init_clock_gating;
+		dev_priv->clock_gating_funcs = &gen6_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 5)
-		dev_priv->clock_gating_funcs.init_clock_gating = ilk_init_clock_gating;
+		dev_priv->clock_gating_funcs = &ilk_clock_gating_funcs;
 	else if (IS_G4X(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = g4x_init_clock_gating;
+		dev_priv->clock_gating_funcs = &g4x_clock_gating_funcs;
 	else if (IS_I965GM(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = i965gm_init_clock_gating;
+		dev_priv->clock_gating_funcs = &i965gm_clock_gating_funcs;
 	else if (IS_I965G(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = i965g_init_clock_gating;
+		dev_priv->clock_gating_funcs = &i965g_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 3)
-		dev_priv->clock_gating_funcs.init_clock_gating = gen3_init_clock_gating;
+		dev_priv->clock_gating_funcs = &gen3_clock_gating_funcs;
 	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
-		dev_priv->clock_gating_funcs.init_clock_gating = i85x_init_clock_gating;
+		dev_priv->clock_gating_funcs = &i85x_clock_gating_funcs;
 	else if (GRAPHICS_VER(dev_priv) == 2)
-		dev_priv->clock_gating_funcs.init_clock_gating = i830_init_clock_gating;
+		dev_priv->clock_gating_funcs = &i830_clock_gating_funcs;
 	else {
 		MISSING_CASE(INTEL_DEVID(dev_priv));
-		dev_priv->clock_gating_funcs.init_clock_gating = nop_init_clock_gating;
+		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
 	}
 }
 
-- 
2.30.2

