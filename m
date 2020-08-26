Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4E2252FB4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D45FB6E988;
	Wed, 26 Aug 2020 13:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5A36E95E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:28:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22244748-1500050 
 for multiple; Wed, 26 Aug 2020 14:28:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:27:54 +0100
Message-Id: <20200826132811.17577-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/39] drm/i915/gt: Split the breadcrumb
 spinlock between global and contexts
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

As we funnel more and more contexts into the breadcrumbs on an engine,
the hold time of b->irq_lock grows. As we may then contend with the
b->irq_lock during request submission, this increases the burden upon
the engine->active.lock and so directly impacts both our execution
latency and client latency. If we split the b->irq_lock by introducing a
per-context spinlock to manage the signalers within a context, we then
only need the b->irq_lock for enabling/disabling the interrupt and can
avoid taking the lock for walking the list of contexts within the signal
worker. Even with the current setup, this greatly reduces the number of
times we have to take and fight for b->irq_lock.

Furthermore, this closes the race between enabling the signaling context
while it is in the process of being signaled and removed:

<4>[  416.208555] list_add corruption. prev->next should be next (ffff8881951d5910), but was dead000000000100. (prev=ffff8882781bb870).
<4>[  416.208573] WARNING: CPU: 7 PID: 0 at lib/list_debug.c:28 __list_add_valid+0x4d/0x70
<4>[  416.208575] Modules linked in: i915(+) vgem snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio mei_hdcp x86_pkg_temp_thermal coretemp ax88179_178a usbnet mii crct10dif_pclmul snd_intel_dspcfg crc32_pclmul snd_hda_codec snd_hwdep ghash_clmulni_intel snd_hda_core e1000e snd_pcm ptp pps_core mei_me mei prime_numbers intel_lpss_pci [last unloaded: i915]
<4>[  416.208611] CPU: 7 PID: 0 Comm: swapper/7 Tainted: G     U            5.8.0-CI-CI_DRM_8852+ #1
<4>[  416.208614] Hardware name: Intel Corporation Ice Lake Client Platform/IceLake Y LPDDR4x T4 RVP TLC, BIOS ICLSFWR1.R00.3212.A00.1905212112 05/21/2019
<4>[  416.208627] RIP: 0010:__list_add_valid+0x4d/0x70
<4>[  416.208631] Code: c3 48 89 d1 48 c7 c7 60 18 33 82 48 89 c2 e8 ea e0 b6 ff 0f 0b 31 c0 c3 48 89 c1 4c 89 c6 48 c7 c7 b0 18 33 82 e8 d3 e0 b6 ff <0f> 0b 31 c0 c3 48 89 f2 4c 89 c1 48 89 fe 48 c7 c7 00 19 33 82 e8
<4>[  416.208633] RSP: 0018:ffffc90000280e18 EFLAGS: 00010086
<4>[  416.208636] RAX: 0000000000000000 RBX: ffff888250a44880 RCX: 0000000000000105
<4>[  416.208639] RDX: 0000000000000105 RSI: ffffffff82320c5b RDI: 00000000ffffffff
<4>[  416.208641] RBP: ffff8882781bb870 R08: 0000000000000000 R09: 0000000000000001
<4>[  416.208643] R10: 00000000054d2957 R11: 000000006abbd991 R12: ffff8881951d58c8
<4>[  416.208646] R13: ffff888286073880 R14: ffff888286073848 R15: ffff8881951d5910
<4>[  416.208669] FS:  0000000000000000(0000) GS:ffff88829c180000(0000) knlGS:0000000000000000
<4>[  416.208671] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[  416.208673] CR2: 0000556231326c48 CR3: 0000000005610001 CR4: 0000000000760ee0
<4>[  416.208675] PKRU: 55555554
<4>[  416.208677] Call Trace:
<4>[  416.208679]  <IRQ>
<4>[  416.208751]  i915_request_enable_breadcrumb+0x278/0x400 [i915]
<4>[  416.208839]  __i915_request_submit+0xca/0x2a0 [i915]
<4>[  416.208892]  __execlists_submission_tasklet+0x480/0x1830 [i915]
<4>[  416.208942]  execlists_submission_tasklet+0xc4/0x130 [i915]
<4>[  416.208947]  tasklet_action_common.isra.17+0x6c/0x1c0
<4>[  416.208954]  __do_softirq+0xdf/0x498
<4>[  416.208960]  ? handle_fasteoi_irq+0x150/0x150
<4>[  416.208964]  asm_call_on_stack+0xf/0x20
<4>[  416.208966]  </IRQ>
<4>[  416.208969]  do_softirq_own_stack+0xa1/0xc0
<4>[  416.208972]  irq_exit_rcu+0xb5/0xc0
<4>[  416.208976]  common_interrupt+0xf7/0x260
<4>[  416.208980]  asm_common_interrupt+0x1e/0x40
<4>[  416.208985] RIP: 0010:cpuidle_enter_state+0xb6/0x410
<4>[  416.208987] Code: 00 31 ff e8 9c 3e 89 ff 80 7c 24 0b 00 74 12 9c 58 f6 c4 02 0f 85 31 03 00 00 31 ff e8 e3 6c 90 ff e8 fe a4 94 ff fb 45 85 ed <0f> 88 c7 02 00 00 49 63 c5 4c 2b 24 24 48 8d 14 40 48 8d 14 90 48
<4>[  416.208989] RSP: 0018:ffffc90000143e70 EFLAGS: 00000206
<4>[  416.208991] RAX: 0000000000000007 RBX: ffffe8ffffda8070 RCX: 0000000000000000
<4>[  416.208993] RDX: 0000000000000000 RSI: ffffffff8238b4ee RDI: ffffffff8233184f
<4>[  416.208995] RBP: ffffffff826b4e00 R08: 0000000000000000 R09: 0000000000000000
<4>[  416.208997] R10: 0000000000000001 R11: 0000000000000000 R12: 00000060e7f24a8f
<4>[  416.208998] R13: 0000000000000003 R14: 0000000000000003 R15: 0000000000000003
<4>[  416.209012]  cpuidle_enter+0x24/0x40
<4>[  416.209016]  do_idle+0x22f/0x2d0
<4>[  416.209022]  cpu_startup_entry+0x14/0x20
<4>[  416.209025]  start_secondary+0x158/0x1a0
<4>[  416.209030]  secondary_startup_64+0xa4/0xb0
<4>[  416.209039] irq event stamp: 10186977
<4>[  416.209042] hardirqs last  enabled at (10186976): [<ffffffff810b9363>] tasklet_action_common.isra.17+0xe3/0x1c0
<4>[  416.209044] hardirqs last disabled at (10186977): [<ffffffff81a5e5ed>] _raw_spin_lock_irqsave+0xd/0x50
<4>[  416.209047] softirqs last  enabled at (10186968): [<ffffffff810b9a1a>] irq_enter_rcu+0x6a/0x70
<4>[  416.209049] softirqs last disabled at (10186969): [<ffffffff81c00f4f>] asm_call_on_stack+0xf/0x20

