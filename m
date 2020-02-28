Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD5D173829
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 14:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775996F45C;
	Fri, 28 Feb 2020 13:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88FBA6F44D
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 13:19:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20385329-1500050 
 for multiple; Fri, 28 Feb 2020 13:17:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 13:17:15 +0000
Message-Id: <20200228131716.3243616-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200228131716.3243616-1-chris@chris-wilson.co.uk>
References: <20200228131716.3243616-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/gt: Expose preempt reset timeout
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

After initialising a preemption request, we give the current resident a
small amount of time to vacate the GPU. The preemption request is for a
higher priority context and should be immediate to maintain high
quality of service (and avoid priority inversion). However, the
preemption granularity of the GPU can be quite coarse and so we need a
compromise.

The preempt timeout can be adjusted per-engine using,

	/sys/class/drm/card?/engine/*/preempt_timeout_ms

and can be disabled by setting it to 0.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Steve Carbonari <steven.carbonari@intel.com>
Tested-by: Steve Carbonari <steven.carbonari@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.profile    |  3 ++
 drivers/gpu/drm/i915/gt/sysfs_engines.c | 48 +++++++++++++++++++++++++
 2 files changed, 51 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
index 5f4ec3aec1d2..1f4e98a8532f 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -33,6 +33,9 @@ config DRM_I915_PREEMPT_TIMEOUT
 	  expires, the HW will be reset to allow the more important context
 	  to execute.
 
+	  This is adjustable via
+	  /sys/class/drm/card?/engine/*/preempt_timeout_ms
+
 	  May be 0 to disable the timeout.
 
 config DRM_I915_MAX_REQUEST_BUSYWAIT
diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index b7b62a439ddd..0c109adb18b8 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -271,6 +271,50 @@ stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 static struct kobj_attribute stop_timeout_attr =
 __ATTR(stop_timeout_ms, 0644, stop_show, stop_store);
 
+static ssize_t
+preempt_timeout_store(struct kobject *kobj, struct kobj_attribute *attr,
+		      const char *buf, size_t count)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+	unsigned long long timeout;
+	int err;
+
+	/*
+	 * After initialising a preemption request, we give the current
+	 * resident a small amount of time to vacate the GPU. The preemption
+	 * request is for a higher priority context and should be immediate to
+	 * maintain high quality of service (and avoid priority inversion).
+	 * However, the preemption granularity of the GPU can be quite coarse
+	 * and so we need a compromise.
+	 */
+
+	err = kstrtoull(buf, 0, &timeout);
+	if (err)
+		return err;
+
+	if (timeout > jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
+		return -EINVAL;
+
+	WRITE_ONCE(engine->props.preempt_timeout_ms, timeout);
+
+	if (READ_ONCE(engine->execlists.pending[0]))
+		set_timer_ms(&engine->execlists.preempt, timeout);
+
+	return count;
+}
+
+static ssize_t
+preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
+		     char *buf)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+
+	return sprintf(buf, "%lu\n", engine->props.preempt_timeout_ms);
+}
+
+static struct kobj_attribute preempt_timeout_attr =
+__ATTR(preempt_timeout_ms, 0644, preempt_timeout_show, preempt_timeout_store);
+
 static void kobj_engine_release(struct kobject *kobj)
 {
 	kfree(kobj);
@@ -338,6 +382,10 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		    sysfs_create_file(kobj, &timeslice_duration_attr.attr))
 			goto err_engine;
 
+		if (intel_engine_has_preempt_reset(engine) &&
+		    sysfs_create_file(kobj, &preempt_timeout_attr.attr))
+			goto err_engine;
+
 		if (0) {
 err_object:
 			kobject_put(kobj);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
