Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ED33CC158
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 07:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9286EA16;
	Sat, 17 Jul 2021 05:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946B86EA16
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jul 2021 05:14:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="191188869"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="191188869"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 22:14:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="563335065"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 22:14:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jul 2021 22:14:22 -0700
Message-Id: <20210717051426.4120328-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210717051426.4120328-1-matthew.d.roper@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Program DFR enable/disable as a
 GT workaround
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DFR programming (which we enable as an optimization on gen11, but must
ensure is disabled on gen12) should be handled as a GT workaround rather
than clock gating initialization.  This will ensure that the programming
of these registers is verified with our typical workaround checks.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
 drivers/gpu/drm/i915/intel_pm.c             | 8 --------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 36d972492883..685c6115d380 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -965,6 +965,12 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
+
+	/*
+	 * This is not a documented workaround, but rather an optimization
+	 * to reduce sampler power.
+	 */
+	wa_write_clr(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
 }
 
 /*
@@ -998,6 +1004,9 @@ gen12_gt_workarounds_init(struct drm_i915_private *i915,
 
 	/* Wa_14011060649:tgl,rkl,dg1,adl-s,adl-p */
 	wa_14011060649(i915, wal);
+
+	/* Wa_14011059788:tgl,rkl,adl-s,dg1,adl-p */
+	wa_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ef5304d3c2ec..8a84abfaa4b0 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7345,10 +7345,6 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
 		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
-	/* This is not an Wa. Enable to reduce Sampler power */
-	intel_uncore_write(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
-		   intel_uncore_read(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);
-
 	/*Wa_14010594013:icl, ehl */
 	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
 			 0, CNL_DELAY_PMRSP);
@@ -7367,10 +7363,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
 			   TGL_VRH_GATING_DIS);
 
-	/* Wa_14011059788:tgl,rkl,adl-s,dg1,adl-p */
-	intel_uncore_rmw(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
-			 0, DFR_DISABLE);
-
 	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
 	if (DISPLAY_VER(dev_priv) == 12)
 		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
