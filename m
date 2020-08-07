Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE4323EEC1
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 16:10:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A599C89125;
	Fri,  7 Aug 2020 14:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A8FA6E9DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 14:10:38 +0000 (UTC)
IronPort-SDR: JYMBR9imj+yQ/By7BqljGaxkOiSYH6pToN3MkpjZM01kwI0Mn68wv/ZmyjUS0wKDHGmTlb4b0n
 QSuMGR5OLwzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="150799901"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="150799901"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 07:10:37 -0700
IronPort-SDR: d8HICcZTS3l535QwvYKy7OuNHkiRyKimTztU9e/LKplqMR14YWJQbSBcss+32mnt96p5Vlijdz
 odKVfmB/j4ww==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="437911891"
Received: from kmatyuch-mobl.ger.corp.intel.com (HELO [10.255.197.120])
 ([10.255.197.120])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 07:10:36 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200807125440.3419-1-chris@chris-wilson.co.uk>
 <20200807125440.3419-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3771a026-4aec-a532-36ff-7c96797e96e8@linux.intel.com>
Date: Fri, 7 Aug 2020 15:10:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200807125440.3419-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/gt: Protect context lifetime
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


On 07/08/2020 13:54, Chris Wilson wrote:
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
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c       | 27 ++++++++++++++-----
>   drivers/gpu/drm/i915/gt/intel_context_types.h |  6 +++++
>   2 files changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 52db2bde44a3..8eebb31c6c28 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -22,7 +22,7 @@ static struct i915_global_context {
>   
>   static struct intel_context *intel_context_alloc(void)
>   {
> -	return kmem_cache_zalloc(global.slab_ce, GFP_KERNEL);
> +	return kmem_cache_alloc(global.slab_ce, GFP_KERNEL);
>   }
>   
>   void intel_context_free(struct intel_context *ce)
> @@ -158,12 +158,12 @@ void intel_context_unpin(struct intel_context *ce)
>   	/*
>   	 * Once released, we may asynchronously drop the active reference.
>   	 * As that may be the only reference keeping the context alive,
> -	 * take an extra now so that it is not freed before we finish
> +	 * hold onto RCU so that it is not freed before we finish
>   	 * dereferencing it.
>   	 */
> -	intel_context_get(ce);
> +	rcu_read_lock();
>   	intel_context_active_release(ce);
> -	intel_context_put(ce);
> +	rcu_read_unlock();

Strong reference here couldn't stay?

Regards,

Tvrtko

>   }
>   
>   static int __context_pin_state(struct i915_vma *vma)
> @@ -280,8 +280,7 @@ static int __intel_context_active(struct i915_active *active)
>   }
>   
>   void
> -intel_context_init(struct intel_context *ce,
> -		   struct intel_engine_cs *engine)
> +intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
>   {
>   	GEM_BUG_ON(!engine->cops);
>   	GEM_BUG_ON(!engine->gt->vm);
> @@ -293,6 +292,12 @@ intel_context_init(struct intel_context *ce,
>   	ce->sseu = engine->sseu;
>   	ce->ring = __intel_context_ring_size(SZ_4K);
>   
> +	ce->wa_bb_page = 0;
> +	ce->flags = 0;
> +	ce->tag = 0;
> +
> +	memset(&ce->runtime, 0, sizeof(ce->runtime));
> +
>   	ewma_runtime_init(&ce->runtime.avg);
>   
>   	ce->vm = i915_vm_get(engine->gt->vm);
> @@ -300,10 +305,16 @@ intel_context_init(struct intel_context *ce,
>   	INIT_LIST_HEAD(&ce->signal_link);
>   	INIT_LIST_HEAD(&ce->signals);
>   
> +	atomic_set(&ce->pin_count, 0);
>   	mutex_init(&ce->pin_mutex);
>   
> +	ce->active_count = 0;
>   	i915_active_init(&ce->active,
>   			 __intel_context_active, __intel_context_retire);
> +
> +	ce->inflight = NULL;
> +	ce->lrc_reg_state = NULL;
> +	ce->lrc.desc = 0;
>   }
>   
>   void intel_context_fini(struct intel_context *ce)
> @@ -333,7 +344,9 @@ static struct i915_global_context global = { {
>   
>   int __init i915_global_context_init(void)
>   {
> -	global.slab_ce = KMEM_CACHE(intel_context, SLAB_HWCACHE_ALIGN);
> +	global.slab_ce = KMEM_CACHE(intel_context,
> +				    SLAB_HWCACHE_ALIGN |
> +				    SLAB_TYPESAFE_BY_RCU);
>   	if (!global.slab_ce)
>   		return -ENOMEM;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 4954b0df4864..18622f1a0249 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -41,6 +41,12 @@ struct intel_context_ops {
>   };
>   
>   struct intel_context {
> +	/*
> +	 * Note: Some fields may be accessed under RCU.
> +	 *
> +	 * Unless otherwise noted a field can safely be assumed to be protected
> +	 * by strong reference counting.
> +	 */
>   	struct kref ref;
>   
>   	struct intel_engine_cs *engine;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
