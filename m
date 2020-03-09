Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A5317DE42
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 12:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D982A6E3F9;
	Mon,  9 Mar 2020 11:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5566E3F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 11:09:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20493828-1500050 
 for multiple; Mon, 09 Mar 2020 11:09:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 11:09:34 +0000
Message-Id: <20200309110934.868-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309110934.868-1-chris@chris-wilson.co.uk>
References: <20200309110934.868-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/execlsts: Mark up racy inspection
 of current i915_request priority
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

[  120.176548] BUG: KCSAN: data-race in __i915_schedule [i915] / effective_prio [i915]
[  120.176566]
[  120.176577] write to 0xffff8881e35e6540 of 4 bytes by task 730 on cpu 3:
[  120.176792]  __i915_schedule+0x63e/0x920 [i915]
[  120.177007]  __bump_priority+0x63/0x80 [i915]
[  120.177220]  __i915_sched_node_add_dependency+0x258/0x300 [i915]
[  120.177438]  i915_sched_node_add_dependency+0x50/0xa0 [i915]
[  120.177654]  i915_request_await_dma_fence+0x1da/0x530 [i915]
[  120.177867]  i915_request_await_object+0x2fe/0x470 [i915]
[  120.178081]  i915_gem_do_execbuffer+0x45dc/0x4c20 [i915]
[  120.178292]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
[  120.178309]  drm_ioctl_kernel+0xe4/0x120
[  120.178322]  drm_ioctl+0x297/0x4c7
[  120.178335]  ksys_ioctl+0x89/0xb0
[  120.178348]  __x64_sys_ioctl+0x42/0x60
[  120.178361]  do_syscall_64+0x6e/0x2c0
[  120.178375]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  120.178387]
[  120.178397] read to 0xffff8881e35e6540 of 4 bytes by interrupt on cpu 2:
[  120.178606]  effective_prio+0x25/0xc0 [i915]
[  120.178812]  process_csb+0xe8b/0x10a0 [i915]
[  120.179021]  execlists_submission_tasklet+0x30/0x170 [i915]
[  120.179038]  tasklet_action_common.isra.0+0x42/0xa0
[  120.179053]  __do_softirq+0xd7/0x2cd
[  120.179066]  irq_exit+0xbe/0xe0
[  120.179078]  do_IRQ+0x51/0x100
[  120.179090]  ret_from_intr+0x0/0x1c
[  120.179104]  cpuidle_enter_state+0x1b8/0x5d0
[  120.179117]  cpuidle_enter+0x50/0x90
[  120.179131]  do_idle+0x1a1/0x1f0
[  120.179145]  cpu_startup_entry+0x14/0x16
[  120.179158]  start_secondary+0x120/0x180
[  120.179172]  secondary_startup_64+0xa4/0xb0

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   | 2 +-
 drivers/gpu/drm/i915/i915_scheduler.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 20dd3c2cfa2f..3eb7adc4e057 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -293,7 +293,7 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
 
 static inline int rq_prio(const struct i915_request *rq)
 {
-	return rq->sched.attr.priority;
+	return READ_ONCE(rq->sched.attr.priority);
 }
 
 static int effective_prio(const struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 52f71e83e088..af51810dc78c 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -321,7 +321,7 @@ static void __i915_schedule(struct i915_sched_node *node,
 
 		GEM_BUG_ON(node_to_request(node)->engine != engine);
 
-		node->attr.priority = prio;
+		WRITE_ONCE(node->attr.priority, prio);
 
 		/*
 		 * Once the request is ready, it will be placed into the
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
