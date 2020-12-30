Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FD92E7A35
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 16:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76E9890D2;
	Wed, 30 Dec 2020 15:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF6A890D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Dec 2020 15:14:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23464586-1500050 
 for multiple; Wed, 30 Dec 2020 15:14:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Dec 2020 15:14:44 +0000
Message-Id: <20201230151444.27721-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201230101625.25492-1-chris@chris-wilson.co.uk>
References: <20201230101625.25492-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Only disable preemption on gen8
 render engines
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

The reason why we did not enable preemption on Broadwater was due to
missing GPGPU workarounds. Since this only applies to rcs0, only
restrict rcs0 (and our global capabilities).

While this does not affect exposing a preemption capability to
userspace, it does affect our internal decisions on whether to use
timeslicing and semaphores between individual engines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 11 ++++-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 40 +++----------------
 drivers/gpu/drm/i915/i915_drv.h               |  2 -
 drivers/gpu/drm/i915/i915_pci.c               |  2 -
 drivers/gpu/drm/i915/intel_device_info.h      |  1 -
 5 files changed, 15 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index f08ba2d1f6d6..babc19ec5c15 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3102,6 +3102,15 @@ static void execlists_park(struct intel_engine_cs *engine)
 	cancel_timer(&engine->execlists.preempt);
 }
 
+static bool can_preempt(struct intel_engine_cs *engine)
+{
+	if (INTEL_GEN(engine->i915) > 8)
+		return true;
+
+	/* GPGPU on bdw requires extra w/a; not implemented */
+	return engine->class != RENDER_CLASS;
+}
+
 void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
@@ -3119,7 +3128,7 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 	if (!intel_vgpu_active(engine->i915)) {
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
-		if (HAS_LOGICAL_RING_PREEMPTION(engine->i915)) {
+		if (can_preempt(engine)) {
 			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
 			if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
 				engine->flags |= I915_ENGINE_HAS_TIMESLICES;
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 080b63000a4e..76139d4356ba 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -924,6 +924,9 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
 		return PTR_ERR(head);
 
 	for_each_engine(engine, outer->gt, id) {
+		if (!intel_engine_has_preemption(engine))
+			continue;
+
 		for (i = 0; i < count; i++) {
 			struct i915_request *rq;
 
@@ -943,8 +946,8 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
 
 	if (i915_request_wait(head, 0,
 			      2 * outer->gt->info.num_engines * (count + 2) * (count + 3)) < 0) {
-		pr_err("Failed to slice along semaphore chain of length (%d, %d)!\n",
-		       count, n);
+		pr_err("%s: Failed to slice along semaphore chain of length (%d, %d)!\n",
+		       outer->name, count, n);
 		GEM_TRACE_DUMP();
 		intel_gt_set_wedged(outer->gt);
 		err = -EIO;
@@ -1721,12 +1724,6 @@ static int live_preempt(void *arg)
 	enum intel_engine_id id;
 	int err = -ENOMEM;
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
-	if (!(gt->i915->caps.scheduler & I915_SCHEDULER_CAP_PREEMPTION))
-		pr_err("Logical preemption supported, but not exposed\n");
-
 	if (igt_spinner_init(&spin_hi, gt))
 		return -ENOMEM;
 
@@ -1821,9 +1818,6 @@ static int live_late_preempt(void *arg)
 	enum intel_engine_id id;
 	int err = -ENOMEM;
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
 	if (igt_spinner_init(&spin_hi, gt))
 		return -ENOMEM;
 
@@ -1957,9 +1951,6 @@ static int live_nopreempt(void *arg)
 	 * that may be being observed and not want to be interrupted.
 	 */
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
 	if (preempt_client_init(gt, &a))
 		return -ENOMEM;
 	if (preempt_client_init(gt, &b))
@@ -2311,9 +2302,6 @@ static int live_preempt_cancel(void *arg)
 	 * GPU. That sounds like preemption! Plus a little bit of bookkeeping.
 	 */
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
 	if (preempt_client_init(gt, &data.a))
 		return -ENOMEM;
 	if (preempt_client_init(gt, &data.b))
@@ -2373,9 +2361,6 @@ static int live_suppress_self_preempt(void *arg)
 	 * completion event.
 	 */
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
 	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0; /* presume black blox */
 
@@ -2488,9 +2473,6 @@ static int live_chain_preempt(void *arg)
 	 * the previously submitted spinner in B.
 	 */
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
 	if (preempt_client_init(gt, &hi))
 		return -ENOMEM;
 
@@ -2890,9 +2872,6 @@ static int live_preempt_gang(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
 	/*
 	 * Build as long a chain of preempters as we can, with each
 	 * request higher priority than the last. Once we are ready, we release
@@ -3193,9 +3172,6 @@ static int live_preempt_user(void *arg)
 	u32 *result;
 	int err = 0;
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
 	/*
 	 * In our other tests, we look at preemption in carefully
 	 * controlled conditions in the ringbuffer. Since most of the
@@ -3318,9 +3294,6 @@ static int live_preempt_timeout(void *arg)
 	if (!IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT))
 		return 0;
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
-		return 0;
-
 	if (!intel_has_reset_engine(gt))
 		return 0;
 
@@ -3591,9 +3564,6 @@ static int live_preempt_smoke(void *arg)
 	u32 *cs;
 	int n;
 
-	if (!HAS_LOGICAL_RING_PREEMPTION(smoke.gt->i915))
-		return 0;
-
 	smoke.contexts = kmalloc_array(smoke.ncontext,
 				       sizeof(*smoke.contexts),
 				       GFP_KERNEL);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e38a10d5c128..159cc13f584a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1660,8 +1660,6 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
 		(INTEL_INFO(dev_priv)->has_logical_ring_contexts)
 #define HAS_LOGICAL_RING_ELSQ(dev_priv) \
 		(INTEL_INFO(dev_priv)->has_logical_ring_elsq)
-#define HAS_LOGICAL_RING_PREEMPTION(dev_priv) \
-		(INTEL_INFO(dev_priv)->has_logical_ring_preemption)
 
 #define HAS_MASTER_UNIT_IRQ(dev_priv) (INTEL_INFO(dev_priv)->has_master_unit_irq)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 11fe790b1969..39608381b4a4 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -639,7 +639,6 @@ static const struct intel_device_info chv_info = {
 	GEN8_FEATURES, \
 	GEN(9), \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	.has_logical_ring_preemption = 1, \
 	.display.has_csr = 1, \
 	.has_gt_uc = 1, \
 	.display.has_hdcp = 1, \
@@ -700,7 +699,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_rps = true, \
 	.display.has_dp_mst = 1, \
 	.has_logical_ring_contexts = 1, \
-	.has_logical_ring_preemption = 1, \
 	.has_gt_uc = 1, \
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 17d0fdb94d2d..cf2d528c6e9b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -123,7 +123,6 @@ enum intel_ppgtt_type {
 	func(has_llc); \
 	func(has_logical_ring_contexts); \
 	func(has_logical_ring_elsq); \
-	func(has_logical_ring_preemption); \
 	func(has_master_unit_irq); \
 	func(has_pooled_eu); \
 	func(has_rc6); \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
