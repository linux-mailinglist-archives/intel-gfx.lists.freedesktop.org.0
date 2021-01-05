Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AF72EA1AA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 01:55:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD93389226;
	Tue,  5 Jan 2021 00:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25D88989A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 00:54:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23501332-1500050 
 for multiple; Tue, 05 Jan 2021 00:54:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 00:54:35 +0000
Message-Id: <20210105005439.18402-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210105005439.18402-1-chris@chris-wilson.co.uk>
References: <20210105005439.18402-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/gt: Reapply ppgtt enabling after
 engine resets
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

The GFX_MODE is reset along with the engine, turning off ppGTT. We need
to re-enable it upon resume.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c            |  9 ---------
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 13 ++++++++++---
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 680bd9442eb0..0f02afe7f43a 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -27,8 +27,6 @@ void gen7_ppgtt_enable(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_uncore *uncore = gt->uncore;
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
 	u32 ecochk;
 
 	intel_uncore_rmw(uncore, GAC_ECO_BITS, 0, ECOBITS_PPGTT_CACHE64B);
@@ -41,13 +39,6 @@ void gen7_ppgtt_enable(struct intel_gt *gt)
 		ecochk &= ~ECOCHK_PPGTT_GFDT_IVB;
 	}
 	intel_uncore_write(uncore, GAM_ECOCHK, ecochk);
-
-	for_each_engine(engine, gt, id) {
-		/* GFX_MODE is per-ring on gen7+ */
-		ENGINE_WRITE(engine,
-			     RING_MODE_GEN7,
-			     _MASKED_BIT_ENABLE(GFX_PPGTT_ENABLE));
-	}
 }
 
 void gen6_ppgtt_enable(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 90b483b4ae5d..d794e13610b2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -188,9 +188,16 @@ static void set_pp_dir(struct intel_engine_cs *engine)
 {
 	struct i915_address_space *vm = vm_alias(engine->gt->vm);
 
-	if (vm) {
-		ENGINE_WRITE(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);
-		ENGINE_WRITE(engine, RING_PP_DIR_BASE, pp_dir(vm));
+	if (!vm)
+		return;
+
+	ENGINE_WRITE(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);
+	ENGINE_WRITE(engine, RING_PP_DIR_BASE, pp_dir(vm));
+
+	if (INTEL_GEN(engine->i915) >= 7) {
+		ENGINE_WRITE(engine,
+			     RING_MODE_GEN7,
+			     _MASKED_BIT_ENABLE(GFX_PPGTT_ENABLE));
 	}
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
