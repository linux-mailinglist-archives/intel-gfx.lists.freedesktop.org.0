Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBAB5353B9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 21:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375A010E22B;
	Thu, 26 May 2022 19:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428CC89ABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 19:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653591677; x=1685127677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lmTb7hvou90QmcuNsAUBuftz0xD6vGm0i55Zm8cYihs=;
 b=dj0SWKftKQ/p20/aNlEczGJxlJXaEPrE+OIBnOC2NCuVWgKJ3J8ylHmZ
 44oGvrBho6qc8Uuq1xArm7UFbPOrigD9e9Bk7ZNjttxFAgIyFEzsk+mga
 Lgel201rFGxxjX9I+4uj7yyVH3nMjxxCxPGzwp/vEFuBQ9EiI0BlRGEIz
 hMThnvKKmRkRESO5C0nZqa2o6NujATLzSbFYtzaQ556e2iYDZZ1uVrNyl
 CV71CJaFFi+4zlKUaXyfDz/6FsVrZbcMkrzQiMo9L6kmQ+6nAbAEPxfhH
 nRKrhP2zePJUVoMxp1sm/dbbbcivnNJZAQsHGET/QOG8qWIVcvCaYyhlF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="273978989"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="273978989"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 12:00:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="574034409"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 12:00:49 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 May 2022 12:00:45 -0700
Message-Id: <acf9369d4a11a8335b585e54500ea1bcfd69d0a5.1653591227.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1653591227.git.ashutosh.dixit@intel.com>
References: <cover.1653591227.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Expose default value for
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the following sysfs file to gt/gtN/.defaults:
* media_freq_factor

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c |  2 ++
 3 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 5eea9f78a6b2..c7e33084dd7c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -760,6 +760,18 @@ default_boost_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, c
 static struct kobj_attribute default_boost_freq_mhz =
 __ATTR(rps_boost_freq_mhz, 0444, default_boost_freq_mhz_show, NULL);
 
+static ssize_t
+default_media_freq_factor_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	struct intel_gt *gt = kobj_to_gt(kobj->parent);
+
+	return sysfs_emit(buf, "%u\n",
+			  media_ratio_mode_to_factor(gt->defaults.media_ratio_mode));
+}
+
+static struct kobj_attribute default_media_freq_factor =
+__ATTR(media_freq_factor, 0444, default_media_freq_factor_show, NULL);
+
 static const struct attribute * const rps_defaults_attrs[] = {
 	&default_min_freq_mhz.attr,
 	&default_max_freq_mhz.attr,
@@ -815,6 +827,12 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
 			drm_warn(&gt->i915->drm,
 				 "failed to create gt%u media_perf_power_attrs sysfs (%pe)\n",
 				 gt->info.id, ERR_PTR(ret));
+
+		ret = sysfs_create_file(gt->sysfs_defaults, &default_media_freq_factor.attr);
+		if (ret)
+			drm_warn(&gt->i915->drm,
+				 "failed to add gt%u default_media_freq_factor sysfs (%pe)\n",
+				 gt->info.id, ERR_PTR(ret));
 	}
 
 	ret = sysfs_create_files(gt->sysfs_defaults, rps_defaults_attrs);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 4fb21daeaf09..4bca9ab492c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -72,6 +72,7 @@ struct gt_defaults {
 	u32 min_freq;
 	u32 max_freq;
 	u32 boost_freq;
+	u32 media_ratio_mode;
 };
 
 struct intel_gt {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 0a02bd132da5..8220a2491a45 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -260,7 +260,9 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 	slpc->boost_freq = 0;
 	atomic_set(&slpc->num_waiters, 0);
 	slpc->num_boosts = 0;
+
 	slpc->media_ratio_mode = SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL;
+	slpc_to_gt(slpc)->defaults.media_ratio_mode = slpc->media_ratio_mode;
 
 	mutex_init(&slpc->lock);
 	INIT_WORK(&slpc->boost_work, slpc_boost_work);
-- 
2.34.1

