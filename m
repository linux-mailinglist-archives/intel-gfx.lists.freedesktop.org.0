Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0FD606107
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 15:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A78010E455;
	Thu, 20 Oct 2022 13:09:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A57C610E455;
 Thu, 20 Oct 2022 13:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666271332; x=1697807332;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MTg3h1eUUDj5FxWYs8uswcPBJNPa811qiCbhn/flT0o=;
 b=CEDBf8wWlXffNRdDaYbJv5tspdAd0PYe3BorQYN7BEovV3GMDIx21fF3
 8sYiF3XihJnrrFtEEq5wv+LdokkGKtlWLaaaZKDf1rKk+BDhhve3RVyKo
 rzwSsmYcluG9llOPVubl2bcgJcHPEMKwcjMUOXDTAEKueX9hYEwjMukfR
 eTaVUQeLGej4a4xXpCsv1GjnGUFwf2BpiDSJvfHUd1A3oX9emJRBsNMo0
 LXdSEMiYzGOHc207g6BMOEr/BaofKrZPQ8YLywNFPBAGzIGWR2samqX81
 7RHCRZmJwfQYNN0WsWjqZNmBnHUJxWHtHz4MJhHQWpJDKv92wSfeCxPBu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="287100567"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="287100567"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 06:08:51 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="804869298"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="804869298"
Received: from aasthash-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.232.117])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 06:08:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 14:08:41 +0100
Message-Id: <20221020130841.3845791-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Stop using kthread_stop()
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Since a7c01fa93aeb ("signal: break out of wait loops on kthread_stop()")
kthread_stop() started asserting a pending signal which wreaks havoc with
a few of our selftests. Mainly because they are not fully expecting to
handle signals, but also cutting the intended test runtimes short due
signal_pending() now returning true (via __igt_timeout), which therefore
breaks both the patterns of:

  kthread_run()
  ..sleep for igt_timeout_ms to allow test to exercise stuff..
  kthread_stop()

And check for errors recorded in the thread.

And also:

    Main thread  |   Test thread
  ---------------+------------------------------
  kthread_run()  |
  kthread_stop() |  do stuff until __igt_timeout
		 |  -- exits early due signal --

Where this kthread_stop() was assume would have a "join" semantics, which
it would have had if not the new signal assertion issue.

To recap, threads are now likely to catch a previously impossible
ERESTARTSYS or EINTR, marking the test as failed, or have a pointlessly
short run time.

To work around this start using kthread_work(er) API which provides
an explicit way of waiting for threads to exit. And for cases where
parent controls the test duration we add explicit signaling which threads
will now use instead of relying on kthread_should_stop().

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_context.c | 118 ++++----
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  48 ++--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  51 ++--
 drivers/gpu/drm/i915/selftests/i915_request.c | 252 +++++++++++-------
 4 files changed, 281 insertions(+), 188 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index c6ad67b90e8a..d8864444432b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -179,97 +179,108 @@ static int live_nop_switch(void *arg)
 }
 
 struct parallel_switch {
-	struct task_struct *tsk;
+	struct kthread_worker *worker;
+	struct kthread_work work;
 	struct intel_context *ce[2];
+	int result;
 };
 
-static int __live_parallel_switch1(void *data)
+static void __live_parallel_switch1(struct kthread_work *work)
 {
-	struct parallel_switch *arg = data;
+	struct parallel_switch *arg =
+		container_of(work, typeof(*arg), work);
 	IGT_TIMEOUT(end_time);
 	unsigned long count;
 
 	count = 0;
+	arg->result = 0;
 	do {
 		struct i915_request *rq = NULL;
-		int err, n;
+		int n;
 
-		err = 0;
-		for (n = 0; !err && n < ARRAY_SIZE(arg->ce); n++) {
+		for (n = 0; !arg->result && n < ARRAY_SIZE(arg->ce); n++) {
 			struct i915_request *prev = rq;
 
 			rq = i915_request_create(arg->ce[n]);
 			if (IS_ERR(rq)) {
 				i915_request_put(prev);
-				return PTR_ERR(rq);
+				arg->result = PTR_ERR(rq);
+				break;
 			}
 
 			i915_request_get(rq);
 			if (prev) {
-				err = i915_request_await_dma_fence(rq, &prev->fence);
+				arg->result =
+					i915_request_await_dma_fence(rq,
+								     &prev->fence);
 				i915_request_put(prev);
 			}
 
 			i915_request_add(rq);
 		}
+
+		if (IS_ERR_OR_NULL(rq))
+			break;
+
 		if (i915_request_wait(rq, 0, HZ) < 0)
-			err = -ETIME;
+			arg->result = -ETIME;
+
 		i915_request_put(rq);
-		if (err)
-			return err;
 
 		count++;
-	} while (!__igt_timeout(end_time, NULL));
+	} while (!arg->result && !__igt_timeout(end_time, NULL));
 
-	pr_info("%s: %lu switches (sync)\n", arg->ce[0]->engine->name, count);
-	return 0;
+	pr_info("%s: %lu switches (sync) <%d>\n",
+		arg->ce[0]->engine->name, count, arg->result);
 }
 
