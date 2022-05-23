Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DC15311C3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 17:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A18961122C2;
	Mon, 23 May 2022 15:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EE6D112296
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 15:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653321461; x=1684857461;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=42J121jJYe7URaZri0ucOrvJPDpAISejQVIChktn6Cs=;
 b=GpY4+Cnnwu1Zc/Rztbb/I8fCt1R3K3nRcETDi0zxhYulBnGcCLdNPbUi
 YvFxJ84BfJfMD7SQVBKxaP21+BgFzPR+v98SB561NXzyc5HJY2PPbS79P
 q0bJzcEEGUA23GzGNk+1t4r/f3ZcCduQv84Xb5GEc4NpSmGREgW5e/yzY
 kjGI754DauYaMo7EPPgk5GZ5YNt5M43elymGgmm0f5fSsdkv7762TSs77
 8DC/S6r4UWKA0WBGwNGyDYv7FfBXLXMN6JwnywF1XswMHSI6jYJx2Lrtp
 t/PuLq5SNshA0dA3Y+NiG951GsnNRO3LqsTqSVyHr/qkwUuZDxEl0Ntre A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="273381641"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="273381641"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 08:57:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="548040678"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 08:57:23 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 May 2022 08:57:17 -0700
Message-Id: <a5b1cfe03dae77171868308d5aadb8797115671a.1653321034.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1653321034.git.ashutosh.dixit@intel.com>
References: <cover.1653321034.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Fix memory leaks in per-gt
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

All kmalloc'd kobjects need a kobject_put() to free memory. For example in
previous code, kobj_gt_release() never gets called. The requirement of
kobject_put() now results in a slightly different code organization.

v2: s/gtn/gt/ (Andi)

Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 29 ++++++++++--------------
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h |  6 +----
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  3 +++
 drivers/gpu/drm/i915/i915_sysfs.c        |  2 ++
 5 files changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 034182f85501..0a3931c011c6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -790,6 +790,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
 {
 	intel_wakeref_t wakeref;
 
+	intel_gt_sysfs_unregister(gt);
 	intel_rps_driver_unregister(&gt->rps);
 	intel_gsc_fini(&gt->gsc);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
index 8ec8bc660c8c..9e4ebf53379b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
@@ -24,7 +24,7 @@ bool is_object_gt(struct kobject *kobj)
 
 static struct intel_gt *kobj_to_gt(struct kobject *kobj)
 {
-	return container_of(kobj, struct kobj_gt, base)->gt;
+	return container_of(kobj, struct intel_gt, sysfs_gt);
 }
 
 struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
@@ -72,9 +72,9 @@ static struct attribute *id_attrs[] = {
 };
 ATTRIBUTE_GROUPS(id);
 
+/* A kobject needs a release() method even if it does nothing */
 static void kobj_gt_release(struct kobject *kobj)
 {
-	kfree(kobj);
 }
 
 static struct kobj_type kobj_gt_type = {
@@ -85,8 +85,6 @@ static struct kobj_type kobj_gt_type = {
 
 void intel_gt_sysfs_register(struct intel_gt *gt)
 {
-	struct kobj_gt *kg;
-
 	/*
 	 * We need to make things right with the
 	 * ABI compatibility. The files were originally
@@ -98,25 +96,22 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
 	if (gt_is_root(gt))
 		intel_gt_sysfs_pm_init(gt, gt_get_parent_obj(gt));
 
-	kg = kzalloc(sizeof(*kg), GFP_KERNEL);
-	if (!kg)
+	/* init and xfer ownership to sysfs tree */
+	if (kobject_init_and_add(&gt->sysfs_gt, &kobj_gt_type,
+				 gt->i915->sysfs_gt, "gt%d", gt->info.id))
 		goto exit_fail;
 
-	kobject_init(&kg->base, &kobj_gt_type);
-	kg->gt = gt;
-
-	/* xfer ownership to sysfs tree */
-	if (kobject_add(&kg->base, gt->i915->sysfs_gt, "gt%d", gt->info.id))
-		goto exit_kobj_put;
-
-	intel_gt_sysfs_pm_init(gt, &kg->base);
+	intel_gt_sysfs_pm_init(gt, &gt->sysfs_gt);
 
 	return;
 
-exit_kobj_put:
-	kobject_put(&kg->base);
-
 exit_fail:
+	kobject_put(&gt->sysfs_gt);
 	drm_warn(&gt->i915->drm,
 		 "failed to initialize gt%d sysfs root\n", gt->info.id);
 }
+
+void intel_gt_sysfs_unregister(struct intel_gt *gt)
+{
+	kobject_put(&gt->sysfs_gt);
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
index 9471b26752cf..a99aa7e8b01a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
@@ -13,11 +13,6 @@
 
 struct intel_gt;
 
-struct kobj_gt {
-	struct kobject base;
-	struct intel_gt *gt;
-};
-
 bool is_object_gt(struct kobject *kobj);
 
 struct drm_i915_private *kobj_to_i915(struct kobject *kobj);
@@ -28,6 +23,7 @@ intel_gt_create_kobj(struct intel_gt *gt,
 		     const char *name);
 
 void intel_gt_sysfs_register(struct intel_gt *gt);
+void intel_gt_sysfs_unregister(struct intel_gt *gt);
 struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
 					    const char *name);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 097e10291f2d..993f003dad1d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -225,6 +225,9 @@ struct intel_gt {
 	} mocs;
 
 	struct intel_pxp pxp;
+
+	/* gt/gtN sysfs */
+	struct kobject sysfs_gt;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 8521daba212a..3f06106cdcf5 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -259,4 +259,6 @@ void i915_teardown_sysfs(struct drm_i915_private *dev_priv)
 
 	device_remove_bin_file(kdev,  &dpf_attrs_1);
 	device_remove_bin_file(kdev,  &dpf_attrs);
+
+	kobject_put(dev_priv->sysfs_gt);
 }
-- 
2.34.1

