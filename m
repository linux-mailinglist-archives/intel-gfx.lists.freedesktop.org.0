Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2773CC15B
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 07:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5FE36EA1C;
	Sat, 17 Jul 2021 05:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F866EA16
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jul 2021 05:14:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="191188867"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="191188867"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 22:14:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="563335058"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 22:14:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jul 2021 22:14:20 -0700
Message-Id: <20210717051426.4120328-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210717051426.4120328-1-matthew.d.roper@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Fix application of
 WaInPlaceDecompressionHang
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

On SKL we've been applying this workaround on H0+ steppings, which is
actually backwards; H0 is supposed to be the first stepping where the
workaround is no longer needed.  Flip the bounds so that the workaround
applies to all steppings _before_ H0.

On BXT we've been applying this workaround to all steppings, but the
bspec tells us it's only needed until C0.  Pre-C0 GT steppings only
appeared in pre-production hardware, which we no longer support in the
driver, so we can drop the workaround completely for this platform.

On ICL we've been applying this workaround to all steppings, but there
doesn't seem to be any indication that this workaround was ever needed
for this platform (even now-deprecated page 20196 of the bspec doesn't
mention it).  We can go ahead and drop it.

I also don't see any mention of this workaround being needed for KBL,
although this may be an oversight since the workaround is needed for all
steppings of CFL.  I'll leave the workaround in place for KBL to be
safe.

Bspec: 14091, 33450
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++------------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 7731db33c46a..76a3b5d5e9dc 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -838,23 +838,12 @@ skl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaInPlaceDecompressionHang:skl */
-	if (IS_SKL_GT_STEP(i915, STEP_H0, STEP_FOREVER))
+	if (IS_SKL_GT_STEP(i915, STEP_A0, STEP_H0 - 1))
 		wa_write_or(wal,
 			    GEN9_GAMT_ECO_REG_RW_IA,
 			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
 }
 
-static void
-bxt_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
-{
-	gen9_gt_workarounds_init(i915, wal);
-
-	/* WaInPlaceDecompressionHang:bxt */
-	wa_write_or(wal,
-		    GEN9_GAMT_ECO_REG_RW_IA,
-		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
-}
-
 static void
 kbl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
@@ -942,11 +931,6 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
 	icl_wa_init_mcr(i915, wal);
 
-	/* WaInPlaceDecompressionHang:icl */
-	wa_write_or(wal,
-		    GEN9_GAMT_ECO_REG_RW_IA,
-		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
-
 	/* WaModifyGamTlbPartitioning:icl */
 	wa_write_clr_set(wal,
 			 GEN11_GACB_PERF_CTRL,
@@ -1081,7 +1065,7 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	else if (IS_KABYLAKE(i915))
 		kbl_gt_workarounds_init(i915, wal);
 	else if (IS_BROXTON(i915))
-		bxt_gt_workarounds_init(i915, wal);
+		gen9_gt_workarounds_init(i915, wal);
 	else if (IS_SKYLAKE(i915))
 		skl_gt_workarounds_init(i915, wal);
 	else if (IS_HASWELL(i915))
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
