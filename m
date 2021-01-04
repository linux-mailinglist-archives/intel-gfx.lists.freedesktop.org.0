Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5512E9447
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F1C893A4;
	Mon,  4 Jan 2021 11:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F759893A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:49:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23495837-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Jan 2021 11:49:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 11:49:13 +0000
Message-Id: <20210104114914.30165-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gt: Rearrange snb workarounds
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

Some rcs0 workarounds were being incorrectly applied to the GT, and so
we failed to restore the expected register settings after a reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 67 ++++++++++-----------
 1 file changed, 33 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b0e3a5ba0320..741ed6e9f5cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -824,40 +824,6 @@ ilk_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 static void
 snb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	/* WaDisableHiZPlanesWhenMSAAEnabled:snb */
-	wa_masked_en(wal,
-		     _3D_CHICKEN,
-		     _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB);
-
-	/* WaDisable_RenderCache_OperationalFlush:snb */
-	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
-
-	/*
-	 * BSpec recommends 8x4 when MSAA is used,
-	 * however in practice 16x4 seems fastest.
-	 *
-	 * Note that PS/WM thread counts depend on the WIZ hashing
-	 * disable bit, which we don't touch here, but it's good
-	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
-	 */
-	wa_add(wal,
-	       GEN6_GT_MODE, 0,
-	       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
-	       GEN6_WIZ_HASHING_16x4);
-
-	wa_masked_dis(wal, CACHE_MODE_0, CM0_STC_EVICT_DISABLE_LRA_SNB);
-
-	wa_masked_en(wal,
-		     _3D_CHICKEN3,
-		     /* WaStripsFansDisableFastClipPerformanceFix:snb */
-		     _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL |
-		     /*
-		      * Bspec says:
-		      * "This bit must be set if 3DSTATE_CLIP clip mode is set
-		      * to normal and 3DSTATE_SF number of SF output attributes
-		      * is more than 16."
-		      */
-		   _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH);
 }
 
 static void
@@ -2010,6 +1976,39 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GFX_MODE,
 			     GFX_TLB_INVALIDATE_EXPLICIT);
 
+		/* WaDisableHiZPlanesWhenMSAAEnabled:snb */
+		wa_masked_en(wal,
+			     _3D_CHICKEN,
+			     _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB);
+
+		wa_masked_en(wal,
+			     _3D_CHICKEN3,
+			     /* WaStripsFansDisableFastClipPerformanceFix:snb */
+			     _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL |
+			     /*
+			      * Bspec says:
+			      * "This bit must be set if 3DSTATE_CLIP clip mode is set
+			      * to normal and 3DSTATE_SF number of SF output attributes
+			      * is more than 16."
+			      */
+			     _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH);
+
+		/*
+		 * BSpec recommends 8x4 when MSAA is used,
+		 * however in practice 16x4 seems fastest.
+		 *
+		 * Note that PS/WM thread counts depend on the WIZ hashing
+		 * disable bit, which we don't touch here, but it's good
+		 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
+		 */
+		wa_add(wal,
+		       GEN6_GT_MODE, 0,
+		       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
+		       GEN6_WIZ_HASHING_16x4);
+
+		/* WaDisable_RenderCache_OperationalFlush:snb */
+		wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
+
 		/*
 		 * From the Sandybridge PRM, volume 1 part 3, page 24:
 		 * "If this bit is set, STCunit will have LRA as replacement
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
