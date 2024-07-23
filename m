Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A63A3939FAB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB90410E571;
	Tue, 23 Jul 2024 11:21:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A8XwDXXz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3444010E570
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733700; x=1753269700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GIxIzUMkkyTcSzCr175q/V9fSwMKeXmPuZql8pvhYf0=;
 b=A8XwDXXzOlVxAJqCxtXjkC1lTROKS0y9yggIkPMcF9WXK6/WqVZ3Ftq7
 zzkRzkFMuT2obPkbmExegB/moW8n66xMFJbMeNwjDiHVijgH2JrZ2pTFG
 cDzHV4n3mjb9vYkJe6YRVgTlfD5Mwznln5EoP0Nb/U05GKhAuPmQX7nTq
 FQwFQqLYclK36ru4a9hhORuBPisb0dnM8n+FWUPww9ZGNYEij3vw1Ko3E
 S84QbZIuI3+fysw/LM3DYfrg5/iZEwEzzJPediMtfvmA+5zcdWc/uKSXs
 Uwp6REJpZcB7SuHat/g5gPkhm4JlUn+w/H8Gxe9+bXPJizZbPLJbd3Qd6 g==;
X-CSE-ConnectionGUID: /xGIVLGDTreSwWdCABLC2A==
X-CSE-MsgGUID: P4+z11g2RSCGbRctJibIxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19225397"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19225397"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:39 -0700
X-CSE-ConnectionGUID: TPM9tb5xSQuNQtIKgaBsRg==
X-CSE-MsgGUID: MfWE6VS6QB2QoXHO7bpXOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52267446"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:38 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 4/9] drm/i915/gt: Expose the number of total CCS slices
Date: Tue, 23 Jul 2024 13:20:41 +0200
Message-ID: <20240723112046.123938-5-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240723112046.123938-1-andi.shyti@linux.intel.com>
References: <20240723112046.123938-1-andi.shyti@linux.intel.com>
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

Implement a sysfs interface to show the number of available CCS
slices. The displayed number does not take into account the CCS
balancing mode.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 23 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c    |  2 ++
 3 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 06d9d1a94317..0710e55d37d7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -8,6 +8,7 @@
 #include "intel_gt_ccs_mode.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
+#include "intel_gt_sysfs.h"
 
 void intel_gt_ccs_mode_init(struct intel_gt *gt)
 {
@@ -83,3 +84,25 @@ unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt)
 
 	return mode;
 }
+
+static ssize_t num_cslices_show(struct device *dev,
+				struct device_attribute *attr,
+				char *buff)
+{
+	struct intel_gt *gt = kobj_to_gt(&dev->kobj);
+	u32 num_slices;
+
+	num_slices = hweight32(gt->ccs.cslice_mask);
+
+	return sysfs_emit(buff, "%u\n", num_slices);
+}
+static DEVICE_ATTR_RO(num_cslices);
+
+void intel_gt_sysfs_ccs_init(struct intel_gt *gt)
+{
+	int err;
+
+	err = sysfs_create_file(&gt->sysfs_gt, &dev_attr_num_cslices.attr);
+	if (err)
+		gt_dbg(gt, "failed to create sysfs num_cslices files\n");
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
index a8b513c43a4f..b9ce29055857 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h
@@ -9,6 +9,7 @@
 struct intel_gt;
 
 unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt);
+void intel_gt_sysfs_ccs_init(struct intel_gt *gt);
 void intel_gt_ccs_mode_init(struct intel_gt *gt);
 
 #endif /* __INTEL_GT_CCS_MODE_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
index 33cba406b569..895eedc402ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
@@ -12,6 +12,7 @@
 #include "i915_drv.h"
 #include "i915_sysfs.h"
 #include "intel_gt.h"
+#include "intel_gt_ccs_mode.h"
 #include "intel_gt_print.h"
 #include "intel_gt_sysfs.h"
 #include "intel_gt_sysfs_pm.h"
@@ -101,6 +102,7 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
 		goto exit_fail;
 
 	intel_gt_sysfs_pm_init(gt, &gt->sysfs_gt);
+	intel_gt_sysfs_ccs_init(gt);
 
 	return;
 
-- 
2.45.2

