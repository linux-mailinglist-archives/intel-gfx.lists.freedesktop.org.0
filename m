Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D787113A3F4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 10:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114F06E339;
	Tue, 14 Jan 2020 09:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB916E32F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 09:37:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19871435-1500050 
 for multiple; Tue, 14 Jan 2020 09:36:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 09:36:47 +0000
Message-Id: <20200114093648.2090633-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/13] drm/i915/gt: Expose heartbeat interval
 via sysfs
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

We monitor the health of the system via periodic heartbeat pulses. The
pulses also provide the opportunity to perform garbage collection.
However, we interpret an incomplete pulse (a missed heartbeat) as an
indication that the system is no longer responsive, i.e. hung, and
perform an engine or full GPU reset. Given that the preemption
granularity can be very coarse on a system, we let the sysadmin override
our legacy timeouts which were "optimised" for desktop applications.

The heartbeat interval can be adjusted per-engine using,

	/sys/class/drm/card?/engine/*/heartbeat_interval_ms

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Kconfig.profile         |  3 ++
 drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 47 ++++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
index 1f4e98a8532f..ba8767fc0d6e 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -20,6 +20,9 @@ config DRM_I915_HEARTBEAT_INTERVAL
 	  check the health of the GPU and undertake regular house-keeping of
 	  internal driver state.
 
+	  This is adjustable via
+	  /sys/class/drm/card?/engine/*/heartbeat_interval_ms
+
 	  May be 0 to disable heartbeats and therefore disable automatic GPU
 	  hang detection.
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
index d299c66cf7ec..33b4c00b93f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
@@ -9,6 +9,7 @@
 
 #include "i915_drv.h"
 #include "intel_engine.h"
+#include "intel_engine_heartbeat.h"
 #include "intel_engine_sysfs.h"
 
 struct kobj_engine {
@@ -315,6 +316,49 @@ preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
 static struct kobj_attribute preempt_timeout_attr =
 __ATTR(preempt_timeout_ms, 0644, preempt_timeout_show, preempt_timeout_store);
 
+static ssize_t
+heartbeat_store(struct kobject *kobj, struct kobj_attribute *attr,
+		const char *buf, size_t count)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+	unsigned long long delay;
+	int err;
+
+	/*
+	 * We monitor the health of the system via periodic heartbeat pulses.
+	 * The pulses also provide the opportunity to perform garbage
+	 * collection.  However, we interpret an incomplete pulse (a missed
+	 * heartbeat) as an indication that the system is no longer responsive,
+	 * i.e. hung, and perform an engine or full GPU reset. Given that the
+	 * preemption granularity can be very coarse on a system, the optimal
+	 * value for any workload is unknowable!
+	 */
+
+	err = kstrtoull(buf, 0, &delay);
+	if (err)
+		return err;
+
+	if (delay >= jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
+		return -EINVAL;
+
+	err = intel_engine_set_heartbeat(engine, delay);
+	if (err)
+		return err;
+
+	return count;
+}
+
+static ssize_t
+heartbeat_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+
+	return sprintf(buf, "%lu\n", engine->props.heartbeat_interval_ms);
+}
+
+static struct kobj_attribute heartbeat_interval_attr =
+__ATTR(heartbeat_interval_ms, 0644, heartbeat_show, heartbeat_store);
+
 static void kobj_engine_release(struct kobject *kobj)
 {
 	kfree(kobj);
@@ -357,6 +401,9 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		&all_caps_attr.attr,
 		&max_spin_attr.attr,
 		&stop_timeout_attr.attr,
+#if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
+		&heartbeat_interval_attr.attr,
+#endif
 		NULL
 	};
 
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
