Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C501CA83A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 12:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8986E0A0;
	Fri,  8 May 2020 10:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51CB66EAD6
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 10:21:36 +0000 (UTC)
IronPort-SDR: EV8Y6N+JUtDkMVirWrvtploi7DJoWQnzs+r5QRa1gloWliLwI66LbaFYpK0QhodHKT+nmeD5R7
 wcqEMK/SsZtA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 03:21:35 -0700
IronPort-SDR: 9SiygAA9geFcfl1nS1+br9vhblpnuNZY/Q/m4VIFsQMq2wlyjK1ro+S76bE9bx/5OO5Y2QhYTu
 PtZPh4s9KGLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,367,1583222400"; d="scan'208";a="305395580"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 08 May 2020 03:21:33 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B1D3C5C1DC1; Fri,  8 May 2020 13:19:25 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200508092933.738-2-chris@chris-wilson.co.uk>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
 <20200508092933.738-2-chris@chris-wilson.co.uk>
Date: Fri, 08 May 2020 13:19:25 +0300
Message-ID: <87imh6ybiq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Pull waiting on an external
 dma-fence into its routine
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

> As a means for a small code consolidation, but primarily to start
> thinking more carefully about internal-vs-external linkage, pull the
> pair of i915_sw_fence_await_dma_fence() calls into a common routine.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index be2ce9065a29..94189c7d43cd 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1067,6 +1067,14 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
>  	return 0;
>  }
>  
> +static int
> +i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
> +{
> +	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
> +					     fence->context ? I915_FENCE_TIMEOUT : 0,
> +					     I915_FENCE_GFP);
> +}
> +
>  int
>  i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
>  {
> @@ -1114,9 +1122,7 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
>  		if (dma_fence_is_i915(fence))
>  			ret = i915_request_await_request(rq, to_request(fence));
>  		else
> -			ret = i915_sw_fence_await_dma_fence(&rq->submit, fence,
> -							    fence->context ? I915_FENCE_TIMEOUT : 0,
> -							    I915_FENCE_GFP);
> +			ret = i915_request_await_external(rq, fence);

For us (rq, rq), for external (rq, fence).

It looks neat for a reader. But then, how can external fence have
a context?

-Mika

>  		if (ret < 0)
>  			return ret;
>  
> @@ -1255,9 +1261,7 @@ i915_request_await_execution(struct i915_request *rq,
>  							     to_request(fence),
>  							     hook);
>  		else
> -			ret = i915_sw_fence_await_dma_fence(&rq->submit, fence,
> -							    I915_FENCE_TIMEOUT,
> -							    GFP_KERNEL);
> +			ret = i915_request_await_external(rq, fence);
>  		if (ret < 0)
>  			return ret;
>  	} while (--nchild);
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
