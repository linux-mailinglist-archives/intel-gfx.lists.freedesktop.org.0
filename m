Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B618B6C6476
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 11:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A926310E07C;
	Thu, 23 Mar 2023 10:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5A610E07C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 10:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679566189; x=1711102189;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zQ8043ROW74p8l3nnC0UJqWQdTgKCPmQD5IGSAnMh3w=;
 b=XPQVPBmLYxgXL4XiO65UYSDuitmF2W4vyIqQdRQXTqPWGn15BtjglvHN
 evVgR4b0WGTq75B8+JxqBwcmZK4LTtFh93/mw7mnEqOF6Esk1Ln2fulB2
 kCX7MfSdZHYs017yZ1rtmJ0k5pfxHlJLD+q8SRY/jZ/eCTgiqxq70oYXU
 XHPaGMGB2x9rM9lGji0wYw6MF4zWykGHNVC93f7D4hCh5DpZ4Y8+ZK9PE
 BhJOK0Han1D47VM1wjZ0MQ1ZJ4Y4+KxOHU8qo5G6Pn/x4VTv6PglOJ9pg
 +tNi7mMD86r0X1PWO3gbQtbmcE1NeLDqNfQwwnEZKKuOa3C1ZiBHkm2l1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="319835329"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="319835329"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 03:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="771403687"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="771403687"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 03:09:47 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 15:42:26 +0530
Message-Id: <20230323101226.1031488-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Add per-tile rc6 enable/disable
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
Cc: rodrigo.vivi@intel.com, andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Don Hiatt <don.hiatt@intel.com>

Add the ability to enable/disable rc6 on a per tile basis.

To enable rc6 on a tile:
   echo 1 > /sys/class/drm/card0/gt/gtX/rc6_enable

To disable rc6 on a tile:
   echo 0 > /sys/class/drm/card0/gt/gtX/rc6_enable

To display the rc6 state of a tile:
   cat /sys/class/drm/card0/gt/gtX/rc6_enable

Cc: Andi Shyti <andi.shyti@intel.com>
Co-developed-by: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Don Hiatt <don.hiatt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 84 ++++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_rc6.c         | 14 ++--
 drivers/gpu/drm/i915/gt/intel_rc6.h         |  3 +
 3 files changed, 82 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 28f27091cd3b..e8f77dab8f5f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -176,18 +176,78 @@ static u32 get_residency(struct intel_gt *gt, enum intel_rc6_res_type id)
 	return DIV_ROUND_CLOSEST_ULL(res, 1000);
 }
 
-static u8 get_rc6_mask(struct intel_gt *gt)
+static ssize_t rc6_enable_store(struct kobject *kobj,
+				struct kobj_attribute *attr,
+				const char *buff, size_t count)
 {
-	u8 mask = 0;
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
+	intel_wakeref_t wakeref;
+	ssize_t ret;
+	u32 val;
+
+	ret = kstrtou32(buff, 0, &val);
+	if (ret)
+		return ret;
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
+	if (val) {
+		if (gt->rc6.enabled)
+			goto unlock;
+
+		if (!gt->rc6.wakeref)
+			intel_rc6_rpm_get(&gt->rc6);
+
+		intel_rc6_enable(&gt->rc6);
+		intel_rc6_unpark(&gt->rc6);
+	} else {
+		intel_rc6_disable(&gt->rc6);
+
+		if (gt->rc6.wakeref)
+			intel_rc6_rpm_put(&gt->rc6);
+	}
+
+unlock:
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+
+	return count;
+}
+
+static ssize_t rc6_enable_dev_store(struct device *dev,
+				    struct device_attribute *attr,
+				    const char *buff, size_t count)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
+	intel_wakeref_t wakeref;
+	ssize_t ret;
+	u32 val;
+
+	ret = kstrtou32(buff, 0, &val);
+	if (ret)
+		return ret;
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
+	if (val) {
+		if (gt->rc6.enabled)
+			goto unlock;
+
+		if (!gt->rc6.wakeref)
+			intel_rc6_rpm_get(&gt->rc6);
+
+		intel_rc6_enable(&gt->rc6);
+		intel_rc6_unpark(&gt->rc6);
+	} else {
+		intel_rc6_disable(&gt->rc6);
+
+		if (gt->rc6.wakeref)
+			intel_rc6_rpm_put(&gt->rc6);
+	}
 
