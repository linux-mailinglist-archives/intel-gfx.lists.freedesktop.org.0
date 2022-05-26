Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F81E534CE5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 12:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E492410E0E9;
	Thu, 26 May 2022 10:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5151710E0E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 10:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653559251; x=1685095251;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=HVwFhJDCBI6b8hYuH0/W8kTrNFjco8Qmuk2d6nn/55E=;
 b=Qi33mrjHVL1U6jap2C481B+6dtwcRC5WQpvuNI+rjjRlGU9D0C1pFdJy
 OTtgsaMVAbRh3/bnpxx1x+ph/KnTn29qGbRbYfItuBQOuxLQyTqpZxVsr
 41kR8CJAHnMVsVdKlbU9MZdFrpEHyh6gegAu32WqV1efApbdVyI4Nb63i
 xm6s8xXqU9aA4E8+LfACC4F8q5DvSMMvQneXMIv5SqqsTskUJ1tB4BouH
 6jG/O76imgZCDlt5OAoU5BtWSqm82EtrJXIj1XkrVBrdtemrfeqBr2Pfc
 jBtloRwE9sjh34uKd0CkOSaRQRMfMUGyjA++h/nZVP0QmvOPqPCL2yqCM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="274212748"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="274212748"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 03:00:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="602965935"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.62])
 ([10.213.26.62])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 03:00:47 -0700
Message-ID: <60879aa1-f0d5-1cdd-91cb-b394099db3c3@intel.com>
Date: Thu, 26 May 2022 12:00:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.1
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220525095955.15371-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220525095955.15371-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Individualize fences before
 adding to dma_resv obj
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
Cc: thomas.hellstrom@intel.com, matthew.auld@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25.05.2022 11:59, Nirmoy Das wrote:
> _i915_vma_move_to_active() can receive > 1 fences for
> multiple batch buffers submission. Because dma_resv_add_fence()
> can only accept one fence at a time, change _i915_vma_move_to_active()
> to be aware of multiple fences so that it can add individual
> fences to the dma resv object.
> 
> v6: fix multi-line comment.
> v5: remove double fence reservation for batch VMAs.
> v4: Reserve fences for composite_fence on multi-batch contexts and
>      also reserve fence slots to composite_fence for each VMAs.
> v3: dma_resv_reserve_fences is not cumulative so pass num_fences.
> v2: make sure to reserve enough fence slots before adding.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
>   drivers/gpu/drm/i915/i915_vma.c               | 48 +++++++++++--------
>   2 files changed, 30 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index b279588c0672..8880d38d36b6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1010,7 +1010,8 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
>   			}
>   		}
>   
> -		err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
> +		/* Reserve enough slots to accommodate composite fences */
> +		err = dma_resv_reserve_fences(vma->obj->base.resv, eb->num_batches);
>   		if (err)
>   			return err;
>   
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 4f6db539571a..0bffb70b3c5f 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -23,6 +23,7 @@
>    */
>   
>   #include <linux/sched/mm.h>
> +#include <linux/dma-fence-array.h>
>   #include <drm/drm_gem.h>
>   
>   #include "display/intel_frontbuffer.h"
> @@ -1823,6 +1824,21 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>   	if (unlikely(err))
>   		return err;
>   
> +	/*
> +	 * Reserve fences slot early to prevent an allocation after preparing
> +	 * the workload and associating fences with dma_resv.
> +	 */
> +	if (fence && !(flags & __EXEC_OBJECT_NO_RESERVE)) {
> +		struct dma_fence *curr;
> +		int idx;
> +
> +		dma_fence_array_for_each(curr, idx, fence)
> +			;

This look little odd.
Maybe we could add helper to dma core to get fences count, different story.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej



> +		err = dma_resv_reserve_fences(vma->obj->base.resv, idx);
> +		if (unlikely(err))
> +			return err;
> +	}
> +
>   	if (flags & EXEC_OBJECT_WRITE) {
>   		struct intel_frontbuffer *front;
>   
> @@ -1832,31 +1848,23 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>   				i915_active_add_request(&front->write, rq);
>   			intel_frontbuffer_put(front);
>   		}
> +	}
>   
> -		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
> -			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
> -			if (unlikely(err))
> -				return err;
> -		}
> +	if (fence) {
> +		struct dma_fence *curr;
> +		enum dma_resv_usage usage;
> +		int idx;
>   
> -		if (fence) {
> -			dma_resv_add_fence(vma->obj->base.resv, fence,
> -					   DMA_RESV_USAGE_WRITE);
> +		obj->read_domains = 0;
> +		if (flags & EXEC_OBJECT_WRITE) {
> +			usage = DMA_RESV_USAGE_WRITE;
>   			obj->write_domain = I915_GEM_DOMAIN_RENDER;
> -			obj->read_domains = 0;
> -		}
> -	} else {
> -		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
> -			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
> -			if (unlikely(err))
> -				return err;
> +		} else {
> +			usage = DMA_RESV_USAGE_READ;
>   		}
>   
> -		if (fence) {
> -			dma_resv_add_fence(vma->obj->base.resv, fence,
> -					   DMA_RESV_USAGE_READ);
> -			obj->write_domain = 0;
> -		}
> +		dma_fence_array_for_each(curr, idx, fence)
> +			dma_resv_add_fence(vma->obj->base.resv, curr, usage);
>   	}
>   
>   	if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)

