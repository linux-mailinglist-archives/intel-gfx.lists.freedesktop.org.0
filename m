Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4511F1028
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF6F6E43A;
	Sun,  7 Jun 2020 22:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEF356E425
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425593-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:20:45 +0100
Message-Id: <20200607222108.14401-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/28] drm/i915/selftests: Trim execlists runtime
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

Reduce the smoke depth by trimming the number of contexts, repetitions
and wait times. This is in preparation for a less greedy scheduler that
tries to be fair across contexts, resulting in a great many more context
switches. A thousand context switches may be 50-100ms, causing us to
timeout as the HW is not fast enough to complete the deep smoketests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 66 ++++++--------------
 drivers/gpu/drm/i915/selftests/igt_spinner.c |  4 +-
 2 files changed, 21 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e838e38a262c..f651bdf7f191 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -845,10 +845,11 @@ static int live_timeslice_preempt(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct drm_i915_gem_object *obj;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
 	struct i915_vma *vma;
 	void *vaddr;
 	int err = 0;
-	int count;
 
 	/*
 	 * If a request takes too long, we would like to give other users
@@ -885,26 +886,21 @@ static int live_timeslice_preempt(void *arg)
 	if (err)
 		goto err_pin;
 
-	for_each_prime_number_from(count, 1, 16) {
-		struct intel_engine_cs *engine;
-		enum intel_engine_id id;
-
-		for_each_engine(engine, gt, id) {
-			if (!intel_engine_has_preemption(engine))
-				continue;
+	for_each_engine(engine, gt, id) {
+		if (!intel_engine_has_preemption(engine))
+			continue;
 
-			memset(vaddr, 0, PAGE_SIZE);
+		memset(vaddr, 0, PAGE_SIZE);
 
-			engine_heartbeat_disable(engine);
-			err = slice_semaphore_queue(engine, vma, count);
-			engine_heartbeat_enable(engine);
-			if (err)
-				goto err_pin;
+		engine_heartbeat_disable(engine);
+		err = slice_semaphore_queue(engine, vma, 5);
+		engine_heartbeat_enable(engine);
+		if (err)
+			goto err_pin;
 
-			if (igt_flush_test(gt->i915)) {
-				err = -EIO;
-				goto err_pin;
-			}
+		if (igt_flush_test(gt->i915)) {
+			err = -EIO;
+			goto err_pin;
 		}
 	}
 
@@ -1251,22 +1247,6 @@ static int live_timeslice_queue(void *arg)
 			intel_engine_flush_submission(engine);
 		} while (READ_ONCE(engine->execlists.pending[0]));
 
-		if (!READ_ONCE(engine->execlists.timer.expires) &&
-		    execlists_active(&engine->execlists) == rq &&
-		    !i915_request_completed(rq)) {
-			struct drm_printer p =
-				drm_info_printer(gt->i915->drm.dev);
-
-			GEM_TRACE_ERR("%s: Failed to enable timeslicing!\n",
-				      engine->name);
-			intel_engine_dump(engine, &p,
-					  "%s\n", engine->name);
-			GEM_TRACE_DUMP();
-
-			memset(vaddr, 0xff, PAGE_SIZE);
-			err = -EINVAL;
-		}
-
 		/* Timeslice every jiffy, so within 2 we should signal */
 		if (i915_request_wait(rq, 0, slice_timeout(engine)) < 0) {
 			struct drm_printer p =
@@ -2671,16 +2651,8 @@ static int live_preempt_gang(void *arg)
 
 			/* Submit each spinner at increasing priority */
 			engine->schedule(rq, &attr);
-
-			if (prio < attr.priority)
-				break;
-
-			if (prio <= I915_PRIORITY_MAX)
-				continue;
-
-			if (__igt_timeout(end_time, NULL))
-				break;
-		} while (1);
+		} while (prio <= I915_PRIORITY_MAX &&
+			 !__igt_timeout(end_time, NULL));
 		pr_debug("%s: Preempt chain of %d requests\n",
 			 engine->name, prio);
 
@@ -3248,7 +3220,7 @@ static int smoke_crescendo_thread(void *arg)
 			return err;
 
 		count++;
-	} while (!__igt_timeout(end_time, NULL));
+	} while (count < smoke->ncontext && !__igt_timeout(end_time, NULL));
 
 	smoke->count = count;
 	return 0;
@@ -3324,7 +3296,7 @@ static int smoke_random(struct preempt_smoke *smoke, unsigned int flags)
 
 			count++;
 		}
-	} while (!__igt_timeout(end_time, NULL));
+	} while (count < smoke->ncontext && !__igt_timeout(end_time, NULL));
 
 	pr_info("Submitted %lu random:%x requests across %d engines and %d contexts\n",
 		count, flags,
@@ -3337,7 +3309,7 @@ static int live_preempt_smoke(void *arg)
 	struct preempt_smoke smoke = {
 		.gt = arg,
 		.prng = I915_RND_STATE_INITIALIZER(i915_selftest.random_seed),
-		.ncontext = 1024,
+		.ncontext = 256,
 	};
 	const unsigned int phase[] = { 0, BATCH };
 	struct igt_live_test t;
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 699bfe0328fb..ec0ecb4e4ca6 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -221,8 +221,8 @@ bool igt_wait_for_spinner(struct igt_spinner *spin, struct i915_request *rq)
 {
 	return !(wait_for_us(i915_seqno_passed(hws_seqno(spin, rq),
 					       rq->fence.seqno),
-			     10) &&
+			     100) &&
 		 wait_for(i915_seqno_passed(hws_seqno(spin, rq),
 					    rq->fence.seqno),
-			  1000));
+			  50));
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
