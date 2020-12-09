Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B610B2D437C
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 14:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93CFB89BE8;
	Wed,  9 Dec 2020 13:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F158F89BE8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 13:42:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23267780-1500050 
 for multiple; Wed, 09 Dec 2020 13:42:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Dec 2020 13:42:31 +0000
Message-Id: <20201209134231.961-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Rearrange snb workarounds
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some rcs0 workarounds were being incorrectly applied to the GT, and so
we failed to restore the expected register settings after a reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 67 ++++++++++-----------
 1 file changed, 33 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b5339a36d256..50cfe82f18a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -823,40 +823,6 @@ ilk_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
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
@@ -2008,6 +1974,39 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
