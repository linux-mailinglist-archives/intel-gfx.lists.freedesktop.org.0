Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C32C53733A5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 03:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE326E405;
	Wed,  5 May 2021 01:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7056D6E328;
 Wed,  5 May 2021 01:44:14 +0000 (UTC)
IronPort-SDR: LjkYKo8T8B0uSxjvBm3Qv5kCKsbupN+pADXPYnpzQ9lp0ALdTNw6DanigoBWt2DhLNQxv1paGC
 C9MQH6lMJs+Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="177655316"
X-IronPort-AV: E=Sophos;i="5.82,273,1613462400"; d="scan'208";a="177655316"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 18:44:13 -0700
IronPort-SDR: Mo/KwADThQd33IE721toDv2nxSLhrOtSUeGdb/mBL/whtQxp5YZGrhn+6uOZvJSlzEt4JWhno0
 cRXoQBAWhNKA==
X-IronPort-AV: E=Sophos;i="5.82,273,1613462400"; d="scan'208";a="539381788"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 18:44:13 -0700
Date: Tue, 4 May 2021 18:36:49 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210505013648.GA8247@sdutt-i7>
References: <20210504164136.96456-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210504164136.96456-1-matthew.auld@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: drop the __i915_active_call
 pointer packing
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 04, 2021 at 05:41:36PM +0100, Matthew Auld wrote:
> We use some of the lower bits of the retire function pointer for
> potential flags, which is quite thorny, since the caller needs to
> remember to give the function the correct alignment with
> __i915_active_call, otherwise we might incorrectly unpack the pointer
> and jump to some garbage address later. Instead of all this let's just
> pass the flags along as a separate parameter.
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> References: ca419f407b43 ("drm/i915: Fix crash in auto_retire")
> References: d8e44e4dd221 ("drm/i915/overlay: Fix active retire callback a=
lignment")
> References: fd5f262db118 ("drm/i915/selftests: Fix active retire callback=
 alignment")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>

I absolutely hate most of the pointer packing code in the i915.

With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c   |  4 ++--
>  drivers/gpu/drm/i915/display/intel_overlay.c       |  5 ++---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c        |  3 +--
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c               |  2 +-
>  drivers/gpu/drm/i915/gt/intel_context.c            |  3 +--
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c       |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c     |  3 +--
>  drivers/gpu/drm/i915/gt/intel_timeline.c           |  4 ++--
>  drivers/gpu/drm/i915/gt/mock_engine.c              |  2 +-
>  .../gpu/drm/i915/gt/selftest_engine_heartbeat.c    |  4 ++--
>  drivers/gpu/drm/i915/i915_active.c                 | 14 +++++---------
>  drivers/gpu/drm/i915/i915_active.h                 | 11 ++++++-----
>  drivers/gpu/drm/i915/i915_active_types.h           |  5 -----
>  drivers/gpu/drm/i915/i915_vma.c                    |  3 +--
>  drivers/gpu/drm/i915/selftests/i915_active.c       |  4 ++--
>  15 files changed, 28 insertions(+), 41 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 8161d49e78ba..8e75debcce1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -211,7 +211,6 @@ static int frontbuffer_active(struct i915_active *ref)
>  	return 0;
>  }
>  =

> -__i915_active_call
>  static void frontbuffer_retire(struct i915_active *ref)
>  {
>  	struct intel_frontbuffer *front =3D
> @@ -266,7 +265,8 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
>  	atomic_set(&front->bits, 0);
>  	i915_active_init(&front->write,
>  			 frontbuffer_active,
> -			 i915_active_may_sleep(frontbuffer_retire));
> +			 frontbuffer_retire,
> +			 I915_ACTIVE_RETIRE_SLEEPS);
>  =

>  	spin_lock(&i915->fb_tracking.lock);
>  	if (rcu_access_pointer(obj->frontbuffer)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/d=
rm/i915/display/intel_overlay.c
> index 428819ba18dd..f1e04c1535c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -383,8 +383,7 @@ static void intel_overlay_off_tail(struct intel_overl=
ay *overlay)
>  		i830_overlay_clock_gating(dev_priv, true);
>  }
>  =

> -__i915_active_call static void
> -intel_overlay_last_flip_retire(struct i915_active *active)
> +static void intel_overlay_last_flip_retire(struct i915_active *active)
>  {
>  	struct intel_overlay *overlay =3D
>  		container_of(active, typeof(*overlay), last_flip);
> @@ -1401,7 +1400,7 @@ void intel_overlay_setup(struct drm_i915_private *d=
ev_priv)
>  	overlay->saturation =3D 146;
>  =

>  	i915_active_init(&overlay->last_flip,
> -			 NULL, intel_overlay_last_flip_retire);
> +			 NULL, intel_overlay_last_flip_retire, 0);
>  =

>  	ret =3D get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(dev_priv));
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_context.c
> index fd8ee52e17a4..188dee13e017 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1046,7 +1046,6 @@ struct context_barrier_task {
>  	void *data;
>  };
>  =

