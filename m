Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3EF18F2EE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 11:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14CA389EAC;
	Mon, 23 Mar 2020 10:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00CB889F49
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 10:37:26 +0000 (UTC)
IronPort-SDR: teMCIp61gy3bcAS8D+btyqYPuJEYtHdnH79jfBudnuEpxI6ogUb4m7/TBjwGtpgIKG3MPBgwMJ
 c4dgePN76Tfg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:37:25 -0700
IronPort-SDR: hSEOXkMPMHwbKFo2guY0FesxFbOb1qh3/8hPVaVeOJM05IASREoToZ1AYEGXfELM5Lz005x1Hg
 EJCttWJOWsfA==
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="419458850"
Received: from unknown (HELO [10.252.47.179]) ([10.252.47.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:37:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
 <20200323092841.22240-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ddf2b2b0-1a81-943c-21eb-b7a8595fa3c3@linux.intel.com>
Date: Mon, 23 Mar 2020 10:37:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200323092841.22240-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Immediately execute the
 fenced work
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/03/2020 09:28, Chris Wilson wrote:
> If the caller allows and we do not have to wait for any signals,
> immediately execute the work within the caller's process. By doing so we
> avoid the overhead of scheduling a new task, and the latency in
> executing it, at the cost of pulling that work back into the immediate
> context. (Sometimes we still prefer to offload the task to another cpu,
> especially if we plan on executing many such tasks in parallel for this
> client.)
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  2 +-
>   drivers/gpu/drm/i915/i915_sw_fence_work.c      |  5 ++++-
>   drivers/gpu/drm/i915/i915_sw_fence_work.h      | 12 ++++++++++++
>   drivers/gpu/drm/i915/i915_vma.c                |  2 +-
>   4 files changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index c2bd5accde0c..e80c6f613feb 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1784,7 +1784,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>   	dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
>   	dma_resv_unlock(shadow->resv);
>   
> -	dma_fence_work_commit(&pw->base);
> +	dma_fence_work_commit_imm(&pw->base);
>   	return 0;
>   
>   err_batch_unlock:
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> index 997b2998f1f2..a3a81bb8f2c3 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> @@ -38,7 +38,10 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
>   
>   		if (!f->dma.error) {
>   			dma_fence_get(&f->dma);
> -			queue_work(system_unbound_wq, &f->work);
> +			if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
> +				fence_work(&f->work);
> +			else
> +				queue_work(system_unbound_wq, &f->work);
>   		} else {
>   			fence_complete(f);
>   		}
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.h b/drivers/gpu/drm/i915/i915_sw_fence_work.h
> index 3a22b287e201..0719d661dc9c 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence_work.h
> +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.h
> @@ -32,6 +32,10 @@ struct dma_fence_work {
>   	const struct dma_fence_work_ops *ops;
>   };
>   
> +enum {
> +	DMA_FENCE_WORK_IMM = DMA_FENCE_FLAG_USER_BITS,
> +};
> +
>   void dma_fence_work_init(struct dma_fence_work *f,
>   			 const struct dma_fence_work_ops *ops);
>   int dma_fence_work_chain(struct dma_fence_work *f, struct dma_fence *signal);
> @@ -41,4 +45,12 @@ static inline void dma_fence_work_commit(struct dma_fence_work *f)
>   	i915_sw_fence_commit(&f->chain);
>   }
>   
> +static inline void dma_fence_work_commit_imm(struct dma_fence_work *f)
> +{
> +	if (atomic_read(&f->chain.pending) <= 1)
> +		__set_bit(DMA_FENCE_WORK_IMM, &f->dma.flags);
> +

What is someone bumps pending to 2 at this point?

Regards,

Tvrtko

> +	dma_fence_work_commit(f);
> +}
> +
>   #endif /* I915_SW_FENCE_WORK_H */
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 08699fa069aa..191577a98390 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -980,7 +980,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>   	mutex_unlock(&vma->vm->mutex);
>   err_fence:
>   	if (work)
> -		dma_fence_work_commit(&work->base);
> +		dma_fence_work_commit_imm(&work->base);
>   	if (wakeref)
>   		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
>   err_pages:
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
