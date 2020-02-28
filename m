Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D582B173B0C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 16:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B62016E063;
	Fri, 28 Feb 2020 15:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BAD6E063
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 15:10:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 07:10:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="257137245"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 28 Feb 2020 07:10:40 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1AA3C5C1DAA; Fri, 28 Feb 2020 17:09:28 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200228082330.2411941-18-chris@chris-wilson.co.uk>
References: <20200228082330.2411941-1-chris@chris-wilson.co.uk>
 <20200228082330.2411941-18-chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 17:09:28 +0200
Message-ID: <87zhd27npz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 18/24] drm/i915/selftests: Wait for the
 kernel context switch
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

> As we require a context switch to ensure that the current context is
> switched out and saved to memory, perform an explicit switch to the
> kernel context and wait for it.

The patch subject is not incorrect. Just feels that the kernel
context is a patsy in here.

So I would s/kernel// on subject but keep in commit msg

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 37 +++++++++++++++++++-------
>  1 file changed, 28 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index d7f98aada626..95da6b880e3f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -4015,6 +4015,31 @@ static int emit_semaphore_signal(struct intel_context *ce, void *slot)
>  	return 0;
>  }
>  
> +static int context_sync(struct intel_context *ce)
> +{
> +	struct i915_request *rq;
> +	struct dma_fence *fence;
> +	int err = 0;
> +
> +	rq = intel_engine_create_kernel_request(ce->engine);
> +	if (IS_ERR(rq))
> +		return PTR_ERR(rq);
> +
> +	fence = i915_active_fence_get(&ce->timeline->last_request);
> +	if (fence) {
> +		i915_request_await_dma_fence(rq, fence);
> +		dma_fence_put(fence);
> +	}
> +
> +	rq = i915_request_get(rq);
> +	i915_request_add(rq);
> +	if (i915_request_wait(rq, 0, HZ / 2) < 0)
> +		err = -ETIME;
> +	i915_request_put(rq);
> +
> +	return err;
> +}
> +
>  static int live_lrc_layout(void *arg)
>  {
>  	struct intel_gt *gt = arg;
> @@ -4638,16 +4663,10 @@ static int __lrc_timestamp(const struct lrc_timestamp *arg, bool preempt)
>  		wmb();
>  	}
>  
> -	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
> -		err = -ETIME;
> -		goto err;
> -	}
> -
> -	/* and wait for switch to kernel */
> -	if (igt_flush_test(arg->engine->i915)) {
> -		err = -EIO;
> +	/* and wait for switch to kernel (to save our context to memory) */
> +	err = context_sync(arg->ce[0]);
> +	if (err)
>  		goto err;
> -	}
>  
>  	rmb();

For me the context_sync could be context_flush and it would
allow the rmb() to be snuck inside.

But I seem to gravitate towards lower resolution and
apparently you prefer to be more fine grained and
explicit on callsites so,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  
> -- 
> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
