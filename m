Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A971CB3FE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 17:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 938B16E25C;
	Fri,  8 May 2020 15:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB246E25C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 15:52:32 +0000 (UTC)
IronPort-SDR: ZR9SOr0eub4j3MIJspl95vfPptkWpbmPkA0cVYvP/TiVhZzeB9fPViUuOzFhpeUDPpQDK96BK1
 V0lp7c4A1/Dw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 08:52:31 -0700
IronPort-SDR: hx7LxWbPl/KE9wfsUBTzJy7gRyV0bdvIyP15mmhZtLpb1lGXC+ythMuKxxg+zUBNNT0Y/ZAn7D
 0mf+zmylPrCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,368,1583222400"; d="scan'208";a="370539127"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 08 May 2020 08:52:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EE7425C1DC1; Fri,  8 May 2020 18:50:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200508092933.738-4-chris@chris-wilson.co.uk>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
 <20200508092933.738-4-chris@chris-wilson.co.uk>
Date: Fri, 08 May 2020 18:50:22 +0300
Message-ID: <87blmy4e9t.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Tidy awaiting on dma-fences
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Just tidy up the return handling for completed dma-fences. While it may
> return errors for invalid fence, we already know that we have a good
> fence and the only error will be an already signaled fence.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_sw_fence.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index 7daf81f55c90..295b9829e2da 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -546,13 +546,11 @@ int __i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
>  	cb->fence = fence;
>  	i915_sw_fence_await(fence);
>  
> -	ret = dma_fence_add_callback(dma, &cb->base, __dma_i915_sw_fence_wake);
> -	if (ret == 0) {
> -		ret = 1;
> -	} else {
> +	ret = 1;
> +	if (dma_fence_add_callback(dma, &cb->base, __dma_i915_sw_fence_wake)) {
> +		/* fence already signaled */

This seems to hold water now. Perhaps for eternity.

But how about if (dma_fence_add_callback() == -ENOENT) ret = 0; else
GEM_BUG_ON()?
-Mika

>  		__dma_i915_sw_fence_wake(dma, &cb->base);
> -		if (ret == -ENOENT) /* fence already signaled */
> -			ret = 0;
> +		ret = 0;
>  	}
>  
>  	return ret;
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
