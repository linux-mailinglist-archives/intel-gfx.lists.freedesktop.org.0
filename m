Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C75B312F91
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01E36E874;
	Mon,  8 Feb 2021 10:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C636E864
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809239-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:36 +0000
Message-Id: <20210208105236.28498-31-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/31] drm/i915/gt: Limit C-states while waiting
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
index 72ed001d238d..545a9f3c71fe 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -86,6 +86,20 @@ config DRM_I915_USERFAULT_AUTOSUSPEND
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
index 9e67810c7767..2527182b642e 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -15,6 +15,40 @@
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
@@ -55,6 +89,7 @@ static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 	 * the irq.
 	 */
 	WRITE_ONCE(b->irq_armed, true);
+	dma_qos_add(b, b->irq_engine->props.dma_latency_ns);
 
 	/* Requests may have completed before we could enable the interrupt. */
 	if (!b->irq_enabled++ && irq_enable(b->irq_engine))
@@ -78,7 +113,9 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 	if (!--b->irq_enabled)
 		irq_disable(b->irq_engine);
 
+	dma_qos_del(b);
 	WRITE_ONCE(b->irq_armed, false);
+
 	intel_gt_pm_put_async(b->irq_engine->gt);
 }
 
@@ -287,6 +324,9 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
 	INIT_LIST_HEAD(&b->signalers);
 	init_llist_head(&b->signaled_requests);
 
+	b->qos.latency = -1;
+	INIT_WORK(&b->qos.update, __dma_qos_update);
+
 	spin_lock_init(&b->irq_lock);
 	init_irq_work(&b->irq_work, signal_irq_work);
 
@@ -354,6 +394,11 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
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
index 9c731338837d..1846230dd8bd 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -303,6 +303,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->instance = info->instance;
 	__sprint_engine_name(engine);
 
+	engine->props.dma_latency_ns =
+		CONFIG_DRM_I915_DMA_LATENCY;
 	engine->props.heartbeat_interval_ms =
 		CONFIG_DRM_I915_HEARTBEAT_INTERVAL;
 	engine->props.max_busywait_duration_ns =
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c48078f14dfd..0122a576baf8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -492,6 +492,8 @@ struct intel_engine_cs {
 		unsigned long preempt_timeout_ms;
 		unsigned long stop_timeout_ms;
 		unsigned long timeslice_duration_ms;
+
+		s32 dma_latency_ns;
 	} props, defaults;
 
 	I915_SELFTEST_DECLARE(struct fault_attr reset_timeout);
diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 70506f43d6be..30316e7ce4f5 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -299,6 +299,47 @@ stop_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
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
@@ -456,6 +497,7 @@ static void add_defaults(struct kobj_engine *parent)
 	static const struct attribute *files[] = {
 		&max_spin_def.attr,
 		&stop_timeout_def.attr,
+		&dma_latency_def.attr,
 #if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
 		&heartbeat_interval_def.attr,
 #endif
@@ -498,6 +540,7 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
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