> -__i915_active_call
>  static void cb_retire(struct i915_active *base)
>  {
>  	struct context_barrier_task *cb =3D container_of(base, typeof(*cb), bas=
e);
> @@ -1080,7 +1079,7 @@ static int context_barrier_task(struct i915_gem_con=
text *ctx,
>  	if (!cb)
>  		return -ENOMEM;
>  =

> -	i915_active_init(&cb->base, NULL, cb_retire);
> +	i915_active_init(&cb->base, NULL, cb_retire, 0);
>  	err =3D i915_active_acquire(&cb->base);
>  	if (err) {
>  		kfree(cb);
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/=
gt/gen6_ppgtt.c
> index 21b1085769be..1aee5e6b1b23 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -343,7 +343,7 @@ static struct i915_vma *pd_vma_create(struct gen6_ppg=
tt *ppgtt, int size)
>  	if (!vma)
>  		return ERR_PTR(-ENOMEM);
>  =

> -	i915_active_init(&vma->active, NULL, NULL);
> +	i915_active_init(&vma->active, NULL, NULL, 0);
>  =

>  	kref_init(&vma->ref);
>  	mutex_init(&vma->pages_mutex);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i9=
15/gt/intel_context.c
> index 17cf2640b082..4033184f13b9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -326,7 +326,6 @@ void intel_context_unpin(struct intel_context *ce)
>  	intel_context_put(ce);
>  }
>  =

> -__i915_active_call
>  static void __intel_context_retire(struct i915_active *active)
>  {
>  	struct intel_context *ce =3D container_of(active, typeof(*ce), active);
> @@ -385,7 +384,7 @@ intel_context_init(struct intel_context *ce, struct i=
ntel_engine_cs *engine)
>  	mutex_init(&ce->pin_mutex);
>  =

>  	i915_active_init(&ce->active,
> -			 __intel_context_active, __intel_context_retire);
> +			 __intel_context_active, __intel_context_retire, 0);
>  }
>  =

>  void intel_context_fini(struct intel_context *ce)
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/d=
rm/i915/gt/intel_ggtt_fencing.c
> index 0fa6c38893f7..7bf84cd21543 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -867,7 +867,7 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
>  	for (i =3D 0; i < num_fences; i++) {
>  		struct i915_fence_reg *fence =3D &ggtt->fence_regs[i];
>  =

> -		i915_active_init(&fence->active, NULL, NULL);
> +		i915_active_init(&fence->active, NULL, NULL, 0);
>  		fence->ggtt =3D ggtt;
>  		fence->id =3D i;
>  		list_add_tail(&fence->link, &ggtt->fence_list);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu=
/drm/i915/gt/intel_gt_buffer_pool.c
> index c59468107598..aa0a59c5b614 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> @@ -98,7 +98,6 @@ static void pool_free_work(struct work_struct *wrk)
>  				      round_jiffies_up_relative(HZ));
>  }
>  =

