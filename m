Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33533252FC3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C28F6EA5F;
	Wed, 26 Aug 2020 13:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF0F6EA69
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:28:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22244757-1500050 
 for multiple; Wed, 26 Aug 2020 14:28:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:28:03 +0100
Message-Id: <20200826132811.17577-31-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/39] drm/i915/gt: Remove virtual breadcrumb
 before transfer
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

The issue with stale virtual breadcrumbs remain. Now we have the problem
that if the irq-signaler is still referencing the stale breadcrumb as we
transfer it to a new sibling, the list becomes spaghetti. This is a very
small window, but that doesn't stop it being hit infrequently. To
prevent the lists being tangled (the iterator starting on one engine's
b->signalers but walking onto another list), always decouple the virtual
breadcrumb on schedule-out and make sure that the walker has stepped out
of the lists.

Otherwise, we end up corrupting the lists upon signaling:

<4> [412.623150] list_add corruption. prev->next should be next (ffff888284a98470), but was dead000000000100. (prev=ffff8882586fb870).
<4> [412.623167] WARNING: CPU: 7 PID: 0 at lib/list_debug.c:28 __list_add_valid+0x4d/0x70
<4> [412.623169] Modules linked in: i915(+) vgem snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio mei_hdcp x86_pkg_temp_thermal ax88179_178a usbnet coretemp snd_intel_dspcfg mii snd_hda_codec crct10dif_pclmul crc32_pclmul snd_hwdep snd_hda_core ghash_clmulni_intel snd_pcm e1000e mei_me mei ptp pps_core prime_numbers intel_lpss_pci [last unloaded: i915]
<4> [412.623191] CPU: 7 PID: 0 Comm: swapper/7 Tainted: G     U            5.9.0-rc2-CI-CI_DRM_8925+ #1
<4> [412.623194] Hardware name: Intel Corporation Ice Lake Client Platform/IceLake Y LPDDR4x T4 RVP TLC, BIOS ICLSFWR1.R00.3212.A00.1905212112 05/21/2019
<4> [412.623197] RIP: 0010:__list_add_valid+0x4d/0x70
<4> [412.623200] Code: c3 48 89 d1 48 c7 c7 18 57 33 82 48 89 c2 e8 fa 78 b6 ff 0f 0b 31 c0 c3 48 89 c1 4c 89 c6 48 c7 c7 68 57 33 82 e8 e3 78 b6 ff <0f> 0b 31 c0 c3 48 89 f2 4c 89 c1 48 89 fe 48 c7 c7 b8 57 33 82 e8
<4> [412.623202] RSP: 0018:ffffc90000280e18 EFLAGS: 00010086
<4> [412.623205] RAX: 0000000000000000 RBX: ffff88828dbd8d00 RCX: 0000000000000105
<4> [412.623208] RDX: 0000000000000105 RSI: ffffffff82324b63 RDI: 00000000ffffffff
<4> [412.623210] RBP: ffff8882586fb870 R08: ffff88829a144998 R09: 00000000fffffffe
<4> [412.623212] R10: 00000000c4bbeb58 R11: 00000000eb0f6cb0 R12: ffff888284a98428
<4> [412.623215] R13: ffff88827d7db880 R14: ffff88827d7db848 R15: ffff888284a98470
<4> [412.623217] FS:  0000000000000000(0000) GS:ffff88829c180000(0000) knlGS:0000000000000000
<4> [412.623220] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [412.623222] CR2: 0000561612b6e6e0 CR3: 0000000005610002 CR4: 0000000000770ee0
<4> [412.623224] PKRU: 55555554
<4> [412.623227] Call Trace:
<4> [412.623229]  <IRQ>
<4> [412.623307]  i915_request_enable_breadcrumb+0x278/0x400 [i915]
<4> [412.623391]  __i915_request_submit+0xca/0x2a0 [i915]
<4> [412.623461]  __execlists_submission_tasklet+0x480/0x1830 [i915]
<4> [412.623572]  execlists_submission_tasklet+0xc4/0x130 [i915]
<4> [412.623585]  tasklet_action_common.isra.17+0x198/0x1d0
<4> [412.623606]  __do_softirq+0xe0/0x497
<4> [412.623619]  ? handle_fasteoi_irq+0x150/0x150
<4> [412.623622]  asm_call_on_stack+0xf/0x20
<4> [412.623630]  </IRQ>
<4> [412.623634]  do_softirq_own_stack+0x73/0x90
<4> [412.623645]  irq_exit_rcu+0xa9/0xb0
<4> [412.623648]  common_interrupt+0xdd/0x210
<4> [412.623652]  asm_common_interrupt+0x1e/0x40

So far this has only been seen in our selftests that emphasize lots of
fast sibling switches for the virtual engines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c |  5 +++--
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 15 +++++++++++++++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index f5f6feed0fa6..5b84f51931d9 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -461,15 +461,16 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
 	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
+	unsigned long flags;
 	bool release;
 
 	if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
 		return;
 
-	spin_lock(&ce->signal_lock);
+	spin_lock_irqsave(&ce->signal_lock, flags);
 	list_del_rcu(&rq->signal_link);
 	release = remove_signaling_context(b, ce);
-	spin_unlock(&ce->signal_lock);
+	spin_unlock_irqrestore(&ce->signal_lock, flags);
 	if (release)
 		intel_context_put(ce);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f89e4f62c88d..6e57f30c80f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1387,6 +1387,21 @@ static inline void execlists_schedule_in(struct i915_request *rq, int idx)
 static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
+	struct intel_engine_cs *engine = rq->engine;
+
+	/* Flush concurrent rcu iterators in signal_irq_work */
+	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags)) {
+		/*
+		 * After this point, the rq may be transferred to a new
+		 * sibling, so before we clear ce->inflight make sure that
+		 * the context has been removed from the b->signalers and
+		 * furthermore we need to make sure that the concurrent
+		 * iterator in signal_irq_work is no longer following
+		 * ce->signal_link.
+		 */
+		i915_request_cancel_breadcrumb(rq);
+		irq_work_sync(&engine->breadcrumbs->irq_work);
+	}
 
 	if (READ_ONCE(ve->request))
 		tasklet_hi_schedule(&ve->base.execlists.tasklet);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
