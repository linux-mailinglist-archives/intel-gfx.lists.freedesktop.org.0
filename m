Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 298583B6FA3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 10:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9566E82A;
	Tue, 29 Jun 2021 08:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6CD6E827
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 08:47:05 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 o33-20020a05600c5121b02901e360c98c08so1214247wms.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 01:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=i5DXAGl9zkApaWF4PUkYbJ5ybVl7jnqfeLGMapqHXd4=;
 b=eX++9xaV0EIcvsRVhcyyASOQ0+BjR2Conazf8LrAPbWtMLmRjKCkzKHXbB/GV16w4i
 GxsM2F6yyeWb3Ow+lS4bTxo3SwUuAfFN05jLjyO2qVFKEDAzCpX2Yw6WERCji/UvyLQc
 M+Te9JkH7tl4d4HSqXbaWsc7gArLm3F9zj2x0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=i5DXAGl9zkApaWF4PUkYbJ5ybVl7jnqfeLGMapqHXd4=;
 b=Ai6od/srJIcopNPKamcriD6NEfRQhqScCbLyMIZ6DuamWhsOWiPdMH9KBLT9bR2KkR
 s/FWw6g/RGVgoraq6KG2rKeZZooizU8S9gZi991FgumUOa+gUY/ol+L+RNXI8nBOT/zl
 prDfZshWq7BGWe1VqfHrqBFZhaSA/bUQxsTFlTzf97JES5M+2Jt0Mu56+K8rEj2sFCWP
 2TNPL4F+ReqUyeAl53eIrr3X4XRwX+U/SlzqZ6KoiZxo7bOSKrZ4t1GhBuScHQvCLNjD
 tJK+6J5i8TuDoN6in8lm8aK+iQMvlqV896NB+sS9l7gP8KTCXRiVSar/5nBBjLVqw5RS
 wK8A==
X-Gm-Message-State: AOAM531QHkc5YnW0/4hsFncsYnwpXJ9pyQsBZxMo61JamlwG+R31+7GD
 xO3RNE1doWgfCYbL+xRjg2GoaDA49n4l3Q==
X-Google-Smtp-Source: ABdhPJx7SZBDJlscAZMjdxypN9GynwDGsKmnphH1aGMw/o6DbmkooMWx/Q0Fobd78y9iGTj3rMUJzQ==
X-Received: by 2002:a7b:c20d:: with SMTP id x13mr31692175wmi.134.1624956424509; 
 Tue, 29 Jun 2021 01:47:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m41sm2040503wms.26.2021.06.29.01.47.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 01:47:03 -0700 (PDT)
Date: Tue, 29 Jun 2021 10:47:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <YNreBmkuP1E3Amnt@phenom.ffwll.local>
References: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
 <20210628144626.76126-2-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628144626.76126-2-thomas.hellstrom@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/gem: Implement object
 migration
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 28, 2021 at 04:46:22PM +0200, Thomas Hellstr=F6m wrote:
> Introduce an interface to migrate objects between regions.
> This is primarily intended to migrate objects to LMEM for display and
> to SYSTEM for dma-buf, but might be reused in one form or another for
> performance-based migration.
> =

> v2:
> - Verify that the memory region given as an id really exists.
>   (Reported by Matthew Auld)
> - Call i915_gem_object_{init,release}_memory_region() when switching regi=
on
>   to handle also switching region lists. (Reported by Matthew Auld)
> v3:
> - Fix i915_gem_object_can_migrate() to return true if object is already in
>   the correct region, even if the object ops doesn't have a migrate()
>   callback.
> - Update typo in commit message.
> - Fix kerneldoc of i915_gem_object_wait_migration().
> =

> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>

Looks reasonable to me as the main interface. I'm a bit on the fence on
hiding everything behind obj->ops, since we're not going to have another
implementation of migrate than the ttm one. But also while everything is
in-flight it's probably good to at least try and maintain some boundaries,
for otherwise the messiness might become unmanageable

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

But don't count this as real review :-)

