Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E14095BD49
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 19:30:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F79810EBA3;
	Thu, 22 Aug 2024 17:30:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSSFew0+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C1910EBA2;
 Thu, 22 Aug 2024 17:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724347805; x=1755883805;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uP/mkNzyOCjkw3CWxQgWY32MvUawl2y/kvqpsVqVuPY=;
 b=mSSFew0+IpZgWpuUSTq0a2eJAZnAXfAb2nL+gwW6QnM2PHpXNHA7hP6R
 AtHjM+sdfzNJJVXJGS7Xxx1zzujab3a0xjiPoonnO26o484kwKOXAWsZM
 5WRfmySCy8gAdWaH91GNUzEyLWIqH5cyrBVVFAOs3wE4XsF9ntXiRytRV
 4GquaGRXJ9GobcDKzFgpp6MmkhyeGr8uxnHNMTqfMBKYfmwWXOTNbUDvt
 rj6sVlbdtVExeb52WfS1srHgTBvkSYDkFm+L8LYl/cwdOW0YIQpRtI2Pk
 mx/MKyKmSMfSZ3apNtSboO0eH3yFmL02tr46ZayqFu/dchVamcq3FqV/0 Q==;
X-CSE-ConnectionGUID: z+S0HX35RDO/82kjUcg86g==
X-CSE-MsgGUID: +IfCI4KoTwm5kCkN5dp61A==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="34164098"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="34164098"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 10:30:04 -0700
X-CSE-ConnectionGUID: lUry2Lc1QIaebATnscnmGA==
X-CSE-MsgGUID: v3cFE2A1QOqF6vLY02lZQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="62225860"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.104])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 10:30:02 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH v2 15/15] drm/i915/gt: Allow the user to change the CCS mode
 through sysfs
Date: Thu, 22 Aug 2024 19:28:32 +0200
Message-ID: <20240822172832.494994-16-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240822172832.494994-1-andi.shyti@linux.intel.com>
References: <20240822172832.494994-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Create the 'ccs_mode' file under

/sys/class/drm/cardX/gt/gt0/ccs_mode

This file allows the user to read and set the current CCS mode.

 - Reading: The user can read the current CCS mode, which can be
   1, 2, or 4. This value is derived from the current engine
   mask.

 - Writing: The user can set the CCS mode to 1, 2, or 4,
   depending on the desired number of exposed engines and the
   required load balancing.

The interface will return -EBUSY if other clients are connected
to i915, or -EINVAL if an invalid value is set.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 82 ++++++++++++++++++++-
 1 file changed, 80 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 4462e07ee903..b0f69ae435ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "intel_engine_user.h"
 #include "intel_gt_ccs_mode.h"
+#include "intel_gt_pm.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
 #include "intel_gt_sysfs.h"
@@ -172,7 +173,7 @@ static int rb_engine_cmp(struct rb_node *rb_new, const struct rb_node *rb_old)
 	return new->uabi_class - old->uabi_class;
 }
 
-static void __maybe_unused add_uabi_ccs_engines(struct intel_gt *gt, u32 ccs_mode)
+static void add_uabi_ccs_engines(struct intel_gt *gt, u32 ccs_mode)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	intel_engine_mask_t new_ccs_mask, tmp;
@@ -231,7 +232,7 @@ static void __maybe_unused add_uabi_ccs_engines(struct intel_gt *gt, u32 ccs_mod
 	}
 }
 
-static void __maybe_unused remove_uabi_ccs_engines(struct intel_gt *gt, u8 ccs_mode)
+static void remove_uabi_ccs_engines(struct intel_gt *gt, u8 ccs_mode)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	intel_engine_mask_t new_ccs_mask, tmp;
@@ -272,8 +273,85 @@ static ssize_t num_cslices_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(num_cslices);
 
+static ssize_t ccs_mode_show(struct device *dev,
+			     struct device_attribute *attr, char *buff)
+{
+	struct intel_gt *gt = kobj_to_gt(&dev->kobj);
+	u32 ccs_mode;
+
+	ccs_mode = hweight32(gt->ccs.id_mask);
+
+	return sysfs_emit(buff, "%u\n", ccs_mode);
+}
+
+static ssize_t ccs_mode_store(struct device *dev,
+			      struct device_attribute *attr,
+			      const char *buff, size_t count)
+{
+	struct intel_gt *gt = kobj_to_gt(&dev->kobj);
+	int num_cslices = hweight32(CCS_MASK(gt));
+	int ccs_mode = hweight32(gt->ccs.id_mask);
+	ssize_t ret;
+	u32 val;
+
+	ret = kstrtou32(buff, 0, &val);
+	if (ret)
+		return ret;
+
+	/*
+	 * As of now possible values to be set are 1, 2, 4,
+	 * up to the maximum number of available slices
+	 */
+	if (!val || val > num_cslices || (num_cslices % val))
+		return -EINVAL;
+
+	/* Let's wait until the GT is no longer in use */
+	ret = intel_gt_pm_wait_for_idle(gt);
+	if (ret)
+		return ret;
+
+	mutex_lock(&gt->wakeref.mutex);
+
+	/*
+	 * Let's check again that the GT is idle,
+	 * we don't want to change the CCS mode
+	 * while someone is using the GT
+	 */
+	if (intel_gt_pm_is_awake(gt)) {
+		ret = -EBUSY;
+		goto out;
+	}
+
+	/*
+	 * Nothing to do if the requested setting
+	 * is the same as the current one
+	 */
+	if (val == ccs_mode)
+		goto out;
+	else if (val > ccs_mode)
+		add_uabi_ccs_engines(gt, val);
+	else
+		remove_uabi_ccs_engines(gt, val);
+
+out:
+	mutex_unlock(&gt->wakeref.mutex);
+
+	return ret ?: count;
+}
+static DEVICE_ATTR_RW(ccs_mode);
+
 void intel_gt_sysfs_ccs_init(struct intel_gt *gt)
 {
 	if (sysfs_create_file(&gt->sysfs_gt, &dev_attr_num_cslices.attr))
 		gt_warn(gt, "Failed to create sysfs num_cslices files\n");
+
+	/*
+	 * Do not create the ccs_mode file for non DG2 platforms
+	 * because they don't need it as they have only one CCS engine
+	 */
+	if (!IS_DG2(gt->i915))
+		return;
+
+	if (sysfs_create_file(&gt->sysfs_gt, &dev_attr_ccs_mode.attr))
+		gt_warn(gt, "Failed to create sysfs ccs_mode files\n");
 }
-- 
2.45.2

