Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D92B3D5E58
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81EF6F8E9;
	Mon, 26 Jul 2021 15:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247CE6F533
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 15:50:15 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id z18so15557274ybg.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 08:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=itJBpd0NtgQwQTOFYxgYSRmMhfw+aAFyL5+P7wPsKBQ=;
 b=1zLg4ALhikn1+BG/dSB1fprE+d8qqQ5Sq8zbjI9xzkQF2/EZqIQ4oNm7WCQ8BJKv93
 jf+oxhNBStUL6MRGuoBEwO2PQ1drxs+MNOWKzrxnJpklHQVWoxg0EuJBsaj98B8fezck
 PJSskm13qXT7L07x2l4/zW041ZvYYdJLUfQUGW3cEClTD/NHZmyZU3LGz5eWEKw61Lzy
 B9h+wjUMVueXKJyv47z3LiubpimKopbU0w64zeBupQOdBtoBldr9nX89S5fbOF6ZK6ya
 +FQ/EkCxY40YSrcOSCy/Ijei0L8fD3M+peCn9XMUzpWLDhtOGHJ8dEqJbELywtU1FiBZ
 Z1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=itJBpd0NtgQwQTOFYxgYSRmMhfw+aAFyL5+P7wPsKBQ=;
 b=UB17xOBqmbFq+k1KwurayztKmq6IFQ0GMjkE3mdImNChfOVXiXe9IwF3TZvBT/CbOQ
 b256sUM11Dk88azJtcfCmULqgbuF/HEVb8BHaoM52vNljziUJAvJxd/8e9qRiZ2Rh+Q3
 xpfXEB+qzK8Sf4g662d8ZyDy6ZEj/cFXJ8Z3Wg6/QzVW9oK4/9WnoaVe1I1PB2G9V0hS
 VoEUt6eJlMNWg5pbfRTSmx2tUQZNIw23wPOQAywMHtsjWKfSaiB8h7oe6CS8F8/HTrZp
 8qwQLPiQ97afOIxynzaoEtmgTXVjZe6fnX+mErcniKgSjg5tDC87nJ4PO+1vYvOhXKWw
 PkMA==
X-Gm-Message-State: AOAM531ijHaeEqidvp/oLsrtwIEqYoN8/HmLfssobrAtsaJvPHd3EZCb
 bQokPp03da8jtoWdPwadrAGkNq1HjEPl0JPDsGK2mw==
X-Google-Smtp-Source: ABdhPJwDbuTlZLS0jhSGW3f80kiNOwghZ2Et9QD8bYu7P5/eSRul9hWn2j9yr4QEFdgQy/LlPOiVW+kZVthQosvAOCs=
X-Received: by 2002:a25:5584:: with SMTP id
 j126mr25398486ybb.323.1627314614249; 
 Mon, 26 Jul 2021 08:50:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
 <20210723192934.1004427-9-daniel.vetter@ffwll.ch>
