Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4EA17FFEB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 15:13:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03D716E2E1;
	Tue, 10 Mar 2020 14:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C0886E2EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 14:13:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20510379-1500050 
 for multiple; Tue, 10 Mar 2020 14:13:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 14:13:19 +0000
Message-Id: <20200310141320.24149-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200310141320.24149-1-chris@chris-wilson.co.uk>
References: <20200310141320.24149-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Mark up racy read of active
 rq->engine
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

As a virtual engine may change the rq->engine to point to the active
request in flight, we need to warn the compiler that an active request's
engine is volatile.

[   95.017686] write (marked) to 0xffff8881e8386b10 of 8 bytes by interrupt on cpu 2:
[   95.018123]  execlists_dequeue+0x762/0x2150 [i915]
[   95.018539]  __execlists_submission_tasklet+0x48/0x60 [i915]
[   95.018955]  execlists_submission_tasklet+0xd3/0x170 [i915]
[   95.018986]  tasklet_action_common.isra.0+0x42/0xa0
[   95.019016]  __do_softirq+0xd7/0x2cd
[   95.019043]  irq_exit+0xbe/0xe0
[   95.019068]  irq_work_interrupt+0xf/0x20
[   95.019491]  i915_request_retire+0x2c5/0x670 [i915]
[   95.019937]  retire_requests+0xa1/0xf0 [i915]
[   95.020348]  engine_retire+0xa1/0xe0 [i915]
[   95.020376]  process_one_work+0x3b1/0x690
[   95.020403]  worker_thread+0x80/0x670
[   95.020429]  kthread+0x19a/0x1e0
[   95.020454]  ret_from_fork+0x1f/0x30
[   95.020476]
[   95.020498] read to 0xffff8881e8386b10 of 8 bytes by task 8909 on cpu 3:
[   95.020918]  __i915_request_commit+0x177/0x220 [i915]
[   95.021329]  i915_gem_do_execbuffer+0x38c4/0x4e50 [i915]
[   95.021750]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
[   95.021784]  drm_ioctl_kernel+0xe4/0x120
[   95.021809]  drm_ioctl+0x297/0x4c7
[   95.021832]  ksys_ioctl+0x89/0xb0
[   95.021865]  __x64_sys_ioctl+0x42/0x60
[   95.021901]  do_syscall_64+0x6e/0x2c0
[   95.021927]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 74169671afb5..e05252c574a4 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1338,7 +1338,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 			   i915_seqno_passed(prev->fence.seqno,
 					     rq->fence.seqno));
 
-		if (is_power_of_2(prev->engine->mask | rq->engine->mask))
+		if (is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask))
 			i915_sw_fence_await_sw_fence(&rq->submit,
 						     &prev->submit,
 						     &rq->submitq);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