<4>[  416.209317] list_del corruption, ffff8882781bb870->next is LIST_POISON1 (dead000000000100)
<4>[  416.209317] WARNING: CPU: 7 PID: 46 at lib/list_debug.c:47 __list_del_entry_valid+0x4e/0x90
<4>[  416.209317] Modules linked in: i915(+) vgem snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio mei_hdcp x86_pkg_temp_thermal coretemp ax88179_178a usbnet mii crct10dif_pclmul snd_intel_dspcfg crc32_pclmul snd_hda_codec snd_hwdep ghash_clmulni_intel snd_hda_core e1000e snd_pcm ptp pps_core mei_me mei prime_numbers intel_lpss_pci [last unloaded: i915]
<4>[  416.209317] CPU: 7 PID: 46 Comm: ksoftirqd/7 Tainted: G     U  W         5.8.0-CI-CI_DRM_8852+ #1
<4>[  416.209317] Hardware name: Intel Corporation Ice Lake Client Platform/IceLake Y LPDDR4x T4 RVP TLC, BIOS ICLSFWR1.R00.3212.A00.1905212112 05/21/2019
<4>[  416.209317] RIP: 0010:__list_del_entry_valid+0x4e/0x90
<4>[  416.209317] Code: 2e 48 8b 32 48 39 fe 75 3a 48 8b 50 08 48 39 f2 75 48 b8 01 00 00 00 c3 48 89 fe 48 89 c2 48 c7 c7 38 19 33 82 e8 62 e0 b6 ff <0f> 0b 31 c0 c3 48 89 fe 48 c7 c7 70 19 33 82 e8 4e e0 b6 ff 0f 0b
<4>[  416.209317] RSP: 0018:ffffc90000280de8 EFLAGS: 00010086
<4>[  416.209317] RAX: 0000000000000000 RBX: ffff8882781bb848 RCX: 0000000000010104
<4>[  416.209317] RDX: 0000000000010104 RSI: ffffffff8238b4ee RDI: 00000000ffffffff
<4>[  416.209317] RBP: ffff8882781bb880 R08: 0000000000000000 R09: 0000000000000001
<4>[  416.209317] R10: 000000009fb6666e R11: 00000000feca9427 R12: ffffc90000280e18
<4>[  416.209317] R13: ffff8881951d5930 R14: dead0000000000d8 R15: ffff8882781bb880
<4>[  416.209317] FS:  0000000000000000(0000) GS:ffff88829c180000(0000) knlGS:0000000000000000
<4>[  416.209317] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[  416.209317] CR2: 0000556231326c48 CR3: 0000000005610001 CR4: 0000000000760ee0
<4>[  416.209317] PKRU: 55555554
<4>[  416.209317] Call Trace:
<4>[  416.209317]  <IRQ>
<4>[  416.209317]  remove_signaling_context.isra.13+0xd/0x70 [i915]
<4>[  416.209513]  signal_irq_work+0x1f7/0x4b0 [i915]

