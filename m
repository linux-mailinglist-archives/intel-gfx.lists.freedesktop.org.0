Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CAC59813F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 12:04:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DFDBCA43C;
	Thu, 18 Aug 2022 10:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C0FF14B884
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 10:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660817056; x=1692353056;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=sMvlYFuTo/z/M5AC5cDHdxqhRUekpsJxWnxwGNTJN7Y=;
 b=Qgb5kbRJqm2+F/SDm/9j32GXvl1uYRShoXWNoqMn0n8TQgfmM3+AZ/IG
 57qJH4PJWHQlQRocJjvJX8d/86X/3TasV5hoMvrQbKHJ9Qu1E8/1vBCsR
 +c/BZZR3bRjPhed2HrUV1r9DeznSJbN+FpRog7htBWBKpNnI3s+rTNtPz
 h/TP5xsQBl69eSjsHRkZlXg5FVjIw5PwOYZZxjZ8wrUHurW9FzibjlON1
 aw+iO8RkChVqJnoDhEPYsKLVZuoCbRA3/WiSa0pUkj5WqpioUsLPtOO+L
 avBcQDhQ0y88J7jZb5KfoWlbT0+iCNdykW8Di2WdWvOlUUCc3dLWLHGBq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="293996079"
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="293996079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 03:04:14 -0700
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="636759408"
Received: from guoqingz-mobl.ger.corp.intel.com (HELO [10.252.51.8])
 ([10.252.51.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 03:04:13 -0700
Message-ID: <914a1ac6-202f-eca4-46dc-ac1899321182@linux.intel.com>
Date: Thu, 18 Aug 2022 11:57:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.1.2
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1655712106.git.jani.nikula@intel.com>
 <a0422f0a8ac055f65b7922bcd3119b180a41e79e.1655712106.git.jani.nikula@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <a0422f0a8ac055f65b7922bcd3119b180a41e79e.1655712106.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 16/16] drm/i915: make device info a pointer
 to static const data
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

Op 20-06-2022 om 10:49 schreef Jani Nikula:
> Now that the device info is no longer modified runtime, we don't need to
> make a copy of it, and we can convert i915->__info into a pointer to
> static const data. Also remove mkwrite_device_info().
>
> This does increase the text size slightly.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> ---
>
> An alternative is to keep copying device info, but casting away the
> const only once at the copy time, removing mkwrite_device_info().
> ---
>  drivers/gpu/drm/i915/i915_driver.c |  8 ++------
>  drivers/gpu/drm/i915/i915_drv.h    | 11 ++---------
>  2 files changed, 4 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 5969cc7805d3..9c9c492e97a8 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -793,9 +793,6 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
>  static struct drm_i915_private *
>  i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  {
> -	const struct intel_device_info *match_info =
> -		(struct intel_device_info *)ent->driver_data;
> -	struct intel_device_info *device_info;
>  	struct intel_runtime_info *runtime;
>  	struct drm_i915_private *i915;
>  
> @@ -809,9 +806,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Device parameters start as a copy of module parameters. */
>  	i915_params_copy(&i915->params, &i915_modparams);
>  
> -	/* Setup the write-once "constant" device info */
> -	device_info = mkwrite_device_info(i915);
> -	memcpy(device_info, match_info, sizeof(*device_info));
> +	/* Static const device info. */
> +	i915->__info = (const struct intel_device_info *)ent->driver_data;
>  
>  	/* Initialize initial runtime info from static const data and pdev. */
>  	runtime = RUNTIME_INFO(i915);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 89472440947c..a2a57f07c5be 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -380,7 +380,7 @@ struct drm_i915_private {
>  	/* i915 device parameters */
>  	struct i915_params params;
>  
> -	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
> +	const struct intel_device_info *__info; /* Use INTEL_INFO() to access. */
>  	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
>  	struct intel_driver_caps caps;
>  
> @@ -848,7 +848,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1, \
>  		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
>  
> -#define INTEL_INFO(dev_priv)	(&(dev_priv)->__info)
> +#define INTEL_INFO(__i915)	(__i915->__info)
>  #define RUNTIME_INFO(dev_priv)	(&(dev_priv)->__runtime)
>  #define DRIVER_CAPS(dev_priv)	(&(dev_priv)->caps)
>  
> @@ -1432,13 +1432,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
>  
>  int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
>  
> -/* intel_device_info.c */
> -static inline struct intel_device_info *
> -mkwrite_device_info(struct drm_i915_private *dev_priv)
> -{
> -	return (struct intel_device_info *)INTEL_INFO(dev_priv);
> -}
> -
>  static inline enum i915_map_type
>  i915_coherent_map_type(struct drm_i915_private *i915,
>  		       struct drm_i915_gem_object *obj, bool always_coherent)

I think just moving around things is safest in this case. I believe all should be moved to the new display sub-struct, but this is a start of making that easier.

For the series, except patch 5:

Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>

