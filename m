Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 039D87C4CDB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A254B10E20F;
	Wed, 11 Oct 2023 08:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD3910E20F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 08:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697012204; x=1728548204;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=p0wXNWqLN0X64cRWO2mJRHBI1E4zdfmoZETM5D01cxQ=;
 b=fTfZDvVAeWl03hja8UUCoMIOV3WNu4c5g6ZopaLXiSaSaR0F6oCgAi6Q
 qZWa9TUV8t+LR90Pqbdpre5ftMUj81v/zds/RpHlbUwO8YKcBH30WDny5
 IKG9d6DQJ3taMsuPrnqhSr490TrtcQwkss0oawlspb/WPoA1qOfgFoxF2
 aErRgqGkEgiu7B4Tumvy7DdpDHl0ibNw/urplPFUmr1+KFM8u3+2GDQ1s
 oGYfmhWGg3f2W6XzIUZs+T5n/JLAqkCHfyBPwf1PIgdOZXvoTXuOE/77i
 9970KjJkd/tnnw4mzp4HZHNsSEN+hT0KZvoH/vjj12YCBlam93j3d8ylA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387449790"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="387449790"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:16:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="870053068"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="870053068"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO [10.213.194.149])
 ([10.213.194.149])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:16:42 -0700
Message-ID: <b76586a5-b727-8e5c-3961-9a2d7e80809e@linux.intel.com>
Date: Wed, 11 Oct 2023 09:16:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231010184423.2118908-1-jonathan.cavitt@intel.com>
 <20231010184423.2118908-13-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231010184423.2118908-13-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC PATCH 10/10] drm/i915: Use selective tlb
 invalidations where supported
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
Cc: saurabhg.gupta@intel.com, andi.shyti@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/10/2023 19:44, Jonathan Cavitt wrote:
> For platforms supporting selective tlb invalidations, we don't need to
> do a full tlb invalidation. Rather do a range based tlb invalidation for
> every unbind of purged vma belongs to an active vm.
> 
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ppgtt.c |  2 +-
>   drivers/gpu/drm/i915/i915_vma.c       | 14 +++++++++-----
>   drivers/gpu/drm/i915/i915_vma.h       |  3 ++-
>   3 files changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> index d07a4f97b9434..b43dae3cbd59f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -211,7 +211,7 @@ void ppgtt_unbind_vma(struct i915_address_space *vm,
>   		return;
>   
>   	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
> -	vma_invalidate_tlb(vm, vma_res->tlb);
> +	vma_invalidate_tlb(vm, vma_res->tlb, vma_res->start, vma_res->vma_size);
>   }
>   
>   static unsigned long pd_count(u64 size, int shift)
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index d09aad34ba37f..cb05d794f0d0f 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1339,7 +1339,8 @@ I915_SELFTEST_EXPORT int i915_vma_get_pages(struct i915_vma *vma)
>   	return err;
>   }
>   
> -void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb)
> +void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb
> +			u64 start, u64 size)
>   {
>   	struct intel_gt *gt;
>   	int id;
> @@ -1355,9 +1356,11 @@ void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb)
>   	 * the most recent TLB invalidation seqno, and if we have not yet
>   	 * flushed the TLBs upon release, perform a full invalidation.
>   	 */
> -	for_each_gt(gt, vm->i915, id)
> -		WRITE_ONCE(tlb[id],
> -			   intel_gt_next_invalidate_tlb_full(gt));
> +	for_each_gt(gt, vm->i915, id) {
> +		if (!intel_gt_invalidate_tlb_range(gt, start, size))
> +			WRITE_ONCE(tlb[id],
> +				   intel_gt_next_invalidate_tlb_full(gt));
> +	}
>   }
>   
>   static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
> @@ -2041,7 +2044,8 @@ struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async)
>   			dma_fence_put(unbind_fence);
>   			unbind_fence = NULL;
>   		}
> -		vma_invalidate_tlb(vma->vm, vma->obj->mm.tlb);
> +		vma_invalidate_tlb(vma->vm, vma->obj->mm.tlb,
> +				   vma->node.start, vma->size);

The RFC looks like just what we needed so I'll drop an ack on the other 
patch series. Thanks for sending it out so quickly.

Regards,

Tvrtko

>   	}
>   
>   	/*
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index e356dfb883d34..5a604aad55dfe 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -260,7 +260,8 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
>   			u64 size, u64 alignment, u64 flags);
>   void __i915_vma_set_map_and_fenceable(struct i915_vma *vma);
>   void i915_vma_revoke_mmap(struct i915_vma *vma);
> -void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb);
> +void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb,
> +			u64 start, u64 size);
>   struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async);
>   int __i915_vma_unbind(struct i915_vma *vma);
>   int __must_check i915_vma_unbind(struct i915_vma *vma);