This is caused by virtual engines where although we take the breadcrumb
lock on each of the active engines, they may be different engines on
different requests, It turns out that the b->irq_lock was not a
sufficient proxy for the engine->active.lock in the case of more than
one request, so introduce an explicit lock around ce->signals.

v2: ce->signal_lock is acquired with only RCU protection and so must be
treated carefully and not cleared during reallocation. We also then need
to confirm that the ce we lock is the same as we found in the breadcrumb
list.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2276
Fixes: f94343d0a622 ("drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs")
Fixes: bda4d4db6dd6 ("drm/i915/gt: Replace intel_engine_transfer_stale_breadcrumbs")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 168 ++++++++----------
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |   6 +-
 drivers/gpu/drm/i915/gt/intel_context.c       |   3 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  12 +-
 drivers/gpu/drm/i915/i915_request.h           |   6 +-
 5 files changed, 90 insertions(+), 105 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index cf6e05ea4d8f..a24cc1ff08a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -101,18 +101,37 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 	intel_gt_pm_put_async(b->irq_engine->gt);
 }
 
+static void intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
+{
+	spin_lock(&b->irq_lock);
+	if (b->irq_armed)
+		__intel_breadcrumbs_disarm_irq(b);
+	spin_unlock(&b->irq_lock);
+}
+
 static void add_signaling_context(struct intel_breadcrumbs *b,
 				  struct intel_context *ce)
 {
-	intel_context_get(ce);
-	list_add_tail(&ce->signal_link, &b->signalers);
+	lockdep_assert_held(&ce->signal_lock);
+
+	spin_lock(&b->signalers_lock);
+	list_add_rcu(&ce->signal_link, &b->signalers);
+	spin_unlock(&b->signalers_lock);
 }
 