-static int __live_parallel_switchN(void *data)
+static void __live_parallel_switchN(struct kthread_work *work)
 {
-	struct parallel_switch *arg = data;
+	struct parallel_switch *arg =
+		container_of(work, typeof(*arg), work);
 	struct i915_request *rq = NULL;
 	IGT_TIMEOUT(end_time);
 	unsigned long count;
 	int n;
 
 	count = 0;
+	arg->result = 0;
 	do {
-		for (n = 0; n < ARRAY_SIZE(arg->ce); n++) {
+		for (n = 0; !arg->result && n < ARRAY_SIZE(arg->ce); n++) {
 			struct i915_request *prev = rq;
-			int err = 0;
 
 			rq = i915_request_create(arg->ce[n]);
 			if (IS_ERR(rq)) {
 				i915_request_put(prev);
-				return PTR_ERR(rq);
+				arg->result = PTR_ERR(rq);
+				break;
 			}
 
 			i915_request_get(rq);
 			if (prev) {
-				err = i915_request_await_dma_fence(rq, &prev->fence);
+				arg->result =
+					i915_request_await_dma_fence(rq,
+								     &prev->fence);
 				i915_request_put(prev);
 			}
 
 			i915_request_add(rq);
-			if (err) {
-				i915_request_put(rq);
-				return err;
-			}
 		}
 
 		count++;
-	} while (!__igt_timeout(end_time, NULL));
-	i915_request_put(rq);
+	} while (!arg->result && !__igt_timeout(end_time, NULL));
 
-	pr_info("%s: %lu switches (many)\n", arg->ce[0]->engine->name, count);
-	return 0;
+	if (!IS_ERR_OR_NULL(rq))
+		i915_request_put(rq);
+
+	pr_info("%s: %lu switches (many) <%d>\n",
+		arg->ce[0]->engine->name, count, arg->result);
 }
 
 static int live_parallel_switch(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	static int (* const func[])(void *arg) = {
+	static void (* const func[])(struct kthread_work *) = {
 		__live_parallel_switch1,
 		__live_parallel_switchN,
 		NULL,
@@ -277,7 +288,7 @@ static int live_parallel_switch(void *arg)
 	struct parallel_switch *data = NULL;
 	struct i915_gem_engines *engines;
 	struct i915_gem_engines_iter it;
-	int (* const *fn)(void *arg);
+	void (* const *fn)(struct kthread_work *);
 	struct i915_gem_context *ctx;
 	struct intel_context *ce;
 	struct file *file;
@@ -348,9 +359,22 @@ static int live_parallel_switch(void *arg)
 		}
 	}
 
+	for (n = 0; n < count; n++) {
+		struct kthread_worker *worker;
+
+		if (!data[n].ce[0])
+			continue;
+
+		worker = kthread_create_worker(0, "igt/parallel:%s",
+					       data[n].ce[0]->engine->name);
+		if (IS_ERR(worker))
+			goto out;
+
+		data[n].worker = worker;
+	}
+
 	for (fn = func; !err && *fn; fn++) {
 		struct igt_live_test t;
-		int n;
 
 		err = igt_live_test_begin(&t, i915, __func__, "");
 		if (err)
@@ -360,30 +384,17 @@ static int live_parallel_switch(void *arg)
 			if (!data[n].ce[0])
 				continue;
 
-			data[n].tsk = kthread_run(*fn, &data[n],
-						  "igt/parallel:%s",
-						  data[n].ce[0]->engine->name);
-			if (IS_ERR(data[n].tsk)) {
-				err = PTR_ERR(data[n].tsk);
-				break;
-			}
-			get_task_struct(data[n].tsk);
+			data[n].result = 0;
+			kthread_init_work(&data[n].work, *fn);
+			kthread_queue_work(data[n].worker, &data[n].work);
 		}
 
-		yield(); /* start all threads before we kthread_stop() */
-
 		for (n = 0; n < count; n++) {
-			int status;
-
-			if (IS_ERR_OR_NULL(data[n].tsk))
-				continue;
-
-			status = kthread_stop(data[n].tsk);
-			if (status && !err)
-				err = status;
-
-			put_task_struct(data[n].tsk);
-			data[n].tsk = NULL;
+			if (data[n].ce[0]) {
+				kthread_flush_work(&data[n].work);
+				if (data[n].result && !err)
+					err = data[n].result;
+			}
 		}
 
 		if (igt_live_test_end(&t))
@@ -399,6 +410,9 @@ static int live_parallel_switch(void *arg)
 			intel_context_unpin(data[n].ce[m]);
 			intel_context_put(data[n].ce[m]);
 		}
