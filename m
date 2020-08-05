Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A3B23CB4D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 15:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0264E6E7D7;
	Wed,  5 Aug 2020 13:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8A86E7D7
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 13:58:27 +0000 (UTC)
IronPort-SDR: m7vP/JA+0A1HymWdAxkKhHV+LC3kJoPvnY9owTtSBBYLERkSF77HaYCH5z2A/5KZEplf9xiCI+
 vQzH5oNODYGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="132618601"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="132618601"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 06:58:27 -0700
IronPort-SDR: zLi9CO4TtgA4XqpYM93h238vUrW9ZZe3xsX6QR0OmZxN/g9KfI8xBwKACjXx8nvgQSyYq7aGCB
 OOjEaXc2V6dw==
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="467473233"
Received: from tlevis-mobl1.ger.corp.intel.com (HELO [10.251.167.151])
 ([10.251.167.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 06:58:26 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-17-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3c29095b-b814-46b2-e5d4-40217c180166@linux.intel.com>
Date: Wed, 5 Aug 2020 14:58:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805122231.23313-17-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/37] drm/i915: Always defer fenced work to
 the worker
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


On 05/08/2020 13:22, Chris Wilson wrote:
> Currently, if an error is raised we always call the cleanup locally
> [and skip the main work callback]. However, some future users may need
> to take a mutex to cleanup and so we cannot immediately execute the
> cleanup as we may still be in interrupt context. For example, if we have
> committed sensitive changes [like evicting from the ppGTT layout] that
> are visible but gated behind the fence, we need to ensure those changes
> are completed even after an error. [This does suggest the split between
> the work/release callback is artificial and we may be able to simplify
> the worker api by only requiring a single callback.]
> 
> With the execute-immediate flag, for most cases this should result in
> immediate cleanup of an error.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_sw_fence_work.c | 26 +++++++++++------------
>   1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> index a3a81bb8f2c3..e094fd0a4202 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> @@ -16,11 +16,14 @@ static void fence_complete(struct dma_fence_work *f)
>   static void fence_work(struct work_struct *work)
>   {
>   	struct dma_fence_work *f = container_of(work, typeof(*f), work);
> -	int err;
>   
> -	err = f->ops->work(f);
> -	if (err)
> -		dma_fence_set_error(&f->dma, err);
> +	if (!f->dma.error) {
> +		int err;
> +
> +		err = f->ops->work(f);
> +		if (err)
> +			dma_fence_set_error(&f->dma, err);
> +	}
>   
>   	fence_complete(f);
>   	dma_fence_put(&f->dma);
> @@ -36,15 +39,10 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
>   		if (fence->error)
>   			dma_fence_set_error(&f->dma, fence->error);
>   
> -		if (!f->dma.error) {
> -			dma_fence_get(&f->dma);
> -			if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
> -				fence_work(&f->work);
> -			else
> -				queue_work(system_unbound_wq, &f->work);
> -		} else {
> -			fence_complete(f);
> -		}
> +		if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
> +			fence_work(&f->work);
> +		else
> +			queue_work(system_unbound_wq, &f->work);
>   		break;
>   
>   	case FENCE_FREE:
> @@ -91,6 +89,8 @@ void dma_fence_work_init(struct dma_fence_work *f,
>   	dma_fence_init(&f->dma, &fence_ops, &f->lock, 0, 0);
>   	i915_sw_fence_init(&f->chain, fence_notify);
>   	INIT_WORK(&f->work, fence_work);
> +
> +	dma_fence_get(&f->dma); /* once for the chain; once for the work */
>   }
>   
>   int dma_fence_work_chain(struct dma_fence_work *f, struct dma_fence *signal)
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
