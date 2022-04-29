Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD6D5154F2
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 21:56:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C470810EFD0;
	Fri, 29 Apr 2022 19:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC75610EEB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 19:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651262197; x=1682798197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XkTel8B8tFCvpZ4xKZMNOIm/K0yV+qqdmRT2ooN1PD8=;
 b=jic4V/Q2kZcyFeAB1sQkFHngdKR8Akj1ax4AQlcWIBxghFYD6INDPiMv
 0vZ7i4Jpo3QI2vzyrmuhRkSsJc61YF4ZuThUbKRGm05soDrUGuatsWevN
 npEIRpHzdFVagh7XIPH2A4O6PL2LQMJUtjydiDJGGUnYp2Kq0qb3GVVrf
 qRzXSVtbyqMBuS4bCjWmNFTjCA/rmQRTvBzDBVwTFvRHQeKcyvbhcwrrS
 OWDBcqAWAdsia9RnCRfcHSZWu01p8lr06u1DPE2U29M5ZiGYtJMJjYG+a
 MrtiDK+vurTaeILIeOdKJBCIpWQ8Z4I/T6xFqPyw+tji2rcSq1l2i/0Ff A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="246674398"
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="246674398"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:56:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="685282468"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 12:56:36 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Apr 2022 12:56:27 -0700
Message-Id: <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1651261886.git.ashutosh.dixit@intel.com>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Fix memory leaks in per-gt
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
Cc: Andi Shyti <andi.shyti@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All kmalloc'd kobjects need a kobject_put() to free memory. For example in
previous code, kobj_gt_release() never gets called. The requirement of
kobject_put() now results in a slightly different code organization.

v2: s/gtn/gt/ (Andi)

Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 29 ++++++++++--------------
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h |  6 +----
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  3 +++
 drivers/gpu/drm/i915/i915_sysfs.c        |  2 ++
 5 files changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 92394f13b42f..9aede288eb86 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -785,6 +785,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
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
index b06611c1d4ad..edd7a3cf5f5f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -224,6 +224,9 @@ struct intel_gt {
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

