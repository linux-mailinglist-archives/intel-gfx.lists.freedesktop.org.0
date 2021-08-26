Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A1D3F89B5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 16:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67ACC6E860;
	Thu, 26 Aug 2021 14:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 238796E860;
 Thu, 26 Aug 2021 14:05:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="239945655"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="239945655"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 07:05:28 -0700
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="444567771"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 07:05:27 -0700
Date: Thu, 26 Aug 2021 07:00:18 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniele.ceraolospurio@intel.com
Message-ID: <20210826140016.GA19362@jons-linux-dev-box>
References: <20210826032327.18078-1-matthew.brost@intel.com>
 <20210826032327.18078-9-matthew.brost@intel.com>
 <2aa468eb-e7a8-1617-1b92-7a8f8b6ae015@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2aa468eb-e7a8-1617-1b92-7a8f8b6ae015@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 08/27] drm/i915/selftests: Add a cancel
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 26, 2021 at 10:32:54AM +0100, Tvrtko Ursulin wrote:
> 
> On 26/08/2021 04:23, Matthew Brost wrote:
> > Add a cancel request selftest that results in an engine reset to cancel
> > the request as it is non-preemptable. Also insert a NOP request after
> > the cancelled request and confirm that it completely successfully.
> 
> Which patch fixes a problem this exposes in the execlists implementation?
> 

https://patchwork.freedesktop.org/patch/451421/?series=93704&rev=6

> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/selftests/i915_request.c | 100 ++++++++++++++++++
> >   1 file changed, 100 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> > index d67710d10615..e2c5db77f087 100644
> > --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> > +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> > @@ -772,6 +772,98 @@ static int __cancel_completed(struct intel_engine_cs *engine)
> >   	return err;
> >   }
> > +static int __cancel_reset(struct intel_engine_cs *engine)
> > +{
> > +	struct intel_context *ce;
> > +	struct igt_spinner spin;
> > +	struct i915_request *rq, *nop;
> > +	unsigned long preempt_timeout_ms;
> > +	int err = 0;
> > +
> 
> You may need to skip the test if preempt timeout is compiled out or if GPU
> reset is altogether disabled.
>

Yes, probably. Will fix this.
 
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
> > +	pr_debug("%s: Cancelling active request\n", engine->name);
> 
> "active non-preemptable" perhaps?
> 

Sure.

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
> 
> Maybe s/nop/innocent/ in the respective log messages?
> 

I kinda perfer NOP.

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
> > @@ -804,6 +896,14 @@ static int live_cancel_request(void *arg)
> >   			return err;
> >   		if (err2)
> >   			return err2;
> > +
> > +		/* Expects reset so call outside of igt_live_test_* */
> 
> Hm there are live tests like live_preempt_cancel which seemingly manage to
> do resets under the live test block.
>

You can increment t->reset_global if a GT reset is expected, problem is
only execlists do a GT while GuC submission does a GuC engine based
reset so we'd have to put in a statement like this if was within the
begin / end block:

if !guc
	t->reset_global++

I'd just rather leave it as is rather than baking in execlists / guc
backend specific knowledge into the test.

Matt

> Regards,
> 
> Tvrtko
> 
> > +		err = __cancel_reset(engine);
> > +		if (err)
> > +			return err;
> > +
> > +		if (igt_flush_test(i915))
> > +			return -EIO;
> >   	}
> >   	return 0;
> > 