One suggestion at the very bottom.

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    | 96 +++++++++++++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    | 12 +++
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  9 ++
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 69 +++++++++----
>  drivers/gpu/drm/i915/gem/i915_gem_wait.c      | 19 ++++
>  5 files changed, 188 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm=
/i915/gem/i915_gem_object.c
> index 07e8ff9a8aae..1c18be067b58 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -513,6 +513,102 @@ bool i915_gem_object_has_iomem(const struct drm_i91=
5_gem_object *obj)
>  	return obj->mem_flags & I915_BO_FLAG_IOMEM;
>  }
>  =

> +/**
> + * i915_gem_object_can_migrate - Whether an object likely can be migrated
> + *
> + * @obj: The object to migrate
> + * @id: The region intended to migrate to
> + *
> + * Check whether the object backend supports migration to the
> + * given region. Note that pinning may affect the ability to migrate.
> + *
> + * Return: true if migration is possible, false otherwise.
> + */
> +bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
> +				 enum intel_region_id id)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> +	unsigned int num_allowed =3D obj->mm.n_placements;
> +	struct intel_memory_region *mr;
> +	unsigned int i;
> +
> +	GEM_BUG_ON(id >=3D INTEL_REGION_UNKNOWN);
> +	GEM_BUG_ON(obj->mm.madv !=3D I915_MADV_WILLNEED);
> +
> +	mr =3D i915->mm.regions[id];
> +	if (!mr)
> +		return false;
> +
> +	if (obj->mm.region =3D=3D mr)
> +		return true;
> +
> +	if (!i915_gem_object_evictable(obj))
> +		return false;
> +
> +	if (!obj->ops->migrate)
> +		return false;
> +
> +	if (!(obj->flags & I915_BO_ALLOC_USER))
> +		return true;
> +
> +	if (num_allowed =3D=3D 0)
> +		return false;
> +
> +	for (i =3D 0; i < num_allowed; ++i) {
> +		if (mr =3D=3D obj->mm.placements[i])
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +/**
> + * i915_gem_object_migrate - Migrate an object to the desired region id
> + * @obj: The object to migrate.
> + * @ww: An optional struct i915_gem_ww_ctx. If NULL, the backend may
> + * not be successful in evicting other objects to make room for this obj=
ect.
> + * @id: The region id to migrate to.
> + *
> + * Attempt to migrate the object to the desired memory region. The
> + * object backend must support migration and the object may not be
> + * pinned, (explicitly pinned pages or pinned vmas). The object must
> + * be locked.
> + * On successful completion, the object will have pages pointing to
> + * memory in the new region, but an async migration task may not have
> + * completed yet, and to accomplish that, i915_gem_object_wait_migration=
()
> + * must be called.
> + *
> + * Return: 0 on success. Negative error code on failure. In particular m=
ay
> + * return -ENXIO on lack of region space, -EDEADLK for deadlock avoidance
> + * if @ww is set, -EINTR or -ERESTARTSYS if signal pending, and
> + * -EBUSY if the object is pinned.
> + */
> +int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
> +			    struct i915_gem_ww_ctx *ww,
> +			    enum intel_region_id id)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> +	struct intel_memory_region *mr;
> +
> +	GEM_BUG_ON(id >=3D INTEL_REGION_UNKNOWN);
> +	GEM_BUG_ON(obj->mm.madv !=3D I915_MADV_WILLNEED);
> +	assert_object_held(obj);
> +
> +	mr =3D i915->mm.regions[id];
> +	GEM_BUG_ON(!mr);
> +
> +	if (obj->mm.region =3D=3D mr)
> +		return 0;
> +
> +	if (!i915_gem_object_evictable(obj))
> +		return -EBUSY;
> +
> +	if (!obj->ops->migrate)
> +		return -EOPNOTSUPP;
> +
> +	return obj->ops->migrate(obj, mr);
> +}
> +
>  void i915_gem_init__objects(struct drm_i915_private *i915)
>  {
>  	INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index ea3224a480c4..8cbd7a5334e2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -17,6 +17,8 @@
>  #include "i915_gem_ww.h"
>  #include "i915_vma_types.h"
>  =

> +enum intel_region_id;
> +
>  /*
>   * XXX: There is a prevalence of the assumption that we fit the
>   * object's page count inside a 32bit _signed_ variable. Let's document
> @@ -597,6 +599,16 @@ bool i915_gem_object_migratable(struct drm_i915_gem_=
object *obj);
>  =

>  bool i915_gem_object_validates_to_lmem(struct drm_i915_gem_object *obj);
>  =

> +int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
> +			    struct i915_gem_ww_ctx *ww,
> +			    enum intel_region_id id);
> +
> +bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
> +				 enum intel_region_id id);
> +
> +int i915_gem_object_wait_migration(struct drm_i915_gem_object *obj,
> +				   unsigned int flags);
> +
>  #ifdef CONFIG_MMU_NOTIFIER
>  static inline bool
>  i915_gem_object_is_userptr(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/g=
pu/drm/i915/gem/i915_gem_object_types.h
> index 441f913c87e6..ef3de2ae9723 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -18,6 +18,7 @@
>  =

>  struct drm_i915_gem_object;
>  struct intel_fronbuffer;
> +struct intel_memory_region;
>  =

>  /*
>   * struct i915_lut_handle tracks the fast lookups from handle to vma used
> @@ -77,6 +78,14 @@ struct drm_i915_gem_object_ops {
>  	 * delayed_free - Override the default delayed free implementation
>  	 */
>  	void (*delayed_free)(struct drm_i915_gem_object *obj);
> +
> +	/**
> +	 * migrate - Migrate object to a different region either for
> +	 * pinning or for as long as the object lock is held.
> +	 */
> +	int (*migrate)(struct drm_i915_gem_object *obj,
> +		       struct intel_memory_region *mr);
> +
>  	void (*release)(struct drm_i915_gem_object *obj);
>  =

>  	const struct vm_operations_struct *mmap_ops;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i9=
15/gem/i915_gem_ttm.c
> index c39d982c4fa6..8f89185b6507 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -617,7 +617,8 @@ struct ttm_device_funcs *i915_ttm_driver(void)
>  	return &i915_ttm_bo_driver;
>  }
>  =

