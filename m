Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B59D471147
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 04:37:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1795310E35E;
	Sat, 11 Dec 2021 03:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A70F10E2D0;
 Sat, 11 Dec 2021 03:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639193822; x=1670729822;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aszu+NnniLpH9hpF+Bq+Ga5LcrIHUrjR5xlT9PROAmI=;
 b=a9CDrd1ijLq/NYyKX5EU03AW+ICj2n7fL5bUsuZJePl+GOuOKbLKRSNy
 oGcT0n8GF7mAJl3g/VnUKcyhsV0zt+laP2N3DSwP7Dxj3fvoWHFOKGc93
 CwZa1fGgJGSQ2XLyGXAnBZcshuQyu/O99hMs9rcgASzPOAD54fP7gIYDf
 Sp9zrfwGh9M7D/WzmIscSirZUu9LhzR/5xrjqz2ALKND2P8dA55Ep7nR2
 4QwF6KYkTBi6UmrKMsa6qU7picYlUH+As2nTONafKzQcctapWn09Ncq94
 H0Yb9gxUa2YqBMOVDvmY8poeZqxUh2Tw7nKlhvFVAk7Np7Tfkwjl/cuDh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="225367385"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="225367385"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 19:37:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="680978890"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 19:37:01 -0800
Date: Fri, 10 Dec 2021 19:31:37 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20211211033137.GA8899@jons-linux-dev-box>
References: <20211211005612.8575-1-matthew.brost@intel.com>
 <20211211005612.8575-8-matthew.brost@intel.com>
 <111dd483-dff5-2e60-2913-e6bacf35dda9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <111dd483-dff5-2e60-2913-e6bacf35dda9@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/guc: Selftest for stealing of
 guc ids
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

On Fri, Dec 10, 2021 at 05:33:02PM -0800, John Harrison wrote:
> On 12/10/2021 16:56, Matthew Brost wrote:
> > Testing the stealing of guc ids is hard from user spaec as we have 64k
> spaec -> space
> 
> > guc_ids. Add a selftest, which artificially reduces the number of guc
> > ids, and forces a steal. Details of test has comment in code so will not
> has -> are
> 

Yep.

> But would a copy&paste really be so hard? It is useful to be able to read
> what a patch does from the commit log and not have to delve inside every
> time.
> 

Will c & p.

