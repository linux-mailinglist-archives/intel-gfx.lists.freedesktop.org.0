Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F82619F58E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 14:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F826E394;
	Mon,  6 Apr 2020 12:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B43036E394
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 12:07:09 +0000 (UTC)
IronPort-SDR: 8ZrMlbodwHP0QS0h7iNGfClPQSNzxER3ZaDIFtDZ5yMa/0ROUrCB7Cn2W/5h72yaK2rwREFXil
 pZcUMKNxDxOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 05:07:09 -0700
IronPort-SDR: DJ0X5qIaTo4nrBNUs7HJ/3ywfeWbE5+OVWeCaP0w1DTrRgRdaPeMiGBqzcHk4vCYszq9AttXxy
 dXUBVqQbiL/w==
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="285865069"
Received: from nlevi-mobl.ger.corp.intel.com (HELO [10.251.172.194])
 ([10.251.172.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 05:07:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200406091254.17675-1-chris@chris-wilson.co.uk>
 <20200406091254.17675-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <88760bf9-7f57-f74a-d44a-733d48fdecd5@linux.intel.com>
Date: Mon, 6 Apr 2020 13:07:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200406091254.17675-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/gem: Wait until the context is
 finally retired before releasing engines
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


On 06/04/2020 10:12, Chris Wilson wrote:
> If we want to percolate information back from the HW, up through the GEM
> context, we need to wait until the intel_context is scheduled out for
> the last time. This is handled by the retirement of the intel_context's
> barrier, i.e. by listening to the pulse after the notional unpin. So
> wait until the intel_context is finally retired before releasing the
> engine, so that we can inspect the final context state and pass it on.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 16 ++++++----------
>   1 file changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 2b6dd08de6f1..11d9135cf21a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -570,23 +570,19 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>   	engines->ctx = i915_gem_context_get(ctx);
>   
>   	for_each_gem_engine(ce, engines, it) {
> -		struct dma_fence *fence;
> -		int err = 0;
> +		int err;
>   
>   		/* serialises with execbuf */
>   		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
>   		if (!intel_context_pin_if_active(ce))
>   			continue;
>   
> -		fence = i915_active_fence_get(&ce->timeline->last_request);
> -		if (fence) {
> -			err = i915_sw_fence_await_dma_fence(&engines->fence,
> -							    fence, 0,
> -							    GFP_KERNEL);
> -			dma_fence_put(fence);
> -		}
> +		/* Wait until context is finally scheduled out and retired */
> +		err = i915_sw_fence_await_active(&engines->fence,
> +						 &ce->active,
> +						 I915_ACTIVE_AWAIT_BARRIER);
>   		intel_context_unpin(ce);
> -		if (err < 0)
> +		if (err)
>   			goto kill;
>   	}
>   
> 

This one is fine once I figure out the previous one. :)

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
