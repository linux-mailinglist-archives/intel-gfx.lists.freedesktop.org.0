Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 146FA48DD06
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB63910E12F;
	Thu, 13 Jan 2022 17:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD6310E12F;
 Thu, 13 Jan 2022 17:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642095604; x=1673631604;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=U5XR/geO45aB3ZFUzABW9uqQZ5BGjEJym5DpsE62QUc=;
 b=SRJjaM4qyixqSPyVGaTsVyFeanw/po357ZBUvlC3pBAbzVhVPIactnXs
 +JLVvOxssfo5RCo8jcys+G7cWJ8JmarlGLQalY+rpQ97kwDSEo+NTLrIh
 P6bY2RMwFeu+kpo5vwvzujeHcKHIWG1YSQrt5MB4oA/+zpcmfMeMg/wAX
 4w62lXgoz43oR6uWAoupYekUOTVRYXVrkNQ14cjdZeLLUUMrSpN8L2Xf8
 e0FpSrX3hsETo7yVbDPpiJdF0cT8qwxYD+JBGFA2pVEpo721XYJth0qZY
 ATzl9F0gvWCOkiSr9UiSPSQKMoNjoUfqg8V/2yzHbmSInDGi9D1xJDTX+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="243868044"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="243868044"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 09:39:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475418315"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 09:39:58 -0800
