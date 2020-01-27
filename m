Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BB114AB99
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 22:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B94E6EB51;
	Mon, 27 Jan 2020 21:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4A46EB78
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 21:26:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20027598-1500050 
 for multiple; Mon, 27 Jan 2020 21:25:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 21:25:39 +0000
Message-Id: <20200127212543.3082254-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
References: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/gt: Expose busywait duration to
 sysfs
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

We busywait on an inflight request (one that is currently executing on
HW, and so might complete quickly) prior to setting up an interrupt and
sleeping. The trade off is that we keep an expensive CPU core busy in
order to avoid wake up latency: where that trade off should lie is best
left to the sysadmin.

The busywait mechanism can be compiled out with

	./scripts/config --set-val DRM_I915_SPIN_REQUEST 0

The maximum busywait duration can be adjusted per-engine using,

	/sys/class/drm/card?/engine/*/ms_busywait_duration_ns

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Steve Carbonari <steven.carbonari@intel.com>
Tested-by: Steve Carbonari <steven.carbonari@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.profile         |  9 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  2 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 +
 drivers/gpu/drm/i915/gt/sysfs_engines.c      | 49 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_request.c          | 19 ++++----
 5 files changed, 68 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
index d8d4a16179bd..9ee3b59685b9 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -35,9 +35,9 @@ config DRM_I915_PREEMPT_TIMEOUT
 
 	  May be 0 to disable the timeout.
 
-config DRM_I915_SPIN_REQUEST
-	int "Busywait for request completion (us)"
-	default 5 # microseconds
+config DRM_I915_MAX_REQUEST_BUSYWAIT
+	int "Busywait for request completion limit (ns)"
+	default 8000 # nanoseconds
 	help
 	  Before sleeping waiting for a request (GPU operation) to complete,
 	  we may spend some time polling for its completion. As the IRQ may
@@ -45,6 +45,9 @@ config DRM_I915_SPIN_REQUEST
 	  check if the request will complete in the time it would have taken
 	  us to enable the interrupt.
 
+	  This is adjustable via
+	  /sys/class/drm/card?/engine/*/max_busywait_duration_ns
+
 	  May be 0 to disable the initial spin. In practice, we estimate
 	  the cost of enabling the interrupt (if currently disabled) to be
 	  a few microseconds.
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 9b965d1f811d..af28ad168834 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -313,6 +313,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 
 	engine->props.heartbeat_interval_ms =
 		CONFIG_DRM_I915_HEARTBEAT_INTERVAL;
+	engine->props.max_busywait_duration_ns =
+		CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT;
 	engine->props.preempt_timeout_ms =
 		CONFIG_DRM_I915_PREEMPT_TIMEOUT;
 	engine->props.stop_timeout_ms =
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 92be41a6903c..ed433c6386fb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -537,6 +537,7 @@ struct intel_engine_cs {
 
 	struct {
 		unsigned long heartbeat_interval_ms;
+		unsigned long max_busywait_duration_ns;
 		unsigned long preempt_timeout_ms;
 		unsigned long stop_timeout_ms;
 		unsigned long timeslice_duration_ms;
diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index dd93e87ea5a8..061facb41602 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -142,6 +142,54 @@ all_caps_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 static struct kobj_attribute all_caps_attr =
 __ATTR(known_capabilities, 0444, all_caps_show, NULL);
 
+static ssize_t
+max_spin_store(struct kobject *kobj, struct kobj_attribute *attr,
+	       const char *buf, size_t count)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+	unsigned long long duration;
+	int err;
+
+	/*
+	 * When waiting for a request, if is it currently being executed
+	 * on the GPU, we busywait for a short while before sleeping. The
+	 * premise is that most requests are short, and if it is already
+	 * executing then there is a good chance that it will complete
+	 * before we can setup the interrupt handler and go to sleep.
+	 * We try to offset the cost of going to sleep, by first spinning
+	 * on the request -- if it completed in less time than it would take
+	 * to go sleep, process the interrupt and return back to the client,
+	 * then we have saved the client some latency, albeit at the cost
+	 * of spinning on an expensive CPU core.
+	 *
+	 * While we try to avoid waiting at all for a request that is unlikely
+	 * to complete, deciding how long it is worth spinning is for is an
+	 * arbitrary decision: trading off power vs latency.
+	 */
+
+	err = kstrtoull(buf, 0, &duration);
+	if (err)
+		return err;
+
+	if (duration > jiffies_to_nsecs(2))
+		return -EINVAL;
+
+	WRITE_ONCE(engine->props.max_busywait_duration_ns, duration);
+
+	return count;
+}
+
+static ssize_t
+max_spin_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+
+	return sprintf(buf, "%lu\n", engine->props.max_busywait_duration_ns);
+}
+
+static struct kobj_attribute max_spin_attr =
+__ATTR(max_busywait_duration_ns, 0644, max_spin_show, max_spin_store);
+
 static ssize_t
 timeslice_store(struct kobject *kobj, struct kobj_attribute *attr,
 		const char *buf, size_t count)