> -static int i915_ttm_get_pages(struct drm_i915_gem_object *obj)
> +static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
> +				struct ttm_placement *placement)
>  {
>  	struct ttm_buffer_object *bo =3D i915_gem_to_ttm(obj);
>  	struct ttm_operation_ctx ctx =3D {
> @@ -625,19 +626,12 @@ static int i915_ttm_get_pages(struct drm_i915_gem_o=
bject *obj)
>  		.no_wait_gpu =3D false,
>  	};
>  	struct sg_table *st;
> -	struct ttm_place requested, busy[I915_TTM_MAX_PLACEMENTS];
> -	struct ttm_placement placement;
>  	int real_num_busy;
>  	int ret;
>  =

> -	GEM_BUG_ON(obj->mm.n_placements > I915_TTM_MAX_PLACEMENTS);
> -
> -	/* Move to the requested placement. */
> -	i915_ttm_placement_from_obj(obj, &requested, busy, &placement);
> -
>  	/* First try only the requested placement. No eviction. */
> -	real_num_busy =3D fetch_and_zero(&placement.num_busy_placement);
> -	ret =3D ttm_bo_validate(bo, &placement, &ctx);
> +	real_num_busy =3D fetch_and_zero(&placement->num_busy_placement);
> +	ret =3D ttm_bo_validate(bo, placement, &ctx);
>  	if (ret) {
>  		ret =3D i915_ttm_err_to_gem(ret);
>  		/*
> @@ -652,8 +646,8 @@ static int i915_ttm_get_pages(struct drm_i915_gem_obj=
ect *obj)
>  		 * If the initial attempt fails, allow all accepted placements,
>  		 * evicting if necessary.
>  		 */
> -		placement.num_busy_placement =3D real_num_busy;
> -		ret =3D ttm_bo_validate(bo, &placement, &ctx);
> +		placement->num_busy_placement =3D real_num_busy;
> +		ret =3D ttm_bo_validate(bo, placement, &ctx);
>  		if (ret)
>  			return i915_ttm_err_to_gem(ret);
>  	}
> @@ -668,16 +662,56 @@ static int i915_ttm_get_pages(struct drm_i915_gem_o=
bject *obj)
>  		i915_ttm_adjust_gem_after_move(obj);
>  	}
>  =

