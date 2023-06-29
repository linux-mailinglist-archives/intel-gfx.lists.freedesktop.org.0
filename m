Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 823DC7426CF
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 14:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2710E10E13E;
	Thu, 29 Jun 2023 12:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DB510E13E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 12:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688043455; x=1719579455;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1bwYlrpA6mTl0BB1BInckeKe2Qka4OS85d5bObidDBM=;
 b=UVYYrrqy7lffxMD+BEGhgo6lij6l/F8bD1oRKDWjlHd/tFuQDENfxE4I
 P4hGpgl7bm5yA6qXczAeNlwybA7OpeVeLOXuIj7jYduS9iix5/bBvDtvh
 2mp0ePv3yzd/BRLxF8Rn3CFifnNferbRw/WpPe+up30MtyAjt22dyZnrq
 noVSOSWtuQSRcl6AxJptHuUPwAI42G4M/pH/RPRoSJvZOStpsuMU/QYEA
 yaK35I5tMK2FYz8utssgMIFb3haHiNmVrnB/KrxVzZJHDtkYi0EwJndKD
 plOhlNKOsO+fsiV0Ak8nY4Kv17vXX5dNtT7zqy0gONafecwoNYR/L5a3q A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="342437587"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="342437587"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 05:57:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="747019418"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="747019418"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.1.119])
 ([10.213.1.119])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 05:57:31 -0700
Message-ID: <5ff4429f-e7a4-0d78-fad4-213dd8ee20a0@intel.com>
Date: Thu, 29 Jun 2023 14:57:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1687878757.git.jani.nikula@intel.com>
 <b0db62045a96a3fd4cf123685da88cc777f9b485.1687878757.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <b0db62045a96a3fd4cf123685da88cc777f9b485.1687878757.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: use mock device info for
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 27.06.2023 17:13, Jani Nikula wrote:
> Instead of modifying the device info on the fly, use static const mock
> device info.
>
> It's not okay to modify device info at runtime; we've added separate
> runtime info for info that needs to be modified at runtime. We've added
> safeguards to device info to prevent it from being modified, but commit
> 5e352e32aec2 ("drm/i915: preparation for using PAT index") just cast the
> const away and modified it anyway. This prevents device info from being
> moved to rodata.
>
> Fixes: 5e352e32aec2 ("drm/i915: preparation for using PAT index")
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   .../gpu/drm/i915/selftests/mock_gem_device.c  | 45 ++++++++++---------
>   1 file changed, 24 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 09d4bbcdcdbf..4de6a4e8280d 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -118,15 +118,31 @@ static void mock_gt_probe(struct drm_i915_private *i915)
>   	i915->gt[0]->name = "Mock GT";
>   }
>   
> +static const struct intel_device_info mock_info = {
> +	.__runtime.graphics.ip.ver = -1,
> +	.__runtime.page_sizes = (I915_GTT_PAGE_SIZE_4K |
> +				 I915_GTT_PAGE_SIZE_64K |
> +				 I915_GTT_PAGE_SIZE_2M),
> +	.__runtime.memory_regions = REGION_SMEM,
> +	.__runtime.platform_engine_mask = BIT(0),
> +
> +	/* simply use legacy cache level for mock device */
> +	.max_pat_index = 3,
> +	.cachelevel_to_pat = {
> +		[I915_CACHE_NONE]   = 0,
> +		[I915_CACHE_LLC]    = 1,
> +		[I915_CACHE_L3_LLC] = 2,
> +		[I915_CACHE_WT]     = 3,
> +	},
> +};
> +
>   struct drm_i915_private *mock_gem_device(void)
>   {
>   #if IS_ENABLED(CONFIG_IOMMU_API) && defined(CONFIG_INTEL_IOMMU)
>   	static struct dev_iommu fake_iommu = { .priv = (void *)-1 };
>   #endif
>   	struct drm_i915_private *i915;
> -	struct intel_device_info *i915_info;
>   	struct pci_dev *pdev;
> -	unsigned int i;
>   	int ret;
>   
>   	pdev = kzalloc(sizeof(*pdev), GFP_KERNEL);
> @@ -159,15 +175,18 @@ struct drm_i915_private *mock_gem_device(void)
>   
>   	pci_set_drvdata(pdev, i915);
>   
> +	/* Device parameters start as a copy of module parameters. */
> +	i915_params_copy(&i915->params, &i915_modparams);
> +
> +	/* Set up device info and initial runtime info. */
> +	intel_device_info_driver_create(i915, pdev->device, &mock_info);
> +
>   	dev_pm_domain_set(&pdev->dev, &pm_domain);
>   	pm_runtime_enable(&pdev->dev);
>   	pm_runtime_dont_use_autosuspend(&pdev->dev);
>   	if (pm_runtime_enabled(&pdev->dev))
>   		WARN_ON(pm_runtime_get_sync(&pdev->dev));
>   
> -
> -	i915_params_copy(&i915->params, &i915_modparams);
> -
>   	intel_runtime_pm_init_early(&i915->runtime_pm);
>   	/* wakeref tracking has significant overhead */
>   	i915->runtime_pm.no_wakeref_tracking = true;
> @@ -175,21 +194,6 @@ struct drm_i915_private *mock_gem_device(void)
>   	/* Using the global GTT may ask questions about KMS users, so prepare */
>   	drm_mode_config_init(&i915->drm);
>   
> -	RUNTIME_INFO(i915)->graphics.ip.ver = -1;
> -
> -	RUNTIME_INFO(i915)->page_sizes =
> -		I915_GTT_PAGE_SIZE_4K |
> -		I915_GTT_PAGE_SIZE_64K |
> -		I915_GTT_PAGE_SIZE_2M;
> -
> -	RUNTIME_INFO(i915)->memory_regions = REGION_SMEM;
> -
> -	/* simply use legacy cache level for mock device */
> -	i915_info = (struct intel_device_info *)INTEL_INFO(i915);
> -	i915_info->max_pat_index = 3;
> -	for (i = 0; i < I915_MAX_CACHE_LEVEL; i++)
> -		i915_info->cachelevel_to_pat[i] = i;
> -
>   	intel_memory_regions_hw_probe(i915);
>   
>   	spin_lock_init(&i915->gpu_error.lock);
> @@ -223,7 +227,6 @@ struct drm_i915_private *mock_gem_device(void)
>   	mock_init_ggtt(to_gt(i915));
>   	to_gt(i915)->vm = i915_vm_get(&to_gt(i915)->ggtt->vm);
>   
> -	RUNTIME_INFO(i915)->platform_engine_mask = BIT(0);
>   	to_gt(i915)->info.engine_mask = BIT(0);
>   
>   	to_gt(i915)->engine[RCS0] = mock_engine(i915, "mock", RCS0);

