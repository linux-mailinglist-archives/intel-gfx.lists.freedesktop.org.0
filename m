Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D176B1DA7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 09:16:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55CE810E15A;
	Thu,  9 Mar 2023 08:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A931210E15A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 08:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678349816; x=1709885816;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NQpQoohL4OjSPvHpURmvD/f8nAIhlUCIZaE05o3CNkg=;
 b=jPSlVRNO6k4HyujBj7AB9pEG0Fi5htjl91IMHVI7ijFWAhZYaj6NH1zs
 lGS7gfwMO6PCQZwhmdh/CoTY+G+9i4UBAFbb7I4XyDbj6sQreYoh65dd6
 VBb7PJuxXIK4q+jM9Ymgd6n6dmdEamloX/MRtIVZX45TXRRdzP1lv2r/w
 wUMYfijuL+6wD6S7qYFx+m9hKbuuH9RaPZRID7eL49vmpNIFZeFOdlItS
 kbo3UpgHEBSY4XqOarvIAd5LvOO4zqM/+x6k87GDGyuXlyJ6wSuYUDxS7
 K/vOAJk8/ANeNWm6WeZVJB9HDbs145iYaZ0hf7PBj7d2f/UcYSWOZ4IL6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="333855236"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="333855236"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 00:16:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="746229933"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="746229933"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.145])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 00:16:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Mar 2023 10:16:45 +0200
Message-Id: <20230309081645.385650-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: make kobj attributes const
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's no need for any of these to be mutable, constify:

drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000020 files.0
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000050 files.1
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 preempt_timeout_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 timeslice_duration_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 timeslice_duration_def
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 preempt_timeout_def
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 max_spin_def
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 stop_timeout_def
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 heartbeat_interval_def
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 name_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 class_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 inst_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 mmio_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 caps_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 all_caps_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 max_spin_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 stop_timeout_attr
drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 heartbeat_interval_attr

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/sysfs_engines.c | 36 ++++++++++++-------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 7eae3265f8cd..021f51d9b456 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -27,7 +27,7 @@ name_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%s\n", kobj_to_engine(kobj)->name);
 }
 
-static struct kobj_attribute name_attr =
+static const struct kobj_attribute name_attr =
 __ATTR(name, 0444, name_show, NULL);
 
 static ssize_t
@@ -36,7 +36,7 @@ class_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_class);
 }
 
-static struct kobj_attribute class_attr =
+static const struct kobj_attribute class_attr =
 __ATTR(class, 0444, class_show, NULL);
 
 static ssize_t
@@ -45,7 +45,7 @@ inst_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_instance);
 }
 
-static struct kobj_attribute inst_attr =
+static const struct kobj_attribute inst_attr =
 __ATTR(instance, 0444, inst_show, NULL);
 
 static ssize_t
@@ -54,7 +54,7 @@ mmio_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
 }
 
-static struct kobj_attribute mmio_attr =
+static const struct kobj_attribute mmio_attr =
 __ATTR(mmio_base, 0444, mmio_show, NULL);
 
 static const char * const vcs_caps[] = {
@@ -125,7 +125,7 @@ caps_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return __caps_show(engine, engine->uabi_capabilities, buf, true);
 }
 
-static struct kobj_attribute caps_attr =
+static const struct kobj_attribute caps_attr =
 __ATTR(capabilities, 0444, caps_show, NULL);
 
 static ssize_t
@@ -134,7 +134,7 @@ all_caps_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return __caps_show(kobj_to_engine(kobj), -1, buf, false);
 }
 
-static struct kobj_attribute all_caps_attr =
+static const struct kobj_attribute all_caps_attr =
 __ATTR(known_capabilities, 0444, all_caps_show, NULL);
 
 static ssize_t
@@ -183,7 +183,7 @@ max_spin_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%lu\n", engine->props.max_busywait_duration_ns);
 }
 
-static struct kobj_attribute max_spin_attr =
+static const struct kobj_attribute max_spin_attr =
 __ATTR(max_busywait_duration_ns, 0644, max_spin_show, max_spin_store);
 
 static ssize_t