> -__i915_active_call
>  static void pool_retire(struct i915_active *ref)
>  {
>  	struct intel_gt_buffer_pool_node *node =3D
> @@ -154,7 +153,7 @@ node_create(struct intel_gt_buffer_pool *pool, size_t=
 sz,
>  	node->age =3D 0;
>  	node->pool =3D pool;
>  	node->pinned =3D false;
> -	i915_active_init(&node->active, NULL, pool_retire);
> +	i915_active_init(&node->active, NULL, pool_retire, 0);
>  =

>  	obj =3D i915_gem_object_create_internal(gt->i915, sz);
>  	if (IS_ERR(obj)) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i=
915/gt/intel_timeline.c
> index f19cf6d2fa85..c4a126c8caef 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -32,7 +32,6 @@ static struct i915_vma *hwsp_alloc(struct intel_gt *gt)
>  	return vma;
>  }
>  =

> -__i915_active_call
>  static void __timeline_retire(struct i915_active *active)
>  {
>  	struct intel_timeline *tl =3D
> @@ -104,7 +103,8 @@ static int intel_timeline_init(struct intel_timeline =
*timeline,
>  	INIT_LIST_HEAD(&timeline->requests);
>  =

>  	i915_syncmap_init(&timeline->sync);
> -	i915_active_init(&timeline->active, __timeline_active, __timeline_retir=
e);
> +	i915_active_init(&timeline->active, __timeline_active,
> +			 __timeline_retire, 0);
>  =

>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915=
/gt/mock_engine.c
> index e1ba03b93ffa..32589c6625e1 100644
> --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> @@ -55,7 +55,7 @@ static struct intel_ring *mock_ring(struct intel_engine=
_cs *engine)
>  		kfree(ring);
>  		return NULL;
>  	}
> -	i915_active_init(&ring->vma->active, NULL, NULL);
> +	i915_active_init(&ring->vma->active, NULL, NULL, 0);
>  	__set_bit(I915_VMA_GGTT_BIT, __i915_vma_flags(ring->vma));
>  	__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &ring->vma->node.flags);
>  	ring->vma->node.size =3D sz;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/driver=
s/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> index fcde223e26ff..4896e4ccad50 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> @@ -63,7 +63,7 @@ static void pulse_put(struct pulse *p)
>  	kref_put(&p->kref, pulse_free);
>  }
>  =

> -__i915_active_call static void pulse_retire(struct i915_active *active)
> +static void pulse_retire(struct i915_active *active)
>  {
>  	pulse_put(container_of(active, struct pulse, active));
>  }
> @@ -77,7 +77,7 @@ static struct pulse *pulse_create(void)
>  		return p;
>  =

>  	kref_init(&p->kref);
> -	i915_active_init(&p->active, pulse_active, pulse_retire);
> +	i915_active_init(&p->active, pulse_active, pulse_retire, 0);
>  =

>  	return p;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i9=
15_active.c
> index aa573b078ae7..b1aa1c482c32 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -343,18 +343,15 @@ active_instance(struct i915_active *ref, u64 idx)
>  void __i915_active_init(struct i915_active *ref,
>  			int (*active)(struct i915_active *ref),
>  			void (*retire)(struct i915_active *ref),
> +			unsigned long flags,
>  			struct lock_class_key *mkey,
>  			struct lock_class_key *wkey)
>  {
> -	unsigned long bits;
> -
>  	debug_active_init(ref);
>  =

> -	ref->flags =3D 0;
> +	ref->flags =3D flags;
>  	ref->active =3D active;
> -	ref->retire =3D ptr_unpack_bits(retire, &bits, 2);
> -	if (bits & I915_ACTIVE_MAY_SLEEP)
> -		ref->flags |=3D I915_ACTIVE_RETIRE_SLEEPS;
> +	ref->retire =3D retire;
>  =

>  	spin_lock_init(&ref->tree_lock);
>  	ref->tree =3D RB_ROOT;
> @@ -1156,8 +1153,7 @@ static int auto_active(struct i915_active *ref)
>  	return 0;
>  }
>  =

> -__i915_active_call static void
> -auto_retire(struct i915_active *ref)
> +static void auto_retire(struct i915_active *ref)
>  {
>  	i915_active_put(ref);
>  }
> @@ -1171,7 +1167,7 @@ struct i915_active *i915_active_create(void)
>  		return NULL;
>  =

