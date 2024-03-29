Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAE0891400
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 08:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D8710FF29;
	Fri, 29 Mar 2024 07:09:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mXosKOXi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F6210FF29
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 07:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711696190; x=1743232190;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v45Nv8QB+Vlz4oOG5t2RDz8yG09wJ9LoLWHd3zWwHZk=;
 b=mXosKOXiVhNNWgdTVGiSMAV6nJp7v6xv7rGDF5VN4oSbRuWh/+JFvOjd
 1bwNZKdI7CLnQDftC9XxyuqwBTwH3guK5jbpa94uCXo7j9WzpuF0zISXv
 bkmO+wqhLaYGmFHt4pA0HxgudYhAaoO7L2MnwrIRPv9oDKSybwNfp2zoN
 fz2ji+Z/tDvIum4M2BOrEL9X1jAMk+0lQOY3EI7eNOyMUfc1qlyZfoWwY
 CvXsXbrGEqGDmBoer1uNNp+TNdvSao8zppNb22w+8IrIuVV3rnalt6QZo
 PGB05+MYuF/7/DKoTephDmfmZSqacIJrBhnn0h7RGgwAMw+srpshViryc A==;
X-CSE-ConnectionGUID: mHOe5yo1TdCe10SVAAVxRQ==
X-CSE-MsgGUID: d9Oflq5TRq+r74q5UkLRBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="10693352"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="10693352"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 00:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16860484"
Received: from unknown (HELO intel.com) ([10.247.118.225])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 00:09:44 -0700
Date: Fri, 29 Mar 2024 08:09:38 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, kernel test robot <lkp@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 John Harrison <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Remove bogus null check
Message-ID: <ZgZpMvmRBIBZD4uN@ashyti-mobl2.lan>
References: <20240328213107.90632-1-rodrigo.vivi@intel.com>
 <ZgXkI8tw91z_2RYL@ashyti-mobl2.lan> <ZgYbxYoSChiVRDM2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgYbxYoSChiVRDM2@intel.com>
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

Hi Rodrigo,

On Thu, Mar 28, 2024 at 09:39:17PM -0400, Rodrigo Vivi wrote:
> On Thu, Mar 28, 2024 at 10:41:55PM +0100, Andi Shyti wrote:
> > On Thu, Mar 28, 2024 at 05:31:07PM -0400, Rodrigo Vivi wrote:
> > > This null check is bogus because we are already using 'ce' stuff
> > > in many places before this function is called.
> > > 
> > > Having this here is useless and confuses static analyzer tools
> > > that can see:
> > > 
> > > struct intel_engine_cs *engine = ce->engine;
> > > 
> > > before this check, in the same function.
> > > 
> > > Fixes: cec82816d0d0 ("drm/i915/guc: Use context hints for GT frequency")
> > 
> > there is no need to have the Fixes tag here.
> 
> why not? I imagine distros that have this commit cec82816d0d0 and use
> static analyzers would also want this patch ported to silent those, no?!

Still... it's not a bug. The tag "Fixes:" should be used when a
bug is fixed, but not for harmless static analyzer reports.

Besides, if we want to keep the Fixes tag we should also Cc
stable, i guess checkpatch.pl complains about it.

(BTW, Cc'ed in this mail we have the inventor of the tag and he
can confirm after having had his morning coffee :-) ).

> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > Closes: https://lore.kernel.org/r/202403101225.7AheJhZJ-lkp@intel.com/
> > > Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > > Cc: John Harrison <John.C.Harrison@Intel.com>
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 01d0ec1b30f2..24a82616f844 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -2677,7 +2677,7 @@ static int guc_context_policy_init_v70(struct intel_context *ce, bool loop)
> > >  	execution_quantum = engine->props.timeslice_duration_ms * 1000;
> > >  	preemption_timeout = engine->props.preempt_timeout_ms * 1000;
> > >  
> > > -	if (ce && (ce->flags & BIT(CONTEXT_LOW_LATENCY)))
> > > +	if (ce->flags & BIT(CONTEXT_LOW_LATENCY))
> > 
> > We could keep the check but make it earlier.
> 
> yes, that's another alternative.
> 
> 
> -struct intel_engine_cs *engine = ce->engine;
> +struct intel_engine_cs *engine;
> 
> if (!ce)
>    return;
> 
> engine = ce->engine.

this is what I meant...

> But looking to the 2 places where this function is getting called,
> we already have ce->something used.

... and I also checked where the function is called and how it's
called: I see that if we get here then for sure 'ce' is not NULL.
But for robustness we could still keep it.

Either way I think your patch is good except for the "Fixes:"
tag:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> I can make the change to be like that if you believe that there's
> a possibility in the future that we change that, just to be on
> the safe side.
> 
> or anything else I might be missing?
> 
> Thanks for looking into this,
> Rodrigo.
> 
> > 
> > Thanks,
> > Andi
> > 
> > >  		slpc_ctx_freq_req |= SLPC_CTX_FREQ_REQ_IS_COMPUTE;
> > >  
> > >  	__guc_context_policy_start_klv(&policy, ce->guc_id.id);
> > > -- 
> > > 2.44.0