-static void remove_signaling_context(struct intel_breadcrumbs *b,
+static bool remove_signaling_context(struct intel_breadcrumbs *b,
 				     struct intel_context *ce)
 {
-	list_del(&ce->signal_link);
-	intel_context_put(ce);
+	lockdep_assert_held(&ce->signal_lock);
+
+	if (!list_empty(&ce->signals))
+		return false;
+
+	spin_lock(&b->signalers_lock);
+	list_del_rcu(&ce->signal_link);
+	spin_unlock(&b->signalers_lock);
+
+	return true;
 }
 
 static inline bool __request_completed(const struct i915_request *rq)
@@ -175,6 +194,8 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
 
 static bool __signal_request(struct i915_request *rq)
 {
+	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
+
 	if (!__dma_fence_signal(&rq->fence)) {
 		i915_request_put(rq);
 		return false;
@@ -195,15 +216,12 @@ static void signal_irq_work(struct irq_work *work)
 	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
 	const ktime_t timestamp = ktime_get();
 	struct llist_node *signal, *sn;
-	struct intel_context *ce, *cn;
-	struct list_head *pos, *next;
+	struct intel_context *ce;
 
 	signal = NULL;
 	if (unlikely(!llist_empty(&b->signaled_requests)))
 		signal = llist_del_all(&b->signaled_requests);
 
-	spin_lock(&b->irq_lock);
-
 	/*
 	 * Keep the irq armed until the interrupt after all listeners are gone.
 	 *
@@ -229,47 +247,44 @@ static void signal_irq_work(struct irq_work *work)
 	 * interrupt draw less ire from other users of the system and tools
 	 * like powertop.
 	 */
-	if (!signal && b->irq_armed && list_empty(&b->signalers))
-		__intel_breadcrumbs_disarm_irq(b);
+	if (!signal && READ_ONCE(b->irq_armed) && list_empty(&b->signalers))
+		intel_breadcrumbs_disarm_irq(b);
 
-	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
-		GEM_BUG_ON(list_empty(&ce->signals));
+	rcu_read_lock();
+	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
+		struct i915_request *rq;
 
-		list_for_each_safe(pos, next, &ce->signals) {
-			struct i915_request *rq =
-				list_entry(pos, typeof(*rq), signal_link);
+		list_for_each_entry_rcu(rq, &ce->signals, signal_link) {
+			bool release;
 
-			GEM_BUG_ON(!check_signal_order(ce, rq));
 			if (!__request_completed(rq))
 				break;
 
+			if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
+						&rq->fence.flags))
+				break;
+
 			/*
 			 * Queue for execution after dropping the signaling
 			 * spinlock as the callback chain may end up adding
 			 * more signalers to the same context or engine.
 			 */
-			clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
+			spin_lock(&ce->signal_lock);
+			list_del_rcu(&rq->signal_link);
+			release = remove_signaling_context(b, ce);
+			spin_unlock(&ce->signal_lock);
+
 			if (__signal_request(rq))
 				/* We own signal_node now, xfer to local list */
 				signal = slist_add(&rq->signal_node, signal);
-		}
 
-		/*
-		 * We process the list deletion in bulk, only using a list_add
-		 * (not list_move) above but keeping the status of
-		 * rq->signal_link known with the I915_FENCE_FLAG_SIGNAL bit.
-		 */
-		if (!list_is_first(pos, &ce->signals)) {
-			/* Advance the list to the first incomplete request */
-			__list_del_many(&ce->signals, pos);
-			if (&ce->signals == pos) { /* now empty */
+			if (release) {
 				add_retire(b, ce->timeline);
-				remove_signaling_context(b, ce);
+				intel_context_put(ce);
 			}
 		}
 	}
-
-	spin_unlock(&b->irq_lock);
+	rcu_read_unlock();
 
 	llist_for_each_safe(signal, sn, signal) {
 		struct i915_request *rq =
@@ -298,14 +313,15 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
 	if (!b)
 		return NULL;
 
-	spin_lock_init(&b->irq_lock);
+	b->irq_engine = irq_engine;
+
+	spin_lock_init(&b->signalers_lock);
 	INIT_LIST_HEAD(&b->signalers);
 	init_llist_head(&b->signaled_requests);
 
+	spin_lock_init(&b->irq_lock);
 	init_irq_work(&b->irq_work, signal_irq_work);
 
-	b->irq_engine = irq_engine;
-
 	return b;
 }
 
@@ -347,9 +363,9 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
 	kfree(b);
 }
 
-static void insert_breadcrumb(struct i915_request *rq,
-			      struct intel_breadcrumbs *b)
+static void insert_breadcrumb(struct i915_request *rq)
 {
+	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
 	struct list_head *pos;
 
@@ -371,6 +387,7 @@ static void insert_breadcrumb(struct i915_request *rq,
 	}
 
 	if (list_empty(&ce->signals)) {
+		intel_context_get(ce);
 		add_signaling_context(b, ce);
 		pos = &ce->signals;
 	} else {
@@ -396,8 +413,9 @@ static void insert_breadcrumb(struct i915_request *rq,
 				break;
 		}
 	}
-	list_add(&rq->signal_link, pos);
+	list_add_rcu(&rq->signal_link, pos);
 	GEM_BUG_ON(!check_signal_order(ce, rq));
+	GEM_BUG_ON(test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags));
 	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 
 	/*
@@ -410,7 +428,7 @@ static void insert_breadcrumb(struct i915_request *rq,
 
 bool i915_request_enable_breadcrumb(struct i915_request *rq)
 {
-	struct intel_breadcrumbs *b;
+	struct intel_context *ce = rq->context;
 
 	/* Serialises with i915_request_retire() using rq->lock */
 	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
@@ -425,67 +443,30 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 	if (!test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
 		return true;
 
-	/*
-	 * rq->engine is locked by rq->engine->active.lock. That however
-	 * is not known until after rq->engine has been dereferenced and
-	 * the lock acquired. Hence we acquire the lock and then validate
-	 * that rq->engine still matches the lock we hold for it.
-	 *
-	 * Here, we are using the breadcrumb lock as a proxy for the
-	 * rq->engine->active.lock, and we know that since the breadcrumb
-	 * will be serialised within i915_request_submit/i915_request_unsubmit,
-	 * the engine cannot change while active as long as we hold the
-	 * breadcrumb lock on that engine.
-	 *
-	 * From the dma_fence_enable_signaling() path, we are outside of the
-	 * request submit/unsubmit path, and so we must be more careful to
-	 * acquire the right lock.
-	 */
-	b = READ_ONCE(rq->engine)->breadcrumbs;
-	spin_lock(&b->irq_lock);
-	while (unlikely(b != READ_ONCE(rq->engine)->breadcrumbs)) {
-		spin_unlock(&b->irq_lock);
-		b = READ_ONCE(rq->engine)->breadcrumbs;
-		spin_lock(&b->irq_lock);
-	}
-
-	/*
-	 * Now that we are finally serialised with request submit/unsubmit,
-	 * [with b->irq_lock] and with i915_request_retire() [via checking
-	 * SIGNALED with rq->lock] confirm the request is indeed active. If
-	 * it is no longer active, the breadcrumb will be attached upon
-	 * i915_request_submit().
-	 */
+	spin_lock(&ce->signal_lock);
 	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
-		insert_breadcrumb(rq, b);
-
-	spin_unlock(&b->irq_lock);
+		insert_breadcrumb(rq);
+	spin_unlock(&ce->signal_lock);
 
 	return true;
 }
 
 void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
-	struct intel_breadcrumbs *b = rq->engine->breadcrumbs;
+	struct intel_context *ce = rq->context;
+	bool release;
 
-	/*
-	 * We must wait for b->irq_lock so that we know the interrupt handler
-	 * has released its reference to the intel_context and has completed
-	 * the DMA_FENCE_FLAG_SIGNALED_BIT/I915_FENCE_FLAG_SIGNAL dance (if
-	 * required).
-	 */
-	spin_lock(&b->irq_lock);
-	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
-		struct intel_context *ce = rq->context;
+	if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
+		return;
 
-		list_del(&rq->signal_link);
-		if (list_empty(&ce->signals))
-			remove_signaling_context(b, ce);
+	spin_lock(&ce->signal_lock);
+	list_del_rcu(&rq->signal_link);
+	release = remove_signaling_context(rq->engine->breadcrumbs, ce);
+	spin_unlock(&ce->signal_lock);
+	if (release)
+		intel_context_put(ce);
 
-		clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
-		i915_request_put(rq);
-	}
-	spin_unlock(&b->irq_lock);
+	i915_request_put(rq);
 }
 
 static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