> -	/* Object either has a page vector or is an iomem object */
> -	st =3D bo->ttm ? i915_ttm_tt_get_st(bo->ttm) : obj->ttm.cached_io_st;
> -	if (IS_ERR(st))
> -		return PTR_ERR(st);
> +	if (!obj->mm.pages) {
> +		/* Object either has a page vector or is an iomem object */
> +		st =3D bo->ttm ? i915_ttm_tt_get_st(bo->ttm) : obj->ttm.cached_io_st;
> +		if (IS_ERR(st))
> +			return PTR_ERR(st);
>  =

> -	__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
> +		__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
> +	}
>  =

>  	return ret;
>  }
>  =

> +static int i915_ttm_get_pages(struct drm_i915_gem_object *obj)
> +{
> +	struct ttm_place requested, busy[I915_TTM_MAX_PLACEMENTS];
> +	struct ttm_placement placement;
> +
> +	GEM_BUG_ON(obj->mm.n_placements > I915_TTM_MAX_PLACEMENTS);
> +
> +	/* Move to the requested placement. */
> +	i915_ttm_placement_from_obj(obj, &requested, busy, &placement);
> +
> +	return __i915_ttm_get_pages(obj, &placement);
> +}
> +
> +static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
> +			    struct intel_memory_region *mr)
> +{
> +	struct ttm_place requested;
> +	struct ttm_placement placement;
> +	int ret;
> +
> +	i915_ttm_place_from_region(mr, &requested, obj->flags);
> +	placement.num_placement =3D 1;
> +	placement.num_busy_placement =3D 1;
> +	placement.placement =3D &requested;
> +	placement.busy_placement =3D &requested;
> +
> +	ret =3D __i915_ttm_get_pages(obj, &placement);
> +	if (ret)
> +		return ret;
> +
> +	if (obj->mm.region !=3D mr) {
> +		i915_gem_object_release_memory_region(obj);
> +		i915_gem_object_init_memory_region(obj, mr);
> +	}
> +
> +	return 0;
> +}
> +
>  static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
>  			       struct sg_table *st)
>  {
> @@ -814,6 +848,7 @@ static const struct drm_i915_gem_object_ops i915_gem_=
ttm_obj_ops =3D {
>  	.truncate =3D i915_ttm_purge,
>  	.adjust_lru =3D i915_ttm_adjust_lru,
>  	.delayed_free =3D i915_ttm_delayed_free,
> +	.migrate =3D i915_ttm_migrate,
>  	.mmap_offset =3D i915_ttm_mmap_offset,
>  	.mmap_ops =3D &vm_ops_ttm,
>  };
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i=
915/gem/i915_gem_wait.c
> index 1070d3afdce7..f909aaa09d9c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> @@ -290,3 +290,22 @@ i915_gem_wait_ioctl(struct drm_device *dev, void *da=
ta, struct drm_file *file)
>  	i915_gem_object_put(obj);
>  	return ret;
>  }
> +
> +/**
> + * i915_gem_object_wait_migration - Sync an accelerated migration operat=
ion
> + * @obj: The migrating object.
> + * @flags: waiting flags. Currently supports only I915_WAIT_INTERRUPTIBL=
E.
> + *
> + * Wait for any pending async migration operation on the object,
> + * whether it's explicitly (i915_gem_object_migrate()) or implicitly
> + * (swapin, initial clearing) initiated.
> + *
> + * Return: 0 if successful, -ERESTARTSYS if a signal was hit during wait=
ing.
> + */
> +int i915_gem_object_wait_migration(struct drm_i915_gem_object *obj,
> +				   unsigned int flags)
> +{
> +	might_sleep();
> +	/* NOP for now. */

Maybe dma_fence_might_wait() here, since that's a notch more nasty?

Cheers, Daniel

> +	return 0;
> +}
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
