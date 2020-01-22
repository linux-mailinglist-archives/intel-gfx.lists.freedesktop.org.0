Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC81A1454EA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 14:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436AE6E037;
	Wed, 22 Jan 2020 13:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F4266E037
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 13:16:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:16:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="221230166"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 22 Jan 2020 05:16:39 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 12AC45C1DD9; Wed, 22 Jan 2020 15:15:58 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200121222447.419489-1-chris@chris-wilson.co.uk>
References: <20200121222447.419489-1-chris@chris-wilson.co.uk>
Date: Wed, 22 Jan 2020 15:15:58 +0200
Message-ID: <87ftg7pr75.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Clear the GGTT_WRITE bit on
 unbinding the vma
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> While we do flush writes to the vma before unbinding (to make sure they
> go through the right detiling register), we may also be concurrently
> poking at the GGTT_WRITE bit from set-domain, as we mark all GGTT vma
> associated with an object. We know this is for another vma, as we
> are currently unbind this one -- so if this vma will be reused, it will
> be refaulted and have its dirty bit set before the next write.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/999
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_vma.c       | 11 +++++++++--
>  drivers/gpu/drm/i915/i915_vma_types.h |  1 +
>  2 files changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 17d7c525ea5c..eb18b56af3af 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1218,9 +1218,15 @@ int __i915_vma_unbind(struct i915_vma *vma)
>  		 * before the unbind, other due to non-strict nature of those
>  		 * indirect writes they may end up referencing the GGTT PTE
>  		 * after the unbind.
> +		 *
> +		 * Note that we may be concurrently poking at the GGTT_WRITE
> +		 * bit from set-domain, as we mark all GGTT vma associated
> +		 * with an object. We know this is for another vma, as we
> +		 * are currently unbind this one -- so if this vma will be
> +		 * reused, it will be refaulted and have its dirty bit set
> +		 * before the next write.
>  		 */
>  		i915_vma_flush_writes(vma);
> -		GEM_BUG_ON(i915_vma_has_ggtt_write(vma));
>  
>  		/* release the fence reg _after_ flushing */
>  		ret = i915_vma_revoke_fence(vma);
> @@ -1240,7 +1246,8 @@ int __i915_vma_unbind(struct i915_vma *vma)
>  		trace_i915_vma_unbind(vma);
>  		vma->ops->unbind_vma(vma);
>  	}
> -	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR), &vma->flags);
> +	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR | I915_VMA_DIRTY),
> +		   &vma->flags);
>  
>  	i915_vma_detach(vma);
>  	vma_unbind_pages(vma);
> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
> index e0942efd5236..1ddc450ae766 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -244,6 +244,7 @@ struct i915_vma {
>  #define I915_VMA_CAN_FENCE_BIT	15
>  #define I915_VMA_USERFAULT_BIT	16
>  #define I915_VMA_GGTT_WRITE_BIT	17
> +#define I915_VMA_DIRTY		((int)BIT(I915_VMA_GGTT_WRITE_BIT))

You can omit this and use I915_VMA_GGTT_WRITE.

With that,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  
>  #define I915_VMA_GGTT		((int)BIT(I915_VMA_GGTT_BIT))
>  #define I915_VMA_CAN_FENCE	((int)BIT(I915_VMA_CAN_FENCE_BIT))
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