@@ -495,18 +476,17 @@ static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
 
 	drm_printf(p, "Signals:\n");
 
-	spin_lock_irq(&b->irq_lock);
-	list_for_each_entry(ce, &b->signalers, signal_link) {
-		list_for_each_entry(rq, &ce->signals, signal_link) {
+	rcu_read_lock();
+	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
+		list_for_each_entry_rcu(rq, &ce->signals, signal_link)
 			drm_printf(p, "\t[%llx:%llx%s] @ %dms\n",
 				   rq->fence.context, rq->fence.seqno,
 				   i915_request_completed(rq) ? "!" :
 				   i915_request_started(rq) ? "*" :
 				   "",
 				   jiffies_to_msecs(jiffies - rq->emitted_jiffies));
-		}
 	}
-	spin_unlock_irq(&b->irq_lock);
+	rcu_read_unlock();
 }
 
 void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index 3fa19820b37a..a74bb3062bd8 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -29,18 +29,16 @@
  * the overhead of waking that client is much preferred.
  */
 struct intel_breadcrumbs {
-	spinlock_t irq_lock; /* protects the lists used in hardirq context */
-
 	/* Not all breadcrumbs are attached to physical HW */
 	struct intel_engine_cs *irq_engine;
 
+	spinlock_t signalers_lock; /* protects the list of signalers */
 	struct list_head signalers;
 	struct llist_head signaled_requests;
 
+	spinlock_t irq_lock; /* protects the interrupt from hardirq context */
 	struct irq_work irq_work; /* for use from inside irq_lock */
-
 	unsigned int irq_enabled;
-
 	bool irq_armed;
 };
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 52a836ef0006..f27da69c687d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -370,7 +370,8 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 
 	ce->vm = i915_vm_get(engine->gt->vm);
 
