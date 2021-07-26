Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108A23D5D34
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2726E165;
	Mon, 26 Jul 2021 15:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com
 [IPv6:2607:f8b0:4864:20::b2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF596E165
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 15:40:07 +0000 (UTC)
Received: by mail-yb1-xb2e.google.com with SMTP id a93so15578882ybi.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 08:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bA4thv1i6cRjXLozgmM/SFrkCBsmVT9u9Ze2PgAgFmk=;
 b=qvOtGALqmO7zcjhGmZhMTVqWkyVa4NKAT5alIF1m24PF9fkCeSbrcvSahe0nEBPyeV
 w/02G4G74PnBxoXrYOOPfqvMQ+vrBhn1zVhB0spHIE5FDyHWx+6q36IQBD9RTaBulP4R
 JPeNAQVezKegDISJ4QfejEaVReN3kSC/APMYJ1YM2+QQSPc/vKXmqJgsIchr91Pd6KDc
 aKAEUSE5MRrt7ITmfVrWXSfFsa11znHHqJEz7y4oEtdD7gXTNWSxgQcILWoacOLGvs9I
 MgTTr0JP0fhIwpXpd58MhQk3NlFX2FZf3pye+4J8Uf76RU5SGry97sJPG5B6+/U9r1EX
 jDTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bA4thv1i6cRjXLozgmM/SFrkCBsmVT9u9Ze2PgAgFmk=;
 b=kzH65vQJTNkpcz9InkuSVVo/SKtnzTzJDa9Y/dvHzWUqahDpPcQOxtlTErBFiWRzZh
 pYyEjAlCOu558LVFhX3lGi4cy9UWZrYEVa6wislyEVrNHPwQOrrMM9bEIpq0V5Pxfteb
 BipVtlyDuTD7xETISSd0PHmt/vSaiY+jKY5Q6k/QZD63Tn8DNQ9mu4VpQuFGzrKpsB0k
 VJdGMddKe74V/6svzDtcDlH7r0Ym+XInvIEPJgz+jYeb2VziV2JHUnKMhWFkBDQtJT56
 +g+k1leTGOVzgTrXArT33dCPDR4iG8f1C+oqX31DpOkGY4p/TZgezgSeC6703b2NU7Fa
 Hg3Q==
X-Gm-Message-State: AOAM531MrNvyd11kpxlza8ScZZEg3usufYZt1B6W6uDe9A0yNQFSis9O
 g89gCYjGNuSvzeyzdMJmuHn0x0gSyZtPfeEMfMOtKQ==
X-Google-Smtp-Source: ABdhPJzCHtgiIVxqF8Hy/sRRKFNjIq6si6aJuKnjP1l7UODMvcJTan32wouEqxxhjRm4ZMu7Z2Fk1KZQD4e+gcNJv/A=
X-Received: by 2002:a25:3750:: with SMTP id e77mr7272740yba.469.1627314006587; 
 Mon, 26 Jul 2021 08:40:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
 <20210723192934.1004427-6-daniel.vetter@ffwll.ch>
In-Reply-To: <20210723192934.1004427-6-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 26 Jul 2021 10:39:55 -0500
Message-ID: <CAOFGe945J0aheqkWpM1AUeq8RZbeJ19P7rAnJxuNBsejSffqbw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915: move gem_objects slab to
 direct module init/exit
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 23, 2021 at 2:29 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> With the global kmem_cache shrink infrastructure gone there's nothing
> special and we can convert them over.
>
> I'm doing this split up into each patch because there's quite a bit of
> noise with removing the static global.slab_objects to just a
> slab_objects.
>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c | 26 +++++++---------------
>  drivers/gpu/drm/i915/gem/i915_gem_object.h |  3 +++
>  drivers/gpu/drm/i915/i915_globals.c        |  1 -
>  drivers/gpu/drm/i915/i915_globals.h        |  1 -
>  drivers/gpu/drm/i915/i915_pci.c            |  1 +
>  5 files changed, 12 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 5c21cff33199..53156250d283 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -30,14 +30,10 @@
>  #include "i915_gem_context.h"
>  #include "i915_gem_mman.h"
>  #include "i915_gem_object.h"
> -#include "i915_globals.h"
>  #include "i915_memcpy.h"
>  #include "i915_trace.h"
>
> -static struct i915_global_object {
> -       struct i915_global base;
> -       struct kmem_cache *slab_objects;
> -} global;
> +struct kmem_cache *slab_objects;

static

With that,

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

>  static const struct drm_gem_object_funcs i915_gem_object_funcs;
>
> @@ -45,7 +41,7 @@ struct drm_i915_gem_object *i915_gem_object_alloc(void)
>  {
>         struct drm_i915_gem_object *obj;
>
> -       obj = kmem_cache_zalloc(global.slab_objects, GFP_KERNEL);
> +       obj = kmem_cache_zalloc(slab_objects, GFP_KERNEL);
>         if (!obj)
>                 return NULL;
>         obj->base.funcs = &i915_gem_object_funcs;
> @@ -55,7 +51,7 @@ struct drm_i915_gem_object *i915_gem_object_alloc(void)
>
>  void i915_gem_object_free(struct drm_i915_gem_object *obj)
>  {
> -       return kmem_cache_free(global.slab_objects, obj);
> +       return kmem_cache_free(slab_objects, obj);
>  }
>
>  void i915_gem_object_init(struct drm_i915_gem_object *obj,
> @@ -664,23 +660,17 @@ void i915_gem_init__objects(struct drm_i915_private *i915)
>         INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
>  }
>
> -static void i915_global_objects_exit(void)
> +void i915_objects_module_exit(void)
>  {
> -       kmem_cache_destroy(global.slab_objects);
> +       kmem_cache_destroy(slab_objects);
>  }
>
> -static struct i915_global_object global = { {
> -       .exit = i915_global_objects_exit,
> -} };
> -
> -int __init i915_global_objects_init(void)
> +int __init i915_objects_module_init(void)
>  {
> -       global.slab_objects =
> -               KMEM_CACHE(drm_i915_gem_object, SLAB_HWCACHE_ALIGN);
> -       if (!global.slab_objects)
> +       slab_objects = KMEM_CACHE(drm_i915_gem_object, SLAB_HWCACHE_ALIGN);
> +       if (!slab_objects)
>                 return -ENOMEM;
>
> -       i915_global_register(&global.base);
>         return 0;
>  }
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index f3ede43282dc..6d8ea62a372f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -48,6 +48,9 @@ static inline bool i915_gem_object_size_2big(u64 size)
>
>  void i915_gem_init__objects(struct drm_i915_private *i915);
>
> +void i915_objects_module_exit(void);
> +int i915_objects_module_init(void);
> +
>  struct drm_i915_gem_object *i915_gem_object_alloc(void);
>  void i915_gem_object_free(struct drm_i915_gem_object *obj);
>
> diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
> index dbb3d81eeea7..40a592fbc3e0 100644
> --- a/drivers/gpu/drm/i915/i915_globals.c
> +++ b/drivers/gpu/drm/i915/i915_globals.c
> @@ -30,7 +30,6 @@ static void __i915_globals_cleanup(void)
>  }
>
>  static __initconst int (* const initfn[])(void) = {
> -       i915_global_objects_init,
>         i915_global_request_init,
>         i915_global_scheduler_init,
>         i915_global_vma_init,
> diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
> index f16752dbbdbf..9734740708f4 100644
> --- a/drivers/gpu/drm/i915/i915_globals.h
> +++ b/drivers/gpu/drm/i915/i915_globals.h
> @@ -23,7 +23,6 @@ int i915_globals_init(void);
>  void i915_globals_exit(void);
>
>  /* constructors */
> -int i915_global_objects_init(void);
>  int i915_global_request_init(void);
>  int i915_global_scheduler_init(void);
>  int i915_global_vma_init(void);
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 2b56e664d043..2334eb3e9abb 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1301,6 +1301,7 @@ static const struct {
>         { i915_buddy_module_init, i915_buddy_module_exit },
>         { i915_context_module_init, i915_context_module_exit },
>         { i915_gem_context_module_init, i915_gem_context_module_exit },
> +       { i915_objects_module_init, i915_objects_module_exit },
>         { i915_globals_init, i915_globals_exit },
>         { i915_mock_selftests, NULL },
>         { i915_pmu_init, i915_pmu_exit },
> --
> 2.32.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
