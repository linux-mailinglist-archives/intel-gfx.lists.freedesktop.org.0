Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E518154D89
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7040E6FB4C;
	Thu,  6 Feb 2020 20:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437E96FB4C
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 20:50:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20141831-1500050 
 for multiple; Thu, 06 Feb 2020 20:49:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 20:49:13 +0000
Message-Id: <20200206204915.2636606-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
References: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Protect defer_request() from
 new waiters
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

Mika spotted

<4>[17436.705441] general protection fault: 0000 [#1] PREEMPT SMP PTI
<4>[17436.705447] CPU: 2 PID: 0 Comm: swapper/2 Not tainted 5.5.0+ #1
<4>[17436.705449] Hardware name: System manufacturer System Product Name/Z170M-PLUS, BIOS 3805 05/16/2018
<4>[17436.705512] RIP: 0010:__execlists_submission_tasklet+0xc4d/0x16e0 [i915]
<4>[17436.705516] Code: c5 4c 8d 60 e0 75 17 e9 8c 07 00 00 49 8b 44 24 20 49 39 c5 4c 8d 60 e0 0f 84 7a 07 00 00 49 8b 5c 24 08 49 8b 87 80 00 00 00 <48> 39 83 d8 fe ff ff 75 d9 48 8b 83 88 fe ff ff a8 01 0f 84 b6 05
<4>[17436.705518] RSP: 0018:ffffc9000012ce80 EFLAGS: 00010083
<4>[17436.705521] RAX: ffff88822ae42000 RBX: 5a5a5a5a5a5a5a5a RCX: dead000000000122
<4>[17436.705523] RDX: ffff88822ae42588 RSI: ffff8881e32a7908 RDI: ffff8881c429fd48
<4>[17436.705525] RBP: ffffc9000012cf00 R08: ffff88822ae42588 R09: 00000000fffffffe
<4>[17436.705527] R10: ffff8881c429fb80 R11: 00000000a677cf08 R12: ffff8881c42a0aa8
<4>[17436.705529] R13: ffff8881c429fd38 R14: ffff88822ae42588 R15: ffff8881c429fb80
<4>[17436.705532] FS:  0000000000000000(0000) GS:ffff88822ed00000(0000) knlGS:0000000000000000
<4>[17436.705534] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[17436.705536] CR2: 00007f858c76d000 CR3: 0000000005610003 CR4: 00000000003606e0
<4>[17436.705538] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
<4>[17436.705540] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
<4>[17436.705542] Call Trace:
<4>[17436.705545]  <IRQ>
<4>[17436.705603]  execlists_submission_tasklet+0xc0/0x130 [i915]

which is us consuming a partially initialised new waiter in
defer_requests(). We can prevent this by initialising the i915_dependency
prior to making it visible, and since we are using a concurrent
list_add/iterator mark them up to the compiler.

Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   | 7 ++++++-
 drivers/gpu/drm/i915/i915_scheduler.c | 5 +++--
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c196fb90c59f..b350e01d86d2 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1615,6 +1615,11 @@ last_active(const struct intel_engine_execlists *execlists)
 	return *last;
 }
 
+#define for_each_waiter(p__, rq__) \
+	list_for_each_entry_lockless(p__, \
+				     &(rq__)->sched.waiters_list, \
+				     wait_link)
+
 static void defer_request(struct i915_request *rq, struct list_head * const pl)
 {
 	LIST_HEAD(list);
@@ -1632,7 +1637,7 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
 		GEM_BUG_ON(i915_request_is_active(rq));
 		list_move_tail(&rq->sched.link, pl);
 
-		list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
+		for_each_waiter(p, rq) {
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 5d96cfba40f8..9cbd31443eb0 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -423,8 +423,6 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 
 	if (!node_signaled(signal)) {
 		INIT_LIST_HEAD(&dep->dfs_link);
-		list_add(&dep->wait_link, &signal->waiters_list);
-		list_add(&dep->signal_link, &node->signalers_list);
 		dep->signaler = signal;
 		dep->waiter = node;
 		dep->flags = flags;
@@ -434,6 +432,9 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 		    !node_started(signal))
 			node->flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;
 
+		list_add(&dep->signal_link, &node->signalers_list);
+		list_add_rcu(&dep->wait_link, &signal->waiters_list);
+
 		/*
 		 * As we do not allow WAIT to preempt inflight requests,
 		 * once we have executed a request, along with triggering
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
