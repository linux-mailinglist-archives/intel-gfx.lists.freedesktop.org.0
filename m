Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F04995154ED
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 21:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 505FE10EF52;
	Fri, 29 Apr 2022 19:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0767E10EEB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 19:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651262198; x=1682798198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fh3uM2YkznqHtxf1g/J5li7518YUWUKD5aPHwOtHp5s=;
 b=QH5TkCtU/bve1y/FPHznnFkNH81Mq9gC/FWGlR4yGKm6AFU15lJJ3ria
 rZ0aUn1TmJpu7S++NmZFKq0wcYQ03kmhquVW2WR/C4+BcHuNTzFbjwPoj
 kItMN2aFcbV53/jYaomzLwzeEkqv5GgbkB/J3+KFCZmRNm7uv9Rx0V+ru
 h2585ZzxrQOCiXP49k3a5F72SNiLrUJ5WZmcmvdzkPiBkJvsO43P690RP
 rzBw4XBK4NRBdRQ0Ayg6WfRbFbKPyet908zag+XRssnJwkct0XYN77hm2
 pJzElZ6L9pkxt7NKvpxx8zIGkpH2Cmpc2qr+GWGWK52UqwkG5TPNkCd55 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="246674400"
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="246674400"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:56:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="685282472"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:56:36 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Apr 2022 12:56:28 -0700
Message-Id: <e4c5f650a41fa7955c3ddabbb32846b3fafb3134.1651261886.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1651261886.git.ashutosh.dixit@intel.com>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Expose per-gt RPS defaults in
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Create a gt/gtN/.defaults directory (similar to
engine/<engine-name>/.defaults) to expose default parameter values for each
gt in sysfs. Populate the .defaults directory with RPS parameter default
values in order to allow userspace to revert to default values when needed.

This patch adds the following sysfs files to gt/gtN/.defaults:
* default_min_freq_mhz
* default_max_freq_mhz
* default_boost_freq_mhz

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c    | 10 ++--
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h    |  6 +++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 51 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h    | 10 ++++
 drivers/gpu/drm/i915/gt/intel_rps.c         |  3 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 +++++--
 6 files changed, 87 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
index 9e4ebf53379b..d651ccd0ab20 100644
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
@@ -101,6 +96,10 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
 				 gt->i915->sysfs_gt, "gt%d", gt->info.id))
 		goto exit_fail;
 
+	gt->sysfs_defaults = kobject_create_and_add(".defaults", &gt->sysfs_gt);
+	if (!gt->sysfs_defaults)
+		goto exit_fail;
+
 	intel_gt_sysfs_pm_init(gt, &gt->sysfs_gt);
 
 	return;
@@ -113,5 +112,6 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
 
 void intel_gt_sysfs_unregister(struct intel_gt *gt)
 {
+	kobject_put(gt->sysfs_defaults);
 	kobject_put(&gt->sysfs_gt);
 }
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
index ab91e9cf9deb..5a191973322e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -726,6 +726,51 @@ static const struct attribute *media_perf_power_attrs[] = {
 	NULL
 };
 
+static ssize_t
+default_min_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_gt *gt = kobj_to_gt(kobj->parent);
+
+	return sysfs_emit(buf, "%d\n", gt->rps_defaults.min_freq);
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
+	return sysfs_emit(buf, "%d\n", gt->rps_defaults.max_freq);
+}
+
+static struct kobj_attribute default_max_freq_mhz =
+__ATTR(rps_max_freq_mhz, 0444, default_max_freq_mhz_show, NULL);
+
+static ssize_t
+default_boost_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_gt *gt = kobj_to_gt(kobj->parent);
+
+	return sysfs_emit(buf, "%d\n", gt->rps_defaults.boost_freq);
+}
+
+static struct kobj_attribute default_boost_freq_mhz =
+__ATTR(rps_boost_freq_mhz, 0444, default_boost_freq_mhz_show, NULL);
+
+static const struct attribute * const rps_defaults_attrs[] = {
+	&default_min_freq_mhz.attr,
+	&default_max_freq_mhz.attr,
+	&default_boost_freq_mhz.attr,
+	NULL
+};
+
+static int add_rps_defaults(struct intel_gt *gt)
+{
+	return sysfs_create_files(gt->sysfs_defaults, rps_defaults_attrs);
+}
+
 static int intel_sysfs_rps_init(struct intel_gt *gt, struct kobject *kobj,
 				const struct attribute * const *attrs)
 {
@@ -775,4 +820,10 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
 				 "failed to create add gt%u media_perf_power_attrs sysfs (%pe)\n",
 				 gt->info.id, ERR_PTR(ret));
 	}
