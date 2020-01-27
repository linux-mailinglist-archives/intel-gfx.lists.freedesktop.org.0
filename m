Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E01F14AB95
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 22:26:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6B06EBC7;
	Mon, 27 Jan 2020 21:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925EA6EB51
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 21:26:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20027601-1500050 
 for multiple; Mon, 27 Jan 2020 21:25:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 21:25:42 +0000
Message-Id: <20200127212543.3082254-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
References: <20200127212543.3082254-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Expose heartbeat interval via
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
Reviewed-by: Steve Carbonari <steven.carbonari@intel.com>
Tested-by: Steve Carbonari <steven.carbonari@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.profile    |  3 ++
 drivers/gpu/drm/i915/gt/sysfs_engines.c | 47 +++++++++++++++++++++++++
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
 
diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 1ebb221bd1cb..b39d4a365d73 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -8,6 +8,7 @@
 
 #include "i915_drv.h"
 #include "intel_engine.h"
+#include "intel_engine_heartbeat.h"
 #include "sysfs_engines.h"
 
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
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
