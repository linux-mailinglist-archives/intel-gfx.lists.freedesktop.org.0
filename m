Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D91327BDA2D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 13:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089FA10E0F3;
	Mon,  9 Oct 2023 11:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA6610E0F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 11:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696851669; x=1728387669;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bcGVPz8EZ3rBexXmck3ZXjQ3Hlz7LLuyDgpWi1cLjUU=;
 b=JeyQmPRMzPrslVPJ4BoZqjdow+9E3o12iWpXuViLDxSFqWDb2fBww6Qj
 1YYTo73+A8Vlz5GFGIL1QyTEJi0f0oiBKHLYmXBndY+xya1PCws52Suwx
 FzO6QJmXp8YuIMv35cZ3h9UOLfADLXHY5KW9rJryBJSQDkx/dOZSkEKX5
 81REjAcOon3tKLpc7lvbxmGxgm4jyv1Tq2Cmh/M1i+4DyNyMkFngCuG/d
 V+B3ocS8EL9zvrv2C0LlneMzSsglU7jJ+zUOPGY3Te1EfaxMe8qdX53HZ
 sMKBUWPsq7A+aiBmxDgNhGLQ9tkGQye2pFhq0M2uA7Qy6aR+sZGU/xzzs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="387986347"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="387986347"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 04:41:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="843674537"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="843674537"
Received: from ibrahim2-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.213.42.185])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 04:41:00 -0700
Date: Mon, 9 Oct 2023 13:40:54 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZSPmxlfTx2oQ2Ns4@ashyti-mobl2.lan>
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
 <20231006182051.1599923-4-jonathan.cavitt@intel.com>
 <d6051b4f-dc0a-2df7-71ca-5bf9ec209d27@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6051b4f-dc0a-2df7-71ca-5bf9ec209d27@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 3/7] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

...

> > @@ -131,11 +132,23 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
> >   		return;
> >   	with_intel_gt_pm_if_awake(gt, wakeref) {
> > +		struct intel_guc *guc = &gt->uc.guc;
> > +
> >   		mutex_lock(&gt->tlb.invalidate_lock);
> >   		if (tlb_seqno_passed(gt, seqno))
> >   			goto unlock;
> > -		mmio_invalidate_full(gt);
> > +		if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> > +			/*
> > +			 * Only perform GuC TLB invalidation if GuC is ready.
> > +			 * If GuC is not ready, then there are no TLBs to
> > +			 * invalidate.  Ergo, skip invalidation.
> > +			 */
> > +			if (intel_guc_is_ready(guc))
> > +				intel_guc_invalidate_tlb_engines(guc);
> 
> What was the answer to John's question on why it is okay to just skip and
> not maybe fall back to mmio?

this maybe can be written as:

	if (HAS_GUC_TLB_INVALIDATION(gt->i915) &&
	    intel_guc_is_ready(guc))
		intel_guc_invalidate_tlb_engines(guc);
	else
		mmio_invalidate_full(gt);

> > +		} else {
> > +			mmio_invalidate_full(gt);
> > +		}
> >   		write_seqcount_invalidate(&gt->tlb.seqno);
> >   unlock:

...

> > +	/*
> > +	 * The full GT reset will have cleared the TLB caches and flushed the
> > +	 * G2H message queue; we can release all the blocked waiters.
> > +	 *
> > +	 * This is safe to do unlocked because the xarray is not dependent
> > +	 * on the GT reset, and there's a separate execution path for TLB
> > +	 * invalidations on GT reset, and there's a large window of time
> > +	 * between the GT reset and GuC becoming available.
> > +	 */
> > +	xa_for_each(&guc->tlb_lookup, i, wait)
> > +		wake_up(&wait->wq);
> 
> If you are confident there can be no failures to wake up someone, who maybe
> just added themselves to the xarray (via put pages for instance), while
> reset in ongoing. Or even removed themselves after say timing out the wait
> and so freed their entry...

I guess yuo are suggesting here to spinlock around this. The
reset is protected by the uncore->spinlock, but I don't really
see it colliding with reset, to be honest.

> >   }
> >   static void guc_cancel_context_requests(struct intel_context *ce)
> > @@ -1948,6 +1962,50 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
> >   static void destroyed_worker_func(struct work_struct *w);
> >   static void reset_fail_worker_func(struct work_struct *w);
> > +static int init_tlb_lookup(struct intel_guc *guc)
> > +{
> > +	struct intel_guc_tlb_wait *wait;
> > +	int err;
> > +
> > +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> > +		return 0;
> > +
> > +	xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
> > +
> > +	wait = kzalloc(sizeof(*wait), GFP_KERNEL);
> > +	if (!wait)
> > +		return -ENOMEM;
> > +
> > +	init_waitqueue_head(&wait->wq);
> > +
> > +	/* Preallocate a shared id for use under memory pressure. */
> > +	err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
> > +				  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
> > +	/* Only error if out of memory, not when busy (list full)*/
> > +	if (err == -ENOMEM) {
> > +		kfree(wait);
> > +		return err;
> > +	}
> 
> I agreed with John here that only looking at ENOMEM reads odd and I did not
> see that answered. Did I miss it?

xa_alloc_cyclic_irq() can also fail with -EBUSY... so that I
think this is a matter...

> Otherwise, I _know_ it is not likely to get any other error having *just*
> created a new xarray, but still, why not simply catch all? It is not like
> the slot fallback code at runtime would handle guc->serial_slot being
> empty?! It appears it would just explode in guc_send_invalidate_tlb if it
> would hit it..

... of what we want to do for such errors. E.g. Jonathan decided
here not to fail, but ignore the error. Should we fail for every
error?

> > +
> > +	return 0;
> > +}
> > +
> > +static void fini_tlb_lookup(struct intel_guc *guc)
> > +{
> > +	struct intel_guc_tlb_wait *wait;
> > +
> > +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> > +		return;
> > +
> > +	wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
> > +	if (wait) {
> > +		guc_dbg(guc, "fini_tlb_lookup: Unexpected item in tlb_lookup\n");
> 
> Hm wait, why is this unexpected when init_tlb_lookup() pre-allocated that
> entry? Who frees it? guc_send_invalidate_tlb() does not appear to.

I think this links with my answer above, right? With th
refactoring of the if's for not skipping tlb invalidation.

> > +		kfree(wait);
> > +	}
> > +
> > +	xa_destroy(&guc->tlb_lookup);
> > +}
> > +
> >   /*
> >    * Set up the memory resources to be shared with the GuC (via the GGTT)
> >    * at firmware loading time.

...

> > +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, u32 size, u32 len, u32 seqno)
> > +{
> > +	/* Check for underflow */
> > +	if (unlikely(len < 1 || len > size))
> > +		return -EPROTO;
> 
> These check are not valid for any message/action type ct_process_request()
> can receive?

You mean discriminating by payload? Jonathan... you konw the
details here?
