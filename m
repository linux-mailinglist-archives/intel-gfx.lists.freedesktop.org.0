Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 894DB749DCB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 15:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADB310E3E3;
	Thu,  6 Jul 2023 13:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A8310E3E3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 13:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688650374; x=1720186374;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=OkdtqCgtZ2s/sEPuo2yQxKYATegEkDVD7DkXlECX0os=;
 b=LpqPrnuDY5pQ1sGZYpQUozHK/wyJikyog5SB1o1A+n+KVvuaSMsR5F+8
 juBqfdIwXTnjWY/gZ0chYp/CqmxLTNRTtUDHucK5edN7BCtd53yGxl0bT
 o09+HljhBN4K+hYSX6WbtEUpGqoNETWstAujKfhlBU0+3+tFAcXDS81aK
 unaAu8KCHnKCLgiS57DMqEecv6O2xryUWoR22fVUd8cjDpjskwHXW9st9
 twZ5iN8OyEBgGTKA9HQRdE6Uy3RcuuEF1e7W8oHISbV3Zyw32c7mdBTTo
 EtWpvI/scIZBoZSKjpHdjlMxikMhFTjD/NOvCcp2z/jdG9O9QSXuYvKdH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="353441175"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="353441175"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 06:32:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="696847921"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="696847921"
Received: from dnatta1-mobl1.ger.corp.intel.com (HELO [10.213.201.247])
 ([10.213.201.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 06:32:52 -0700
Message-ID: <a1a668fb-52a4-9d3a-03cc-443f2ff077aa@linux.intel.com>
Date: Thu, 6 Jul 2023 14:32:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230630170140.17319-1-nirmoy.das@intel.com>
 <20230630170140.17319-2-nirmoy.das@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230630170140.17319-2-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Do not use stolen on
 MTL
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/06/2023 18:01, Nirmoy Das wrote:
> Use smem on MTL due to a HW bug in MTL that prevents
> reading from stolen memory using LMEM BAR.

Does anything remain in stolen or could the memory region just not be 
created?

Regards,

Tvrtko

> Cc: Oak Zeng <oak.zeng@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 2 ++
>   drivers/gpu/drm/i915/display/intel_overlay.c | 7 ++++---
>   2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 1cc0ddc6a310..10e38d60f9ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -182,6 +182,8 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>   		obj = i915_gem_object_create_lmem(dev_priv, size,
>   						  I915_BO_ALLOC_CONTIGUOUS |
>   						  I915_BO_ALLOC_USER);
> +	} else if (IS_METEORLAKE(dev_priv)) { /* Wa_22018444074 */
> +		obj = i915_gem_object_create_shmem(dev_priv, size);
>   	} else {
>   		/*
>   		 * If the FB is too big, just don't use it since fbdev is not very
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index d6fe2bbabe55..05ae446c8a56 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1348,12 +1348,13 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>   static int get_registers(struct intel_overlay *overlay, bool use_phys)
>   {
>   	struct drm_i915_private *i915 = overlay->i915;
> -	struct drm_i915_gem_object *obj;
> +	struct drm_i915_gem_object *obj = NULL;
>   	struct i915_vma *vma;
>   	int err;
>   
> -	obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
> -	if (IS_ERR(obj))
> +	if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
> +		obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
> +	if (IS_ERR_OR_NULL(obj))
>   		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
>   	if (IS_ERR(obj))
>   		return PTR_ERR(obj);
