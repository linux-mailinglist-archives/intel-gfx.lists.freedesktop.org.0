Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1902B7CBE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 12:36:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1D56E3F2;
	Wed, 18 Nov 2020 11:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB416E3F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 11:36:24 +0000 (UTC)
IronPort-SDR: x8aTo2dyzH2CSrZaMKbjr6FJ8h0xTBut6XjZ3v8wsAjyxD5brQ1sd6Q7nKPigYvZ0V5OFclJoV
 2VlFSauHfNAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="158875240"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="158875240"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 03:36:23 -0800
IronPort-SDR: JMnIklF3idm4mhNmoLXAal5ABZ8A1ljumw43nvi+a4EvZ332JUFTBTtKOMAIRqDvdz6m59WrXJ
 FlKE6FII63WQ==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="544480921"
Received: from shaid-mobl.ger.corp.intel.com (HELO [10.255.202.56])
 ([10.255.202.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 03:36:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-15-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <69f48f24-abe8-6f69-6ed2-78dbe2fd6eff@linux.intel.com>
Date: Wed, 18 Nov 2020 11:36:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201117113103.21480-15-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 15/28] drm/i915/gt: Protect context lifetime
 with RCU
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


On 17/11/2020 11:30, Chris Wilson wrote:
> Allow a brief period for continued access to a dead intel_context by
> deferring the release of the struct until after an RCU grace period.
> As we are using a dedicated slab cache for the contexts, we can defer
> the release of the slab pages via RCU, with the caveat that individual
> structs may be reused from the freelist within an RCU grace period. To
> handle that, we have to avoid clearing members of the zombie struct.
> 
> This is required for a later patch to handle locking around virtual
> requests in the signaler, as those requests may want to move between
> engines and be destroyed while we are holding b->irq_lock on a physical
> engine.
> 
> v2: Drop mutex_reinit(), if we never mark the mutex as destroyed we
> don't need to reset the debug code, at the loss of having the mutex
> debug code spot us attempting to destroy a locked mutex.
> v3: As the intended use will remain strongly referenced counted, with
> very little inflight access across reuse, drop the ctor.
> v4: Drop the unrequired change to remove the temporary reference around
> dropping the active context, and add back some more missing ctor
> operations.
> v5: The ctor is back. Tvrtko spotted that ce->signal_lock [introduced
> later] maybe accessed under RCU and so needs special care not to be
> reinitialised.
> v6: Don't mix SLAB_TYPESAFE_BY_RCU and RCU list iteration.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++++++++---
>   drivers/gpu/drm/i915/gt/intel_context_types.h | 11 ++++++++++-
>   2 files changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 92a3f25c4006..d3a835212167 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -25,11 +25,18 @@ static struct intel_context *intel_context_alloc(void)
>   	return kmem_cache_zalloc(global.slab_ce, GFP_KERNEL);
>   }
>   
> -void intel_context_free(struct intel_context *ce)
> +static void rcu_context_free(struct rcu_head *rcu)
>   {
> +	struct intel_context *ce = container_of(rcu, typeof(*ce), rcu);
> +
>   	kmem_cache_free(global.slab_ce, ce);
>   }
>   
> +void intel_context_free(struct intel_context *ce)
> +{
> +	call_rcu(&ce->rcu, rcu_context_free);
> +}
> +
>   struct intel_context *
>   intel_context_create(struct intel_engine_cs *engine)
>   {
> @@ -356,8 +363,7 @@ static int __intel_context_active(struct i915_active *active)
>   }
>   
>   void
> -intel_context_init(struct intel_context *ce,
> -		   struct intel_engine_cs *engine)
> +intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
>   {
>   	GEM_BUG_ON(!engine->cops);
>   	GEM_BUG_ON(!engine->gt->vm);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 552cb57a2e8c..20cb5835d1c3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -44,7 +44,16 @@ struct intel_context_ops {
>   };
>   
>   struct intel_context {
> -	struct kref ref;
> +	/*
> +	 * Note: Some fields may be accessed under RCU.
> +	 *
> +	 * Unless otherwise noted a field can safely be assumed to be protected
> +	 * by strong reference counting.
> +	 */
> +	union {
> +		struct kref ref; /* no kref_get_unless_zero()! */
> +		struct rcu_head rcu;
> +	};
>   
>   	struct intel_engine_cs *engine;
>   	struct intel_engine_cs *inflight;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
