Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 851381F6334
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 10:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27036E8A7;
	Thu, 11 Jun 2020 08:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87ED6E8A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 08:02:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21460984-1500050 
 for multiple; Thu, 11 Jun 2020 09:01:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 09:01:38 +0100
Message-Id: <20200611080140.30228-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200611080140.30228-1-chris@chris-wilson.co.uk>
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Move snb GT workarounds from
 init_clock_gating to workarounds
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

Rescue the GT workarounds from being buried inside init_clock_gating so
that we remember to apply them after a GT reset, and that they are
included in our verification that the workarounds are applied.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 41 +++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.c             | 33 -----------------
 2 files changed, 41 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 688ca25d79d0..7b4f3434eb6b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -714,6 +714,45 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 	return 0;
 }
 
+static void
+snb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
+{
+	/* WaDisableHiZPlanesWhenMSAAEnabled:snb */
+	wa_masked_en(wal,
+		     _3D_CHICKEN,
+		     _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB);
+
+	/* WaDisable_RenderCache_OperationalFlush:snb */
+	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
+
+	/*
+	 * BSpec recoomends 8x4 when MSAA is used,
+	 * however in practice 16x4 seems fastest.
+	 *
+	 * Note that PS/WM thread counts depend on the WIZ hashing
+	 * disable bit, which we don't touch here, but it's good
+	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
+	 */
+	wa_add(wal,
+	       GEN6_GT_MODE, 0,
+	       _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
+	       GEN6_WIZ_HASHING_16x4);
+
+	wa_masked_dis(wal, CACHE_MODE_0, CM0_STC_EVICT_DISABLE_LRA_SNB);
+
+	wa_masked_en(wal,
+		     _3D_CHICKEN3,
+		     /* WaStripsFansDisableFastClipPerformanceFix:snb */
+		     _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL |
+		     /*
+		      * Bspec says:
+		      * "This bit must be set if 3DSTATE_CLIP clip mode is set
+		      * to normal and 3DSTATE_SF number of SF output attributes
+		      * is more than 16."
+		      */
+		   _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH);
+}
+
 static void
 ivb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
@@ -1154,6 +1193,8 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		vlv_gt_workarounds_init(i915, wal);
 	else if (IS_IVYBRIDGE(i915))
 		ivb_gt_workarounds_init(i915, wal);
+	else if (IS_GEN(i915, 6))
+		snb_gt_workarounds_init(i915, wal);
 	else if (INTEL_GEN(i915) <= 8)
 		return;
 	else
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 29abde47e987..b4bea6451418 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6993,27 +6993,6 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
 		   I915_READ(ILK_DISPLAY_CHICKEN2) |
 		   ILK_ELPIN_409_SELECT);
 
-	/* WaDisableHiZPlanesWhenMSAAEnabled:snb */
-	I915_WRITE(_3D_CHICKEN,
-		   _MASKED_BIT_ENABLE(_3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB));
-
-	/* WaDisable_RenderCache_OperationalFlush:snb */
-	I915_WRITE(CACHE_MODE_0, _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
-
-	/*
-	 * BSpec recoomends 8x4 when MSAA is used,
-	 * however in practice 16x4 seems fastest.
-	 *
-	 * Note that PS/WM thread counts depend on the WIZ hashing
-	 * disable bit, which we don't touch here, but it's good
-	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
-	 */
-	I915_WRITE(GEN6_GT_MODE,
-		   _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4));
-
-	I915_WRITE(CACHE_MODE_0,
-		   _MASKED_BIT_DISABLE(CM0_STC_EVICT_DISABLE_LRA_SNB));
-
 	I915_WRITE(GEN6_UCGCTL1,
 		   I915_READ(GEN6_UCGCTL1) |
 		   GEN6_BLBUNIT_CLOCK_GATE_DISABLE |
@@ -7036,18 +7015,6 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
 		   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |
 		   GEN6_RCCUNIT_CLOCK_GATE_DISABLE);
 
-	/* WaStripsFansDisableFastClipPerformanceFix:snb */
-	I915_WRITE(_3D_CHICKEN3,
-		   _MASKED_BIT_ENABLE(_3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL));
-
-	/*
-	 * Bspec says:
-	 * "This bit must be set if 3DSTATE_CLIP clip mode is set to normal and
-	 * 3DSTATE_SF number of SF output attributes is more than 16."
-	 */
-	I915_WRITE(_3D_CHICKEN3,
-		   _MASKED_BIT_ENABLE(_3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH));
-
 	/*
 	 * According to the spec the following bits should be
 	 * set in order to enable memory self-refresh and fbc:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
