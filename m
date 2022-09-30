Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 048135F0EEE
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 17:35:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F02CC10ED5E;
	Fri, 30 Sep 2022 15:35:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA1F10ED5E
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 15:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664552135; x=1696088135;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/BjZ00GmNubUqH+t5Xt+A2IWE0lEMksZlZeafkajzgU=;
 b=ZPlJ863NmlElemmb2iJDm2BHAgavp1705wq01AkzPLWNKLN6LxPUsCtu
 mBEQt7rOhONuSE24MardFKmbC3UGRJ1pAL5fOAsT56FB6WftekDePn5ab
 ZtuXcVWanBDTHziMX/Xm80QibvxoWJjdiTpyhMVFubuaXrK25wxGWDm7x
 eNte2BGKwcmUhgj8jSVneWDEiS+vdQWHyah5nx85/rO2Ldgpaorbhz9Q2
 0Xd4ZyLluin4tpNHWGanjT1jZjl8EN74U9l75gvE2aaeOZmHDG6nXgdBT
 yskfUQ9Hov44p0vdY9+Saa2S7p/PLFXQ5ghxJ+s13gnU2kI57kE2pQ6dT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="388497025"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="388497025"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 08:35:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="618021118"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="618021118"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.78])
 ([10.213.6.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 08:35:33 -0700
Message-ID: <07ca7f29-2d7e-7622-b949-e16dfc7ad30e@intel.com>
Date: Fri, 30 Sep 2022 17:35:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220930152512.410111-1-matthew.auld@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220930152512.410111-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: implement access_memory
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30.09.2022 17:25, Matthew Auld wrote:
> It looks like we need this for local-memory, if we want to use ptrace.
> Something more is still needed if we want to handle non-mappable memory,
> which looks quite annoying.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6989
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 43 +++++++++++++++++++++++++
>   1 file changed, 43 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 3dc6acfcf4ec..4f533e0c92b4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -699,6 +699,48 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
>   	return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
>   }
>   
> +static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
> +				  unsigned long offset, void *buf,
> +				  int len, int write)
> +{
> +	unsigned long page = offset >> PAGE_SHIFT;
> +	unsigned long bytes_left = len;
> +	int ret;
> +
> +	/*
> +	 * TODO: For now just let it fail if the resource is non-mappable,
> +	 * otherwise we need to perform the memcpy from the gpu here, without
> +	 * interfering with the object (like moving the entire thing).
> +	 */
> +
> +	offset -= page << PAGE_SHIFT;
> +	do {
> +		unsigned long bytes = min(bytes_left, PAGE_SIZE - offset);
> +		struct ttm_bo_kmap_obj map;
> +		void __iomem *ptr;
> +		bool is_iomem;
> +
> +		ret = ttm_bo_kmap(bo, page, 1, &map);
> +		if (ret)
> +			return ret;
> +
> +		ptr = ttm_kmap_obj_virtual(&map, &is_iomem) + offset;
> +		WARN_ON_ONCE(!is_iomem);
> +		if (write)
> +			memcpy_toio(ptr, buf, bytes);
> +		else
> +			memcpy_fromio(buf, ptr, bytes);
> +		ttm_bo_kunmap(&map);
> +
> +		page++;
> +		buf += bytes;
> +		bytes_left -= bytes;
> +		offset = 0;
> +	} while (bytes_left);
> +
> +	return len;
> +}
> +
>   /*
>    * All callbacks need to take care not to downcast a struct ttm_buffer_object
>    * without checking its subclass, since it might be a TTM ghost object.
> @@ -715,6 +757,7 @@ static struct ttm_device_funcs i915_ttm_bo_driver = {
>   	.delete_mem_notify = i915_ttm_delete_mem_notify,
>   	.io_mem_reserve = i915_ttm_io_mem_reserve,
>   	.io_mem_pfn = i915_ttm_io_mem_pfn,
> +	.access_memory = i915_ttm_access_memory,
>   };
>   
>   /**

