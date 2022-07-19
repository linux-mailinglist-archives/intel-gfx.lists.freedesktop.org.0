Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D75C578F8F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 03:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A24D11A2A4;
	Tue, 19 Jul 2022 01:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634A411A2A6;
 Tue, 19 Jul 2022 01:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658192833; x=1689728833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aGq/etdXPlvmPwIp+95wEArmD3L4kv9C2oV1vJ1w2aA=;
 b=ShcKKBrevTpjVEJAUtn4IkuaaGSnvpEe8L4hQlCuT/NmFf6l/pn6zbT4
 o5V+hOZg4T+qudkVAX3vHk8oeG1ebpZurZy1IiAFuqyUNDcZB+Kv9jE62
 JmwhIm3fh9M1gRDOvCfbntBWpQ8AR/C0TJiZsSIQcyC5C9x3WweFtBs+y
 0EOOD4Nem70alS1/sZCaJRw1CmINnqbMTiZHlvcqDN3ca/BE0ZPs0SrPm
 zB89+LvMTzGehZFjfO5zK1c7v8bMC9tg1o5LfgaFZw3hs1gu84tWvdRmh
 LjTIuf3eZDw88K/sjFqC29EMjxXhVfpyKJg3L6ckxvsus5c5QLydk+29F w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="266759611"
X-IronPort-AV: E=Sophos;i="5.92,282,1650956400"; d="scan'208";a="266759611"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 18:07:12 -0700
X-IronPort-AV: E=Sophos;i="5.92,282,1650956400"; d="scan'208";a="630128389"
Received: from orsosgc001.jf.intel.com ([10.165.21.135])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 18:07:11 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 18 Jul 2022 18:07:08 -0700
Message-Id: <cf6e483bf79f871c2c8c74af6005bf6a83a3a1ce.1658192398.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1658192398.git.ashutosh.dixit@intel.com>
References: <cover.1658192398.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Expose per-gt RPS defaults in
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the following sysfs files to gt/gtN/.defaults/:
* rps_min_freq_mhz
* rps_max_freq_mhz

v2: Correct gt/gtN/.defaults/* file names in commit message
v3: Remove rps_boost_freq_mhz since it is not consumed by userspace

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c    |  5 ---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h    |  6 ++++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 34 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  2 ++
 drivers/gpu/drm/i915/gt/intel_rps.c         |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 12 +++++---
 6 files changed, 52 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
index 6447c0376dbd..d651ccd0ab20 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
@@ -22,11 +22,6 @@ bool is_object_gt(struct kobject *kobj)
 	return !strncmp(kobj->name, "gt", 2);
 }
 
-static struct intel_gt *kobj_to_gt(struct kobject *kobj)
-{
-	return container_of(kobj, struct intel_gt, sysfs_gt);
-}
-
 struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
 					    const char *name)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
index a99aa7e8b01a..6232923a420d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
@@ -10,6 +10,7 @@
 #include <linux/kobject.h>
 
 #include "i915_gem.h" /* GEM_BUG_ON() */
+#include "intel_gt_types.h"
 
 struct intel_gt;
 
@@ -22,6 +23,11 @@ intel_gt_create_kobj(struct intel_gt *gt,
 		     struct kobject *dir,
 		     const char *name);
 
+static inline struct intel_gt *kobj_to_gt(struct kobject *kobj)
+{
+	return container_of(kobj, struct intel_gt, sysfs_gt);
+}
+
 void intel_gt_sysfs_register(struct intel_gt *gt);
 void intel_gt_sysfs_unregister(struct intel_gt *gt);
 struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 73a8b46e0234..e066cc33d9f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -727,6 +727,34 @@ static const struct attribute *media_perf_power_attrs[] = {
 	NULL
 };
 
+static ssize_t
+default_min_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_gt *gt = kobj_to_gt(kobj->parent);
+
+	return sysfs_emit(buf, "%u\n", gt->defaults.min_freq);
+}
+
+static struct kobj_attribute default_min_freq_mhz =
+__ATTR(rps_min_freq_mhz, 0444, default_min_freq_mhz_show, NULL);
+
+static ssize_t
+default_max_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_gt *gt = kobj_to_gt(kobj->parent);
+
+	return sysfs_emit(buf, "%u\n", gt->defaults.max_freq);
+}
+
+static struct kobj_attribute default_max_freq_mhz =
+__ATTR(rps_max_freq_mhz, 0444, default_max_freq_mhz_show, NULL);
+
+static const struct attribute * const rps_defaults_attrs[] = {
+	&default_min_freq_mhz.attr,
+	&default_max_freq_mhz.attr,
+	NULL
+};
+
 static int intel_sysfs_rps_init(struct intel_gt *gt, struct kobject *kobj,
 				const struct attribute * const *attrs)
 {
@@ -776,4 +804,10 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
 				 "failed to create gt%u media_perf_power_attrs sysfs (%pe)\n",
 				 gt->info.id, ERR_PTR(ret));
 	}
+
+	ret = sysfs_create_files(gt->sysfs_defaults, rps_defaults_attrs);
+	if (ret)
+		drm_warn(&gt->i915->drm,
+			 "failed to add gt%u rps defaults (%pe)\n",
+			 gt->info.id, ERR_PTR(ret));
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 92839b9adb12..80f52532290e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -76,6 +76,8 @@ enum intel_submission_method {
 };
 
 struct gt_defaults {
+	u32 min_freq;
+	u32 max_freq;
 };
 
 struct intel_gt {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index fb3f57ee450b..c7d381ad90cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1979,7 +1979,9 @@ void intel_rps_init(struct intel_rps *rps)
 
 	/* Derive initial user preferences/limits from the hardware limits */
 	rps->max_freq_softlimit = rps->max_freq;
+	rps_to_gt(rps)->defaults.max_freq = rps->max_freq_softlimit;
 	rps->min_freq_softlimit = rps->min_freq;
+	rps_to_gt(rps)->defaults.min_freq = rps->min_freq_softlimit;
 
 	/* After setting max-softlimit, find the overclock max freq */
 	if (GRAPHICS_VER(i915) == 6 || IS_IVYBRIDGE(i915) || IS_HASWELL(i915)) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index ec9c4ca0f615..e1fa1f32f29e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -575,20 +575,24 @@ static int slpc_set_softlimits(struct intel_guc_slpc *slpc)
 	 * unless they have deviated from defaults, in which case,
 	 * we retain the values and set min/max accordingly.
 	 */
-	if (!slpc->max_freq_softlimit)
+	if (!slpc->max_freq_softlimit) {
 		slpc->max_freq_softlimit = slpc->rp0_freq;
-	else if (slpc->max_freq_softlimit != slpc->rp0_freq)
+		slpc_to_gt(slpc)->defaults.max_freq = slpc->max_freq_softlimit;
+	} else if (slpc->max_freq_softlimit != slpc->rp0_freq) {
 		ret = intel_guc_slpc_set_max_freq(slpc,
 						  slpc->max_freq_softlimit);
+	}
 
 	if (unlikely(ret))
 		return ret;
 
-	if (!slpc->min_freq_softlimit)
+	if (!slpc->min_freq_softlimit) {
 		slpc->min_freq_softlimit = slpc->min_freq;
-	else if (slpc->min_freq_softlimit != slpc->min_freq)
+		slpc_to_gt(slpc)->defaults.min_freq = slpc->min_freq_softlimit;
+	} else if (slpc->min_freq_softlimit != slpc->min_freq) {
 		return intel_guc_slpc_set_min_freq(slpc,
 						   slpc->min_freq_softlimit);
+	}
 
 	return 0;
 }
-- 
2.34.1

