Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADFF13A3F5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 10:37:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BB06E33D;
	Tue, 14 Jan 2020 09:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB10F6E32C
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 09:37:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19871433-1500050 
 for multiple; Tue, 14 Jan 2020 09:36:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 09:36:45 +0000
Message-Id: <20200114093648.2090633-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/gt: Expose reset stop timeout
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

When we allow ourselves to sleep before a GPU reset after disabling
submission, even for a few milliseconds, gives an innocent context the
opportunity to clear the GPU before the reset occurs. However, how long
to sleep depends on the typical non-preemptible duration (a similar
problem to determining the ideal preempt-reset timeout or even the
heartbeat interval). As this seems of a hard policy decision, punt it to
userspace.

The timeout can be adjusted using

	/sys/class/drm/card?/engine/*/stop_timeout_ms

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.profile         |  3 ++
 drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 40 ++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
index 9ee3b59685b9..5f4ec3aec1d2 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -63,6 +63,9 @@ config DRM_I915_STOP_TIMEOUT
 	  that the reset itself may take longer and so be more disruptive to
 	  interactive or low latency workloads.
 
+	  This is adjustable via
+	  /sys/class/drm/card?/engine/*/stop_timeout_ms
+
 config DRM_I915_TIMESLICE_DURATION
 	int "Scheduling quantum for userspace batches (ms, jiffy granularity)"
 	default 1 # milliseconds
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
index 6d87529c64a7..2b65fed76435 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
@@ -232,6 +232,45 @@ timeslice_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 static struct kobj_attribute timeslice_duration_attr =
 __ATTR(timeslice_duration_ms, 0644, timeslice_show, timeslice_store);
 
+static ssize_t
+stop_store(struct kobject *kobj, struct kobj_attribute *attr,
+	   const char *buf, size_t count)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+	unsigned long long duration;
+	int err;
+
+	/*
+	 * When we allow ourselves to sleep before a GPU reset after disabling
+	 * submission, even for a few milliseconds, gives an innocent context
+	 * the opportunity to clear the GPU before the reset occurs. However,
+	 * how long to sleep depends on the typical non-preemptible duration
+	 * (a similar problem to determining the ideal preempt-reset timeout
+	 * or even the heartbeat interval).
+	 */
+
+	err = kstrtoull(buf, 0, &duration);
+	if (err)
+		return err;
+
+	if (duration > jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
+		return -EINVAL;
+
+	WRITE_ONCE(engine->props.stop_timeout_ms, duration);
+	return count;
+}
+
+static ssize_t
+stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+
+	return sprintf(buf, "%lu\n", engine->props.stop_timeout_ms);
+}
+
+static struct kobj_attribute stop_timeout_attr =
+__ATTR(stop_timeout_ms, 0644, stop_show, stop_store);
+
 static void kobj_engine_release(struct kobject *kobj)
 {
 	kfree(kobj);
@@ -273,6 +312,7 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		&caps_attr.attr,
 		&all_caps_attr.attr,
 		&max_spin_attr.attr,
+		&stop_timeout_attr.attr,
 		NULL
 	};
 
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
