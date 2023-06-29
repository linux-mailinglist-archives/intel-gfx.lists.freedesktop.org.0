Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B064742496
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 13:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F016D10E13A;
	Thu, 29 Jun 2023 11:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9889010E13A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 11:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688036416; x=1719572416;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0cbTSurfmQNR5c4z3OkW2e8nMHkXhPG35XaCOp95BlE=;
 b=PN3ggd/UClya5g7mR0Wwubt4z0b9XLoWcCAABZNCbhyvmnkIrU0q7A+4
 AIb0O02ahlrBQGTp1uJvp95D2jn5y+vuMEhNYBwUVl8bni6F0lusrJmT/
 T6L53PSkLqTHslX6rUnJXbrNGrqARxLkxk+aVV4aTs8+gXD+LdmxM3iAs
 NbC51uQ1NmCpR4CRFf1Om03+JqUXGzEaGI28cUvJivmRKfIIB6arp+OgM
 +dbJ8yK8IyLduxcbN/vbcwXvVXEuNN0HVVJl94bj2z9c5JV3UKXEUr0Yd
 ANa2z2x5o0q9NqNnDvkPB3pz1aEYWbGezYukhDBlovODakjuPNtIZ7IQv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="448460249"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="448460249"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 04:00:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="667475804"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="667475804"
Received: from coflynn-mobl.ger.corp.intel.com (HELO [10.213.199.178])
 ([10.213.199.178])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 04:00:11 -0700
Message-ID: <1d599625-3cae-c19e-1d27-49968296b391@linux.intel.com>
Date: Thu, 29 Jun 2023 12:00:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1687878757.git.jani.nikula@intel.com>
 <b0db62045a96a3fd4cf123685da88cc777f9b485.1687878757.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/06/2023 16:13, Jani Nikula wrote:
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

This one was new to me but figuring out what will dev->device contain, 
or if it could have any unintended consequences was too time consuming. 
If something breaks it will break loudly in testing.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

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