In-Reply-To: <20210723192934.1004427-9-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 26 Jul 2021 10:50:03 -0500
Message-ID: <CAOFGe95Ru2VAGVKe_oF88Wi4eHby+rN_COhSbfkoe4SjiYXK_g@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: move vma slab to direct
 module init/exit
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
> noise with removing the static global.slab_vmas to just a
> slab_vmas.
>
> We have to keep i915_drv.h include in i915_globals otherwise there's
> nothing anymore that pulls in GEM_BUG_ON.
>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_globals.c |  3 +--
>  drivers/gpu/drm/i915/i915_globals.h |  3 ---
>  drivers/gpu/drm/i915/i915_pci.c     |  2 ++
>  drivers/gpu/drm/i915/i915_vma.c     | 25 ++++++++-----------------
>  drivers/gpu/drm/i915/i915_vma.h     |  3 +++
>  5 files changed, 14 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
> index 8923589057ab..04979789e7be 100644
> --- a/drivers/gpu/drm/i915/i915_globals.c
> +++ b/drivers/gpu/drm/i915/i915_globals.c
> @@ -8,7 +8,7 @@
>  #include <linux/workqueue.h>
>
>  #include "i915_globals.h"
> -#include "i915_vma.h"
> +#include "i915_drv.h"
>
>  static LIST_HEAD(globals);
>
> @@ -28,7 +28,6 @@ static void __i915_globals_cleanup(void)
>  }
>
>  static __initconst int (* const initfn[])(void) = {
> -       i915_global_vma_init,
>  };
>
>  int __init i915_globals_init(void)
> diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
> index 7a57bce1da05..57d2998bba45 100644
> --- a/drivers/gpu/drm/i915/i915_globals.h
> +++ b/drivers/gpu/drm/i915/i915_globals.h
> @@ -22,7 +22,4 @@ void i915_global_register(struct i915_global *global);
>  int i915_globals_init(void);
>  void i915_globals_exit(void);
>
> -/* constructors */
> -int i915_global_vma_init(void);
> -
>  #endif /* _I915_GLOBALS_H_ */
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index a44318519977..0affcf33a211 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -40,6 +40,7 @@
>  #include "i915_globals.h"
>  #include "i915_selftest.h"
>  #include "i915_scheduler.h"
> +#include "i915_vma.h"
>
>  #define PLATFORM(x) .platform = (x)
>  #define GEN(x) \
> @@ -1306,6 +1307,7 @@ static const struct {
>         { i915_objects_module_init, i915_objects_module_exit },
>         { i915_request_module_init, i915_request_module_exit },
>         { i915_scheduler_module_init, i915_scheduler_module_exit },
> +       { i915_vma_module_init, i915_vma_module_exit },
>         { i915_globals_init, i915_globals_exit },
>         { i915_mock_selftests, NULL },
>         { i915_pmu_init, i915_pmu_exit },
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 09a7c47926f7..d094e2016b93 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -34,24 +34,20 @@
>  #include "gt/intel_gt_requests.h"
>
>  #include "i915_drv.h"
> -#include "i915_globals.h"
>  #include "i915_sw_fence_work.h"
>  #include "i915_trace.h"
>  #include "i915_vma.h"
>
> -static struct i915_global_vma {
> -       struct i915_global base;
> -       struct kmem_cache *slab_vmas;
> -} global;
> +struct kmem_cache *slab_vmas;

static.  With that,

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

>
>  struct i915_vma *i915_vma_alloc(void)
>  {
> -       return kmem_cache_zalloc(global.slab_vmas, GFP_KERNEL);
> +       return kmem_cache_zalloc(slab_vmas, GFP_KERNEL);
>  }
>
>  void i915_vma_free(struct i915_vma *vma)
>  {
> -       return kmem_cache_free(global.slab_vmas, vma);
> +       return kmem_cache_free(slab_vmas, vma);
>  }
>
>  #if IS_ENABLED(CONFIG_DRM_I915_ERRLOG_GEM) && IS_ENABLED(CONFIG_DRM_DEBUG_MM)
> @@ -1414,21 +1410,16 @@ void i915_vma_make_purgeable(struct i915_vma *vma)
>  #include "selftests/i915_vma.c"
>  #endif
>
> -static void i915_global_vma_exit(void)
> +void i915_vma_module_exit(void)
>  {
> -       kmem_cache_destroy(global.slab_vmas);
> +       kmem_cache_destroy(slab_vmas);
>  }
>
> -static struct i915_global_vma global = { {
> -       .exit = i915_global_vma_exit,
> -} };
> -
> -int __init i915_global_vma_init(void)
> +int __init i915_vma_module_init(void)
>  {
> -       global.slab_vmas = KMEM_CACHE(i915_vma, SLAB_HWCACHE_ALIGN);
> -       if (!global.slab_vmas)
> +       slab_vmas = KMEM_CACHE(i915_vma, SLAB_HWCACHE_ALIGN);
> +       if (!slab_vmas)
>                 return -ENOMEM;
>
> -       i915_global_register(&global.base);
>         return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index eca452a9851f..ed69f66c7ab0 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -426,4 +426,7 @@ static inline int i915_vma_sync(struct i915_vma *vma)
>         return i915_active_wait(&vma->active);
>  }
>
> +void i915_vma_module_exit(void);
> +int i915_vma_module_init(void);
> +
>  #endif
> --
> 2.32.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
