Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE010165DD3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 13:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B966ED6A;
	Thu, 20 Feb 2020 12:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B93E46ED6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 12:47:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 04:47:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="269573063"
Received: from unknown (HELO [10.252.15.175]) ([10.252.15.175])
 by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2020 04:47:29 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200220075025.1539375-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <a916179e-8f26-902d-5707-d6b85337e732@intel.com>
Date: Thu, 20 Feb 2020 12:47:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200220075025.1539375-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/gt: Protect signaler walk with
 RCU
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

On 20/02/2020 07:50, Chris Wilson wrote:
> While we know that the waiters cannot disappear as we walk our list
> (only that they might be added), the same cannot be said for our
> signalers as they may be completed by the HW and retired as we process
> this request. Ergo we need to use rcu to protect the list iteration and
> remember to mark up the list_del_rcu.
> 
> v2: Mark the deps as safe-for-rcu
> 
> Fixes: 793c22617367 ("drm/i915/gt: Protect execlists_hold/unhold from new waiters")
> Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c   | 16 ++++++++++------
>   drivers/gpu/drm/i915/i915_scheduler.c |  7 ++++---
>   2 files changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index ba31cbe8c68e..47561dc29304 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1668,9 +1668,9 @@ last_active(const struct intel_engine_execlists *execlists)
>   				     wait_link)
>   
>   #define for_each_signaler(p__, rq__) \
> -	list_for_each_entry_lockless(p__, \
> -				     &(rq__)->sched.signalers_list, \
> -				     signal_link)
> +	list_for_each_entry_rcu(p__, \
> +				&(rq__)->sched.signalers_list, \
> +				signal_link)
>   
>   static void defer_request(struct i915_request *rq, struct list_head * const pl)
>   {
> @@ -2533,11 +2533,13 @@ static bool execlists_hold(struct intel_engine_cs *engine,
>   static bool hold_request(const struct i915_request *rq)
>   {
>   	struct i915_dependency *p;
> +	bool result = false;
>   
>   	/*
>   	 * If one of our ancestors is on hold, we must also be on hold,
>   	 * otherwise we will bypass it and execute before it.
>   	 */
> +	rcu_read_lock();
>   	for_each_signaler(p, rq) {
>   		const struct i915_request *s =
>   			container_of(p->signaler, typeof(*s), sched);
> @@ -2545,11 +2547,13 @@ static bool hold_request(const struct i915_request *rq)
>   		if (s->engine != rq->engine)
>   			continue;
>   
> -		if (i915_request_on_hold(s))
> -			return true;
> +		result = i915_request_on_hold(s);
> +		if (result)
> +			break;
>   	}
> +	rcu_read_unlock();
>   
> -	return false;
> +	return result;
>   }
>   
>   static void __execlists_unhold(struct i915_request *rq)
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index e19a37a83397..59f70b674665 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -486,7 +486,7 @@ void i915_sched_node_fini(struct i915_sched_node *node)
>   	list_for_each_entry_safe(dep, tmp, &node->signalers_list, signal_link) {
>   		GEM_BUG_ON(!list_empty(&dep->dfs_link));
>   
> -		list_del(&dep->wait_link);
> +		list_del_rcu(&dep->wait_link);
>   		if (dep->flags & I915_DEPENDENCY_ALLOC)
>   			i915_dependency_free(dep);
>   	}
> @@ -497,7 +497,7 @@ void i915_sched_node_fini(struct i915_sched_node *node)
>   		GEM_BUG_ON(dep->signaler != node);
>   		GEM_BUG_ON(!list_empty(&dep->dfs_link));
>   
> -		list_del(&dep->signal_link);
> +		list_del_rcu(&dep->signal_link);
>   		if (dep->flags & I915_DEPENDENCY_ALLOC)
>   			i915_dependency_free(dep);
>   	}
> @@ -526,7 +526,8 @@ static struct i915_global_scheduler global = { {
>   int __init i915_global_scheduler_init(void)
>   {
>   	global.slab_dependencies = KMEM_CACHE(i915_dependency,
> -					      SLAB_HWCACHE_ALIGN);
> +					      SLAB_HWCACHE_ALIGN |
> +					      SLAB_TYPESAFE_BY_RCU);

So, the claim is that we should be fine if the node is re-used and then 
initialised, even though there might exist a minuscule window where 
hold_request might still be able to see it, somehow?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