@@ -194,7 +194,7 @@ max_spin_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%lu\n", engine->defaults.max_busywait_duration_ns);
 }
 
-static struct kobj_attribute max_spin_def =
+static const struct kobj_attribute max_spin_def =
 __ATTR(max_busywait_duration_ns, 0444, max_spin_default, NULL);
 
 static ssize_t
@@ -237,7 +237,7 @@ timeslice_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%lu\n", engine->props.timeslice_duration_ms);
 }
 
-static struct kobj_attribute timeslice_duration_attr =
+static const struct kobj_attribute timeslice_duration_attr =
 __ATTR(timeslice_duration_ms, 0644, timeslice_show, timeslice_store);
 
 static ssize_t
@@ -248,7 +248,7 @@ timeslice_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%lu\n", engine->defaults.timeslice_duration_ms);
 }
 
-static struct kobj_attribute timeslice_duration_def =
+static const struct kobj_attribute timeslice_duration_def =
 __ATTR(timeslice_duration_ms, 0444, timeslice_default, NULL);
 
 static ssize_t
@@ -288,7 +288,7 @@ stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%lu\n", engine->props.stop_timeout_ms);
 }
 
-static struct kobj_attribute stop_timeout_attr =
+static const struct kobj_attribute stop_timeout_attr =
 __ATTR(stop_timeout_ms, 0644, stop_show, stop_store);
 
 static ssize_t
@@ -299,7 +299,7 @@ stop_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%lu\n", engine->defaults.stop_timeout_ms);
 }
 
-static struct kobj_attribute stop_timeout_def =
+static const struct kobj_attribute stop_timeout_def =
 __ATTR(stop_timeout_ms, 0444, stop_default, NULL);
 
 static ssize_t
@@ -344,7 +344,7 @@ preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
 	return sysfs_emit(buf, "%lu\n", engine->props.preempt_timeout_ms);
 }
 
-static struct kobj_attribute preempt_timeout_attr =
+static const struct kobj_attribute preempt_timeout_attr =
 __ATTR(preempt_timeout_ms, 0644, preempt_timeout_show, preempt_timeout_store);
 
 static ssize_t
@@ -356,7 +356,7 @@ preempt_timeout_default(struct kobject *kobj, struct kobj_attribute *attr,
 	return sysfs_emit(buf, "%lu\n", engine->defaults.preempt_timeout_ms);
 }
 
-static struct kobj_attribute preempt_timeout_def =
+static const struct kobj_attribute preempt_timeout_def =
 __ATTR(preempt_timeout_ms, 0444, preempt_timeout_default, NULL);
 
 static ssize_t
@@ -400,7 +400,7 @@ heartbeat_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%lu\n", engine->props.heartbeat_interval_ms);
 }
 
-static struct kobj_attribute heartbeat_interval_attr =
+static const struct kobj_attribute heartbeat_interval_attr =
 __ATTR(heartbeat_interval_ms, 0644, heartbeat_show, heartbeat_store);
 
 static ssize_t
@@ -411,7 +411,7 @@ heartbeat_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 	return sysfs_emit(buf, "%lu\n", engine->defaults.heartbeat_interval_ms);
 }
 
-static struct kobj_attribute heartbeat_interval_def =
+static const struct kobj_attribute heartbeat_interval_def =
 __ATTR(heartbeat_interval_ms, 0444, heartbeat_default, NULL);
 
 static void kobj_engine_release(struct kobject *kobj)
@@ -447,7 +447,7 @@ kobj_engine(struct kobject *dir, struct intel_engine_cs *engine)
 
 static void add_defaults(struct kobj_engine *parent)
 {
-	static const struct attribute *files[] = {
+	static const struct attribute * const files[] = {
 		&max_spin_def.attr,
 		&stop_timeout_def.attr,
 #if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
@@ -483,7 +483,7 @@ static void add_defaults(struct kobj_engine *parent)
 
 void intel_engines_add_sysfs(struct drm_i915_private *i915)
 {
-	static const struct attribute *files[] = {
+	static const struct attribute * const files[] = {
 		&name_attr.attr,
 		&class_attr.attr,
 		&inst_attr.attr,
-- 
2.39.1

