Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C88D71B5AEB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 13:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2A86E4F4;
	Thu, 23 Apr 2020 11:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B326E435
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 11:59:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20995260-1500050 
 for multiple; Thu, 23 Apr 2020 12:58:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 12:58:39 +0100
Message-Id: <20200423115839.27972-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Mark up racy read of rq->engine
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

As the i915_request.engine may be updated by a virtual engine to either
point to the virtual engine or the real physical engine on submission,
we have to be wary that the engine pointer may change.

[  213.317076] BUG: KCSAN: data-race in execlists_dequeue [i915] / i915_request_wait [i915]
[  213.317097]
[  213.317110] write (marked) to 0xffff8881e8647650 of 8 bytes by interrupt on cpu 2:
[  213.317386]  execlists_dequeue+0x43b/0x1670 [i915]
[  213.317645]  __execlists_submission_tasklet+0x48/0x60 [i915]
[  213.317905]  execlists_submission_tasklet+0xd3/0x170 [i915]
[  213.317926]  tasklet_action_common.isra.0+0x42/0x90
[  213.317943]  __do_softirq+0xc8/0x206
[  213.317958]  irq_exit+0xcd/0xe0
[  213.317980]  irq_work_interrupt+0xf/0x20
[  213.317999]  __tsan_read8+0x30/0x100
[  213.318272]  retire_requests+0xdd/0xf0 [i915]
[  213.318502]  engine_retire+0xa6/0xe0 [i915]
[  213.318519]  process_one_work+0x3af/0x640
[  213.318534]  worker_thread+0x80/0x670
[  213.318548]  kthread+0x19a/0x1e0
[  213.318566]  ret_from_fork+0x1f/0x30
[  213.318584]
[  213.318595] read to 0xffff8881e8647650 of 8 bytes by task 458 on cpu 1:
[  213.318847]  i915_request_wait+0x3e3/0x510 [i915]
[  213.319088]  i915_gem_object_wait_fence+0x81/0xa0 [i915]
[  213.319328]  i915_gem_object_wait+0x26b/0x560 [i915]
[  213.319578]  i915_gem_wait_ioctl+0x141/0x290 [i915]
[  213.319597]  drm_ioctl_kernel+0xe9/0x130
[  213.319613]  drm_ioctl+0x27d/0x45e
[  213.319628]  ksys_ioctl+0x89/0xb0
[  213.319648]  __x64_sys_ioctl+0x42/0x60
[  213.319666]  do_syscall_64+0x6e/0x2c0
[  213.319680]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

In this case, we are merely trying to flush the most recent engine
associated with the request, and do not care which as the process of
chaing the engine is done by a tasklet, with which we are yielding to.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 22635bbabf06..e9fd20242438 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1660,7 +1660,7 @@ long i915_request_wait(struct i915_request *rq,
 			break;
 		}
 
-		intel_engine_flush_submission(rq->engine);
+		intel_engine_flush_submission(READ_ONCE(rq->engine));
 
 		if (signal_pending_state(state, current)) {
 			timeout = -ERESTARTSYS;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
