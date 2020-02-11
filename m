Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 985EE15975C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 18:56:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91E556F3FC;
	Tue, 11 Feb 2020 17:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E48F6F3FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 17:56:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 09:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="222009316"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 11 Feb 2020 09:56:01 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 539F95C0D9B; Tue, 11 Feb 2020 19:55:02 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200211150951.1026811-1-chris@chris-wilson.co.uk>
References: <20200211150951.1026811-1-chris@chris-wilson.co.uk>
Date: Tue, 11 Feb 2020 19:55:02 +0200
Message-ID: <871rr19fgp.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Sabotague the RING_HEAD
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

> Apply vast quantities of poison and not tell anyone to see if we fall
> for the trap of using a stale RING_HEAD.
>
> References: 42827350f75c ("drm/i915/gt: Avoid resetting ring->head outside of its timeline mutex")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 75 ++++++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 82fa0712808e..1421dc2db7cf 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -300,6 +300,80 @@ static int live_unlite_preempt(void *arg)
>  	return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
>  }
>  
> +static int live_pin_rewind(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	int err = 0;
> +
> +	/*
> +	 * We have to be careful not to trust intel_ring too much, for example
> +	 * ring->head is updated upon retire which is out of sync with pinning
> +	 * the context. Thus we cannot use ring->head to set CTX_RING_HEAD,
> +	 * or else we risk writing an older, stale value.
> +	 *
> +	 * To simulate this, let's apply a bit of deliberate sabotague.
> +	 */
> +
> +	for_each_engine(engine, gt, id) {
> +		struct intel_context *ce;
> +		struct i915_request *rq;
> +		struct igt_live_test t;
> +
> +		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
> +			err = -EIO;
> +			break;
> +		}
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			break;
> +		}
> +
> +		err = intel_context_pin(ce);
> +		if (err) {
> +			intel_context_put(ce);
> +			break;
> +		}
> +
> +		/* Keep the context awake while we play games */
> +		err = i915_active_acquire(&ce->active);
> +		if (err) {
> +			intel_context_unpin(ce);
> +			intel_context_put(ce);
> +			break;
> +		}
> +
> +		/* Poison the head of the ring */
> +		memset32(ce->ring->vaddr, STACK_MAGIC, 1024);

I got affidavit that this will change to poisoning the whole
ring according to size.

> +		ce->ring->emit = 1024;
> +		ce->ring->tail = 1024;
> +
> +		intel_context_unpin(ce);
> +
> +		/* Submit a simple nop request */
> +		GEM_BUG_ON(intel_context_is_pinned(ce));
> +		rq = intel_context_create_request(ce);

The request get the head from ring->emit at this point.
Perhaps there are more nyances but this will atleast test
the boundaries of request emission.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +		i915_active_release(&ce->active); /* e.g. async retire */
> +		intel_context_put(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			break;
> +		}
> +		i915_request_add(rq);
> +
> +		/* Expect not to hang! */
> +		if (igt_live_test_end(&t)) {
> +			err = -EIO;
> +			break;
> +		}
> +	}
> +
> +	return err;
> +}
> +
>  static int live_hold_reset(void *arg)
>  {
>  	struct intel_gt *gt = arg;
> @@ -3616,6 +3690,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_sanitycheck),
>  		SUBTEST(live_unlite_switch),
>  		SUBTEST(live_unlite_preempt),
> +		SUBTEST(live_pin_rewind),
>  		SUBTEST(live_hold_reset),
>  		SUBTEST(live_error_interrupt),
>  		SUBTEST(live_timeslice_preempt),
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
