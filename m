Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E42A8476E4C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 10:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3AB10E47C;
	Thu, 16 Dec 2021 09:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6733C10E47C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 09:52:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="226734753"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="226734753"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 01:52:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="506213011"
Received: from brazx-mobl.ger.corp.intel.com (HELO [10.213.247.73])
 ([10.213.247.73])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 01:52:28 -0800
Message-ID: <34cad263-fd2d-ec7c-a5c5-2f782c885218@linux.intel.com>
Date: Thu, 16 Dec 2021 09:52:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211209120134.4057906-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211209120134.4057906-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: prepare reset based on reset
 domain
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



On 09/12/2021 12:01, Tejas Upadhyay wrote:
> Most code paths does full reset with preparing all
> engines for reset except below two :
> 
> 1. Single engine reset needs to prepare engines for
> reset based on its reset domain. In __intel_engine
> _reset_bh is a place needs loop over to do engine
> prepare for all engines which are in same reset
> domain before triggering reset.
> 
> 2. enable_error_interrupt() in drivers/gpu/drm/i915/
> gt/intel_execlists_submission.c needs similar change.
> 
> whenever there is full reset done, engine prepare for
> all engines are already being called right now before
> actual reset triggered, except above two scenario
> seeking single engine reset.
> 
> Note: Requirement of this change is occurred recently
> because whenever engine does reset, all engines in
> same reset domain gets reset and in case engine goes
> for reset before stopping CS or applying required W/A,
> there are high chances of hang/crash. reset_prepare_
> engine takes care of it.

On the trivial level, please wrap your commit messages to standard 75 
wide. See Documentation/process/submitting-patches.rst.

> 
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c |  9 +++++++++
>   drivers/gpu/drm/i915/gt/intel_reset.c                | 12 ++++++++++--
>   drivers/gpu/drm/i915/gt/intel_reset.h                |  1 +
>   3 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index a69df5e9e77a..668e7ba5b254 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2806,6 +2806,15 @@ static void enable_error_interrupt(struct intel_engine_cs *engine)
>   		drm_err(&engine->i915->drm,
>   			"engine '%s' resumed still in error: %08x\n",
>   			engine->name, status);
> +		if (engine->reset_domain) {
> +			struct intel_engine_cs *nengine;
> +			enum intel_engine_id id;
> +
> +			for_each_engine(nengine, engine->gt, id)
> +				if (nengine->reset_domain ==
> +				    engine->reset_domain)
> +					reset_prepare_engine(nengine);
> +		}
>   		__intel_gt_reset(engine->gt, engine->mask);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 63199f0550e6..454d6ab1d9f4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -705,7 +705,7 @@ int intel_reset_guc(struct intel_gt *gt)
>    * Ensure irq handler finishes, and not run again.
>    * Also return the active request so that we only search for it once.
>    */
> -static void reset_prepare_engine(struct intel_engine_cs *engine)
> +void reset_prepare_engine(struct intel_engine_cs *engine)
>   {
>   	/*
>   	 * During the reset sequence, we must prevent the engine from
> @@ -1167,7 +1167,15 @@ int __intel_engine_reset_bh(struct intel_engine_cs *engine, const char *msg)
>   	if (!intel_engine_pm_get_if_awake(engine))
>   		return 0;
>   
> -	reset_prepare_engine(engine);
> +	if (engine->reset_domain) {

Can it be zero?

> +		struct intel_engine_cs *nengine;
> +		enum intel_engine_id id;
> +
> +		for_each_engine(nengine, gt, id)
> +			if (nengine->reset_domain ==
> +			    engine->reset_domain)
> +				reset_prepare_engine(nengine);

Having glanced over the discussion about the workaround you are trying 
to implement a few times, this is what I think.

First of all I think you are definitely missing the engine resume side 
of things. Consider this entry point:

execlists_submission_tasklet
  execlists_reset
   intel_engine_reset
    __intel_engine_reset_bh

AFAICT you can halt more than one engine but you will not resume them 
all. What I mean here is that __intel_engine_reset, intel_engine_resume, 
reset_finish_engine and even the engine pm management end up being 
called for only one engine. Also absence of locking via 
I915_RESET_ENGINE in gt reset flags.

Secondly, the question on whether it is acceptable to corrupt the state 
for the other engine seems not to have a 100% clear answer. Can this be 
confirmed? Because in the ideal world you would really need to preempt 
to idle the other engines from the engine group and only then would be 
able to proceed.

If that is considered a problem for later, with the first step being 
adding of a simpler workaround to prevent a more serious lockup, then it 
may be acceptable with some tweaks.

I suspect there isn't a proper IGT for this otherwise you would have 
noticed the failure to resume the coupled engines? So I think next step 
is to write that IGT and then make sure code is robust.

Sufficient testing will probably drive the implementation.

You may for instance need to lock all engines for reset starting from 
execlists_reset() and you may end up uncovering locking/ordering 
challenges as you go.

Regards,

Tvrtko

> +	}
>   
>   	if (msg)
>   		drm_notice(&engine->i915->drm,
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.h b/drivers/gpu/drm/i915/gt/intel_reset.h
> index adc734e67387..7abd5d49f0e5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.h
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.h
> @@ -28,6 +28,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
>   			   const char *fmt, ...);
>   #define I915_ERROR_CAPTURE BIT(0)
>   
> +void reset_prepare_engine(struct intel_engine_cs *engine);
>   void intel_gt_reset(struct intel_gt *gt,
>   		    intel_engine_mask_t stalled_mask,
>   		    const char *reason);
> 
