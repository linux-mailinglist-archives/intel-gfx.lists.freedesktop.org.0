Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610C7122813
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 10:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B1A6E971;
	Tue, 17 Dec 2019 09:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C876E96A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 09:57:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19605950-1500050 
 for multiple; Tue, 17 Dec 2019 09:56:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 09:56:39 +0000
Message-Id: <20191217095642.3124521-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217095642.3124521-1-chris@chris-wilson.co.uk>
References: <20191217095642.3124521-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/selftests: Disable heartbeats
 around long queues
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

For some execlists scheduler tests we assume very precise layout of the
inflight queue and become angry if the heartbeat interferes by
reprioritising our contexts (because we happen to be using the same
engine->kernel_context for our test).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 42 +++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index ac8b9116d307..54bce282717a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -50,6 +50,24 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
 	return vma;
 }
 
+static void engine_heartbeat_disable(struct intel_engine_cs *engine,
+				     unsigned long *saved)
+{
+	*saved = engine->props.heartbeat_interval_ms;
+	engine->props.heartbeat_interval_ms = 0;
+
+	intel_engine_pm_get(engine);
+	intel_engine_park_heartbeat(engine);
+}
+
+static void engine_heartbeat_enable(struct intel_engine_cs *engine,
+				    unsigned long saved)
+{
+	intel_engine_pm_put(engine);
+
+	engine->props.heartbeat_interval_ms = saved;
+}
+
 static int live_sanitycheck(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -128,6 +146,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		struct intel_context *ce[2] = {};
 		struct i915_request *rq[2];
 		struct igt_live_test t;
+		unsigned long saved;
 		int n;
 
 		if (prio && !intel_engine_has_preemption(engine))
@@ -140,6 +159,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 			err = -EIO;
 			break;
 		}
+		engine_heartbeat_disable(engine, &saved);
 
 		for (n = 0; n < ARRAY_SIZE(ce); n++) {
 			struct intel_context *tmp;
@@ -247,6 +267,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 			intel_context_put(ce[n]);
 		}
 
+		engine_heartbeat_enable(engine, saved);
 		if (igt_live_test_end(&t))
 			err = -EIO;
 		if (err)
@@ -468,12 +489,16 @@ static int live_timeslice_preempt(void *arg)
 		enum intel_engine_id id;
 
 		for_each_engine(engine, gt, id) {
+			unsigned long saved;
+
 			if (!intel_engine_has_preemption(engine))
 				continue;
 
 			memset(vaddr, 0, PAGE_SIZE);
 
+			engine_heartbeat_disable(engine, &saved);
 			err = slice_semaphore_queue(engine, vma, count);
+			engine_heartbeat_enable(engine, saved);
 			if (err)
 				goto err_pin;
 
@@ -566,17 +591,19 @@ static int live_timeslice_queue(void *arg)
 			.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX),
 		};
 		struct i915_request *rq, *nop;
+		unsigned long saved;
 
 		if (!intel_engine_has_preemption(engine))
 			continue;
 
+		engine_heartbeat_disable(engine, &saved);
 		memset(vaddr, 0, PAGE_SIZE);
 
 		/* ELSP[0]: semaphore wait */
 		rq = semaphore_queue(engine, vma, 0);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto err_pin;
+			goto err_heartbeat;
 		}
 		engine->schedule(rq, &attr);
 		wait_for_submit(engine, rq);
@@ -585,8 +612,7 @@ static int live_timeslice_queue(void *arg)
 		nop = nop_request(engine);
 		if (IS_ERR(nop)) {
 			err = PTR_ERR(nop);
-			i915_request_put(rq);
-			goto err_pin;
+			goto err_rq;
 		}
 		wait_for_submit(engine, nop);
 		i915_request_put(nop);
@@ -596,10 +622,8 @@ static int live_timeslice_queue(void *arg)
 
 		/* Queue: semaphore signal, matching priority as semaphore */
 		err = release_queue(engine, vma, 1, effective_prio(rq));
-		if (err) {
-			i915_request_put(rq);
-			goto err_pin;
-		}
+		if (err)
+			goto err_rq;
 
 		intel_engine_flush_submission(engine);
 		if (!READ_ONCE(engine->execlists.timer.expires) &&
@@ -630,12 +654,14 @@ static int live_timeslice_queue(void *arg)
 			memset(vaddr, 0xff, PAGE_SIZE);
 			err = -EIO;
 		}
+err_rq:
 		i915_request_put(rq);
+err_heartbeat:
+		engine_heartbeat_enable(engine, saved);
 		if (err)
 			break;
 	}
 
-err_pin:
 	i915_vma_unpin(vma);
 err_map:
 	i915_gem_object_unpin_map(obj);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
