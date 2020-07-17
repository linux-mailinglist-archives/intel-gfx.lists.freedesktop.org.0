Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F952223F20
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 17:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2856E452;
	Fri, 17 Jul 2020 15:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBE16E452
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 15:07:04 +0000 (UTC)
IronPort-SDR: RlhD/LxS7Mh+zjq8yu6J0QvgxP6ia1/2Emyc/OLYIpmuWVUAfJu/TyS67Q02CP1Qw8fs0WItrk
 Emnbt17mmneQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="150981771"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="150981771"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 08:07:03 -0700
IronPort-SDR: 7kQKZ9nI6gcysOatsygNLPSGwfZljj3Vy+NOzC6Wd9lWuhQLAqMmPlACllaOEgUuroL11dwrYV
 VC7V8WZ0wDRg==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460873439"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 08:07:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200717140605.24328-1-chris@chris-wilson.co.uk>
 <20200717140939.31217-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a675420a-181a-8af2-4427-5ebd6b990e9e@linux.intel.com>
Date: Fri, 17 Jul 2020 16:07:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200717140939.31217-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Remove disordered per-file
 request list for throttling
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


On 17/07/2020 15:09, Chris Wilson wrote:
> I915_GEM_THROTTLE dates back to the time before contexts where there was
> just a single engine, and therefore a single timeline and request list
> per file. That request list was in execution/retirement order, and so
> walking it to find a particular aged request made sense.
> 
> That is no more. We now have many timelines with a file, as many as the
> user wants to construct (essentially per-engine, per-context). Each of
> those run independently and so make the single list futile. Remove the
> disordered list, and iterate over all the timelines to find a request to
> wait on in each to satisfy the criteria that the CPU is no more than 20ms
> ahead of its oldest request.
> 
> It should go without saying that the I915_GEM_THROTTLE ioctl is no
> longer used as the primary means of throttling, so it makes sense to push
> the complication into the ioctl where it only impacts upon its few
> irregular users, rather than the execbuf/retire where everybody has to
> pay the cost. Fortunately, the few users do not create vast amount of
> contexts, so the loops over contexts/engines should be concise.