-	if (HAS_RC6(gt->i915))
-		mask |= BIT(0);
-	if (HAS_RC6p(gt->i915))
-		mask |= BIT(1);
-	if (HAS_RC6pp(gt->i915))
-		mask |= BIT(2);
+unlock:
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 
-	return mask;
+	return count;
 }
 
 static ssize_t rc6_enable_show(struct kobject *kobj,
@@ -196,7 +256,7 @@ static ssize_t rc6_enable_show(struct kobject *kobj,
 {
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
 
-	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
+	return sysfs_emit(buff, "%u\n", gt->rc6.enabled);
 }
 
 static ssize_t rc6_enable_dev_show(struct device *dev,
@@ -205,7 +265,7 @@ static ssize_t rc6_enable_dev_show(struct device *dev,
 {
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
 
-	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
+	return sysfs_emit(buff, "%u\n", gt->rc6.enabled);
 }
 
 static u32 __rc6_residency_ms_show(struct intel_gt *gt)
@@ -233,7 +293,7 @@ INTEL_GT_SYSFS_SHOW_MIN(rc6p_residency_ms);
 INTEL_GT_SYSFS_SHOW_MIN(rc6pp_residency_ms);
 INTEL_GT_SYSFS_SHOW_MIN(media_rc6_residency_ms);
 
-INTEL_GT_DUAL_ATTR_RO(rc6_enable);
+INTEL_GT_DUAL_ATTR_RW(rc6_enable);
 INTEL_GT_DUAL_ATTR_RO(rc6_residency_ms);
 INTEL_GT_DUAL_ATTR_RO(rc6p_residency_ms);
 INTEL_GT_DUAL_ATTR_RO(rc6pp_residency_ms);
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f4150f61f39c..ea7420271849 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -513,14 +513,14 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 	return true;
 }
 
-static void rpm_get(struct intel_rc6 *rc6)
+void intel_rc6_rpm_get(struct intel_rc6 *rc6)
 {
 	GEM_BUG_ON(rc6->wakeref);
 	pm_runtime_get_sync(rc6_to_i915(rc6)->drm.dev);
 	rc6->wakeref = true;
 }
 
-static void rpm_put(struct intel_rc6 *rc6)
+void intel_rc6_rpm_put(struct intel_rc6 *rc6)
 {
 	GEM_BUG_ON(!rc6->wakeref);
 	pm_runtime_put(rc6_to_i915(rc6)->drm.dev);
@@ -582,7 +582,7 @@ void intel_rc6_init(struct intel_rc6 *rc6)
 	int err;
 
 	/* Disable runtime-pm until we can save the GPU state with rc6 pctx */
-	rpm_get(rc6);
+	intel_rc6_rpm_get(rc6);
 
 	if (!rc6_supported(rc6))
 		return;
@@ -607,7 +607,7 @@ void intel_rc6_sanitize(struct intel_rc6 *rc6)
 	memset(rc6->prev_hw_residency, 0, sizeof(rc6->prev_hw_residency));
 
 	if (rc6->enabled) { /* unbalanced suspend/resume */
-		rpm_get(rc6);
+		intel_rc6_rpm_get(rc6);
 		rc6->enabled = false;
 	}
 
@@ -650,7 +650,7 @@ void intel_rc6_enable(struct intel_rc6 *rc6)
 		return;
 
 	/* rc6 is ready, runtime-pm is go! */
-	rpm_put(rc6);
+	intel_rc6_rpm_put(rc6);
 	rc6->enabled = true;
 }
 
@@ -698,7 +698,7 @@ void intel_rc6_disable(struct intel_rc6 *rc6)
 	if (!rc6->enabled)
 		return;
 
-	rpm_get(rc6);
+	intel_rc6_rpm_get(rc6);
 	rc6->enabled = false;
 
 	__intel_rc6_disable(rc6);
@@ -715,7 +715,7 @@ void intel_rc6_fini(struct intel_rc6 *rc6)
 		i915_gem_object_put(pctx);
 
 	if (rc6->wakeref)
-		rpm_put(rc6);
+		intel_rc6_rpm_put(rc6);
 }
 
 static u64 vlv_residency_raw(struct intel_uncore *uncore, const i915_reg_t reg)
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
index 456fa668a276..8771fbd9a6cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
@@ -12,6 +12,9 @@ enum intel_rc6_res_type;
 struct intel_rc6;
 struct seq_file;
 
+void intel_rc6_rpm_get(struct intel_rc6 *rc6);
+void intel_rc6_rpm_put(struct intel_rc6 *rc6);
+
 void intel_rc6_init(struct intel_rc6 *rc6);
 void intel_rc6_fini(struct intel_rc6 *rc6);
 
-- 
2.25.1