> 
> > repeat here.
> > 
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  12 ++
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  15 +-
> >   drivers/gpu/drm/i915/gt/uc/selftest_guc.c     | 171 ++++++++++++++++++
> >   3 files changed, 193 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > index 1cb46098030d..307380a2e2ff 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > @@ -94,6 +94,11 @@ struct intel_guc {
> >   		 * @guc_ids: used to allocate new guc_ids, single-lrc
> >   		 */
> >   		struct ida guc_ids;
> > +		/**
> > +		 * @num_guc_ids: Number of guc_ids, selftest feature to be able
> > +		 * to reduce this number of test.
> of test -> while testing
> 
> Should have a CONFIG_SELFTEST around it? And define a wrapper that is
> GUC_MAX_LRC_DESCRIPTORS or num_guc_ids as appropriate.
> 
> 
> > +		 */
> > +		int num_guc_ids;
> >   		/**
> >   		 * @guc_ids_bitmap: used to allocate new guc_ids, multi-lrc
> >   		 */
> > @@ -202,6 +207,13 @@ struct intel_guc {
> >   		 */
> >   		struct delayed_work work;
> >   	} timestamp;
> > +
> > +#ifdef CONFIG_DRM_I915_SELFTEST
> > +	/**
> > +	 * @number_guc_id_stole: The number of guc_ids that have been stole
> > +	 */
> > +	int number_guc_id_stole;
> stole -> stolen (in all three cases)
> 

Sure.

> > +#endif
> >   };
> >   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 96fcf869e3ff..57019b190bfb 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -145,7 +145,7 @@ guc_create_parallel(struct intel_engine_cs **engines,
> >    * use should be low and 1/16 should be sufficient. Minimum of 32 guc_ids for
> >    * multi-lrc.
> >    */
> > -#define NUMBER_MULTI_LRC_GUC_ID		(GUC_MAX_LRC_DESCRIPTORS / 16)
> > +#define NUMBER_MULTI_LRC_GUC_ID(guc)	(guc->submission_state.num_guc_ids / 16)
> And keep the original definition for the non CONFIG_SELFTEST case?
>

Probably could hide submission_state.num_guc_ids behind a
CONFIG_SELFTEST define but SRIOV needs this anyways so didn't bother. If
you insist can I hide this.
 
> >   /*
> >    * Below is a set of functions which control the GuC scheduling state which
> > @@ -1775,7 +1775,7 @@ int intel_guc_submission_init(struct intel_guc *guc)
> >   		  destroyed_worker_func);
> >   	guc->submission_state.guc_ids_bitmap =
> > -		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID, GFP_KERNEL);
> > +		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
> >   	if (!guc->submission_state.guc_ids_bitmap)
> >   		return -ENOMEM;
> > @@ -1869,13 +1869,13 @@ static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   	if (intel_context_is_parent(ce))
> >   		ret = bitmap_find_free_region(guc->submission_state.guc_ids_bitmap,
> > -					      NUMBER_MULTI_LRC_GUC_ID,
> > +					      NUMBER_MULTI_LRC_GUC_ID(guc),
> >   					      order_base_2(ce->parallel.number_children
> >   							   + 1));
> >   	else
> >   		ret = ida_simple_get(&guc->submission_state.guc_ids,
> > -				     NUMBER_MULTI_LRC_GUC_ID,
> > -				     GUC_MAX_LRC_DESCRIPTORS,
> > +				     NUMBER_MULTI_LRC_GUC_ID(guc),
> > +				     guc->submission_state.num_guc_ids,
> >   				     GFP_KERNEL | __GFP_RETRY_MAYFAIL |
> >   				     __GFP_NOWARN);
> >   	if (unlikely(ret < 0))
> > @@ -1941,6 +1941,10 @@ static int steal_guc_id(struct intel_guc *guc, struct intel_context *ce)
> >   		set_context_guc_id_invalid(cn);
> > +#ifdef CONFIG_DRM_I915_SELFTEST
> > +		guc->number_guc_id_stole++;
> > +#endif
> > +
> >   		return 0;
> >   	} else {
> >   		return -EAGAIN;
> > @@ -3779,6 +3783,7 @@ static bool __guc_submission_selected(struct intel_guc *guc)
> >   void intel_guc_submission_init_early(struct intel_guc *guc)
> >   {
> > +	guc->submission_state.num_guc_ids = GUC_MAX_LRC_DESCRIPTORS;
> >   	guc->submission_supported = __guc_submission_supported(guc);
> >   	guc->submission_selected = __guc_submission_selected(guc);
> >   }
> > diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
> > index fb0e4a7bd8ca..9ab355e64b3f 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
> > @@ -3,8 +3,21 @@
> >    * Copyright �� 2021 Intel Corporation
> >    */
> > +#include "selftests/igt_spinner.h"
> >   #include "selftests/intel_scheduler_helpers.h"
> > +static int request_add_spin(struct i915_request *rq, struct igt_spinner *spin)
> > +{
> > +	int err = 0;
> > +
> > +	i915_request_get(rq);
> > +	i915_request_add(rq);
> > +	if (spin && !igt_wait_for_spinner(spin, rq))
> > +		err = -ETIMEDOUT;
> > +
> > +	return err;
> > +}
> > +
> >   static struct i915_request *nop_user_request(struct intel_context *ce,
> >   					     struct i915_request *from)
> >   {
> > @@ -110,10 +123,168 @@ static int intel_guc_scrub_ctbs(void *arg)
> >   	return ret;
> >   }
> > +/*
> > + * intel_guc_steal_guc_ids - Test to exhaust all guc_ids and then steal one
> > + *
> > + * This test creates a spinner to which is used as to block all subsequent
> to which -> which
> as to block -> to block
> 
> > + * submissions until it completes. Next, a loop creates a context and a NOP
> > + * request each iteration until the guc_ids are exhausted (request creation
> > + * returns -EAGAIN). The spinner is completed unblocking all requests created in
> spinner is ended,
> 
> > + * the loop. At this point all guc_ids are exhausted but are available to steal.
> > + * Try to create another request which should successfully steal a guc_id. Wait
> > + * on last request to complete, idle GPU, verify guc_id was stole via counter,
> stole -> stolen
> 
> > + * and exit test. Test also artificially reduces the number of guc_ids so the
> > + * test runs in a timely manner.
> > + */
> > +static int intel_guc_steal_guc_ids(void *arg)
> > +{
> > +	struct intel_gt *gt = arg;
> > +	struct intel_guc *guc = &gt->uc.guc;
> > +	int ret, sv, i = 0;
> > +	intel_wakeref_t wakeref;
> > +	struct intel_engine_cs *engine;
> > +	struct intel_context **ce;
> > +	struct igt_spinner spin;
> > +	struct i915_request *spin_rq = NULL, *rq, *last = NULL;
> > +	int number_guc_id_stole = guc->number_guc_id_stole;
> stole -> stolen

Yep to all of the above.

> 
> > +
> > +	ce = kzalloc(sizeof(*ce) * GUC_MAX_LRC_DESCRIPTORS, GFP_KERNEL);
> > +	if (!ce) {
> > +		pr_err("Context array allocation failed\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> > +	engine = intel_selftest_find_any_engine(gt);
> > +	sv = guc->submission_state.num_guc_ids;
> > +	guc->submission_state.num_guc_ids = 4096;
> > +
> > +	/* Create spinner to block requests in below loop */
> > +	ce[i++] = intel_context_create(engine);
> > +	if (IS_ERR(ce[i - 1])) {
> > +		ce[i - 1] = NULL;
> > +		ret = PTR_ERR(ce[i - 1]);
> Would be less peculiar looking to do the i++ after the if statement.
> 

I guess?

> > +		pr_err("Failed to create context: %d\n", ret);
> > +		goto err_wakeref;
> > +	}
> > +	ret = igt_spinner_init(&spin, engine->gt);
> > +	if (ret) {
> > +		pr_err("Failed to create spinner: %d\n", ret);
> > +		goto err_contexts;
> > +	}
> > +	spin_rq = igt_spinner_create_request(&spin, ce[i - 1], MI_ARB_CHECK);
> > +	if (IS_ERR(spin_rq)) {
> > +		ret = PTR_ERR(spin_rq);
> > +		pr_err("Failed to create spinner request: %d\n", ret);
> > +		goto err_contexts;
> > +	}
> > +	ret = request_add_spin(spin_rq, &spin);
> > +	if (ret) {
> > +		pr_err("Failed to add Spinner request: %d\n", ret);
> > +		goto err_spin_rq;
> > +	}
> > +
> > +	/* Use all guc_ids */
> > +	while (ret != -EAGAIN) {
> > +		ce[i++] = intel_context_create(engine);
> > +		if (IS_ERR(ce[i - 1])) {
> > +			ce[i - 1] = NULL;
> > +			ret = PTR_ERR(ce[i - 1]);
> > +			pr_err("Failed to create context: %d\n", ret);
> > +			goto err_spin_rq;
> Won't this try to put the null context? Or rather will see the null context
> and immediately abort the clean up loop. Need to do the i++ after the if
> statement. Or after the nop_user_request call to get rid of all the ce[i -
> 1] things.
>

Sure. Can refactor this.

Matt
 
> John.
> 
> > +		}
> > +
> > +		rq = nop_user_request(ce[i - 1], spin_rq);
> > +		if (IS_ERR(rq)) {
> > +			ret = PTR_ERR(rq);
> > +			rq = NULL;
> > +			if (ret != -EAGAIN) {
> > +				pr_err("Failed to create request, %d: %d\n", i,
> > +				       ret);
> > +				goto err_spin_rq;
> > +			}
> > +		} else {
> > +			if (last)
> > +				i915_request_put(last);
> > +			last = rq;
> > +		}
> > +	}
> > +
> > +	/* Release blocked requests */
> > +	igt_spinner_end(&spin);
> > +	ret = intel_selftest_wait_for_rq(spin_rq);
> > +	if (ret) {
> > +		pr_err("Spin request failed to complete: %d\n", ret);
> > +		i915_request_put(last);
> > +		goto err_spin_rq;
> > +	}
> > +	i915_request_put(spin_rq);
> > +	igt_spinner_fini(&spin);
> > +	spin_rq = NULL;
> > +
> > +	/* Wait for last request */
> > +	ret = i915_request_wait(last, 0, HZ * 30);
> > +	i915_request_put(last);
> > +	if (ret < 0) {
> > +		pr_err("Last request failed to complete: %d\n", ret);
> > +		goto err_spin_rq;
> > +	}
> > +
> > +	/* Try to steal guc_id */
> > +	rq = nop_user_request(ce[i - 1], NULL);
> > +	if (IS_ERR(rq)) {
> > +		ret = PTR_ERR(rq);
> > +		pr_err("Failed to steal guc_id, %d: %d\n", i, ret);
> > +		goto err_spin_rq;
> > +	}
> > +
> > +	/* Wait for last request */
> > +	ret = i915_request_wait(rq, 0, HZ);
> > +	i915_request_put(rq);
> > +	if (ret < 0) {
> > +		pr_err("Last request failed to complete: %d\n", ret);
> > +		goto err_spin_rq;
> > +	}
> > +
> > +	/* Wait for idle */
> > +	ret = intel_gt_wait_for_idle(gt, HZ * 30);
> > +	if (ret < 0) {
> > +		pr_err("GT failed to idle: %d\n", ret);
> > +		goto err_spin_rq;
> > +	}
> > +
> > +	/* Verify a guc_id got stole */
> > +	if (guc->number_guc_id_stole == number_guc_id_stole) {
> > +		pr_err("No guc_ids stolen");
> > +		ret = -EINVAL;
> > +	} else {
> > +		ret = 0;
> > +	}
> > +
> > +err_spin_rq:
> > +	if (spin_rq) {
> > +		igt_spinner_end(&spin);
> > +		intel_selftest_wait_for_rq(spin_rq);
> > +		i915_request_put(spin_rq);
> > +		igt_spinner_fini(&spin);
> > +		intel_gt_wait_for_idle(gt, HZ * 30);
> > +	}
> > +err_contexts:
> > +	while (i && ce[--i])
> > +		intel_context_put(ce[i]);
> > +err_wakeref:
> > +	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
> > +	kfree(ce);
> > +	guc->submission_state.num_guc_ids = sv;
> > +
> > +	return ret;
> > +}
> > +
> >   int intel_guc_live_selftests(struct drm_i915_private *i915)
> >   {
> >   	static const struct i915_subtest tests[] = {
> >   		SUBTEST(intel_guc_scrub_ctbs),
> > +		SUBTEST(intel_guc_steal_guc_ids),
> >   	};
> >   	struct intel_gt *gt = &i915->gt;
> 
