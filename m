Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EE273FF68
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E09CA10E302;
	Tue, 27 Jun 2023 15:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B2CA10E304
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687878870; x=1719414870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3suT0UFCs3ACRqFT7WiWcYytZD3mTFF7VAu8MsvHQPk=;
 b=k5uVwTUtNldkQ6LNBU2rzc3W5hUXhGd1cdqdTD+f6CAF1t34EYrrCdBA
 9o2+wqjbD7kvuGjAuzJynYVFjiiUzqZ6tZI4HgUgtGImqTJQStWaedtZR
 ucHG9oGWYafWWoE530dxnkrSuxvbBqZya9i/3MOd338XJTIjVREyFIQpT
 mrjVDQLxT5D/IYXzclVt4+fIX36kpp4Qu87XOYu9g1yG2Ybaj+BVs1vEj
 zxW9NFDuJPUxdhulabNsTxQ0c5XPfkAc8eEIus2blD8mH8t3sRTpjrVQz
 ixZB2tUDYpIlUXHe+IMBSaG0sUv29bI8BsSIGXieRjKGNo8wjTy/afZhb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="364147132"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="364147132"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="840719734"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="840719734"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 18:13:58 +0300
Message-Id: <b0db62045a96a3fd4cf123685da88cc777f9b485.1687878757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1687878757.git.jani.nikula@intel.com>
References: <cover.1687878757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915: use mock device info for
 creating mock device
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
Cc: jani.nikula@intel.com, Andrzej Hajda <andrzej.hajda@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of modifying the device info on the fly, use static const mock
device info.

It's not okay to modify device info at runtime; we've added separate
runtime info for info that needs to be modified at runtime. We've added
safeguards to device info to prevent it from being modified, but commit
5e352e32aec2 ("drm/i915: preparation for using PAT index") just cast the
const away and modified it anyway. This prevents device info from being
moved to rodata.

Fixes: 5e352e32aec2 ("drm/i915: preparation for using PAT index")
Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Fei Yang <fei.yang@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 45 ++++++++++---------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 09d4bbcdcdbf..4de6a4e8280d 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -118,15 +118,31 @@ static void mock_gt_probe(struct drm_i915_private *i915)
 	i915->gt[0]->name = "Mock GT";
 }
 
+static const struct intel_device_info mock_info = {
+	.__runtime.graphics.ip.ver = -1,
+	.__runtime.page_sizes = (I915_GTT_PAGE_SIZE_4K |
+				 I915_GTT_PAGE_SIZE_64K |
+				 I915_GTT_PAGE_SIZE_2M),
+	.__runtime.memory_regions = REGION_SMEM,
+	.__runtime.platform_engine_mask = BIT(0),
+
+	/* simply use legacy cache level for mock device */
+	.max_pat_index = 3,
+	.cachelevel_to_pat = {
+		[I915_CACHE_NONE]   = 0,
+		[I915_CACHE_LLC]    = 1,
+		[I915_CACHE_L3_LLC] = 2,
+		[I915_CACHE_WT]     = 3,
+	},
+};
+
 struct drm_i915_private *mock_gem_device(void)
 {
 #if IS_ENABLED(CONFIG_IOMMU_API) && defined(CONFIG_INTEL_IOMMU)
 	static struct dev_iommu fake_iommu = { .priv = (void *)-1 };
 #endif
 	struct drm_i915_private *i915;
-	struct intel_device_info *i915_info;
 	struct pci_dev *pdev;
-	unsigned int i;
 	int ret;
 
 	pdev = kzalloc(sizeof(*pdev), GFP_KERNEL);
@@ -159,15 +175,18 @@ struct drm_i915_private *mock_gem_device(void)
 
 	pci_set_drvdata(pdev, i915);
 
+	/* Device parameters start as a copy of module parameters. */
+	i915_params_copy(&i915->params, &i915_modparams);
+
+	/* Set up device info and initial runtime info. */
+	intel_device_info_driver_create(i915, pdev->device, &mock_info);
+
 	dev_pm_domain_set(&pdev->dev, &pm_domain);
 	pm_runtime_enable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
 	if (pm_runtime_enabled(&pdev->dev))
 		WARN_ON(pm_runtime_get_sync(&pdev->dev));
 
-
-	i915_params_copy(&i915->params, &i915_modparams);
-
 	intel_runtime_pm_init_early(&i915->runtime_pm);
 	/* wakeref tracking has significant overhead */
 	i915->runtime_pm.no_wakeref_tracking = true;
@@ -175,21 +194,6 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Using the global GTT may ask questions about KMS users, so prepare */
 	drm_mode_config_init(&i915->drm);
 
-	RUNTIME_INFO(i915)->graphics.ip.ver = -1;
-
-	RUNTIME_INFO(i915)->page_sizes =
-		I915_GTT_PAGE_SIZE_4K |
-		I915_GTT_PAGE_SIZE_64K |
-		I915_GTT_PAGE_SIZE_2M;
-
-	RUNTIME_INFO(i915)->memory_regions = REGION_SMEM;
-
-	/* simply use legacy cache level for mock device */
-	i915_info = (struct intel_device_info *)INTEL_INFO(i915);
-	i915_info->max_pat_index = 3;
-	for (i = 0; i < I915_MAX_CACHE_LEVEL; i++)
-		i915_info->cachelevel_to_pat[i] = i;
-
 	intel_memory_regions_hw_probe(i915);
 
 	spin_lock_init(&i915->gpu_error.lock);
@@ -223,7 +227,6 @@ struct drm_i915_private *mock_gem_device(void)
 	mock_init_ggtt(to_gt(i915));
 	to_gt(i915)->vm = i915_vm_get(&to_gt(i915)->ggtt->vm);
 
-	RUNTIME_INFO(i915)->platform_engine_mask = BIT(0);
 	to_gt(i915)->info.engine_mask = BIT(0);
 
 	to_gt(i915)->engine[RCS0] = mock_engine(i915, "mock", RCS0);
-- 
2.39.2

