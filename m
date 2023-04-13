Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AD36E0D4B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 14:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B2C310E138;
	Thu, 13 Apr 2023 12:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C130B10E138
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 12:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681388084; x=1712924084;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9jXzS806oIOmeBYyKFhYrU8I0C6caEdHRSGPxAzPM1E=;
 b=FqxMWXgpzNauFGt5Vi63dCQKon3H0zsrrSyo3JgC8ZnTyO8xehsOhbvt
 pKgnp3Ina0aMPtE9AR2/DdXn+rR+H+oJFGuuPFfmGkk0Xur3MGrrh7Jxk
 umlJEezoevB6XoL3aQULLDz/BMmUAFslCAG/KjIIVRVBizicumYq46N3w
 xT7PfPfTexXF7q+wHwAM/ALBBXOUqQfClToGRz4ZbhQ5JSpkFctyASJ1m
 f5Wwc2OHH5yF2shYtcmMk/cf5dVufbmORLVjNQ6fTY9w5tMt9pqStL4qZ
 Im76XZ9UpUmZnBeYT0F5K0b8NTkAu5Xg87ifX8pok3kS0y/b7PzzndlN8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="323790281"
X-IronPort-AV: E=Sophos;i="5.99,341,1677571200"; d="scan'208";a="323790281"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 05:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="813436460"
X-IronPort-AV: E=Sophos;i="5.99,341,1677571200"; d="scan'208";a="813436460"
Received: from mmcgar2x-mobl1.ger.corp.intel.com (HELO [10.213.231.135])
 ([10.213.231.135])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 05:14:42 -0700
Message-ID: <a81da631-c389-77ee-5c39-bdbfff02b034@linux.intel.com>
Date: Thu, 13 Apr 2023 13:14:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230411105643.292416-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230411105643.292416-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RESEND] drm/i915: hide mkwrite_device_info() better
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


On 11/04/2023 11:56, Jani Nikula wrote:
> The goal has been to just make device info a pointer to static const
> data, i.e. the static const structs in i915_pci.c. See [1]. However,
> there were issues with intel_device_info_runtime_init() clearing the
> display sub-struct of device info on the !HAS_DISPLAY() path, which
> consequently disables a lot of display functionality, like it
> should. Looks like we'd have to cover all those paths, and maybe
> sprinkle HAS_DISPLAY() checks in them, which we haven't gotten around
> to.
> 
> In the mean time, hide mkwrite_device_info() better within
> intel_device_info.c by adding a intel_device_info_driver_create() for
> the very early initialization of the device info and initial runtime
> info. This also lets us declutter i915_drv.h a bit, and stops promoting
> mkwrite_device_info() as something that could be used.
> 
> [1] https://lore.kernel.org/r/a0422f0a8ac055f65b7922bcd3119b180a41e79e.1655712106.git.jani.nikula@intel.com
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.c       | 12 ++--------
>   drivers/gpu/drm/i915/i915_drv.h          |  7 ------
>   drivers/gpu/drm/i915/intel_device_info.c | 29 ++++++++++++++++++++++++
>   drivers/gpu/drm/i915/intel_device_info.h |  2 ++
>   4 files changed, 33 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 93fdc40d724f..2980ccdef6cd 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -720,8 +720,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>   {
>   	const struct intel_device_info *match_info =
>   		(struct intel_device_info *)ent->driver_data;
> -	struct intel_device_info *device_info;
> -	struct intel_runtime_info *runtime;
>   	struct drm_i915_private *i915;
>   
>   	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
> @@ -734,14 +732,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	/* Device parameters start as a copy of module parameters. */
>   	i915_params_copy(&i915->params, &i915_modparams);
>   
> -	/* Setup the write-once "constant" device info */
> -	device_info = mkwrite_device_info(i915);
> -	memcpy(device_info, match_info, sizeof(*device_info));
> -
> -	/* Initialize initial runtime info from static const data and pdev. */
> -	runtime = RUNTIME_INFO(i915);
> -	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
> -	runtime->device_id = pdev->device;
> +	/* Set up device info and initial runtime info. */
> +	intel_device_info_driver_create(i915, pdev->device, match_info);
>   
>   	return i915;
>   }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e771fdc3099c..fe7eeafe9cff 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -931,11 +931,4 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>   				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>   
> -/* intel_device_info.c */
> -static inline struct intel_device_info *
> -mkwrite_device_info(struct drm_i915_private *dev_priv)
> -{
> -	return (struct intel_device_info *)INTEL_INFO(dev_priv);
> -}
> -
>   #endif
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index fc5cd14adfcc..4e23be2995bf 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -381,6 +381,13 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
>   	intel_device_info_subplatform_init(i915);
>   }
>   
> +/* FIXME: Remove this, and make device info a const pointer to rodata. */
> +static struct intel_device_info *
> +mkwrite_device_info(struct drm_i915_private *i915)
> +{
> +	return (struct intel_device_info *)INTEL_INFO(i915);
> +}
> +
>   /**
>    * intel_device_info_runtime_init - initialize runtime info
>    * @dev_priv: the i915 device
> @@ -548,6 +555,28 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>   		dev_priv->drm.driver_features &= ~DRIVER_ATOMIC;
>   }
>   
> +/*
> + * Set up device info and initial runtime info at driver create.
> + *
> + * Note: i915 is only an allocated blob of memory at this point.
> + */
> +void intel_device_info_driver_create(struct drm_i915_private *i915,
> +				     u16 device_id,
> +				     const struct intel_device_info *match_info)
> +{
> +	struct intel_device_info *info;
> +	struct intel_runtime_info *runtime;
> +
> +	/* Setup the write-once "constant" device info */
> +	info = mkwrite_device_info(i915);
> +	memcpy(info, match_info, sizeof(*info));
> +
> +	/* Initialize initial runtime info from static const data and pdev. */
> +	runtime = RUNTIME_INFO(i915);
> +	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
> +	runtime->device_id = device_id;
> +}
> +
>   void intel_driver_caps_print(const struct intel_driver_caps *caps,
>   			     struct drm_printer *p)
>   {
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 080a4557899b..f032f2500f50 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -317,6 +317,8 @@ struct intel_driver_caps {
>   
>   const char *intel_platform_name(enum intel_platform platform);
>   
> +void intel_device_info_driver_create(struct drm_i915_private *i915, u16 device_id,
> +				     const struct intel_device_info *match_info);

Match_info maybe reads a bit odd when "exported" but I have no superior 
suggestions either (const? template? pci?). Hiding seems a good plan so:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

>   void intel_device_info_runtime_init_early(struct drm_i915_private *dev_priv);
>   void intel_device_info_runtime_init(struct drm_i915_private *dev_priv);
>   
