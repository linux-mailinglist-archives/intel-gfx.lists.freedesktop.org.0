Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ACC766657
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 10:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B40210E681;
	Fri, 28 Jul 2023 08:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCAC210E67F;
 Fri, 28 Jul 2023 08:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690531580; x=1722067580;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=x2rUUtziHP5HRkIPgMEOOTCdi1SsP+tT2Q4VyJcV8z0=;
 b=WFxjOtUPBXcE4HBuXTVNA1Gtvwgf+r1Wg7CUoj4kwDTHqfVYrvku2tTv
 b+eDrPpS6If7mvGIZHprFUr29PB4TyZjBtPRVMF8atzU4D+rtHruvTYS/
 PcsAxSfi2EsAbCxagTZPf5EoC6uCYJh2nMYPFSK9fNVPEa/oLWfWCydid
 jE4GOELx+8QAvw8QYHCeUQ16QPAP/txPKye+eBZbWi8S1GBmgajdQF87f
 oQiiR7XHXMUIoFFyHQaXxkOyI2bm7hqTKPqmN8jSAAR1AsGARHOywAKu0
 x0GxzxOwzKjeUw8BSlfkLDU76/z8LXEVpVwhvyR+LDcIQdtklkBfnk081 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="348138331"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="348138331"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 01:06:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="727384080"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="727384080"
Received: from atoomey-mobl.amr.corp.intel.com (HELO [10.213.197.30])
 ([10.213.197.30])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 01:06:17 -0700
Message-ID: <54b820a4-8e8b-26a2-1b65-eaaa43f8b92d@linux.intel.com>
Date: Fri, 28 Jul 2023 09:06:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, airlied@gmail.com,
 daniel@ffwll.ch, robdclark@chromium.org, lucas.demarchi@intel.com,
 thomas.hellstrom@linux.intel.com, chris@chris-wilson.co.uk
References: <20230728015846.20228-1-jiasheng@iscas.ac.cn>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230728015846.20228-1-jiasheng@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Add check for bitmap_zalloc()
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

On 28/07/2023 02:58, Jiasheng Jiang wrote:
> Add the check for the return value of bitmap_zalloc() in order to
> guarantee the success of the allocation.
> 
> Fixes: e9b73c67390a ("drm/i915: Reduce memory pressure during shrinker by preallocating swizzle pages")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> index a049ca0b7980..e9cf99d95966 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -311,6 +311,11 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>   		if (!obj->bit_17) {
>   			obj->bit_17 = bitmap_zalloc(obj->base.size >> PAGE_SHIFT,
>   						    GFP_KERNEL);
> +			if (!obj->bit_17) {
> +				i915_gem_object_unlock(obj);
> +				i915_gem_object_release_mmap_gtt(obj);
> +				return -ENOMEM;
> +			}

Hm the comment few lines above says:

	/* Try to preallocate memory required to save swizzling on put-pages */

Lets emphasis the *try* for now. Then once the obj->bit_17 is attempted to be used we have this:

i915_gem_object_save_bit_17_swizzle(..)
{
...
	if (obj->bit_17 == NULL) {
		obj->bit_17 = bitmap_zalloc(page_count, GFP_KERNEL);
		if (obj->bit_17 == NULL) {
			drm_err(obj->base.dev,
				"Failed to allocate memory for bit 17 record\n");
			return;
		}
	}

So despite this area of the driver being a bit before my time, I'd say it quite possibly works as designed - only *tries* to preallocate but does not have to and can cope with a later failure.

Good question might be why wouldn't it be better to do what you suggest. Trade off would be between failing the ioctl and possibly crashing the application, versus visual corruption if at use time allocation fails.

The whole swizzling thing also only applies to old GPUs, stuff before Broadwell, which itself was released in 2014. So it is tempting to err on the side of caution and leave it as is. I'll mull it over in the background, or maybe someone else will have an opinion too.

Regards,

Tvrtko

>   		}
>   	} else {
>   		bitmap_free(obj->bit_17);
