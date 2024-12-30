Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CC59FE199
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 02:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D2D10E0B6;
	Mon, 30 Dec 2024 01:34:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="hAKtBQ2B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D0110E0B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2024 01:34:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C5E57A403B8;
 Mon, 30 Dec 2024 01:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3109DC4CED1;
 Mon, 30 Dec 2024 01:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1735522496;
 bh=p2NennyRD7D2ntTYsR5p7gMQu0uDdZDyMplMZruzqTU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hAKtBQ2B1D71FF4YZvDAN5qCEgW6frj7485qDmVQw1bHWnaQBipBC5tw+XsL3z2kb
 WP6kDwiAzrSefNDh+XEEjCvf/TdaemxG5CbUm+Iol2HgkX/anO3WDFetfZVk655rZT
 hSBFNQ2mybQub8GWf8sXuRwo6Bfvrfs4KHtz4UyoCly68hb9eHu93gzkhdfs+kH4IK
 k1fTZAAP5ENA2J0uRPGeEc/Elra7oynL7iiwYzZX8ER6Ii7AusZgIoYdPIMFSLc3DC
 s7WXQmYjbY5tpCLZKhLkaOsL1qZAOd2J0EJOIACvNfcPFnBnRDCTqjwi/d0/NCAZjk
 YJZTI14DTRU0g==
Date: Mon, 30 Dec 2024 02:34:50 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Tvrtko Ursulin <tursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915: Remove deadcode
Message-ID: <m4w5xt5tqkjbnnvhlq6rlhhclcgku5aytwnidn2h2yynp5hebk@pdborqadmeip>
References: <20241227113754.25871-1-tursulin@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241227113754.25871-1-tursulin@igalia.com>
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

Hi Tvrtko,

merged to drm-intel-gt-next. I have added also your SoB.

Thanks,
Andi

On Fri, Dec 27, 2024 at 11:37:52AM +0000, Tvrtko Ursulin wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> i915_active_acquire_for_context() was added in 2020 by
> commit 5d9341370f57 ("drm/i915: Export a preallocate variant of
> i915_active_acquire()") but has never been used.
> 
> The last use of __i915_gem_object_is_lmem() was removed in 2021 by
> commit ff20afc4cee7 ("drm/i915: Update error capture code to avoid using
> the current vma state")
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_lmem.c | 23 -----------------------
>  drivers/gpu/drm/i915/gem/i915_gem_lmem.h |  2 --
>  drivers/gpu/drm/i915/i915_active.c       | 18 ------------------
>  drivers/gpu/drm/i915/i915_active.h       |  1 -
>  4 files changed, 44 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> index 3198b64ad7db..388f90784d8a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> @@ -52,29 +52,6 @@ bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
>  		      mr->type == INTEL_MEMORY_STOLEN_LOCAL);
>  }
>  
> -/**
> - * __i915_gem_object_is_lmem - Whether the object is resident in
> - * lmem while in the fence signaling critical path.
> - * @obj: The object to check.
> - *
> - * This function is intended to be called from within the fence signaling
> - * path where the fence, or a pin, keeps the object from being migrated. For
> - * example during gpu reset or similar.
> - *
> - * Return: Whether the object is resident in lmem.
> - */
> -bool __i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
> -{
> -	struct intel_memory_region *mr = READ_ONCE(obj->mm.region);
> -
> -#ifdef CONFIG_LOCKDEP
> -	GEM_WARN_ON(dma_resv_test_signaled(obj->base.resv, DMA_RESV_USAGE_BOOKKEEP) &&
> -		    i915_gem_object_evictable(obj));
> -#endif
> -	return mr && (mr->type == INTEL_MEMORY_LOCAL ||
> -		      mr->type == INTEL_MEMORY_STOLEN_LOCAL);
> -}
> -
>  /**
>   * __i915_gem_object_create_lmem_with_ps - Create lmem object and force the
>   * minimum page size for the backing pages.
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> index 5a7a14e85c3f..ecd8f1a633a1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> @@ -19,8 +19,6 @@ i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
>  
>  bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
>  
> -bool __i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
> -
>  struct drm_i915_gem_object *
>  i915_gem_object_create_lmem_from_data(struct drm_i915_private *i915,
>  				      const void *data, size_t size);
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 35319228bc51..0dbc4e289300 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -527,24 +527,6 @@ int i915_active_acquire(struct i915_active *ref)
>  	return err;
>  }
>  
> -int i915_active_acquire_for_context(struct i915_active *ref, u64 idx)
> -{
> -	struct i915_active_fence *active;
> -	int err;
> -
> -	err = i915_active_acquire(ref);
> -	if (err)
> -		return err;
> -
> -	active = active_instance(ref, idx);
> -	if (!active) {
> -		i915_active_release(ref);
> -		return -ENOMEM;
> -	}
> -
> -	return 0; /* return with active ref */
> -}
> -
>  void i915_active_release(struct i915_active *ref)
>  {
>  	debug_active_assert(ref);
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index 77c676ecc263..821f7c21ea9b 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -186,7 +186,6 @@ int i915_request_await_active(struct i915_request *rq,
>  #define I915_ACTIVE_AWAIT_BARRIER BIT(2)
>  
>  int i915_active_acquire(struct i915_active *ref);
> -int i915_active_acquire_for_context(struct i915_active *ref, u64 idx);
>  bool i915_active_acquire_if_busy(struct i915_active *ref);
>  
>  void i915_active_release(struct i915_active *ref);
> -- 
> 2.47.1
> 