Sounds reasonable to me.

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 13 -----
>   drivers/gpu/drm/i915/gem/i915_gem_throttle.c  | 56 ++++++++++++-------
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        |  5 +-
>   drivers/gpu/drm/i915/i915_drv.c               |  1 -
>   drivers/gpu/drm/i915/i915_drv.h               |  6 --
>   drivers/gpu/drm/i915/i915_gem.c               | 18 ------
>   drivers/gpu/drm/i915/i915_request.c           | 21 -------
>   drivers/gpu/drm/i915/i915_request.h           |  4 --
>   8 files changed, 39 insertions(+), 85 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 6b4ec66cb558..b7a86cdec9b5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1916,18 +1916,6 @@ static int eb_parse(struct i915_execbuffer *eb)
>   	return err;
>   }
>   
> -static void
> -add_to_client(struct i915_request *rq, struct drm_file *file)
> -{
> -	struct drm_i915_file_private *file_priv = file->driver_priv;
> -
> -	rq->file_priv = file_priv;
> -
> -	spin_lock(&file_priv->mm.lock);
> -	list_add_tail(&rq->client_link, &file_priv->mm.request_list);
> -	spin_unlock(&file_priv->mm.lock);
> -}
> -
>   static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
>   {
>   	int err;
> @@ -2567,7 +2555,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   	trace_i915_request_queue(eb.request, eb.batch_flags);
>   	err = eb_submit(&eb, batch);
>   err_request:
> -	add_to_client(eb.request, file);
>   	i915_request_get(eb.request);
>   	eb_request_add(&eb);
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_throttle.c b/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
> index 540ef0551789..7e73b8cffa8c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
> @@ -9,6 +9,7 @@
>   #include <drm/drm_file.h>
>   
>   #include "i915_drv.h"
> +#include "i915_gem_context.h"
>   #include "i915_gem_ioctls.h"
>   #include "i915_gem_object.h"
>   
> @@ -35,9 +36,10 @@ int
>   i915_gem_throttle_ioctl(struct drm_device *dev, void *data,
>   			struct drm_file *file)
>   {
> +	const unsigned long recent_enough = jiffies - DRM_I915_THROTTLE_JIFFIES;
>   	struct drm_i915_file_private *file_priv = file->driver_priv;
> -	unsigned long recent_enough = jiffies - DRM_I915_THROTTLE_JIFFIES;
> -	struct i915_request *request, *target = NULL;
> +	struct i915_gem_context *ctx;
> +	unsigned long idx;
>   	long ret;
>   
>   	/* ABI: return -EIO if already wedged */
> @@ -45,27 +47,43 @@ i915_gem_throttle_ioctl(struct drm_device *dev, void *data,
>   	if (ret)
>   		return ret;
>   
> -	spin_lock(&file_priv->mm.lock);
> -	list_for_each_entry(request, &file_priv->mm.request_list, client_link) {
> -		if (time_after_eq(request->emitted_jiffies, recent_enough))
> -			break;
> +	xa_for_each(&file_priv->context_xa, idx, ctx) {
> +		struct i915_gem_engines_iter it;
> +		struct intel_context *ce;
>   
> -		if (target && xchg(&target->file_priv, NULL))
> -			list_del(&target->client_link);
> +		for_each_gem_engine(ce,
> +				    i915_gem_context_lock_engines(ctx),
> +				    it) {
> +			struct i915_request *rq, *target = NULL;
>   
> -		target = request;
> -	}
> -	if (target)
> -		i915_request_get(target);
> -	spin_unlock(&file_priv->mm.lock);
> +			if (!ce->timeline)
> +				continue;
> +
> +			mutex_lock(&ce->timeline->mutex);
> +			list_for_each_entry_reverse(rq,
> +						    &ce->timeline->requests,
> +						    link) {
> +				if (i915_request_completed(rq))
> +					break;
>   
> -	if (!target)
> -		return 0;
> +				if (time_after(rq->emitted_jiffies,
> +					       recent_enough))
> +					continue;
>   
> -	ret = i915_request_wait(target,
> -				I915_WAIT_INTERRUPTIBLE,
> -				MAX_SCHEDULE_TIMEOUT);
> -	i915_request_put(target);
> +				target = i915_request_get(rq);
> +				break;
> +			}
> +			mutex_unlock(&ce->timeline->mutex);
> +
> +			ret = i915_request_wait(target,
> +						I915_WAIT_INTERRUPTIBLE,
> +						MAX_SCHEDULE_TIMEOUT);
> +			i915_request_put(target);
> +			if (ret < 0)
> +				break;

Interesting question if continuing to next context/timeline or stopping 
after one wait would be more in line with the previous behaviour. Like 
this it is actually more in the spirit of throttling and one could say 
so far it was broken. Well, depends what was meant by throttiling.. 
presumably GPU activity (tempo of submissions makes no sense to involve 
the kernel with), in which case yes, walking all timelines is better.

> +		}
> +		i915_gem_context_unlock_engines(ctx);
> +	}
>   
>   	return ret < 0 ? ret : 0;
>   }
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 3fc5de961280..f749071f54a7 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -2729,7 +2729,7 @@ static int create_gang(struct intel_engine_cs *engine,
>   	i915_gem_object_put(obj);
>   	intel_context_put(ce);
>   
> -	rq->client_link.next = &(*prev)->client_link;
> +	rq->mock.link.next = &(*prev)->mock.link;
>   	*prev = rq;
>   	return 0;
>   
> @@ -2970,8 +2970,7 @@ static int live_preempt_gang(void *arg)
>   		}
>   
>   		while (rq) { /* wait for each rq from highest to lowest prio */
> -			struct i915_request *n =
> -				list_next_entry(rq, client_link);
> +			struct i915_request *n = list_next_entry(rq, mock.link);
>   
>   			if (err == 0 && i915_request_wait(rq, 0, HZ / 5) < 0) {
>   				struct drm_printer p =
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 5fd5af4bc855..a5f58ed219fe 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1119,7 +1119,6 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
>   	struct drm_i915_file_private *file_priv = file->driver_priv;
>   
>   	i915_gem_context_close(file);
> -	i915_gem_release(dev, file);
>   
>   	kfree_rcu(file_priv, rcu);
>   
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e4f7f6518945..2a0b5017d12c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -203,11 +203,6 @@ struct drm_i915_file_private {
>   		struct rcu_head rcu;
>   	};
>   
> -	struct {
> -		spinlock_t lock;
> -		struct list_head request_list;
> -	} mm;
> -
>   	struct xarray context_xa;
>   	struct xarray vm_xa;
>   
> @@ -1831,7 +1826,6 @@ void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
>   void i915_gem_resume(struct drm_i915_private *dev_priv);
>   
>   int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
> -void i915_gem_release(struct drm_device *dev, struct drm_file *file);
>   
>   int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
>   				    enum i915_cache_level cache_level);
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 9aa3066cb75d..e1de50780ed5 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1301,21 +1301,6 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
>   	return 0;
>   }
>   
> -void i915_gem_release(struct drm_device *dev, struct drm_file *file)
> -{
> -	struct drm_i915_file_private *file_priv = file->driver_priv;
> -	struct i915_request *request;
> -
> -	/* Clean up our request list when the client is going away, so that
> -	 * later retire_requests won't dereference our soon-to-be-gone
> -	 * file_priv.
> -	 */
> -	spin_lock(&file_priv->mm.lock);
> -	list_for_each_entry(request, &file_priv->mm.request_list, client_link)
> -		request->file_priv = NULL;
> -	spin_unlock(&file_priv->mm.lock);
> -}
> -
>   int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
>   {
>   	struct drm_i915_file_private *file_priv;
> @@ -1331,9 +1316,6 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
>   	file_priv->dev_priv = i915;
>   	file_priv->file = file;
>   
> -	spin_lock_init(&file_priv->mm.lock);
> -	INIT_LIST_HEAD(&file_priv->mm.request_list);
> -
>   	file_priv->bsd_engine = -1;
>   	file_priv->hang_timestamp = jiffies;
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 679a915e9a63..050b55f0f5c0 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -216,24 +216,6 @@ static void __notify_execute_cb_imm(struct i915_request *rq)
>   	__notify_execute_cb(rq, irq_work_imm);
>   }
>   
> -static inline void
> -remove_from_client(struct i915_request *request)
> -{
> -	struct drm_i915_file_private *file_priv;
> -
> -	if (!READ_ONCE(request->file_priv))
> -		return;
> -
> -	rcu_read_lock();
> -	file_priv = xchg(&request->file_priv, NULL);
> -	if (file_priv) {
> -		spin_lock(&file_priv->mm.lock);
> -		list_del(&request->client_link);
> -		spin_unlock(&file_priv->mm.lock);
> -	}
> -	rcu_read_unlock();
> -}
> -
>   static void free_capture_list(struct i915_request *request)
>   {
>   	struct i915_capture_list *capture;
> @@ -341,7 +323,6 @@ bool i915_request_retire(struct i915_request *rq)
>   	remove_from_engine(rq);
>   	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
>   
> -	remove_from_client(rq);
>   	__list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
>   
>   	intel_context_exit(rq->context);
> @@ -799,7 +780,6 @@ static void __i915_request_ctor(void *arg)
>   
>   	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock, 0, 0);
>   
> -	rq->file_priv = NULL;
>   	rq->capture_list = NULL;
>   
>   	init_llist_head(&rq->execute_cb);
> @@ -889,7 +869,6 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>   
>   	/* No zalloc, everything must be cleared after use */
>   	rq->batch = NULL;
> -	GEM_BUG_ON(rq->file_priv);
>   	GEM_BUG_ON(rq->capture_list);
>   	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 590762820761..fc18378c685d 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -284,10 +284,6 @@ struct i915_request {
>   	/** timeline->request entry for this request */
>   	struct list_head link;
>   
> -	struct drm_i915_file_private *file_priv;
> -	/** file_priv list entry for this request */
> -	struct list_head client_link;
> -
>   	I915_SELFTEST_DECLARE(struct {
>   		struct list_head link;
>   		unsigned long delay;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
