Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DBB508086
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 07:22:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B43A610F178;
	Wed, 20 Apr 2022 05:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 530F310F166
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650432113; x=1681968113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=htkwio9xjcxwLvbCNvkhYuKqWfjITJAvoK0xqiOCYvc=;
 b=eGPVg/3U/LHUXru3zpjpVK4wdHcTZaT8QdziHXuDg/GjQ4Z9aHapArKQ
 m2F6Z/2sowWWEKaVcGCVZ/pk5B72vPfP+xgMT1XyU9Ha7dCThw50ZZTMl
 rmoZQd/q86HK+KmLxP3rWtW6dUOVpdS84Wi81iqOTQR0ooawEXPqQG8kW
 6BSv8yWHUY++xsp4eb5DrxNG7ne4hiCQTy6825sTdtGcsksDdPdeJhdMS
 IDMAmaJ7sVvwI0eNUeZwp8WIyBl0qNd5pfzc+AyTN/fr8kRKUCQkOnCNH
 BY7Doyozz8C2UXBqL9AUTU5idZIysYhl2NuOfxw5evGkQKVy8F+KE+W5s Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263405529"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="263405529"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 22:21:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="555035739"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 22:21:51 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 22:21:33 -0700
Message-Id: <5ba96bb1f136d275a5ccc59e0aae1964ce81a054.1650430271.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1650430271.git.ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <cover.1650430271.git.ashutosh.dixit@intel.com>
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
index 2b9024cf1d78..1953b085bd83 100644
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
index 8ad872c9751a..fe502534113b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -65,6 +65,7 @@ struct intel_rps_defaults {
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

