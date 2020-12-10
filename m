Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CA02D659F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 19:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2FD6E0DE;
	Thu, 10 Dec 2020 18:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376AE6EACE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 18:56:18 +0000 (UTC)
IronPort-SDR: sDLDLMQGAYeY7dvR/YkxAuSEhcIiZ2S0N/62JNbIzWaRCc8jzmeBhjak2Z3JnitdXVmn+ZotUh
 C5x54QNzka1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="235909668"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="235909668"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 10:56:15 -0800
IronPort-SDR: gu+hjNDpxr7n+FqzSHaVwneBthq+OuXV7BrnuSvyHowtBuufw9UGMXbR5+aMXr7XAU8Xp4du9D
 W/mGCA/Ob4Ig==
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="348934329"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 10:56:15 -0800
Date: Thu, 10 Dec 2020 10:50:29 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201210185029.GA3230@sdutt-i7>
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
 <20201210080240.24529-12-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210080240.24529-12-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 12/21] drm/i915/gem: Drop free_work for GEM
 contexts
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 10, 2020 at 08:02:31AM +0000, Chris Wilson wrote:
> The free_list and worker was introduced in commit 5f09a9c8ab6b ("drm/i915:
> Allow contexts to be unreferenced locklessly"), but subsequently made
> redundant by the removal of the last sleeping lock in commit 2935ed5339c4
> ("drm/i915: Remove logical HW ID"). As we can now free the GEM context
> immediately from any context, remove the deferral of the free_list
> 
> v2: Lift removing the context from the global list into close().
> 
> Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 59 +++----------------
>  drivers/gpu/drm/i915/gem/i915_gem_context.h   |  1 -
>  .../gpu/drm/i915/gem/i915_gem_context_types.h |  1 -
>  drivers/gpu/drm/i915/i915_drv.h               |  3 -
>  drivers/gpu/drm/i915/i915_gem.c               |  2 -
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 -
>  6 files changed, 8 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index ad136d009d9b..738a07b3583c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -334,13 +334,12 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
>  	return e;
>  }
>  
> -static void i915_gem_context_free(struct i915_gem_context *ctx)
> +void i915_gem_context_release(struct kref *ref)
>  {
> -	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
> +	struct i915_gem_context *ctx = container_of(ref, typeof(*ctx), ref);
>  
> -	spin_lock(&ctx->i915->gem.contexts.lock);
> -	list_del(&ctx->link);
> -	spin_unlock(&ctx->i915->gem.contexts.lock);
> +	trace_i915_context_free(ctx);
> +	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
>  
>  	mutex_destroy(&ctx->engines_mutex);
>  	mutex_destroy(&ctx->lut_mutex);
> @@ -354,37 +353,6 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
>  	kfree_rcu(ctx, rcu);
>  }
>  
> -static void contexts_free_all(struct llist_node *list)
> -{
> -	struct i915_gem_context *ctx, *cn;
> -
> -	llist_for_each_entry_safe(ctx, cn, list, free_link)
> -		i915_gem_context_free(ctx);
> -}
> -
> -static void contexts_flush_free(struct i915_gem_contexts *gc)
> -{
> -	contexts_free_all(llist_del_all(&gc->free_list));
> -}
> -
> -static void contexts_free_worker(struct work_struct *work)
> -{
> -	struct i915_gem_contexts *gc =
> -		container_of(work, typeof(*gc), free_work);
> -
> -	contexts_flush_free(gc);
> -}
> -
> -void i915_gem_context_release(struct kref *ref)
> -{
> -	struct i915_gem_context *ctx = container_of(ref, typeof(*ctx), ref);
> -	struct i915_gem_contexts *gc = &ctx->i915->gem.contexts;
> -
> -	trace_i915_context_free(ctx);
> -	if (llist_add(&ctx->free_link, &gc->free_list))
> -		schedule_work(&gc->free_work);
> -}
> -
>  static inline struct i915_gem_engines *
>  __context_engines_static(const struct i915_gem_context *ctx)
>  {
> @@ -633,6 +601,10 @@ static void context_close(struct i915_gem_context *ctx)
>  	 */
>  	lut_close(ctx);
>  
> +	spin_lock(&ctx->i915->gem.contexts.lock);
> +	list_del(&ctx->link);
> +	spin_unlock(&ctx->i915->gem.contexts.lock);
> +
>  	mutex_unlock(&ctx->mutex);
>  
>  	/*
> @@ -850,9 +822,6 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
>  	    !HAS_EXECLISTS(i915))
>  		return ERR_PTR(-EINVAL);
>  
> -	/* Reap the stale contexts */
> -	contexts_flush_free(&i915->gem.contexts);
> -
>  	ctx = __create_context(i915);
>  	if (IS_ERR(ctx))
>  		return ctx;
> @@ -897,9 +866,6 @@ static void init_contexts(struct i915_gem_contexts *gc)
>  {
>  	spin_lock_init(&gc->lock);
>  	INIT_LIST_HEAD(&gc->list);
> -
> -	INIT_WORK(&gc->free_work, contexts_free_worker);
> -	init_llist_head(&gc->free_list);
>  }
>  
>  void i915_gem_init__contexts(struct drm_i915_private *i915)
> @@ -907,12 +873,6 @@ void i915_gem_init__contexts(struct drm_i915_private *i915)
>  	init_contexts(&i915->gem.contexts);
>  }
>  
> -void i915_gem_driver_release__contexts(struct drm_i915_private *i915)
> -{
> -	flush_work(&i915->gem.contexts.free_work);
> -	rcu_barrier(); /* and flush the left over RCU frees */
> -}
> -
>  static int gem_context_register(struct i915_gem_context *ctx,
>  				struct drm_i915_file_private *fpriv,
>  				u32 *id)
> @@ -986,7 +946,6 @@ int i915_gem_context_open(struct drm_i915_private *i915,
>  void i915_gem_context_close(struct drm_file *file)
>  {
>  	struct drm_i915_file_private *file_priv = file->driver_priv;
> -	struct drm_i915_private *i915 = file_priv->dev_priv;
>  	struct i915_address_space *vm;
>  	struct i915_gem_context *ctx;
>  	unsigned long idx;
> @@ -998,8 +957,6 @@ void i915_gem_context_close(struct drm_file *file)
>  	xa_for_each(&file_priv->vm_xa, idx, vm)
>  		i915_vm_put(vm);
>  	xa_destroy(&file_priv->vm_xa);
> -
> -	contexts_flush_free(&i915->gem.contexts);
>  }
>  
>  int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index a133f92bbedb..b5c908f3f4f2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -110,7 +110,6 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
>  
>  /* i915_gem_context.c */
>  void i915_gem_init__contexts(struct drm_i915_private *i915);
> -void i915_gem_driver_release__contexts(struct drm_i915_private *i915);
>  
>  int i915_gem_context_open(struct drm_i915_private *i915,
>  			  struct drm_file *file);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index ae14ca24a11f..1449f54924e0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -108,7 +108,6 @@ struct i915_gem_context {
>  
>  	/** link: place with &drm_i915_private.context_list */
>  	struct list_head link;
> -	struct llist_node free_link;
>  
>  	/**
>  	 * @ref: reference count
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 5d04b282c060..c2d0156e8a5d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1172,9 +1172,6 @@ struct drm_i915_private {
>  		struct i915_gem_contexts {
>  			spinlock_t lock; /* locks list */
>  			struct list_head list;
> -
> -			struct llist_head free_list;
> -			struct work_struct free_work;
>  		} contexts;
>  
>  		/*
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 58276694c848..17a4636ee542 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1207,8 +1207,6 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
>  
>  void i915_gem_driver_release(struct drm_i915_private *dev_priv)
>  {
> -	i915_gem_driver_release__contexts(dev_priv);
> -
>  	intel_gt_driver_release(&dev_priv->gt);
>  
>  	intel_wa_list_free(&dev_priv->gt_wa_list);
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index e946bd2087d8..0188f877cab2 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -64,8 +64,6 @@ static void mock_device_release(struct drm_device *dev)
>  	mock_device_flush(i915);
>  	intel_gt_driver_remove(&i915->gt);
>  
> -	i915_gem_driver_release__contexts(i915);
> -
>  	i915_gem_drain_workqueue(i915);
>  	i915_gem_drain_freed_objects(i915);
>  
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