Date: Thu, 13 Jan 2022 09:34:08 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20220113173408.GA20135@jons-linux-dev-box>
References: <20220111231109.23244-1-matthew.brost@intel.com>
 <20220111231109.23244-2-matthew.brost@intel.com>
 <5b396396-46c2-30b4-09a6-1d23d474c978@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5b396396-46c2-30b4-09a6-1d23d474c978@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Add a cancel
 request selftest that triggers a reset
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 09:33:12AM -0800, John Harrison wrote:
> On 1/11/2022 15:11, Matthew Brost wrote:
> > Add a cancel request selftest that results in an engine reset to cancel
> > the request as it is non-preemptable. Also insert a NOP request after
> > the cancelled request and confirm that it completes successfully.
> > 
> > v2:
> >   (Tvrtko)
> >    - Skip test if preemption timeout compiled out
> >    - Skip test if engine reset isn't supported
> >    - Update debug prints to be more descriptive
> > v3:
> >    - Add comment explaining test
> > 
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/selftests/i915_request.c | 117 ++++++++++++++++++
> >   1 file changed, 117 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> > index 7f66f6d299b26..f78de99d5ae1e 100644
> > --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> > +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> > @@ -782,6 +782,115 @@ static int __cancel_completed(struct intel_engine_cs *engine)
> >   	return err;
> >   }
> > +/*
> > + * Test to prove a non-preemptable request can be cancelled and a subsequent
> > + * request on the same context can successfully complete after cancallation.
> cancellation
> 

Yep.

> > + *
> > + * Testing methodology is to create non-preemptable request and submit it,
> a non-preemptible
>

Yep.

> > + * wait for spinner to start, create a NOP request and submit it, cancel the
> > + * spinner, wait for spinner to complete and verify it failed with an error,
> > + * finally wait for NOP request to complete verify it succeeded without an
> > + * error. Preemption timeout also reduced / restored so test runs in a timely
> > + * maner.
> > + */
> > +static int __cancel_reset(struct drm_i915_private *i915,
> > +			  struct intel_engine_cs *engine)
> > +{
> > +	struct intel_context *ce;
> > +	struct igt_spinner spin;
> > +	struct i915_request *rq, *nop;
> > +	unsigned long preempt_timeout_ms;
> > +	int err = 0;
> > +
> > +	if (!CONFIG_DRM_I915_PREEMPT_TIMEOUT ||
> Does this matter? The test is overriding the default anyway.
>

Yes. Execlists don't try to preempt anything if
CONFIG_DRM_I915_PREEMPT_TIMEOUT is turned off. If we wan't to avoid the
cancelation doing a full GT reset, CONFIG_DRM_I915_PREEMPT_TIMEOUT
should be turned on.
 
> > +	    !intel_has_reset_engine(engine->gt))
> > +		return 0;
> > +
> > +	preempt_timeout_ms = engine->props.preempt_timeout_ms;
> > +	engine->props.preempt_timeout_ms = 100;
> > +
> > +	if (igt_spinner_init(&spin, engine->gt))
> > +		goto out_restore;
> > +
> > +	ce = intel_context_create(engine);
> > +	if (IS_ERR(ce)) {
> > +		err = PTR_ERR(ce);
> > +		goto out_spin;
> > +	}
> > +
> > +	rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
> > +	if (IS_ERR(rq)) {
> > +		err = PTR_ERR(rq);
> > +		goto out_ce;
> > +	}
> > +
> > +	pr_debug("%s: Cancelling active non-preemptable request\n",
> > +		 engine->name);
> > +	i915_request_get(rq);
> > +	i915_request_add(rq);
> > +	if (!igt_wait_for_spinner(&spin, rq)) {
> > +		struct drm_printer p = drm_info_printer(engine->i915->drm.dev);
> > +
> > +		pr_err("Failed to start spinner on %s\n", engine->name);
> > +		intel_engine_dump(engine, &p, "%s\n", engine->name);
> > +		err = -ETIME;
> > +		goto out_rq;
> > +	}
> > +
> > +	nop = intel_context_create_request(ce);
> > +	if (IS_ERR(nop))
> > +		goto out_nop;
> Should be out_rq?
>

Yes, it should.

Matt

> John.
> 
> 
> > +	i915_request_get(nop);
> > +	i915_request_add(nop);
> > +
> > +	i915_request_cancel(rq, -EINTR);
> > +
> > +	if (i915_request_wait(rq, 0, HZ) < 0) {
> > +		struct drm_printer p = drm_info_printer(engine->i915->drm.dev);
> > +
> > +		pr_err("%s: Failed to cancel hung request\n", engine->name);
> > +		intel_engine_dump(engine, &p, "%s\n", engine->name);
> > +		err = -ETIME;
> > +		goto out_nop;
> > +	}
> > +
> > +	if (rq->fence.error != -EINTR) {
> > +		pr_err("%s: fence not cancelled (%u)\n",
> > +		       engine->name, rq->fence.error);
> > +		err = -EINVAL;
> > +		goto out_nop;
> > +	}
> > +
> > +	if (i915_request_wait(nop, 0, HZ) < 0) {
> > +		struct drm_printer p = drm_info_printer(engine->i915->drm.dev);
> > +
> > +		pr_err("%s: Failed to complete nop request\n", engine->name);
> > +		intel_engine_dump(engine, &p, "%s\n", engine->name);
> > +		err = -ETIME;
> > +		goto out_nop;
> > +	}
> > +
> > +	if (nop->fence.error != 0) {
> > +		pr_err("%s: Nop request errored (%u)\n",
> > +		       engine->name, nop->fence.error);
> > +		err = -EINVAL;
> > +	}
> > +
> > +out_nop:
> > +	i915_request_put(nop);
> > +out_rq:
> > +	i915_request_put(rq);
> > +out_ce:
> > +	intel_context_put(ce);
> > +out_spin:
> > +	igt_spinner_fini(&spin);
> > +out_restore:
> > +	engine->props.preempt_timeout_ms = preempt_timeout_ms;
> > +	if (err)
> > +		pr_err("%s: %s error %d\n", __func__, engine->name, err);
> > +	return err;
> > +}
> > +
> >   static int live_cancel_request(void *arg)
> >   {
> >   	struct drm_i915_private *i915 = arg;
> > @@ -814,6 +923,14 @@ static int live_cancel_request(void *arg)
> >   			return err;
> >   		if (err2)
> >   			return err2;
> > +
> > +		/* Expects reset so call outside of igt_live_test_* */
> > +		err = __cancel_reset(i915, engine);
> > +		if (err)
> > +			return err;
> > +
> > +		if (igt_flush_test(i915))
> > +			return -EIO;
> >   	}
> >   	return 0;
> 