+
+		if (data[n].worker)
+			kthread_destroy_worker(data[n].worker);
 	}
 	kfree(data);
 out_file:
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 56b7d5b5fea0..2c7c053a8808 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -3473,12 +3473,14 @@ static int random_priority(struct rnd_state *rnd)
 
 struct preempt_smoke {
 	struct intel_gt *gt;
+	struct kthread_work work;
 	struct i915_gem_context **contexts;
 	struct intel_engine_cs *engine;
 	struct drm_i915_gem_object *batch;
 	unsigned int ncontext;
 	struct rnd_state prng;
 	unsigned long count;
+	int result;
 };
 
 static struct i915_gem_context *smoke_context(struct preempt_smoke *smoke)
@@ -3538,34 +3540,31 @@ static int smoke_submit(struct preempt_smoke *smoke,
 	return err;
 }
 
-static int smoke_crescendo_thread(void *arg)
+static void smoke_crescendo_work(struct kthread_work *work)
 {
-	struct preempt_smoke *smoke = arg;
+	struct preempt_smoke *smoke = container_of(work, typeof(*smoke), work);
 	IGT_TIMEOUT(end_time);
 	unsigned long count;
 
 	count = 0;
 	do {
 		struct i915_gem_context *ctx = smoke_context(smoke);
-		int err;
 
-		err = smoke_submit(smoke,
-				   ctx, count % I915_PRIORITY_MAX,
-				   smoke->batch);
-		if (err)
-			return err;
+		smoke->result = smoke_submit(smoke, ctx,
+					     count % I915_PRIORITY_MAX,
+					     smoke->batch);
 
 		count++;
-	} while (count < smoke->ncontext && !__igt_timeout(end_time, NULL));
+	} while (!smoke->result && count < smoke->ncontext &&
+		 !__igt_timeout(end_time, NULL));
 
 	smoke->count = count;
-	return 0;
 }
 
 static int smoke_crescendo(struct preempt_smoke *smoke, unsigned int flags)
 #define BATCH BIT(0)
 {
-	struct task_struct *tsk[I915_NUM_ENGINES] = {};
+	struct kthread_worker *worker[I915_NUM_ENGINES] = {};
 	struct preempt_smoke *arg;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
@@ -3576,6 +3575,8 @@ static int smoke_crescendo(struct preempt_smoke *smoke, unsigned int flags)
 	if (!arg)
 		return -ENOMEM;
 
+	memset(arg, 0, I915_NUM_ENGINES * sizeof(*arg));
+
 	for_each_engine(engine, smoke->gt, id) {
 		arg[id] = *smoke;
 		arg[id].engine = engine;
@@ -3583,31 +3584,28 @@ static int smoke_crescendo(struct preempt_smoke *smoke, unsigned int flags)
 			arg[id].batch = NULL;
 		arg[id].count = 0;
 
-		tsk[id] = kthread_run(smoke_crescendo_thread, arg,
-				      "igt/smoke:%d", id);
-		if (IS_ERR(tsk[id])) {
-			err = PTR_ERR(tsk[id]);
+		worker[id] = kthread_create_worker(0, "igt/smoke:%d", id);
+		if (IS_ERR(worker[id])) {
+			err = PTR_ERR(worker[id]);
 			break;
 		}
-		get_task_struct(tsk[id]);
-	}
 
-	yield(); /* start all threads before we kthread_stop() */
+		kthread_init_work(&arg[id].work, smoke_crescendo_work);
+		kthread_queue_work(worker[id], &arg[id].work);
+	}
 
 	count = 0;
 	for_each_engine(engine, smoke->gt, id) {
-		int status;
-
-		if (IS_ERR_OR_NULL(tsk[id]))
+		if (IS_ERR_OR_NULL(worker[id]))
 			continue;
 
-		status = kthread_stop(tsk[id]);
-		if (status && !err)
-			err = status;
+		kthread_flush_work(&arg[id].work);
+		if (arg[id].result && !err)
+			err = arg[id].result;
 
 		count += arg[id].count;
 
-		put_task_struct(tsk[id]);
+		kthread_destroy_worker(worker[id]);
 	}
 
 	pr_info("Submitted %lu crescendo:%x requests across %d engines and %d contexts\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 7f3bb1d34dfb..71263058a7b0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -866,10 +866,13 @@ static int igt_reset_active_engine(void *arg)
 }
 
 struct active_engine {
-	struct task_struct *task;
+	struct kthread_worker *worker;
+	struct kthread_work work;
 	struct intel_engine_cs *engine;
 	unsigned long resets;
 	unsigned int flags;
+	bool stop;
+	int result;
 };
 
 #define TEST_ACTIVE	BIT(0)
@@ -900,10 +903,10 @@ static int active_request_put(struct i915_request *rq)
 	return err;
 }
 
