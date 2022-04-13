Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C29E4FFD8F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 20:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C011F10E1D0;
	Wed, 13 Apr 2022 18:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7F010E1A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 18:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649873477; x=1681409477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DfNnWdDjtYO25GNfq9CHHf9mW3aeYJUCq3mn5IXDzgU=;
 b=JfYcBEJOQ2m/0umZENs0ChaEjYByu3DTitVCtPigmtDe3ghIjhNYdV8L
 9O9KZXnFu4RpqefSQS+h4dQh6aLAP9hZzf+u54YVB/PavSm3GNbya1S54
 xoNXtWpPOZqlCDBUwvbtJ7OIDu3o6UqBYiLE1NmU3T9kUFKlvb+mxOq6N
 7O6IDdy7KbV8VttgKQaOTuutewjti/qZHxnW2aeUuiNGoOOCqdKjNpjE4
 KuaPfAMfDHREl8qol2ATOLknbqh1XNLpPdfb36fs7tC5jOAUMabyRB7N8
 nvD07th80M2mRj2r1/IceN5tMFC7PGlCKLbLy9HFczdgLoKUt1PSKOS2m g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="243325720"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="243325720"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="802788728"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:16 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 11:11:09 -0700
Message-Id: <58227916c037f26b1bb3fd490dcecbd15de6ebfe.1649871650.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1649871650.git.ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/gt: Expose default value for
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
index 4791e2105cdd..6a86ed6a2e5e 100644
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

