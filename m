Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8E33C45D7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 09:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87476896ED;
	Mon, 12 Jul 2021 07:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A650896ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 07:27:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10042"; a="209908613"
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="209908613"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 00:27:27 -0700
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="491926149"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 00:27:24 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 12:39:17 +0530
Message-Id: <20210712070917.10851-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210325093213.20794-1-anshuman.gupta@intel.com>
References: <20210325093213.20794-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [REBASED v2] drm/i915: Tweaked Wa_14010685332 for all
 PCHs
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
Cc: david.e.box@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dispcnlunit1_cp_xosc_clkreq clock observed to be active on TGL-H platform
despite Wa_14010685332 original sequence, thus blocks entry to deeper s0ix state.

The Tweaked Wa_14010685332 sequence fixes this issue, therefore use tweaked
Wa_14010685332 sequence for every PCH since PCH_CNP.

v2:
- removed RKL from comment and simplified condition. [Rodrigo]

Fixes: b896898c7369 ("drm/i915: Tweaked Wa_14010685332 for PCHs used on gen11 platforms")
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 16 +++++++-------
 drivers/gpu/drm/i915/i915_irq.c               | 21 -------------------
 2 files changed, 8 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 285380079aab..28a363119560 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -6388,13 +6388,13 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915)
 	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
 	    IS_BROXTON(i915)) {
 		bxt_enable_dc9(i915);
-		/* Tweaked Wa_14010685332:icp,jsp,mcc */
-		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
-			intel_de_rmw(i915, SOUTH_CHICKEN1,
-				     SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_enable_pc8(i915);
 	}
+
+	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
+	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
+		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
 }
 
 void intel_display_power_resume_early(struct drm_i915_private *i915)
@@ -6403,13 +6403,13 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 	    IS_BROXTON(i915)) {
 		gen9_sanitize_dc_state(i915);
 		bxt_disable_dc9(i915);
-		/* Tweaked Wa_14010685332:icp,jsp,mcc */
-		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
-			intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
-
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 		hsw_disable_pc8(i915);
 	}
+
+	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
+	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
+		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
 }
 
 void intel_display_power_suspend(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 1d4c683c9de9..99c75a9d7ffa 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3064,24 +3064,6 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-static void cnp_display_clock_wa(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-
-	/*
-	 * Wa_14010685332:cnp/cmp,tgp,adp
-	 * TODO: Clarify which platforms this applies to
-	 * TODO: Figure out if this workaround can be applied in the s0ix suspend/resume handlers as
-	 * on earlier platforms and whether the workaround is also needed for runtime suspend/resume
-	 */
-	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
-	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP && INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
-		intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS,
-				 SBCLK_RUN_REFCLK_DIS);
-		intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
-	}
-}
-
 static void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -3115,7 +3097,6 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 	if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_reset(dev_priv);
 
-	cnp_display_clock_wa(dev_priv);
 }
 
 static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -3159,8 +3140,6 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		GEN3_IRQ_RESET(uncore, SDE);
-
-	cnp_display_clock_wa(dev_priv);
 }
 
 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
