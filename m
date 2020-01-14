Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E70513A3F6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 10:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04AAB6E338;
	Tue, 14 Jan 2020 09:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1DA6E338
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 09:37:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19871431-1500050 
 for multiple; Tue, 14 Jan 2020 09:36:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 09:36:43 +0000
Message-Id: <20200114093648.2090633-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/gt: Expose timeslice duration to
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

Execlists uses a scheduling quantum (a timeslice) to alternate execution
between ready-to-run contexts of equal priority. This ensures that all
users (though only if they of equal importance) have the opportunity to
run and prevents livelocks where contexts may have implicit ordering due
to userspace semaphores.

The timeslicing mechanism can be compiled out with

	./scripts/config --set-val DRM_I915_TIMESLICE_DURATION 0

The timeslice duration can be adjusted per-engine using,

	/sys/class/drm/card?/engine/*/timeslice_duration_ms

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/Kconfig.profile         |  3 ++
 drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 46 ++++++++++++++++++++
 2 files changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
index c280b6ae38eb..d8d4a16179bd 100644
--- a/drivers/gpu/drm/i915/Kconfig.profile
+++ b/drivers/gpu/drm/i915/Kconfig.profile
@@ -73,4 +73,7 @@ config DRM_I915_TIMESLICE_DURATION
 	  is scheduled for execution for the timeslice duration, before
 	  switching to the next context.
 
+	  This is adjustable via
+	  /sys/class/drm/card?/engine/*/timeslice_duration_ms
+
 	  May be 0 to disable timeslicing.
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
index abddd8d0f9ae..b1bd768b13d7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
@@ -142,6 +142,48 @@ all_caps_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 static struct kobj_attribute all_caps_attr =
 __ATTR(known_capabilities, 0444, all_caps_show, NULL);
 
+static ssize_t
+timeslice_store(struct kobject *kobj, struct kobj_attribute *attr,
+		const char *buf, size_t count)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+	unsigned long long duration;
+	int err;
+
+	/*
+	 * Execlists uses a scheduling quantum (a timeslice) to alternate
+	 * execution between ready-to-run contexts of equal priority. This
+	 * ensures that all users (though only if they of equal importance)
+	 * have the opportunity to run and prevents livelocks where contexts
+	 * may have implicit ordering due to userspace semaphores.
+	 */
+
+	err = kstrtoull(buf, 0, &duration);
+	if (err)
+		return err;
+
+	if (duration > jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
+		return -EINVAL;
+
+	WRITE_ONCE(engine->props.timeslice_duration_ms, duration);
+
+	if (execlists_active(&engine->execlists))
+		set_timer_ms(&engine->execlists.timer, duration);
+
+	return count;
+}
+
+static ssize_t
+timeslice_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+
+	return sprintf(buf, "%lu\n", engine->props.timeslice_duration_ms);
+}
+
+static struct kobj_attribute timeslice_duration_attr =
+__ATTR(timeslice_duration_ms, 0644, timeslice_show, timeslice_store);
+
 static void kobj_engine_release(struct kobject *kobj)
 {
 	kfree(kobj);
@@ -206,6 +248,10 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		if (sysfs_create_files(kobj, files))
 			goto err_object;
 
+		if (intel_engine_has_timeslices(engine) &&
+		    sysfs_create_file(kobj, &timeslice_duration_attr.attr))
+			goto err_engine;
+
 		if (0) {
 err_object:
 			kobject_put(kobj);
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
