Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AFD17BBB2
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 12:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9906E42C;
	Fri,  6 Mar 2020 11:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B296E42C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 11:31:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20465861-1500050 
 for multiple; Fri, 06 Mar 2020 11:30:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 11:30:11 +0000
Message-Id: <20200306113012.3184606-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306113012.3184606-1-chris@chris-wilson.co.uk>
References: <20200306113012.3184606-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Improve the start alignment of
 bonded pairs
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

Always wait on the start of the signaler request to reduce the problem
of dequeueing the bonded pair too early -- we want both payloads to
start at the same time, with no latency, and yet still allow others to
make full use of the slack in the system. This reduce the amount of time
we spend waiting on the semaphore used to synchronise the start of the
bonded payload.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 41 +++++++++++++++++++++++++----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 66efd16c4850..db11006b4ac9 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1128,14 +1128,45 @@ __i915_request_await_execution(struct i915_request *to,
 					  &from->fence))
 		return 0;
 
-	/* Ensure both start together [after all semaphores in signal] */
-	if (intel_engine_has_semaphores(to->engine))
-		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
-	else
-		err = i915_request_await_start(to, from);
+	/*
+	 * Wait until the start of this request.
+	 *
+	 * The execution cb fires when we submit the request to HW. But in
+	 * many cases this may be long before the request itself is ready to
+	 * run (consider that we submit 2 requests for the same context, where
+	 * the request of interest is behind an indefinite spinner). So we hook
+	 * up to both to reduce our queues and keep the execution lag minimised
+	 * in the worst case, though we hope that the await_start is elided.
+	 */
+	err = i915_request_await_start(to, from);
 	if (err < 0)
 		return err;
 
+	/*
+	 * Ensure both start together [after all semaphores in signal]
+	 *
+	 * Now that we are queued to the HW at roughly the same time (thanks
+	 * to the execute cb) and are ready to run at roughly the same time
+	 * (thanks to the await start), our signaler may still be indefinitely
+	 * delayed by waiting on a semaphore from a remote engine. If our
+	 * signaler depends on a semaphore, so indirectly do we, and we do not
+	 * want to start our payload until our signaler also starts theirs.
+	 * So we wait.
+	 *
+	 * However, there is also a second condition for which we need to wait
+	 * for the precise start of the signaler. Consider that the signaler
+	 * was submitted in a chain of requests following another context
+	 * (with just an ordinary intra-engine fence dependency between the
+	 * two). In this case the signaler is queued to HW, but not for
+	 * immediate execution, and so we must wait until it reaches the
+	 * active slot.
+	 */
+	if (intel_engine_has_semaphores(to->engine)) {
+		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
+		if (err < 0)
+			return err;
+	}
+
 	/* Couple the dependency tree for PI on this exposed to->fence */
 	if (to->engine->schedule) {
 		err = i915_sched_node_add_dependency(&to->sched, &from->sched);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
