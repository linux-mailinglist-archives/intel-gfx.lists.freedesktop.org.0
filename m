Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A481E491F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 18:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51916E33D;
	Wed, 27 May 2020 16:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26D06E33D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 16:03:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21311746-1500050 
 for multiple; Wed, 27 May 2020 17:03:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 17:03:28 +0100
Message-Id: <20200527160328.31681-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200527151235.25663-1-chris@chris-wilson.co.uk>
References: <20200527151235.25663-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: avoid an maybe-uninitialized
 warning
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
Cc: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Arnd Bergmann <arnd@arndb.de>

Conditional spinlocks make it hard for gcc and for lockdep to
follow the code flow. This one causes a warning with at least
gcc-9 and higher:

In file included from include/linux/irq.h:14,
                 from drivers/gpu/drm/i915/i915_pmu.c:7:
drivers/gpu/drm/i915/i915_pmu.c: In function 'i915_sample':
include/linux/spinlock.h:289:3: error: 'flags' may be used uninitialized in this function [-Werror=maybe-uninitialized]
  289 |   _raw_spin_unlock_irqrestore(lock, flags); \
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_pmu.c:288:17: note: 'flags' was declared here
  288 |   unsigned long flags;
      |                 ^~~~~

Split out the part between the locks into a separate function
for readability and to let the compiler figure out what the
logic actually is.

Fixes: d79e1bd676f0 ("drm/i915/pmu: Only use exclusive mmio access for gen7")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c |  5 ++
 drivers/gpu/drm/i915/i915_pmu.c      | 84 ++++++++++++++--------------
 2 files changed, 47 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 3b8d7f830a2c..d8128448cef7 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -111,6 +111,8 @@ void i915_ggtt_suspend(struct i915_ggtt *ggtt)
 	struct i915_vma *vma, *vn;
 	int open;
 
+	mutex_lock(&ggtt->vm.mutex);
+
 	/* Skip rewriting PTE on VMA unbind. */
 	open = atomic_xchg(&ggtt->vm.open, 0);
 
@@ -121,10 +123,13 @@ void i915_ggtt_suspend(struct i915_ggtt *ggtt)
 			drm_mm_remove_node(&vma->node);
 		}
 	}
+
 	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
 	ggtt->invalidate(ggtt);
 	atomic_set(&ggtt->vm.open, open);
 
+	mutex_lunock(&ggtt->vm.mutex);
+
 	intel_gt_check_and_clear_faults(ggtt->vm.gt);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index f6f44ad5e335..802837de1767 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -269,12 +269,48 @@ static bool exclusive_mmio_access(const struct drm_i915_private *i915)
 	return IS_GEN(i915, 7);
 }
 
+static void engine_sample(struct intel_engine_cs *engine, unsigned int period_ns)
+{
+	struct intel_engine_pmu *pmu = &engine->pmu;
+	bool busy;
+	u32 val;
+
+	val = ENGINE_READ_FW(engine, RING_CTL);
+	if (val == 0) /* powerwell off => engine idle */
+		return;
+
+	if (val & RING_WAIT)
+		add_sample(&pmu->sample[I915_SAMPLE_WAIT], period_ns);
+	if (val & RING_WAIT_SEMAPHORE)
+		add_sample(&pmu->sample[I915_SAMPLE_SEMA], period_ns);
+
+	/* No need to sample when busy stats are supported. */
+	if (intel_engine_supports_stats(engine))
+		return;
+
+	/*
+	 * While waiting on a semaphore or event, MI_MODE reports the
+	 * ring as idle. However, previously using the seqno, and with
+	 * execlists sampling, we account for the ring waiting as the
+	 * engine being busy. Therefore, we record the sample as being
+	 * busy if either waiting or !idle.
+	 */
+	busy = val & (RING_WAIT_SEMAPHORE | RING_WAIT);
+	if (!busy) {
+		val = ENGINE_READ_FW(engine, RING_MI_MODE);
+		busy = !(val & MODE_IDLE);
+	}
+	if (busy)
+		add_sample(&pmu->sample[I915_SAMPLE_BUSY], period_ns);
+}
+
 static void
 engines_sample(struct intel_gt *gt, unsigned int period_ns)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	unsigned long flags;
 
 	if ((i915->pmu.enable & ENGINE_SAMPLE_MASK) == 0)
 		return;
@@ -283,53 +319,17 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 		return;
 
 	for_each_engine(engine, gt, id) {
-		struct intel_engine_pmu *pmu = &engine->pmu;
-		spinlock_t *mmio_lock;
-		unsigned long flags;
-		bool busy;
-		u32 val;
-
 		if (!intel_engine_pm_get_if_awake(engine))
 			continue;
 
-		mmio_lock = NULL;
-		if (exclusive_mmio_access(i915))
-			mmio_lock = &engine->uncore->lock;
-
-		if (unlikely(mmio_lock))
-			spin_lock_irqsave(mmio_lock, flags);
-
-		val = ENGINE_READ_FW(engine, RING_CTL);
-		if (val == 0) /* powerwell off => engine idle */
-			goto skip;
-
-		if (val & RING_WAIT)
-			add_sample(&pmu->sample[I915_SAMPLE_WAIT], period_ns);
-		if (val & RING_WAIT_SEMAPHORE)
-			add_sample(&pmu->sample[I915_SAMPLE_SEMA], period_ns);
-
-		/* No need to sample when busy stats are supported. */
-		if (intel_engine_supports_stats(engine))
-			goto skip;
-
-		/*
-		 * While waiting on a semaphore or event, MI_MODE reports the
-		 * ring as idle. However, previously using the seqno, and with
-		 * execlists sampling, we account for the ring waiting as the
-		 * engine being busy. Therefore, we record the sample as being
-		 * busy if either waiting or !idle.
-		 */
-		busy = val & (RING_WAIT_SEMAPHORE | RING_WAIT);
-		if (!busy) {
-			val = ENGINE_READ_FW(engine, RING_MI_MODE);
-			busy = !(val & MODE_IDLE);
+		if (exclusive_mmio_access(i915)) {
+			spin_lock_irqsave(&engine->uncore->lock, flags);
+			engine_sample(engine, period_ns);
+			spin_unlock_irqrestore(&engine->uncore->lock, flags);
+		} else {
+			engine_sample(engine, period_ns);
 		}
-		if (busy)
-			add_sample(&pmu->sample[I915_SAMPLE_BUSY], period_ns);
 
-skip:
-		if (unlikely(mmio_lock))
-			spin_unlock_irqrestore(mmio_lock, flags);
 		intel_engine_pm_put_async(engine);
 	}
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
