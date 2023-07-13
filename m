Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C6F752568
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 16:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08DF10E6F1;
	Thu, 13 Jul 2023 14:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785D210E6F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 14:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689259523; x=1720795523;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qnqBWydPCWojvspIjb07ocfmXx3Rv2iy4VFaN5iBKWE=;
 b=IgIu0i4N9hHdnpNLBrxxtTSC7Z0MyjKG88WdZZsTJ8CPd5myWO2XD1oA
 /2xk1zttSp80d6cwCUVgsofnRT1NII2XLW6PFNVt3C8EmFNmfLuWeEojK
 mbBfDtSmS2EtVXwMwN7HfGuKyGJicDXjT1cpFqZXqJgYGNOHx1AJVYUeO
 nPcBpJND3EHDYAlGHmE+vTyVL5+DxYmv+79DgJIgXhWZcWbBGf+/KJ1fu
 LjfR+TM5GhH8JLiJ+OhKjsOyxhbTCo6DMvFkBFc30uVPSDXbfumdLCAIe
 6NqTiJu+6ieVB8p5WOpHxkUFaQXFuBewAXtoAyiZLDbVAEIaj6hN9fNZx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="362672788"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="362672788"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 07:45:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="751666638"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="751666638"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.53.19])
 ([10.252.53.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 07:45:21 -0700
Message-ID: <6d3e7ee4-4ba9-d3ee-0409-780b75c05a0b@linux.intel.com>
Date: Thu, 13 Jul 2023 16:45:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230711220648.17108-1-nirmoy.das@intel.com>
 <20230711220648.17108-2-nirmoy.das@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230711220648.17108-2-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/display: Do not use stolen
 on MTL
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


On 7/12/2023 12:06 AM, Nirmoy Das wrote:
> Use smem on MTL due to a HW bug in MTL that prevents
> reading from stolen memory using LMEM BAR.
>
> v2: improve stolen skip detection(Andrzej)
>
> Cc: Oak Zeng <oak.zeng@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Oak Zeng <oak.zeng@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 5 ++++-
>   drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++--
>   2 files changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 1cc0ddc6a310..e019bbcd474e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -187,8 +187,11 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>   		 * If the FB is too big, just don't use it since fbdev is not very
>   		 * important and we should probably use that space with FBC or other
>   		 * features.
> +		 *
> +		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
>   		 */
> -		if (size * 2 < dev_priv->dsm.usable_size)
> +		if (size * 2 < dev_priv->dsm.usable_size ||
> +		    !(IS_METEORLAKE(dev_priv)))

Just realized  this is wrong, stolen will be picked on non-mtl even if 
the stolen usable size is < 2*size which is not expected.

I will keep this as v1


Regards,

Nirmoy

>   			obj = i915_gem_object_create_stolen(dev_priv, size);
>   		if (IS_ERR(obj))
>   			obj = i915_gem_object_create_shmem(dev_priv, size);
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index d6fe2bbabe55..09c1aa1427ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1348,11 +1348,12 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>   static int get_registers(struct intel_overlay *overlay, bool use_phys)
>   {
>   	struct drm_i915_private *i915 = overlay->i915;
> -	struct drm_i915_gem_object *obj;
> +	struct drm_i915_gem_object *obj = ERR_PTR(-ENODEV);
>   	struct i915_vma *vma;
>   	int err;
>   
> -	obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
> +	if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
> +		obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>   	if (IS_ERR(obj))
>   		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
>   	if (IS_ERR(obj))
