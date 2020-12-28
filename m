Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497BD2E6458
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 16:52:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9043F899B5;
	Mon, 28 Dec 2020 15:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2265789254
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 15:52:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23448250-1500050 
 for multiple; Mon, 28 Dec 2020 15:52:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Dec 2020 15:52:29 +0000
Message-Id: <20201228155229.9516-54-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 54/54] drm/i915/gt: Limit C-states while waiting
 for requests
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allow the sysadmin to specify whether we should prevent the CPU from
entering higher C-states while waiting for the CPU, in order to reduce
the latency of request completions and so speed up client continuations.

The target dma latency can be adjusted per-engine using,

	/sys/class/drm/card?/engine/*/dma_latency_ns

(For waiting on a virtual engine, the underlying physical engine is used
for the wait once the request is active, so set all the physical engines
in the virtual set to the same target dma latency.)

Note that in most cases, the ratelimiting step does not appear to the
interrupt latency per se, but secondary effects of avoiding additional
memory latencies while active.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Cc: Francisco Jerez <currojerez@riseup.net>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.profile          | 14 ++++++
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 45 +++++++++++++++++++
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |  7 +++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  2 +
 drivers/gpu/drm/i915/gt/sysfs_engines.c       | 43 ++++++++++++++++++
 6 files changed, 113 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
index 3eacea42b19f..7c996564c92b 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -24,6 +24,20 @@ config DRM_I915_USERFAULT_AUTOSUSPEND
 	  May be 0 to disable the extra delay and solely use the device level
 	  runtime pm autosuspend delay tunable.
 
+config DRM_I915_DMA_LATENCY
+	int "Target CPU-DMA latency while waiting on active requests (ns)"
+	default -1 # nanoseconds
+	help
+	  Specify a target latency for DMA wakeup, see /dev/cpu_dma_latency,
+	  used while the CPU is waiting for GPU results.
+
+	  This is adjustable via
+	  /sys/class/drm/card?/engine/*/dma_latency_ns
+
+	  May be -1 to prevent specifying a target wakeup and let the CPU
+	  enter powersaving while waiting. Conversely, 0 may be used to
+	  prevent the CPU from entering any C-states while waiting.
+
 config DRM_I915_HEARTBEAT_INTERVAL
 	int "Interval between heartbeat pulses (ms)"
 	default 2500 # milliseconds
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index dc76b05991e7..235f62ca7ae7 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -34,6 +34,40 @@
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
 
+static void __dma_qos_update(struct work_struct *work)
+{
+	struct intel_breadcrumbs_dma_qos *qos =
+		container_of(work, typeof(*qos), update);
+
+	if (cpu_latency_qos_request_active(&qos->req)) {
+		if (qos->latency < 0)
+			cpu_latency_qos_remove_request(&qos->req);
+		else
+			cpu_latency_qos_update_request(&qos->req, qos->latency);
+	} else {
+		if (qos->latency != -1)
+			cpu_latency_qos_add_request(&qos->req, qos->latency);
+	}
+}
+
+static void dma_qos_add(struct intel_breadcrumbs *b, s32 latency)
+{
+	if (latency < 0)
+		return;
+
+	b->qos.latency = latency;
+	queue_work(system_highpri_wq, &b->qos.update);
+}
+
+static void dma_qos_del(struct intel_breadcrumbs *b)
+{
+	if (b->qos.latency < 0)
+		return;
+
+	b->qos.latency = -1;
+	queue_work(system_highpri_wq, &b->qos.update);
+}
+
 static bool irq_enable(struct intel_engine_cs *engine)
 {
 	if (!engine->irq_enable)
@@ -74,6 +108,7 @@ static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 	 * the irq.
 	 */
 	WRITE_ONCE(b->irq_armed, true);
+	dma_qos_add(b, b->irq_engine->props.dma_latency_ns);
 
 	/* Requests may have completed before we could enable the interrupt. */
 	if (!b->irq_enabled++ && irq_enable(b->irq_engine))
@@ -97,7 +132,9 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 	if (!--b->irq_enabled)
 		irq_disable(b->irq_engine);
 
+	dma_qos_del(b);
 	WRITE_ONCE(b->irq_armed, false);
+
 	intel_gt_pm_put_async(b->irq_engine->gt);
 }
 