-static int active_engine(void *data)
+static void active_engine(struct kthread_work *work)
 {
 	I915_RND_STATE(prng);
-	struct active_engine *arg = data;
+	struct active_engine *arg = container_of(work, typeof(*arg), work);
 	struct intel_engine_cs *engine = arg->engine;
 	struct i915_request *rq[8] = {};
 	struct intel_context *ce[ARRAY_SIZE(rq)];
@@ -913,16 +916,17 @@ static int active_engine(void *data)
 	for (count = 0; count < ARRAY_SIZE(ce); count++) {
 		ce[count] = intel_context_create(engine);
 		if (IS_ERR(ce[count])) {
-			err = PTR_ERR(ce[count]);
-			pr_err("[%s] Create context #%ld failed: %d!\n", engine->name, count, err);
+			arg->result = PTR_ERR(ce[count]);
+			pr_err("[%s] Create context #%ld failed: %d!\n",
+			       engine->name, count, arg->result);
 			while (--count)
 				intel_context_put(ce[count]);
-			return err;
+			return;
 		}
 	}
 
 	count = 0;
-	while (!kthread_should_stop()) {
+	while (!READ_ONCE(arg->stop)) {
 		unsigned int idx = count++ & (ARRAY_SIZE(rq) - 1);
 		struct i915_request *old = rq[idx];
 		struct i915_request *new;
@@ -967,7 +971,7 @@ static int active_engine(void *data)
 		intel_context_put(ce[count]);
 	}
 
-	return err;
+	arg->result = err;
 }
 
 static int __igt_reset_engines(struct intel_gt *gt,
@@ -1022,7 +1026,7 @@ static int __igt_reset_engines(struct intel_gt *gt,
 
 		memset(threads, 0, sizeof(*threads) * I915_NUM_ENGINES);
 		for_each_engine(other, gt, tmp) {
-			struct task_struct *tsk;
+			struct kthread_worker *worker;
 
 			threads[tmp].resets =
 				i915_reset_engine_count(global, other);
@@ -1036,19 +1040,21 @@ static int __igt_reset_engines(struct intel_gt *gt,
 			threads[tmp].engine = other;
 			threads[tmp].flags = flags;
 
-			tsk = kthread_run(active_engine, &threads[tmp],
-					  "igt/%s", other->name);
-			if (IS_ERR(tsk)) {
-				err = PTR_ERR(tsk);
-				pr_err("[%s] Thread spawn failed: %d!\n", engine->name, err);
+			worker = kthread_create_worker(0, "igt/%s",
+						       other->name);
+			if (IS_ERR(worker)) {
+				err = PTR_ERR(worker);
+				pr_err("[%s] Worker create failed: %d!\n",
+				       engine->name, err);
 				goto unwind;
 			}
 
-			threads[tmp].task = tsk;
-			get_task_struct(tsk);
-		}
+			threads[tmp].worker = worker;
 
-		yield(); /* start all threads before we begin */
+			kthread_init_work(&threads[tmp].work, active_engine);
+			kthread_queue_work(threads[tmp].worker,
+					   &threads[tmp].work);
+		}
 
 		st_engine_heartbeat_disable_no_pm(engine);
 		GEM_BUG_ON(test_and_set_bit(I915_RESET_ENGINE + id,
@@ -1197,17 +1203,20 @@ static int __igt_reset_engines(struct intel_gt *gt,
 		for_each_engine(other, gt, tmp) {
 			int ret;
 
-			if (!threads[tmp].task)
+			if (!threads[tmp].worker)
 				continue;
 
-			ret = kthread_stop(threads[tmp].task);
+			WRITE_ONCE(threads[tmp].stop, true);
+			kthread_flush_work(&threads[tmp].work);
+			ret = READ_ONCE(threads[tmp].result);
 			if (ret) {
 				pr_err("kthread for other engine %s failed, err=%d\n",
 				       other->name, ret);
 				if (!err)
 					err = ret;
 			}
-			put_task_struct(threads[tmp].task);
+
+			kthread_destroy_worker(threads[tmp].worker);
 
 			/* GuC based resets are not logged per engine */
 			if (!using_guc) {
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 818a4909c1f3..a46350c37e9d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -299,9 +299,18 @@ __live_request_alloc(struct intel_context *ce)
 	return intel_context_create_request(ce);
 }
 
-static int __igt_breadcrumbs_smoketest(void *arg)
+struct smoke_thread {
+	struct kthread_worker *worker;
+	struct kthread_work work;
+	struct smoketest *t;
+	bool stop;
+	int result;
+};
+
+static void __igt_breadcrumbs_smoketest(struct kthread_work *work)
 {
-	struct smoketest *t = arg;
+	struct smoke_thread *thread = container_of(work, typeof(*thread), work);
+	struct smoketest *t = thread->t;
 	const unsigned int max_batch = min(t->ncontexts, t->max_batch) - 1;
 	const unsigned int total = 4 * t->ncontexts + 1;
 	unsigned int num_waits = 0, num_fences = 0;
@@ -320,8 +329,10 @@ static int __igt_breadcrumbs_smoketest(void *arg)
 	 */
 
 	requests = kcalloc(total, sizeof(*requests), GFP_KERNEL);
-	if (!requests)
-		return -ENOMEM;
+	if (!requests) {
+		thread->result = -ENOMEM;
+		return;
+	}
 
 	order = i915_random_order(total, &prng);
 	if (!order) {
@@ -329,7 +340,7 @@ static int __igt_breadcrumbs_smoketest(void *arg)
 		goto out_requests;
 	}
 
-	while (!kthread_should_stop()) {
+	while (!READ_ONCE(thread->stop)) {
 		struct i915_sw_fence *submit, *wait;
 		unsigned int n, count;
 
@@ -437,7 +448,7 @@ static int __igt_breadcrumbs_smoketest(void *arg)
 	kfree(order);
 out_requests:
 	kfree(requests);
-	return err;
+	thread->result = err;
 }
 
 static int mock_breadcrumbs_smoketest(void *arg)
@@ -450,7 +461,7 @@ static int mock_breadcrumbs_smoketest(void *arg)
 		.request_alloc = __mock_request_alloc
 	};
 	unsigned int ncpus = num_online_cpus();
-	struct task_struct **threads;
+	struct smoke_thread *threads;
 	unsigned int n;
 	int ret = 0;
 
@@ -479,28 +490,37 @@ static int mock_breadcrumbs_smoketest(void *arg)
 	}
 
 	for (n = 0; n < ncpus; n++) {
-		threads[n] = kthread_run(__igt_breadcrumbs_smoketest,
-					 &t, "igt/%d", n);
-		if (IS_ERR(threads[n])) {
-			ret = PTR_ERR(threads[n]);
+		struct kthread_worker *worker;
+
+		worker = kthread_create_worker(0, "igt/%d", n);
+		if (IS_ERR(worker)) {
+			ret = PTR_ERR(worker);
 			ncpus = n;
 			break;
 		}
 
-		get_task_struct(threads[n]);
+		threads[n].worker = worker;
+		threads[n].t = &t;
+		threads[n].stop = false;
+		threads[n].result = 0;
+
+		kthread_init_work(&threads[n].work,
+				  __igt_breadcrumbs_smoketest);
+		kthread_queue_work(worker, &threads[n].work);
 	}
 
-	yield(); /* start all threads before we begin */
 	msleep(jiffies_to_msecs(i915_selftest.timeout_jiffies));
 
 	for (n = 0; n < ncpus; n++) {
 		int err;
 
-		err = kthread_stop(threads[n]);
+		WRITE_ONCE(threads[n].stop, true);
+		kthread_flush_work(&threads[n].work);
+		err = READ_ONCE(threads[n].result);
 		if (err < 0 && !ret)
 			ret = err;
 
-		put_task_struct(threads[n]);
+		kthread_destroy_worker(threads[n].worker);
 	}
 	pr_info("Completed %lu waits for %lu fence across %d cpus\n",
 		atomic_long_read(&t.num_waits),
@@ -1419,9 +1439,18 @@ static int live_sequential_engines(void *arg)
 	return err;
 }
 
-static int __live_parallel_engine1(void *arg)
+struct parallel_thread {
+	struct kthread_worker *worker;
+	struct kthread_work work;
+	struct intel_engine_cs *engine;
+	int result;
+};
+
+static void __live_parallel_engine1(struct kthread_work *work)
 {
-	struct intel_engine_cs *engine = arg;
+	struct parallel_thread *thread =
+		container_of(work, typeof(*thread), work);
+	struct intel_engine_cs *engine = thread->engine;
 	IGT_TIMEOUT(end_time);
 	unsigned long count;
 	int err = 0;
@@ -1452,12 +1481,14 @@ static int __live_parallel_engine1(void *arg)
 	intel_engine_pm_put(engine);
 
 	pr_info("%s: %lu request + sync\n", engine->name, count);
-	return err;
+	thread->result = err;
 }
 
-static int __live_parallel_engineN(void *arg)
+static void __live_parallel_engineN(struct kthread_work *work)
 {
-	struct intel_engine_cs *engine = arg;
+	struct parallel_thread *thread =
+		container_of(work, typeof(*thread), work);
+	struct intel_engine_cs *engine = thread->engine;
 	IGT_TIMEOUT(end_time);
 	unsigned long count;
 	int err = 0;
@@ -1479,7 +1510,7 @@ static int __live_parallel_engineN(void *arg)
 	intel_engine_pm_put(engine);
 
 	pr_info("%s: %lu requests\n", engine->name, count);
-	return err;
+	thread->result = err;
 }
 
 static bool wake_all(struct drm_i915_private *i915)
@@ -1505,9 +1536,11 @@ static int wait_for_all(struct drm_i915_private *i915)
 	return -ETIME;
 }
 
-static int __live_parallel_spin(void *arg)
+static void __live_parallel_spin(struct kthread_work *work)
 {
-	struct intel_engine_cs *engine = arg;
+	struct parallel_thread *thread =
+		container_of(work, typeof(*thread), work);
+	struct intel_engine_cs *engine = thread->engine;
 	struct igt_spinner spin;
 	struct i915_request *rq;
 	int err = 0;
@@ -1520,7 +1553,8 @@ static int __live_parallel_spin(void *arg)
 
 	if (igt_spinner_init(&spin, engine->gt)) {
 		wake_all(engine->i915);
-		return -ENOMEM;
+		thread->result = -ENOMEM;
+		return;
 	}
 
 	intel_engine_pm_get(engine);
@@ -1553,22 +1587,22 @@ static int __live_parallel_spin(void *arg)
 
 out_spin:
 	igt_spinner_fini(&spin);
-	return err;
+	thread->result = err;
 }
 
 static int live_parallel_engines(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	static int (* const func[])(void *arg) = {
+	static void (* const func[])(struct kthread_work *) = {
 		__live_parallel_engine1,
 		__live_parallel_engineN,
 		__live_parallel_spin,
 		NULL,
 	};
 	const unsigned int nengines = num_uabi_engines(i915);
+	struct parallel_thread *threads;
 	struct intel_engine_cs *engine;
-	int (* const *fn)(void *arg);
-	struct task_struct **tsk;
+	void (* const *fn)(struct kthread_work *);
 	int err = 0;
 
 	/*
@@ -1576,8 +1610,8 @@ static int live_parallel_engines(void *arg)
 	 * tests that we load up the system maximally.
 	 */
 
-	tsk = kcalloc(nengines, sizeof(*tsk), GFP_KERNEL);
-	if (!tsk)
+	threads = kcalloc(nengines, sizeof(*threads), GFP_KERNEL);
+	if (!threads)
 		return -ENOMEM;
 
 	for (fn = func; !err && *fn; fn++) {
@@ -1594,37 +1628,44 @@ static int live_parallel_engines(void *arg)
 
 		idx = 0;
 		for_each_uabi_engine(engine, i915) {
-			tsk[idx] = kthread_run(*fn, engine,
-					       "igt/parallel:%s",
-					       engine->name);
-			if (IS_ERR(tsk[idx])) {
-				err = PTR_ERR(tsk[idx]);
+			struct kthread_worker *worker;
+
+			worker = kthread_create_worker(0, "igt/parallel:%s",
+						       engine->name);
+			if (IS_ERR(worker)) {
+				err = PTR_ERR(worker);
 				break;
 			}
-			get_task_struct(tsk[idx++]);
-		}
 
-		yield(); /* start all threads before we kthread_stop() */
+			threads[idx].worker = worker;
+			threads[idx].result = 0;
+			threads[idx].engine = engine;
+
+			kthread_init_work(&threads[idx].work, *fn);
+			kthread_queue_work(worker, &threads[idx].work);
+			idx++;
+		}
 
 		idx = 0;
 		for_each_uabi_engine(engine, i915) {
 			int status;
 
-			if (IS_ERR(tsk[idx]))
+			if (!threads[idx].worker)
 				break;
 
-			status = kthread_stop(tsk[idx]);
+			kthread_flush_work(&threads[idx].work);
+			status = READ_ONCE(threads[idx].result);
 			if (status && !err)
 				err = status;
 
-			put_task_struct(tsk[idx++]);
+			kthread_destroy_worker(threads[idx++].worker);
 		}
 
 		if (igt_live_test_end(&t))
 			err = -EIO;
 	}
 
-	kfree(tsk);
+	kfree(threads);
 	return err;
 }
 
@@ -1672,7 +1713,7 @@ static int live_breadcrumbs_smoketest(void *arg)
 	const unsigned int ncpus = num_online_cpus();
 	unsigned long num_waits, num_fences;
 	struct intel_engine_cs *engine;
-	struct task_struct **threads;
+	struct smoke_thread *threads;
 	struct igt_live_test live;
 	intel_wakeref_t wakeref;
 	struct smoketest *smoke;
@@ -1746,23 +1787,26 @@ static int live_breadcrumbs_smoketest(void *arg)
 			 smoke[idx].max_batch, engine->name);
 
 		for (n = 0; n < ncpus; n++) {
-			struct task_struct *tsk;
+			unsigned int i = idx * ncpus + n;
+			struct kthread_worker *worker;
 
-			tsk = kthread_run(__igt_breadcrumbs_smoketest,
-					  &smoke[idx], "igt/%d.%d", idx, n);
-			if (IS_ERR(tsk)) {
-				ret = PTR_ERR(tsk);
+			worker = kthread_create_worker(0, "igt/%d.%d", idx, n);
+			if (IS_ERR(worker)) {
+				ret = PTR_ERR(worker);
 				goto out_flush;
 			}
 
-			get_task_struct(tsk);
-			threads[idx * ncpus + n] = tsk;
+			threads[i].worker = worker;
+			threads[i].t = &smoke[idx];
+
+			kthread_init_work(&threads[i].work,
+					  __igt_breadcrumbs_smoketest);
+			kthread_queue_work(worker, &threads[i].work);
 		}
 
 		idx++;
 	}
 
-	yield(); /* start all threads before we begin */
 	msleep(jiffies_to_msecs(i915_selftest.timeout_jiffies));
 
 out_flush:
@@ -1771,17 +1815,19 @@ static int live_breadcrumbs_smoketest(void *arg)
 	num_fences = 0;
 	for_each_uabi_engine(engine, i915) {
 		for (n = 0; n < ncpus; n++) {
-			struct task_struct *tsk = threads[idx * ncpus + n];
+			unsigned int i = idx * ncpus + n;
 			int err;
 
-			if (!tsk)
+			if (!threads[i].worker)
 				continue;
 
-			err = kthread_stop(tsk);
+			WRITE_ONCE(threads[i].stop, true);
+			kthread_flush_work(&threads[i].work);
+			err = READ_ONCE(threads[i].result);
 			if (err < 0 && !ret)
 				ret = err;
 
-			put_task_struct(tsk);
+			kthread_destroy_worker(threads[i].worker);
 		}
 
 		num_waits += atomic_long_read(&smoke[idx].num_waits);
@@ -2891,9 +2937,18 @@ static int perf_series_engines(void *arg)
 	return err;
 }
 
-static int p_sync0(void *arg)
+struct p_thread {
+	struct perf_stats p;
+	struct kthread_worker *worker;
+	struct kthread_work work;
+	struct intel_engine_cs *engine;
+	int result;
+};
+
+static void p_sync0(struct kthread_work *work)
 {
-	struct perf_stats *p = arg;
+	struct p_thread *thread = container_of(work, typeof(*thread), work);
+	struct perf_stats *p = &thread->p;
 	struct intel_engine_cs *engine = p->engine;
 	struct intel_context *ce;
 	IGT_TIMEOUT(end_time);
@@ -2902,13 +2957,16 @@ static int p_sync0(void *arg)
 	int err = 0;
 
 	ce = intel_context_create(engine);
-	if (IS_ERR(ce))
-		return PTR_ERR(ce);
+	if (IS_ERR(ce)) {
+		thread->result = PTR_ERR(ce);
+		return;
+	}
 
 	err = intel_context_pin(ce);
 	if (err) {
 		intel_context_put(ce);
-		return err;
+		thread->result = err;
+		return;
 	}
 
 	if (intel_engine_supports_stats(engine)) {
@@ -2958,12 +3016,13 @@ static int p_sync0(void *arg)
 
 	intel_context_unpin(ce);
 	intel_context_put(ce);
-	return err;
+	thread->result = err;
 }
 
-static int p_sync1(void *arg)
+static void p_sync1(struct kthread_work *work)
 {
-	struct perf_stats *p = arg;
+	struct p_thread *thread = container_of(work, typeof(*thread), work);
+	struct perf_stats *p = &thread->p;
 	struct intel_engine_cs *engine = p->engine;
 	struct i915_request *prev = NULL;
 	struct intel_context *ce;
@@ -2973,13 +3032,16 @@ static int p_sync1(void *arg)
 	int err = 0;
 
 	ce = intel_context_create(engine);
-	if (IS_ERR(ce))
-		return PTR_ERR(ce);
+	if (IS_ERR(ce)) {
+		thread->result = PTR_ERR(ce);
+		return;
+	}
 
 	err = intel_context_pin(ce);
 	if (err) {
 		intel_context_put(ce);
-		return err;
+		thread->result = err;
+		return;
 	}
 
 	if (intel_engine_supports_stats(engine)) {
@@ -3031,12 +3093,13 @@ static int p_sync1(void *arg)
 
 	intel_context_unpin(ce);
 	intel_context_put(ce);
-	return err;
+	thread->result = err;
 }
 
-static int p_many(void *arg)
+static void p_many(struct kthread_work *work)
 {
-	struct perf_stats *p = arg;
+	struct p_thread *thread = container_of(work, typeof(*thread), work);
+	struct perf_stats *p = &thread->p;
 	struct intel_engine_cs *engine = p->engine;
 	struct intel_context *ce;
 	IGT_TIMEOUT(end_time);
@@ -3045,13 +3108,16 @@ static int p_many(void *arg)
 	bool busy;
 
 	ce = intel_context_create(engine);
-	if (IS_ERR(ce))
-		return PTR_ERR(ce);
+	if (IS_ERR(ce)) {
+		thread->result = PTR_ERR(ce);
+		return;
+	}
 
 	err = intel_context_pin(ce);
 	if (err) {
 		intel_context_put(ce);
-		return err;
+		thread->result = err;
+		return;
 	}
 
 	if (intel_engine_supports_stats(engine)) {
@@ -3092,26 +3158,23 @@ static int p_many(void *arg)
 
 	intel_context_unpin(ce);
 	intel_context_put(ce);
-	return err;
+	thread->result = err;
 }
 
 static int perf_parallel_engines(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	static int (* const func[])(void *arg) = {
+	static void (* const func[])(struct kthread_work *) = {
 		p_sync0,
 		p_sync1,
 		p_many,
 		NULL,
 	};
 	const unsigned int nengines = num_uabi_engines(i915);
+	void (* const *fn)(struct kthread_work *);
 	struct intel_engine_cs *engine;
-	int (* const *fn)(void *arg);
 	struct pm_qos_request qos;
-	struct {
-		struct perf_stats p;
-		struct task_struct *tsk;
-	} *engines;
+	struct p_thread *engines;
 	int err = 0;
 
 	engines = kcalloc(nengines, sizeof(*engines), GFP_KERNEL);
@@ -3134,36 +3197,45 @@ static int perf_parallel_engines(void *arg)
 
 		idx = 0;
 		for_each_uabi_engine(engine, i915) {
+			struct kthread_worker *worker;
+
 			intel_engine_pm_get(engine);
 
 			memset(&engines[idx].p, 0, sizeof(engines[idx].p));
-			engines[idx].p.engine = engine;
 
-			engines[idx].tsk = kthread_run(*fn, &engines[idx].p,
-						       "igt:%s", engine->name);
-			if (IS_ERR(engines[idx].tsk)) {
-				err = PTR_ERR(engines[idx].tsk);
+			worker = kthread_create_worker(0, "igt:%s",
+						       engine->name);
+			if (IS_ERR(worker)) {
+				err = PTR_ERR(worker);
 				intel_engine_pm_put(engine);
 				break;
 			}
-			get_task_struct(engines[idx++].tsk);
-		}
+			engines[idx].worker = worker;
+			engines[idx].result = 0;
+			engines[idx].p.engine = engine;
+			engines[idx].engine = engine;
 
-		yield(); /* start all threads before we kthread_stop() */
+			kthread_init_work(&engines[idx].work, *fn);
+			kthread_queue_work(worker, &engines[idx].work);
+			idx++;
+		}
 
 		idx = 0;
 		for_each_uabi_engine(engine, i915) {
 			int status;
 
-			if (IS_ERR(engines[idx].tsk))
+			if (!engines[idx].worker)
 				break;
 
-			status = kthread_stop(engines[idx].tsk);
+			kthread_flush_work(&engines[idx].work);
+			status = READ_ONCE(engines[idx].result);
 			if (status && !err)
 				err = status;
 
 			intel_engine_pm_put(engine);
-			put_task_struct(engines[idx++].tsk);
+
+			kthread_destroy_worker(engines[idx].worker);
+			idx++;
 		}
 
 		if (igt_live_test_end(&t))
-- 
2.34.1

