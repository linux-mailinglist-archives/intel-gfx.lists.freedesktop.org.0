Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F561F6332
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 10:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7936E8AC;
	Thu, 11 Jun 2020 08:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511266E8AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 08:02:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21460986-1500050 
 for multiple; Thu, 11 Jun 2020 09:01:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 09:01:40 +0100
Message-Id: <20200611080140.30228-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200611080140.30228-1-chris@chris-wilson.co.uk>
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Move gen4 GT workarounds from
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
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 27 +++++++++++++++++----
 drivers/gpu/drm/i915/intel_pm.c             | 15 ------------
 2 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index f8b9e104378e..7b4be64585c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -715,15 +715,28 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 }
 
 static void
-ilk_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
+gen4_gt_workarounds_init(struct drm_i915_private *i915,
+			 struct i915_wa_list *wal)
 {
-	wa_masked_en(wal,_3D_CHICKEN2, _3D_CHICKEN2_WM_READ_PIPELINED);
+	/* WaDisable_RenderCache_OperationalFlush:gen4,ilk */
+	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
+}
+
+static void
+g4x_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
+{
+	gen4_gt_workarounds_init(i915, wal);
 
-	/* WaDisableRenderCachePipelinedFlush:ilk */
+	/* WaDisableRenderCachePipelinedFlush:g4x,ilk */
 	wa_masked_en(wal, CACHE_MODE_0, CM0_PIPELINED_RENDER_FLUSH_DISABLE);
+}
 
-	/* WaDisable_RenderCache_OperationalFlush:ilk */
-	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
+static void
+ilk_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
+{
+	g4x_gt_workarounds_init(i915, wal);
+
+	wa_masked_en(wal,_3D_CHICKEN2, _3D_CHICKEN2_WM_READ_PIPELINED);
 }
 
 static void
@@ -1209,6 +1222,10 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		snb_gt_workarounds_init(i915, wal);
 	else if (IS_GEN(i915, 5))
 		ilk_gt_workarounds_init(i915, wal);
+	else if (IS_G4X(i915))
+		g4x_gt_workarounds_init(i915, wal);
+	else if (IS_GEN(i915, 4))
+		gen4_gt_workarounds_init(i915, wal);
 	else if (INTEL_GEN(i915) <= 8)
 		return;
 	else
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 7d82a7144a13..2a32d6230795 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7399,13 +7399,6 @@ static void g4x_init_clock_gating(struct drm_i915_private *dev_priv)
 		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
 	I915_WRITE(DSPCLK_GATE_D, dspclk_gate);
 
-	/* WaDisableRenderCachePipelinedFlush */
-	I915_WRITE(CACHE_MODE_0,
-		   _MASKED_BIT_ENABLE(CM0_PIPELINED_RENDER_FLUSH_DISABLE));
-
-	/* WaDisable_RenderCache_OperationalFlush:g4x */
-	I915_WRITE(CACHE_MODE_0, _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
-
 	g4x_disable_trickle_feed(dev_priv);
 }
 
@@ -7421,11 +7414,6 @@ static void i965gm_init_clock_gating(struct drm_i915_private *dev_priv)
 	intel_uncore_write(uncore,
 			   MI_ARB_STATE,
 			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
-
-	/* WaDisable_RenderCache_OperationalFlush:gen4 */
-	intel_uncore_write(uncore,
-			   CACHE_MODE_0,
-			   _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
 }
 
 static void i965g_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7438,9 +7426,6 @@ static void i965g_init_clock_gating(struct drm_i915_private *dev_priv)
 	I915_WRITE(RENCLK_GATE_D2, 0);
 	I915_WRITE(MI_ARB_STATE,
 		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
-
-	/* WaDisable_RenderCache_OperationalFlush:gen4 */
-	I915_WRITE(CACHE_MODE_0, _MASKED_BIT_DISABLE(RC_OP_FLUSH_ENABLE));
 }
 
 static void gen3_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
