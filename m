Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA1017DE44
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 12:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CFE56E136;
	Mon,  9 Mar 2020 11:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63CB26E05D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 11:09:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20493827-1500050 
 for multiple; Mon, 09 Mar 2020 11:09:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 11:09:33 +0000
Message-Id: <20200309110934.868-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309110934.868-1-chris@chris-wilson.co.uk>
References: <20200309110934.868-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/execlists: Mark up read of
 i915_request.fence.flags
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

[  145.927961] BUG: KCSAN: data-race in can_merge_rq [i915] / signal_irq_work [i915]
[  145.927980]
[  145.927992] write (marked) to 0xffff8881e513fab0 of 8 bytes by interrupt on cpu 2:
[  145.928250]  signal_irq_work+0x134/0x640 [i915]
[  145.928268]  irq_work_run_list+0xd7/0x120
[  145.928283]  irq_work_run+0x1d/0x50
[  145.928300]  smp_irq_work_interrupt+0x21/0x30
[  145.928328]  irq_work_interrupt+0xf/0x20
[  145.928356]  _raw_spin_unlock_irqrestore+0x34/0x40
[  145.928596]  execlists_submission_tasklet+0xde/0x170 [i915]
[  145.928616]  tasklet_action_common.isra.0+0x42/0xa0
[  145.928632]  __do_softirq+0xd7/0x2cd
[  145.928646]  irq_exit+0xbe/0xe0
[  145.928665]  do_IRQ+0x51/0x100
[  145.928684]  ret_from_intr+0x0/0x1c
[  145.928699]  schedule+0x0/0xb0
[  145.928719]  worker_thread+0x194/0x670
[  145.928743]  kthread+0x19a/0x1e0
[  145.928765]  ret_from_fork+0x1f/0x30
[  145.928784]
[  145.928796] read to 0xffff8881e513fab0 of 8 bytes by task 738 on cpu 1:
[  145.929046]  can_merge_rq+0xb1/0x100 [i915]
[  145.929282]  __execlists_submission_tasklet+0x866/0x25a0 [i915]
[  145.929518]  execlists_submit_request+0x2a4/0x2b0 [i915]
[  145.929758]  submit_notify+0x8f/0xc0 [i915]
[  145.929989]  __i915_sw_fence_complete+0x5d/0x3e0 [i915]
[  145.930221]  i915_sw_fence_complete+0x58/0x80 [i915]
[  145.930453]  i915_sw_fence_commit+0x16/0x20 [i915]
[  145.930698]  __i915_request_queue+0x60/0x70 [i915]
[  145.930935]  i915_gem_do_execbuffer+0x3997/0x4c20 [i915]
[  145.931175]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
[  145.931194]  drm_ioctl_kernel+0xe4/0x120
[  145.931208]  drm_ioctl+0x297/0x4c7
[  145.931222]  ksys_ioctl+0x89/0xb0
[  145.931238]  __x64_sys_ioctl+0x42/0x60
[  145.931260]  do_syscall_64+0x6e/0x2c0
[  145.931275]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index a9d77b0e4e27..20dd3c2cfa2f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1597,6 +1597,11 @@ static bool can_merge_ctx(const struct intel_context *prev,
 	return true;
 }
 
+static unsigned long i915_request_flags(const struct i915_request *rq)
+{
+	return READ_ONCE(rq->fence.flags);
+}
+
 static bool can_merge_rq(const struct i915_request *prev,
 			 const struct i915_request *next)
 {
@@ -1614,7 +1619,7 @@ static bool can_merge_rq(const struct i915_request *prev,
 	if (i915_request_completed(next))
 		return true;
 
-	if (unlikely((prev->fence.flags ^ next->fence.flags) &
+	if (unlikely((i915_request_flags(prev) ^ i915_request_flags(next)) &
 		     (BIT(I915_FENCE_FLAG_NOPREEMPT) |
 		      BIT(I915_FENCE_FLAG_SENTINEL))))
 		return false;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
