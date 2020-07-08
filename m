Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47462218712
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 14:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C156E8BB;
	Wed,  8 Jul 2020 12:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7CC6E8BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 12:18:26 +0000 (UTC)
IronPort-SDR: ner7nMsWhfCTNpc5BDwtrC1uZ9d37BmBbNv6dseU9N+KwpcWcDy+XIHlM/OAMI4mWXeCPJPf5X
 t4xe6ZwHHDuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="135244697"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="135244697"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 05:18:25 -0700
IronPort-SDR: bue4AGoPHUHC8jhALcPyz5C2d+xMMkmSGz+dtnFN8+U2sHv8LPFOXJL4iQ1iMdPYI27CqjFN9e
 gq7UOW+TegvA==
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="457483983"
Received: from ipeer3-mobl.ger.corp.intel.com (HELO [10.214.241.189])
 ([10.214.241.189])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 05:18:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a63b3ab4-eca9-f804-2313-3dfdb6c60c0a@linux.intel.com>
Date: Wed, 8 Jul 2020 13:18:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/20] drm/i915: Always defer fenced work to
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


On 06/07/2020 07:19, Chris Wilson wrote:
> Currently, if an error is raised we always call the cleanup locally
> [and skip the main work callback]. However, some future users may need
> to take a mutex to cleanup and so we cannot immediately execute the
> cleanup as we may still be in interrupt context.
> 
> With the execute-immediate flag, for most cases this should result in
> immediate cleanup of an error.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_sw_fence_work.c | 25 +++++++++++------------
>   1 file changed, 12 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
> index a3a81bb8f2c3..29f63ebc24e8 100644
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
> @@ -36,15 +39,11 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
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
> +		dma_fence_get(&f->dma);
> +		if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
> +			fence_work(&f->work);
> +		else
> +			queue_work(system_unbound_wq, &f->work);

Right the commit wording really confused me since it is obviously still 
deferring stuff to the worker. By "fenced work" I understand you 
actually mean more like "never signal non-immediate work from the notify 
callback" (even in the error case).

Regards,

Tvrtko

>   		break;
>   
>   	case FENCE_FREE:
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