>  	kref_init(&aa->ref);
> -	i915_active_init(&aa->base, auto_active, auto_retire);
> +	i915_active_init(&aa->base, auto_active, auto_retire, 0);
>  =

>  	return &aa->base;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i9=
15_active.h
> index fb165d3f01cf..d0feda68b874 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -152,15 +152,16 @@ i915_active_fence_isset(const struct i915_active_fe=
nce *active)
>  void __i915_active_init(struct i915_active *ref,
>  			int (*active)(struct i915_active *ref),
>  			void (*retire)(struct i915_active *ref),
> +			unsigned long flags,
>  			struct lock_class_key *mkey,
>  			struct lock_class_key *wkey);
>  =

>  /* Specialise each class of i915_active to avoid impossible lockdep cycl=
es. */
> -#define i915_active_init(ref, active, retire) do {		\
> -	static struct lock_class_key __mkey;				\
> -	static struct lock_class_key __wkey;				\
> -									\
> -	__i915_active_init(ref, active, retire, &__mkey, &__wkey);	\
> +#define i915_active_init(ref, active, retire, flags) do {			\
> +	static struct lock_class_key __mkey;					\
> +	static struct lock_class_key __wkey;					\
> +										\
> +	__i915_active_init(ref, active, retire, flags, &__mkey, &__wkey);	\
>  } while (0)
>  =

>  struct dma_fence *
> diff --git a/drivers/gpu/drm/i915/i915_active_types.h b/drivers/gpu/drm/i=
915/i915_active_types.h
> index 6360c3e4b765..c149f348a972 100644
> --- a/drivers/gpu/drm/i915/i915_active_types.h
> +++ b/drivers/gpu/drm/i915/i915_active_types.h
> @@ -24,11 +24,6 @@ struct i915_active_fence {
>  =

>  struct active_node;
>  =

> -#define I915_ACTIVE_MAY_SLEEP BIT(0)
> -
> -#define __i915_active_call __aligned(4)
> -#define i915_active_may_sleep(fn) ptr_pack_bits(&(fn), I915_ACTIVE_MAY_S=
LEEP, 2)
> -
>  struct i915_active {
>  	atomic_t count;
>  	struct mutex mutex;
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index 468317e3b477..a6cd0fa62847 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -94,7 +94,6 @@ static int __i915_vma_active(struct i915_active *ref)
>  	return i915_vma_tryget(active_to_vma(ref)) ? 0 : -ENOENT;
>  }
>  =

> -__i915_active_call
>  static void __i915_vma_retire(struct i915_active *ref)
>  {
>  	i915_vma_put(active_to_vma(ref));
> @@ -125,7 +124,7 @@ vma_create(struct drm_i915_gem_object *obj,
>  	vma->size =3D obj->base.size;
>  	vma->display_alignment =3D I915_GTT_MIN_ALIGNMENT;
>  =

> -	i915_active_init(&vma->active, __i915_vma_active, __i915_vma_retire);
> +	i915_active_init(&vma->active, __i915_vma_active, __i915_vma_retire, 0);
>  =

>  	/* Declare ourselves safe for use inside shrinkers */
>  	if (IS_ENABLED(CONFIG_LOCKDEP)) {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/d=
rm/i915/selftests/i915_active.c
> index 1aa52b5cc488..61bf4560d8af 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_active.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_active.c
> @@ -51,7 +51,7 @@ static int __live_active(struct i915_active *base)
>  	return 0;
>  }
>  =

> -__i915_active_call static void __live_retire(struct i915_active *base)
> +static void __live_retire(struct i915_active *base)
>  {
>  	struct live_active *active =3D container_of(base, typeof(*active), base=
);
>  =

> @@ -68,7 +68,7 @@ static struct live_active *__live_alloc(struct drm_i915=
_private *i915)
>  		return NULL;
>  =

>  	kref_init(&active->ref);
> -	i915_active_init(&active->base, __live_active, __live_retire);
> +	i915_active_init(&active->base, __live_active, __live_retire, 0);
>  =

>  	return active;
>  }
> -- =

> 2.26.3
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
