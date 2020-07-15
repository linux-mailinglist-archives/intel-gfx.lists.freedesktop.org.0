Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECD5220CA5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 14:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97676EB2E;
	Wed, 15 Jul 2020 12:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89CD26EB2E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 12:06:46 +0000 (UTC)
IronPort-SDR: wRV4I9LQwYKbHrNwwbWJ0zcH+gIKSu4r+Bw/iiMMYYYlxn6jpOwve/tDrfA/P6RKk5Wcm78tR+
 ZsYjXq0K2XfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="233986514"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="233986514"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 05:06:46 -0700
IronPort-SDR: SjsjUh/MwCLlivnZPTiaPlEo9hIRkdaMLj1J3Nz/Tg5Nfb0scNvyOAl+ku6ZCbJPLIJspZCD8x
 i/Cr4Ryvtmdw==
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="486219922"
Received: from yluzon-mobl.ger.corp.intel.com (HELO [10.251.165.215])
 ([10.251.165.215])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 05:06:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715105004.17973-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2bbb4568-2f73-bedc-8f3b-726bb19a62f2@linux.intel.com>
Date: Wed, 15 Jul 2020 13:06:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715105004.17973-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce i915_request.lock
 contention for i915_request_wait
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/07/2020 11:50, Chris Wilson wrote:
> Currently, we use i915_request_completed() directly in
> i915_request_wait() and follow up with a manual invocation of
> dma_fence_signal(). This appears to cause a large number of contentions
> on i915_request.lock as when the process is woken up after the fence is
> signaled by an interrupt, we will then try and call dma_fence_signal()
> ourselves while the signaler is still holding the lock.
> dma_fence_is_signaled() has the benefit of checking the
> DMA_FENCE_FLAG_SIGNALED_BIT prior to calling dma_fence_signal() and so
> avoids most of that contention.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 12 ++++--------
>   1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 0b2fe55e6194..bb4eb1a8780e 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1640,7 +1640,7 @@ static bool busywait_stop(unsigned long timeout, unsigned int cpu)
>   	return this_cpu != cpu;
>   }
>   
> -static bool __i915_spin_request(const struct i915_request * const rq, int state)
> +static bool __i915_spin_request(struct i915_request * const rq, int state)
>   {
>   	unsigned long timeout_ns;
>   	unsigned int cpu;
> @@ -1673,7 +1673,7 @@ static bool __i915_spin_request(const struct i915_request * const rq, int state)
>   	timeout_ns = READ_ONCE(rq->engine->props.max_busywait_duration_ns);
>   	timeout_ns += local_clock_ns(&cpu);
>   	do {
> -		if (i915_request_completed(rq))
> +		if (dma_fence_is_signaled(&rq->fence))
>   			return true;
>   
>   		if (signal_pending_state(state, current))
> @@ -1766,10 +1766,8 @@ long i915_request_wait(struct i915_request *rq,
>   	 * duration, which we currently lack.
>   	 */
>   	if (IS_ACTIVE(CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT) &&
> -	    __i915_spin_request(rq, state)) {
> -		dma_fence_signal(&rq->fence);
> +	    __i915_spin_request(rq, state))
>   		goto out;
> -	}
>   
>   	/*
>   	 * This client is about to stall waiting for the GPU. In many cases
> @@ -1796,10 +1794,8 @@ long i915_request_wait(struct i915_request *rq,
>   	for (;;) {
>   		set_current_state(state);
>   
> -		if (i915_request_completed(rq)) {
> -			dma_fence_signal(&rq->fence);
> +		if (dma_fence_is_signaled(&rq->fence))
>   			break;
> -		}
>   
>   		intel_engine_flush_submission(rq->engine);
>   
> 

In other words putting some latency back into the waiters, which is 
probably okay, since sync waits is not our primary model.

I have a slight concern about the remaining value of busy spinning if 
i915_request_completed check is removed from there as well. Of course it 
doesn't make sense to have different completion criteria between the 
two.. We could wait a bit longer if real check in busyspin said request 
is actually completed, just not signal it but wait for the breadcrumbs 
to do it.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
