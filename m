Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0893260711F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 09:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE9E10E601;
	Fri, 21 Oct 2022 07:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B255210E380
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 07:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666337449; x=1697873449;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kvlRrn2OKQ4hIefxhcQQZIrOVkYSyc8gj77gfwJ3eJA=;
 b=kK0EE5Tb6q+no2f5EeIBTpALDHuxQBqaoBbMxfBfxehjflCvKzNPqqkQ
 OISlo6nDZS5uYF/rRgcSX40qwp5eaM4jcMWXejaaKQLxQxn1rMx5cAAs3
 lWvYvrugkO+7PdIHa8qyNbdNd3LTeIaUny6A9Uu3+yaEmXBYlcRfxDSM1
 ACOFPjr5Xxb25inMpg38jq/MFzMN6kPMyRSQJ8oXweSj/6EkyWLjw+udO
 SbGR/q7jT7MJmhI35nFHScD3VIRrxaDeH/59cTk6UZOurCqjZxAMk7YjK
 7fvbB82fzIqMnhrwhnoRc9UJ+IZ3m+GcPYwrn0/X8SKGimSjEGihe9nRr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308625570"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="308625570"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 00:30:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="608221216"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="608221216"
Received: from emoriart-mobl.ger.corp.intel.com (HELO [10.213.218.183])
 ([10.213.218.183])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 00:30:41 -0700
Message-ID: <8321f1a8-0283-f9f6-4289-03e8a6f8971e@linux.intel.com>
Date: Fri, 21 Oct 2022 08:30:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221020151047.369354-1-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221020151047.369354-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use i915_sg_dma_sizes() for
 internal backend
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


On 20/10/2022 16:10, Matthew Auld wrote:
> We rely on page_sizes.sg in setup_scratch_page() reporting the correct
> value if the underlying sgl is not contiguous, however in
> get_pages_internal() we are only looking at the layout of the created
> pages when calculating the sg_page_sizes, and not the final sgl, which
> could in theory be completely different. In such a situation we might
> incorrectly think we have a 64K scratch page, when it is actually only
> 4K or similar split over multiple non-contiguous entries, which could
> lead to broken behaviour when touching the scratch space within the
> padding of a 64K GTT page-table.  Like we already do for other backends,
> switch over to calling i915_sg_dma_sizes() after mapping the pages.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_internal.c | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> index c698f95af15f..301cfb127c4c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> @@ -36,7 +36,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	struct sg_table *st;
>   	struct scatterlist *sg;
> -	unsigned int sg_page_sizes;
>   	unsigned int npages;
>   	int max_order;
>   	gfp_t gfp;
> @@ -75,7 +74,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
>   
>   	sg = st->sgl;
>   	st->nents = 0;
> -	sg_page_sizes = 0;
>   
>   	do {
>   		int order = min(fls(npages) - 1, max_order);
> @@ -94,7 +92,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
>   		} while (1);
>   
>   		sg_set_page(sg, page, PAGE_SIZE << order, 0);
> -		sg_page_sizes |= PAGE_SIZE << order;
>   		st->nents++;
>   
>   		npages -= 1 << order;
> @@ -116,7 +113,7 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
>   		goto err;
>   	}
>   
> -	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
> +	__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));

Should __i915_gem_object_set_pages just do that internally? I mean are 
there callers which call it before DMA mapping and legitimately pass in 
st_page_sizes different from what i915_sg_dma_sizes() would find?

Regards,

Tvrtko

>   
>   	return 0;
>   
