Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8A7508118
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 08:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 021F510F18F;
	Wed, 20 Apr 2022 06:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5483C10F18E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 06:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650435917; x=1681971917;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jSRJTQ0qsnt5rcnNF5iD1O+0w4DusvJLFYc1DNyw4bM=;
 b=L3UV7ynFKj0uS/jywXaRlVE93zslfd7mVjmhj/oPmOMzwUX0eF8n3nbX
 MbDwu6JpWw1orHoAcjN8U8YBxPmfc+CG/BRlfqNdUL1VEsVo0xECUz1Rw
 HZ+G3icYQmc82Zj/FF2eVcgXbgmjqN1754V+nuyL6hEm3RNLRuALbbbuc
 5PYdHQiFIqALVFO0B1bbBtHJ6UPsSXUAwO5ElRlhlylLZHEcIBMRHeH+D
 UeAghBxPGPLbs3OSnBI2pmdGVBJ9XqA5Yb3sVFpMKgxxAMIt9+HFuqkRY
 oe69ZhmLcm+eonoMngl5mI8ksNciQkiRc+oxM5wStGILf976xElyLSa9s A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263414502"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="263414502"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="529618342"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:14 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 23:25:07 -0700
Message-Id: <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650435571.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1650435571.git.ashutosh.dixit@intel.com>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Fix memory leaks in per-gt
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

Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 35 ++++++++++--------------
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h |  6 +---
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  3 ++
 drivers/gpu/drm/i915/i915_sysfs.c        |  2 ++
 5 files changed, 22 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f0014c5072c9..f0c56ca12c0b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -783,6 +783,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
 {
 	intel_wakeref_t wakeref;
 
+	intel_gt_sysfs_unregister(gt);
 	intel_rps_driver_unregister(&gt->rps);
 
 	intel_pxp_fini(&gt->pxp);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
index 8ec8bc660c8c..6f1b081ca5b7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
@@ -24,7 +24,7 @@ bool is_object_gt(struct kobject *kobj)
 
 static struct intel_gt *kobj_to_gt(struct kobject *kobj)
 {
-	return container_of(kobj, struct kobj_gt, base)->gt;
+	return container_of(kobj, struct intel_gt, sysfs_gtn);
 }
 
 struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
@@ -72,21 +72,19 @@ static struct attribute *id_attrs[] = {
 };
 ATTRIBUTE_GROUPS(id);
 
-static void kobj_gt_release(struct kobject *kobj)
+/* A kobject needs a release() method even if it does nothing */
+static void kobj_gtn_release(struct kobject *kobj)
 {
-	kfree(kobj);
 }
 
-static struct kobj_type kobj_gt_type = {
-	.release = kobj_gt_release,
+static struct kobj_type kobj_gtn_type = {
+	.release = kobj_gtn_release,
 	.sysfs_ops = &kobj_sysfs_ops,
 	.default_groups = id_groups,
 };
 
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
+	if (kobject_init_and_add(&gt->sysfs_gtn, &kobj_gtn_type,
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
+	intel_gt_sysfs_pm_init(gt, &gt->sysfs_gtn);
 
 	return;
 
-exit_kobj_put:
-	kobject_put(&kg->base);
-
 exit_fail:
+	kobject_put(&gt->sysfs_gtn);
 	drm_warn(&gt->i915->drm,
 		 "failed to initialize gt%d sysfs root\n", gt->info.id);
 }
+
+void intel_gt_sysfs_unregister(struct intel_gt *gt)
+{
+	kobject_put(&gt->sysfs_gtn);
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
index 937b2e1a305e..4c72b4f983a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -222,6 +222,9 @@ struct intel_gt {
 	} mocs;
 
 	struct intel_pxp pxp;
+
+	/* gt/gtN sysfs */
+	struct kobject sysfs_gtn;
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

