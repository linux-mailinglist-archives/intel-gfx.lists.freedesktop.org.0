Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A912FDE01
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 01:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D5B6E4B5;
	Thu, 21 Jan 2021 00:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9A06E4B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 00:33:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23655074-1500050 
 for multiple; Thu, 21 Jan 2021 00:32:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 00:32:53 +0000
Message-Id: <20210121003253.27225-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Move execlists_reset() out of line
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

Reduce the bulk of execlists_submission_tasklet by moving the unlikely
reset function out of line.

add/remove: 1/0 grow/shrink: 0/1 up/down: 960/-935 (25)
Function                                     old     new   delta
execlists_reset                                -     960    +960
execlists_submission_tasklet                6629    5694    -935

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 36 +++++++++----------
 1 file changed, 17 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 740ff05fd692..43cc85241886 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2299,10 +2299,13 @@ static void execlists_capture(struct intel_engine_cs *engine)
 	kfree(cap);
 }
 
-static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
+static noinline void execlists_reset(struct intel_engine_cs *engine)
 {
+	struct intel_engine_execlists *el = &engine->execlists;
 	const unsigned int bit = I915_RESET_ENGINE + engine->id;
 	unsigned long *lock = &engine->gt->reset.flags;
+	unsigned long eir = fetch_and_zero(&el->error_interrupt);
+	const char *msg;
 
 	if (!intel_has_reset_engine(engine->gt))
 		return;
@@ -2310,16 +2313,25 @@ static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
 	if (test_and_set_bit(bit, lock))
 		return;
 
+	/* Generate the error message in priority wrt to the user! */
+	if (eir & GENMASK(15, 0))
+		msg = "CS error"; /* thrown by a user payload */
+	else if (eir & ERROR_CSB)
+		msg = "invalid CSB event";
+	else if (eir & ERROR_PREEMPT)
+		msg = "preemption time out";
+	else
+		msg = "internal error";
 	ENGINE_TRACE(engine, "reset for %s\n", msg);
 
 	/* Mark this tasklet as disabled to avoid waiting for it to complete */
-	tasklet_disable_nosync(&engine->execlists.tasklet);
+	tasklet_disable_nosync(&el->tasklet);
 
 	ring_set_paused(engine, 1); /* Freeze the current request in place */
 	execlists_capture(engine);
 	intel_engine_reset(engine, msg);
 
-	tasklet_enable(&engine->execlists.tasklet);
+	tasklet_enable(&el->tasklet);
 	clear_and_wake_up_bit(bit, lock);
 }
 
@@ -2355,22 +2367,8 @@ static void execlists_submission_tasklet(unsigned long data)
 		engine->execlists.error_interrupt |= ERROR_PREEMPT;
 	}
 
-	if (unlikely(READ_ONCE(engine->execlists.error_interrupt))) {
-		const char *msg;
-
-		/* Generate the error message in priority wrt to the user! */
-		if (engine->execlists.error_interrupt & GENMASK(15, 0))
-			msg = "CS error"; /* thrown by a user payload */
-		else if (engine->execlists.error_interrupt & ERROR_CSB)
-			msg = "invalid CSB event";
-		else if (engine->execlists.error_interrupt & ERROR_PREEMPT)
-			msg = "preemption time out";
-		else
-			msg = "internal error";
-
-		engine->execlists.error_interrupt = 0;
-		execlists_reset(engine, msg);
-	}
+	if (unlikely(READ_ONCE(engine->execlists.error_interrupt)))
+		execlists_reset(engine);
 
 	if (!engine->execlists.pending[0]) {
 		execlists_dequeue_irq(engine);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