+
+	ret = add_rps_defaults(gt);
+	if (ret)
+		drm_warn(&gt->i915->drm,
+			 "failed to add gt%u rps defaults (%pe)\n",
+			 gt->info.id, ERR_PTR(ret));
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index edd7a3cf5f5f..8b696669b846 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -62,6 +62,12 @@ enum intel_steering_type {
 	NUM_STEERING_TYPES
 };
 
+struct intel_rps_defaults {
+	u32 min_freq;
+	u32 max_freq;
+	u32 boost_freq;
+};
+
 enum intel_submission_method {
 	INTEL_SUBMISSION_RING,
 	INTEL_SUBMISSION_ELSP,
@@ -227,6 +233,10 @@ struct intel_gt {
 
 	/* gt/gtN sysfs */
 	struct kobject sysfs_gt;
+
+	/* sysfs defaults per gt */
+	struct intel_rps_defaults rps_defaults;
+	struct kobject *sysfs_defaults;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 6b68b40ebff0..6f2461e12409 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1976,7 +1976,9 @@ void intel_rps_init(struct intel_rps *rps)
 
 	/* Derive initial user preferences/limits from the hardware limits */
 	rps->max_freq_softlimit = rps->max_freq;
+	rps_to_gt(rps)->rps_defaults.max_freq = rps->max_freq_softlimit;
 	rps->min_freq_softlimit = rps->min_freq;
+	rps_to_gt(rps)->rps_defaults.min_freq = rps->min_freq_softlimit;
 
 	/* After setting max-softlimit, find the overclock max freq */
 	if (GRAPHICS_VER(i915) == 6 || IS_IVYBRIDGE(i915) || IS_HASWELL(i915)) {
@@ -1994,6 +1996,7 @@ void intel_rps_init(struct intel_rps *rps)
 
 	/* Finally allow us to boost to max by default */
 	rps->boost_freq = rps->max_freq;
+	rps_to_gt(rps)->rps_defaults.boost_freq = rps->boost_freq;
 	rps->idle_freq = rps->min_freq;
 
 	/* Start in the middle, from here we will autotune based on workload */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 2df31af70d63..cefd864c84eb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -547,20 +547,24 @@ static int slpc_set_softlimits(struct intel_guc_slpc *slpc)
 	 * unless they have deviated from defaults, in which case,
 	 * we retain the values and set min/max accordingly.
 	 */
-	if (!slpc->max_freq_softlimit)
+	if (!slpc->max_freq_softlimit) {
 		slpc->max_freq_softlimit = slpc->rp0_freq;
-	else if (slpc->max_freq_softlimit != slpc->rp0_freq)
+		slpc_to_gt(slpc)->rps_defaults.max_freq = slpc->max_freq_softlimit;
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
+		slpc_to_gt(slpc)->rps_defaults.min_freq = slpc->min_freq_softlimit;
+	} else if (slpc->min_freq_softlimit != slpc->min_freq) {
 		return intel_guc_slpc_set_min_freq(slpc,
 						   slpc->min_freq_softlimit);
+	}
 
 	return 0;
 }
@@ -606,8 +610,11 @@ static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
 	slpc->rp1_freq = intel_gpu_freq(rps, caps.rp1_freq);
 	slpc->min_freq = intel_gpu_freq(rps, caps.min_freq);
 
-	if (!slpc->boost_freq)
+	/* Boost freq is RP0, unless already set */
+	if (!slpc->boost_freq) {
 		slpc->boost_freq = slpc->rp0_freq;
+		slpc_to_gt(slpc)->rps_defaults.boost_freq = slpc->boost_freq;
+	}
 }
 
 /*
-- 
2.34.1

