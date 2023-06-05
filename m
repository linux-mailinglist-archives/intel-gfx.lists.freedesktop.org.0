Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89020722279
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 11:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB9110E27D;
	Mon,  5 Jun 2023 09:46:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0D610E272
 for <Intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 09:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685958367; x=1717494367;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cD9zyhxp1uXzU07tl3dhVj4mDkaCDgdNKKeEwPinc7g=;
 b=ftD9ogX1Dv2UmiSnlUyocXPA0EVLyo1FT04XMDpvNlKfVr8epBS09CWK
 z6gZCNi6yZBfO69Xw232PrlkMCf0aAZmkRQdXdW0GEeEbzHK95AQWrDJG
 fNsr3myfV8jzqx35fXxdnxTO+02F8jgk2YUNtS9w5mKZKdV+TtYMo79z/
 9kT+qh6wQKJ2VGxaddyjh5pnUV4OslSC3SOOCsdVKCWd4Vktr1GKqU09R
 gM0DxI+wOcTfgkZ2DIdjg8lA3Rl/9W8ZDJgA7hSgVxb8I2iCfxswU8EQg
 4jcX++/3p6186ji+EqjeBFcF8rWjiKVx+d2WOquuNEBEEVjJvQESWHwbg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="336683010"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="336683010"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741656544"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741656544"
Received: from mloughma-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.238.159])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:46:06 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jun 2023 10:45:56 +0100
Message-Id: <20230605094556.207399-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605094556.207399-1-tvrtko.ursulin@linux.intel.com>
References: <20230605094556.207399-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/4] drm/i915: Expose RPS thresholds in sysfs
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

User feedback indicates significant performance gains are possible in
specific games with non default RPS up/down thresholds.

Expose these tunables via sysfs which will allow users to achieve best
performance when running games and best power efficiency elsewhere.

Note this patch supports non GuC based platforms only.

v2:
 * Make checkpatch happy.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: https://gitlab.freedesktop.org/drm/intel/-/issues/8389
Cc: Rodrigo Vivi <rodrigo.vivi@kernel.org>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 108 ++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index ee2b44f896a2..f0dea54880af 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -700,6 +700,80 @@ static const struct attribute *media_perf_power_attrs[] = {
 	NULL
 };
 
+static ssize_t
+rps_up_threshold_pct_show(struct kobject *kobj, struct kobj_attribute *attr,
+			  char *buf)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
+	struct intel_rps *rps = &gt->rps;
+
+	return sysfs_emit(buf, "%u\n", intel_rps_get_up_threshold(rps));
+}
+
+static ssize_t
+rps_up_threshold_pct_store(struct kobject *kobj, struct kobj_attribute *attr,
+			   const char *buf, size_t count)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
+	struct intel_rps *rps = &gt->rps;
+	int ret;
+	u8 val;
+
+	ret = kstrtou8(buf, 10, &val);
+	if (ret)
+		return ret;
+
+	ret = intel_rps_set_up_threshold(rps, val);
+
+	return ret == 0 ? count : ret;
+}
+
+static struct kobj_attribute rps_up_threshold_pct =
+	__ATTR(rps_up_threshold_pct,
+	       0664,
+	       rps_up_threshold_pct_show,
+	       rps_up_threshold_pct_store);
+
+static ssize_t
+rps_down_threshold_pct_show(struct kobject *kobj, struct kobj_attribute *attr,
+			    char *buf)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
+	struct intel_rps *rps = &gt->rps;
+
+	return sysfs_emit(buf, "%u\n", intel_rps_get_down_threshold(rps));
+}
+
+static ssize_t
+rps_down_threshold_pct_store(struct kobject *kobj, struct kobj_attribute *attr,
+			     const char *buf, size_t count)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
+	struct intel_rps *rps = &gt->rps;
+	int ret;
+	u8 val;
+
+	ret = kstrtou8(buf, 10, &val);
+	if (ret)
+		return ret;
+
+	ret = intel_rps_set_down_threshold(rps, val);
+
+	return ret == 0 ? count : ret;
+}
+
+static struct kobj_attribute rps_down_threshold_pct =
+	__ATTR(rps_down_threshold_pct,
+	       0664,
+	       rps_down_threshold_pct_show,
+	       rps_down_threshold_pct_store);
+
+static const struct attribute * const gen6_gt_rps_attrs[] = {
+	&rps_up_threshold_pct.attr,
+	&rps_down_threshold_pct.attr,
+	NULL
+};
+
 static ssize_t
 default_min_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 {
@@ -722,9 +796,37 @@ default_max_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, cha
 static struct kobj_attribute default_max_freq_mhz =
 __ATTR(rps_max_freq_mhz, 0444, default_max_freq_mhz_show, NULL);
 
+static ssize_t
+default_rps_up_threshold_pct_show(struct kobject *kobj,
+				  struct kobj_attribute *attr,
+				  char *buf)
+{
+	struct intel_gt *gt = kobj_to_gt(kobj->parent);
+
+	return sysfs_emit(buf, "%u\n", gt->defaults.rps_up_threshold);
+}
+
+static struct kobj_attribute default_rps_up_threshold_pct =
+__ATTR(rps_up_threshold_pct, 0444, default_rps_up_threshold_pct_show, NULL);
+
+static ssize_t
+default_rps_down_threshold_pct_show(struct kobject *kobj,
+				    struct kobj_attribute *attr,
+				    char *buf)
+{
+	struct intel_gt *gt = kobj_to_gt(kobj->parent);
+
+	return sysfs_emit(buf, "%u\n", gt->defaults.rps_down_threshold);
+}
+
+static struct kobj_attribute default_rps_down_threshold_pct =
+__ATTR(rps_down_threshold_pct, 0444, default_rps_down_threshold_pct_show, NULL);
+
 static const struct attribute * const rps_defaults_attrs[] = {
 	&default_min_freq_mhz.attr,
 	&default_max_freq_mhz.attr,
+	&default_rps_up_threshold_pct.attr,
+	&default_rps_down_threshold_pct.attr,
 	NULL
 };
 
@@ -752,6 +854,12 @@ static int intel_sysfs_rps_init(struct intel_gt *gt, struct kobject *kobj)
 	if (IS_VALLEYVIEW(gt->i915) || IS_CHERRYVIEW(gt->i915))
 		ret = sysfs_create_file(kobj, vlv_attr);
 
+	if (is_object_gt(kobj) && !intel_uc_uses_guc_slpc(&gt->uc)) {
+		ret = sysfs_create_files(kobj, gen6_gt_rps_attrs);
+		if (ret)
+			return ret;
+	}
+
 	return ret;
 }
 
-- 
2.39.2