-	INIT_LIST_HEAD(&ce->signal_link);
+	/* NB ce->signal_link/lock is used under RCU */
+	spin_lock_init(&ce->signal_lock);
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 20cb5835d1c3..52fa9c132746 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -25,6 +25,7 @@ DECLARE_EWMA(runtime, 3, 8);
 struct i915_gem_context;
 struct i915_gem_ww_ctx;
 struct i915_vma;
+struct intel_breadcrumbs;
 struct intel_context;
 struct intel_ring;
 
@@ -63,8 +64,15 @@ struct intel_context {
 	struct i915_address_space *vm;
 	struct i915_gem_context __rcu *gem_context;
 
-	struct list_head signal_link;
-	struct list_head signals;
+	/*
+	 * @signal_lock protects the list of requests that need signaling,
+	 * @signals. While there are any requests that need signaling,
+	 * we add the context to the breadcrumbs worker, and remove it
+	 * upon completion/cancellation of the last request.
+	 */
+	struct list_head signal_link; /* Accessed under RCU */
+	struct list_head signals; /* Guarded by signal_lock */
+	spinlock_t signal_lock; /* protects signals, the list of requests */
 
 	struct i915_vma *state;
 	struct intel_ring *ring;
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index f768ed7b0246..a06263bf8cbb 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -177,10 +177,8 @@ struct i915_request {
 	struct intel_ring *ring;
 	struct intel_timeline __rcu *timeline;
 
-	union {
-		struct list_head signal_link;
-		struct llist_node signal_node;
-	};
+	struct list_head signal_link;
+	struct llist_node signal_node;
 
 	/*
 	 * The rcu epoch of when this request was allocated. Used to judiciously
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
