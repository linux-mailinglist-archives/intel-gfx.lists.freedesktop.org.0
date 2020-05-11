Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 604191CD363
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 09:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56AF36E220;
	Mon, 11 May 2020 07:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30946E220
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 07:57:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21160785-1500050 
 for multiple; Mon, 11 May 2020 08:57:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 08:57:03 +0100
Message-Id: <20200511075722.13483-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/20] drm/i915/gt: Mark up the racy read of
 execlists->context_tag
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

Since we are using bitops on context_tag to allow us to reserve and
release inflight tags concurrently, the scan for the next bit is
intentionally racy.

[  516.446854] BUG: KCSAN: data-race in execlists_schedule_in.isra.0 [i915] / execlists_schedule_out [i915]
[  516.446874]
[  516.446886] write (marked) to 0xffff8881f7644048 of 8 bytes by interrupt on cpu 2:
[  516.447076]  execlists_schedule_out+0x538/0x6a0 [i915]
[  516.447263]  process_csb+0x10b/0x3d0 [i915]
[  516.447449]  execlists_submission_tasklet+0x30/0x170 [i915]
[  516.447468]  tasklet_action_common.isra.0+0x42/0x90
[  516.447484]  __do_softirq+0xc8/0x206
[  516.447498]  irq_exit+0xcd/0xe0
[  516.447516]  do_IRQ+0x44/0xc0
[  516.447535]  ret_from_intr+0x0/0x1c
[  516.447550]  cpuidle_enter_state+0x199/0x400
[  516.447572]  cpuidle_enter+0x50/0x90
[  516.447587]  do_idle+0x197/0x1e0
[  516.447600]  cpu_startup_entry+0x14/0x20
[  516.447619]  start_secondary+0xf9/0x130
[  516.447643]  secondary_startup_64+0xa4/0xb0
[  516.447655]
[  516.447671] read to 0xffff8881f7644048 of 8 bytes by task 460 on cpu 1:
[  516.447863]  execlists_schedule_in.isra.0+0x3cf/0x5a0 [i915]
[  516.448064]  execlists_dequeue+0xf8f/0x1690 [i915]
[  516.448252]  __execlists_submission_tasklet+0x48/0x60 [i915]
[  516.448440]  execlists_submit_request+0x2e2/0x310 [i915]
[  516.448634]  submit_notify+0x8f/0xc8 [i915]
[  516.448820]  __i915_sw_fence_complete+0x61/0x420 [i915]
[  516.449005]  i915_sw_fence_complete+0x58/0x80 [i915]
[  516.449208]  i915_sw_fence_commit+0x16/0x20 [i915]
[  516.449399]  __i915_request_queue+0x60/0x70 [i915]
[  516.449590]  i915_gem_do_execbuffer+0x33f1/0x4a00 [i915]
[  516.449782]  i915_gem_execbuffer2_ioctl+0x2a2/0x550 [i915]
[  516.449800]  drm_ioctl_kernel+0xe9/0x130
[  516.449814]  drm_ioctl+0x27d/0x45e
[  516.449827]  ksys_ioctl+0x89/0xb0
[  516.449842]  __x64_sys_ioctl+0x42/0x60
[  516.449864]  do_syscall_64+0x6e/0x2c0
[  516.449878]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 8e254f639751..ed45fc40f884 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1367,7 +1367,7 @@ __execlists_schedule_in(struct i915_request *rq)
 		ce->lrc.ccid = ce->tag;
 	} else {
 		/* We don't need a strict matching tag, just different values */
-		unsigned int tag = ffs(engine->context_tag);
+		unsigned int tag = ffs(READ_ONCE(engine->context_tag));
 
 		GEM_BUG_ON(tag == 0 || tag >= BITS_PER_LONG);
 		clear_bit(tag - 1, &engine->context_tag);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
