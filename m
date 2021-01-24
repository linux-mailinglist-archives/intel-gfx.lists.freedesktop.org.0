Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49DB301D32
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jan 2021 16:31:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FBB089E5F;
	Sun, 24 Jan 2021 15:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE6089CAF
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jan 2021 15:31:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23686703-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jan 2021 15:31:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Jan 2021 15:31:29 +0000
Message-Id: <20210124153136.19124-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/8] drm/i915/gt: Show the per-engine runtime in
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

Since we already report the per-engine runtime via PMU (using sampling
if a direct measure is not available), and in debugfs, also trivially
include the information for each engine under sysfs as a read-only
property. We only present the total milliseconds to hide any misleading
accuracy and to purposely reduce the precision of the global
unprivileged information.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20210123153733.18139-1-chris@chris-wilson.co.uk
---
 drivers/gpu/drm/i915/gt/sysfs_engines.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 967031056202..57ef5383dd4e 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -411,6 +411,19 @@ heartbeat_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 static struct kobj_attribute heartbeat_interval_def =
 __ATTR(heartbeat_interval_ms, 0444, heartbeat_default, NULL);
 
+static ssize_t
+runtime_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_engine_cs *engine = kobj_to_engine(kobj);
+	ktime_t dummy;
+
+	return sprintf(buf, "%llu\n",
+		       ktime_to_ms(intel_engine_get_busy_time(engine, &dummy)));
+}
+
+static struct kobj_attribute runtime_attr =
+__ATTR(runtime_ms, 0444, runtime_show, NULL);
+
 static void kobj_engine_release(struct kobject *kobj)
 {
 	kfree(kobj);
@@ -521,6 +534,10 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		    sysfs_create_file(kobj, &preempt_timeout_attr.attr))
 			goto err_engine;
 
+		if (intel_engine_supports_stats(engine) &&
+		    sysfs_create_file(kobj, &runtime_attr.attr))
+			goto err_engine;
+
 		add_defaults(container_of(kobj, struct kobj_engine, base));
 
 		if (0) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
