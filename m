Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D08513F9F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 02:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1092510F4B3;
	Fri, 29 Apr 2022 00:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2AD510F427
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 00:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651192797; x=1682728797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oJLl9w5nQGiJuBb+l+Svceta6mBflHlGHBc+Vv5pwOk=;
 b=KRkq10G7ZPFurmPLBKF0G2jXXNu5Qga/3All0szorDmyMfpGe7MKCrgf
 3slmVgJZNPGDBn22I2Sb42+BvY6fyzJqKz8Nci2khybjyA4/kFI52eltK
 mYJk179yLPWC3jgr1WeCUUYoJ3csAfwddOpvNPMfelzYag+sabUW20Exz
 gv91FuvKu1vcFw/KXmLlTV0yM2JqN3+1LmxiR5EdNhgatG4NQGOjxVKyo
 X74GWhcyKcz7mM53SElkw9rzbQNAS3ND6Mu8wU4fbSL+UazNVhVZFZjD1
 /3URyF5Jx6BK+8Mk1QNpcjRthZsbUsBuKRBvNDS6rFT70a4P7NEwfCdtC w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="329419340"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="329419340"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="662069887"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:53 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Apr 2022 17:39:43 -0700
Message-Id: <289816f201c5d40aeb05fb6827e70d4410e4833e.1651192357.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1651192357.git.ashutosh.dixit@intel.com>
References: <cover.1651192357.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/gt: Expose default value for
 media_freq_factor in per-gt sysfs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the following sysfs file to gt/gtN/.defaults:
* media_freq_factor

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c |  2 ++
 3 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index bbf49613ecd0..3c84731e0eca 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -759,6 +759,18 @@ default_boost_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, c
 static struct kobj_attribute default_boost_freq_mhz =
 __ATTR(rps_boost_freq_mhz, 0444, default_boost_freq_mhz_show, NULL);
 
+static ssize_t
+default_media_freq_factor_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_gt *gt = kobj_to_gt(kobj->parent);
+
+	return sysfs_emit(buf, "%d\n",
+			  media_ratio_mode_to_factor(gt->rps_defaults.media_ratio_mode));
+}
+
+static struct kobj_attribute default_media_freq_factor =
+__ATTR(media_freq_factor, 0444, default_media_freq_factor_show, NULL);
+
 static const struct attribute * const rps_defaults_attrs[] = {
 	&default_min_freq_mhz.attr,
 	&default_max_freq_mhz.attr,
@@ -819,6 +831,12 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
 			drm_warn(&gt->i915->drm,
 				 "failed to create add gt%u media_perf_power_attrs sysfs (%pe)\n",
 				 gt->info.id, ERR_PTR(ret));
+
+		ret = sysfs_create_file(gt->sysfs_defaults, &default_media_freq_factor.attr);
+		if (ret)
+			drm_warn(&gt->i915->drm,
+				 "failed to add gt%u default_media_freq_factor sysfs (%pe)\n",
+				 gt->info.id, ERR_PTR(ret));
 	}
 
 	ret = add_rps_defaults(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 8b696669b846..07d368ca78ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -66,6 +66,7 @@ struct intel_rps_defaults {
 	u32 min_freq;
 	u32 max_freq;
 	u32 boost_freq;
+	u32 media_ratio_mode;
 };
 
 enum intel_submission_method {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index cefd864c84eb..047c80838fcd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -260,7 +260,9 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 	slpc->boost_freq = 0;
 	atomic_set(&slpc->num_waiters, 0);
 	slpc->num_boosts = 0;
+
 	slpc->media_ratio_mode = SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL;
+	slpc_to_gt(slpc)->rps_defaults.media_ratio_mode = slpc->media_ratio_mode;
 
 	mutex_init(&slpc->lock);
 	INIT_WORK(&slpc->boost_work, slpc_boost_work);
-- 
2.34.1

