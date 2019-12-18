Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9B4124740
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 13:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADCC06E40A;
	Wed, 18 Dec 2019 12:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355A66E40A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 12:49:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 04:49:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="210077337"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 18 Dec 2019 04:49:28 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191218094057.3510459-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <41041b2a-c7e6-def8-655d-8478a9dac39e@linux.intel.com>
Date: Wed, 18 Dec 2019 12:49:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218094057.3510459-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ratelimit i915_globals_park
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


On 18/12/2019 09:40, Chris Wilson wrote:
> When doing our global park, we like to be a good citizen and shrink our
> slab caches (of which we have quite a few now), but each
> kmem_cache_shrink() incurs a stop_machine() and so ends up being quite
> expensive, causing machine-wide stalls. While ideally we would like to
> throw away unused pages in our slab caches whenever it appears that we
> are idling, doing so will require a much cheaper mechanism. In the
> meantime use a delayed worked to impose a rate-limit that means we have
> to have been idle for more than 2 seconds before we start shrinking.

I was thinking about this yesterday, while looking at rapid park-unpark 
cycles!

> References: https://gitlab.freedesktop.org/drm/intel/issues/848
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_globals.c | 53 ++++++++++++++++++++++++-----
>   1 file changed, 44 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
> index be127cd28931..3aa213684293 100644
> --- a/drivers/gpu/drm/i915/i915_globals.c
> +++ b/drivers/gpu/drm/i915/i915_globals.c
> @@ -20,7 +20,10 @@ static LIST_HEAD(globals);
>   static atomic_t active;
>   static atomic_t epoch;
>   static struct park_work {
> -	struct rcu_work work;
> +	struct delayed_work work;
> +	struct rcu_head rcu;
> +	unsigned long flags;
> +#define PENDING 0
>   	int epoch;
>   } park;
>   
> @@ -37,11 +40,33 @@ static void i915_globals_shrink(void)
>   		global->shrink();
>   }
>   
> +static void __i915_globals_grace(struct rcu_head *rcu)
> +{
> +	/* Ratelimit parking as shrinking is quite slow */
> +	schedule_delayed_work(&park.work, round_jiffies_up_relative(2 * HZ));
> +}
> +
> +static void __i915_globals_queue_rcu(void)
> +{
> +	park.epoch = atomic_inc_return(&epoch);
> +	if (!atomic_read(&active)) {
> +		init_rcu_head(&park.rcu);

Do we need to do init/destroy more than once? I think once on driver 
load/exit would be more correct since the head is statically allocated.

Otherwise looks correct to me.

Regards,

Tvrtko

> +		call_rcu(&park.rcu, __i915_globals_grace);
> +	}
> +}
> +
>   static void __i915_globals_park(struct work_struct *work)
>   {
> +	destroy_rcu_head(&park.rcu);
> +
>   	/* Confirm nothing woke up in the last grace period */
> -	if (park.epoch == atomic_read(&epoch))
> -		i915_globals_shrink();
> +	if (park.epoch != atomic_read(&epoch)) {
> +		__i915_globals_queue_rcu();
> +		return;
> +	}
> +
> +	clear_bit(PENDING, &park.flags);
> +	i915_globals_shrink();
>   }
>   
>   void __init i915_global_register(struct i915_global *global)
> @@ -85,7 +110,7 @@ int __init i915_globals_init(void)
>   		}
>   	}
>   
> -	INIT_RCU_WORK(&park.work, __i915_globals_park);
> +	INIT_DELAYED_WORK(&park.work, __i915_globals_park);
>   	return 0;
>   }
>   
> @@ -103,8 +128,9 @@ void i915_globals_park(void)
>   	if (!atomic_dec_and_test(&active))
>   		return;
>   
> -	park.epoch = atomic_inc_return(&epoch);
> -	queue_rcu_work(system_wq, &park.work);
> +	/* Queue cleanup after the next RCU grace period has freed slabs */
> +	if (!test_and_set_bit(PENDING, &park.flags))
> +		__i915_globals_queue_rcu();
>   }
>   
>   void i915_globals_unpark(void)
> @@ -113,12 +139,21 @@ void i915_globals_unpark(void)
>   	atomic_inc(&active);
>   }
>   
> +static void __exit __i915_globals_flush(void)
> +{
> +	atomic_inc(&active); /* skip shrinking */
> +
> +	rcu_barrier(); /* wait for the work to be queued */
> +	flush_delayed_work(&park.work);
> +
> +	atomic_dec(&active);
> +}
> +
>   void __exit i915_globals_exit(void)
>   {
> -	/* Flush any residual park_work */
> -	atomic_inc(&epoch);
> -	flush_rcu_work(&park.work);
> +	GEM_BUG_ON(atomic_read(&active));
>   
> +	__i915_globals_flush();
>   	__i915_globals_cleanup();
>   
>   	/* And ensure that our DESTROY_BY_RCU slabs are truly destroyed */
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
