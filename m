Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE87A3491D4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 13:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41CC6EB62;
	Thu, 25 Mar 2021 12:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35FE06EB62
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 12:26:11 +0000 (UTC)
IronPort-SDR: jUmqLVXM4lajWbKOcpTKQvplNMVrGtFBhZRMdqICmlgSf6UFkFle308PGE5qpGCDtpnhXpYcxF
 Erg69f8YQwXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="276042084"
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="276042084"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 05:26:10 -0700
IronPort-SDR: k8XiIjF//bAB1ILwgUs155jfzoEiK1DWcXLMZtYlacVuHN+yQy5uVTF7hVkxQzdRdetrryESBU
 necwfEtlU6+g==
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="415984270"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 05:26:08 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 17:39:47 +0530
Message-Id: <20210325120947.11950-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210325093213.20794-1-anshuman.gupta@intel.com>
References: <20210325093213.20794-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Tweaked Wa_14010685332 for all PCHs
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
---
 .../drm/i915/display/intel_display_power.c    | 16 +++++++-------
 drivers/gpu/drm/i915/i915_irq.c               | 21 -------------------
 2 files changed, 8 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index cef177208e68..b76cc4379d5c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5910,13 +5910,13 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915)
 {
 	if (DISPLAY_VER(i915) >= 11 || IS_GEN9_LP(i915)) {
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
@@ -5924,13 +5924,13 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 	if (DISPLAY_VER(i915) >= 11 || IS_GEN9_LP(i915)) {
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
index 7eefbdec25a2..4547ba2f19b2 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3040,24 +3040,6 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
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
 static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -3082,7 +3064,6 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 	if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_reset(dev_priv);
 
-	cnp_display_clock_wa(dev_priv);
 }
 
 static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -3123,8 +3104,6 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 
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