@@ -224,6 +272,7 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		&mmio_attr.attr,
 		&caps_attr.attr,
 		&all_caps_attr.attr,
+		&max_spin_attr.attr,
 		NULL
 	};
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 78a5f5d3c070..a30c1fb19828 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1371,7 +1371,7 @@ void i915_request_add(struct i915_request *rq)
 	mutex_unlock(&tl->mutex);
 }
 
-static unsigned long local_clock_us(unsigned int *cpu)
+static unsigned long local_clock_ns(unsigned int *cpu)
 {
 	unsigned long t;
 
@@ -1388,7 +1388,7 @@ static unsigned long local_clock_us(unsigned int *cpu)
 	 * stop busywaiting, see busywait_stop().
 	 */
 	*cpu = get_cpu();
-	t = local_clock() >> 10;
+	t = local_clock();
 	put_cpu();
 
 	return t;
@@ -1398,15 +1398,15 @@ static bool busywait_stop(unsigned long timeout, unsigned int cpu)
 {
 	unsigned int this_cpu;
 
-	if (time_after(local_clock_us(&this_cpu), timeout))
+	if (time_after(local_clock_ns(&this_cpu), timeout))
 		return true;
 
 	return this_cpu != cpu;
 }
 
-static bool __i915_spin_request(const struct i915_request * const rq,
-				int state, unsigned long timeout_us)
+static bool __i915_spin_request(const struct i915_request * const rq, int state)
 {
+	unsigned long timeout_ns;
 	unsigned int cpu;
 
 	/*
@@ -1434,7 +1434,8 @@ static bool __i915_spin_request(const struct i915_request * const rq,
 	 * takes to sleep on a request, on the order of a microsecond.
 	 */
 
-	timeout_us += local_clock_us(&cpu);
+	timeout_ns = READ_ONCE(rq->engine->props.max_busywait_duration_ns);
+	timeout_ns += local_clock_ns(&cpu);
 	do {
 		if (i915_request_completed(rq))
 			return true;
@@ -1442,7 +1443,7 @@ static bool __i915_spin_request(const struct i915_request * const rq,
 		if (signal_pending_state(state, current))
 			break;
 
-		if (busywait_stop(timeout_us, cpu))
+		if (busywait_stop(timeout_ns, cpu))
 			break;
 
 		cpu_relax();
@@ -1528,8 +1529,8 @@ long i915_request_wait(struct i915_request *rq,
 	 * completion. That requires having a good predictor for the request
 	 * duration, which we currently lack.
 	 */
-	if (IS_ACTIVE(CONFIG_DRM_I915_SPIN_REQUEST) &&
-	    __i915_spin_request(rq, state, CONFIG_DRM_I915_SPIN_REQUEST)) {
+	if (IS_ACTIVE(CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT) &&
+	    __i915_spin_request(rq, state)) {
 		dma_fence_signal(&rq->fence);
 		goto out;
 	}
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
