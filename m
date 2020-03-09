Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E2217E2A2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 15:43:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A92D36E178;
	Mon,  9 Mar 2020 14:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2E76E178
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 14:42:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20496410-1500050 
 for multiple; Mon, 09 Mar 2020 14:42:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 14:42:49 +0000
Message-Id: <20200309144249.10309-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Mark up the racy access to
 switch_priority_hint
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

[ 7534.150687] BUG: KCSAN: data-race in __execlists_submission_tasklet [i915] / process_csb [i915]
[ 7534.150706]
[ 7534.150717] write to 0xffff8881f1bc24b4 of 4 bytes by task 24404 on cpu 3:
[ 7534.150925]  __execlists_submission_tasklet+0x1158/0x2780 [i915]
[ 7534.151133]  execlists_submit_request+0x2e8/0x2f0 [i915]
[ 7534.151348]  submit_notify+0x8f/0xc0 [i915]
[ 7534.151549]  __i915_sw_fence_complete+0x5d/0x3e0 [i915]
[ 7534.151753]  i915_sw_fence_complete+0x58/0x80 [i915]
[ 7534.151963]  i915_sw_fence_commit+0x16/0x20 [i915]
[ 7534.152179]  __i915_request_queue+0x60/0x70 [i915]
[ 7534.152388]  i915_gem_do_execbuffer+0x3997/0x4c20 [i915]
[ 7534.152598]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
[ 7534.152615]  drm_ioctl_kernel+0xe4/0x120
[ 7534.152629]  drm_ioctl+0x297/0x4c7
[ 7534.152642]  ksys_ioctl+0x89/0xb0
[ 7534.152654]  __x64_sys_ioctl+0x42/0x60
[ 7534.152667]  do_syscall_64+0x6e/0x2c0
[ 7534.152681]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[ 7534.152693]
[ 7534.152703] read to 0xffff8881f1bc24b4 of 4 bytes by interrupt on cpu 2:
[ 7534.152914]  process_csb+0xe7c/0x10a0 [i915]
[ 7534.153120]  execlists_submission_tasklet+0x30/0x170 [i915]
[ 7534.153138]  tasklet_action_common.isra.0+0x42/0xa0
[ 7534.153153]  __do_softirq+0xd7/0x2cd
[ 7534.153166]  run_ksoftirqd+0x15/0x20
[ 7534.153180]  smpboot_thread_fn+0x1ab/0x300
[ 7534.153194]  kthread+0x19a/0x1e0
[ 7534.153207]  ret_from_fork+0x1f/0x30

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3eb7adc4e057..9890d248749e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1792,12 +1792,13 @@ timeslice(const struct intel_engine_cs *engine)
 static unsigned long
 active_timeslice(const struct intel_engine_cs *engine)
 {
-	const struct i915_request *rq = *engine->execlists.active;
+	const struct intel_engine_execlists *execlists = &engine->execlists;
+	const struct i915_request *rq = *execlists->active;
 
 	if (!rq || i915_request_completed(rq))
 		return 0;
 
-	if (engine->execlists.switch_priority_hint < effective_prio(rq))
+	if (READ_ONCE(execlists->switch_priority_hint) < effective_prio(rq))
 		return 0;
 
 	return timeslice(engine);
@@ -1814,8 +1815,11 @@ static void set_timeslice(struct intel_engine_cs *engine)
 static void start_timeslice(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists *execlists = &engine->execlists;
+	int prio = queue_prio(execlists);
 
-	execlists->switch_priority_hint = execlists->queue_priority_hint;
+	WRITE_ONCE(execlists->switch_priority_hint, prio);
+	if (prio == INT_MIN)
+		return;
 
 	if (timer_pending(&execlists->timer))
 		return;
@@ -5342,10 +5346,10 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 
 	if (execlists->switch_priority_hint != INT_MIN)
 		drm_printf(m, "\t\tSwitch priority hint: %d\n",
-			   execlists->switch_priority_hint);
+			   READ_ONCE(execlists->switch_priority_hint));
 	if (execlists->queue_priority_hint != INT_MIN)
 		drm_printf(m, "\t\tQueue priority hint: %d\n",
-			   execlists->queue_priority_hint);
+			   READ_ONCE(execlists->queue_priority_hint));
 
 	last = NULL;
 	count = 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