@@ -306,6 +343,9 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
 	INIT_LIST_HEAD(&b->signalers);
 	init_llist_head(&b->signaled_requests);
 
+	b->qos.latency = -1;
+	INIT_WORK(&b->qos.update, __dma_qos_update);
+
 	spin_lock_init(&b->irq_lock);
 	init_irq_work(&b->irq_work, signal_irq_work);
 
@@ -373,6 +413,11 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
 	irq_work_sync(&b->irq_work);
 	GEM_BUG_ON(!list_empty(&b->signalers));
 	GEM_BUG_ON(b->irq_armed);
+
+	GEM_BUG_ON(b->qos.latency != -1);
+	flush_work(&b->qos.update);
+	GEM_BUG_ON(cpu_latency_qos_request_active(&b->qos.req));
+
 	kfree(b);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index 3a084ce8ff5e..d5ad47f36ba0 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -8,6 +8,7 @@
 
 #include <linux/irq_work.h>
 #include <linux/list.h>
+#include <linux/pm_qos.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
 
@@ -43,6 +44,12 @@ struct intel_breadcrumbs {
 
 	/* Not all breadcrumbs are attached to physical HW */
 	struct intel_engine_cs *irq_engine;
+
+	struct intel_breadcrumbs_dma_qos {
+		struct pm_qos_request req;
+		struct work_struct update;
+		s32 latency;
+	} qos;
 };
 
 #endif /* __INTEL_BREADCRUMBS_TYPES__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index baaf3e8ea70c..6cb0eaf9655c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -314,6 +314,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->instance = info->instance;
 	__sprint_engine_name(engine);
 
+	engine->props.dma_latency_ns =
+		CONFIG_DRM_I915_DMA_LATENCY;
 	engine->props.heartbeat_interval_ms =
 		CONFIG_DRM_I915_HEARTBEAT_INTERVAL;
 	engine->props.max_busywait_duration_ns =
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index a93bef46e455..46f92e3528d2 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -506,6 +506,8 @@ struct intel_engine_cs {
 		unsigned long preempt_timeout_ms;
 		unsigned long stop_timeout_ms;
 		unsigned long timeslice_duration_ms;
+
+		s32 dma_latency_ns;
 	} props, defaults;
 };
 
diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 967031056202..ec49ffa8d9b9 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -301,6 +301,47 @@ stop_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 static struct kobj_attribute stop_timeout_def =
 __ATTR(stop_timeout_ms, 0444, stop_default, NULL);
 
+static ssize_t
+dma_latency_store(struct kobject *kobj, struct kobj_attribute *attr,
+		  const char *buf, size_t count)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+	long long latency;
+	int err;
+
+	err = kstrtoll(buf, 0, &latency);
+	if (err)
+		return err;
+
+	if (latency > S32_MAX)
+		return -EINVAL;
+
+	WRITE_ONCE(engine->props.dma_latency_ns, latency);
+	return count;
+}
+
+static ssize_t
+dma_latency_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+
+	return sprintf(buf, "%d\n", engine->props.dma_latency_ns);
+}
+
+static struct kobj_attribute dma_latency_attr =
+__ATTR(dma_latency_ns, 0644, dma_latency_show, dma_latency_store);
+
+static ssize_t
+dma_latency_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+
+	return sprintf(buf, "%d\n", engine->defaults.dma_latency_ns);
+}
+
+static struct kobj_attribute dma_latency_def =
+__ATTR(dma_latency_ns, 0444, dma_latency_default, NULL);
+
 static ssize_t
 preempt_timeout_store(struct kobject *kobj, struct kobj_attribute *attr,
 		      const char *buf, size_t count)
@@ -447,6 +488,7 @@ static void add_defaults(struct kobj_engine *parent)
 	static const struct attribute *files[] = {
 		&max_spin_def.attr,
 		&stop_timeout_def.attr,
+		&dma_latency_def.attr,
 #if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
 		&heartbeat_interval_def.attr,
 #endif
@@ -489,6 +531,7 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		&all_caps_attr.attr,
 		&max_spin_attr.attr,
 		&stop_timeout_attr.attr,
+		&dma_latency_attr.attr,
 #if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
 		&heartbeat_interval_attr.attr,
 #endif
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
