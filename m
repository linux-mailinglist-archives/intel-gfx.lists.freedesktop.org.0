Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA7D1CD879
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 13:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642456E43C;
	Mon, 11 May 2020 11:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A286E43C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 11:32:43 +0000 (UTC)
IronPort-SDR: Quk8ZLoyjMsnlvN/cgdhbpWYW38i18vZ0YbM5y9jRRWjYBlmH3zNhAFL7Kynpxji6OnM8mkHHF
 tIkugHsmGvhQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 04:32:43 -0700
IronPort-SDR: y5UKnqq0kOJseRfh5SqEHcSeCihbCUT+ITvWfndTonmzMr+KuAM0aiC2yPFRbaW08ICosobuTy
 AIeCdHEZxb5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; d="scan'208";a="252574564"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 11 May 2020 04:32:42 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B81F35C1DC1; Mon, 11 May 2020 14:30:31 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200511075722.13483-5-chris@chris-wilson.co.uk>
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
 <20200511075722.13483-5-chris@chris-wilson.co.uk>
Date: Mon, 11 May 2020 14:30:31 +0300
Message-ID: <8736864sko.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/20] drm/i915: Tidy awaiting on dma-fences
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

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

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
