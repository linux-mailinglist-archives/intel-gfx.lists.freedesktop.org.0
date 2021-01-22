Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD3A300A05
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 18:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0DD96EA21;
	Fri, 22 Jan 2021 17:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440BF6EA21
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 17:43:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23674539-1500050 for multiple; Fri, 22 Jan 2021 17:43:27 +0000
MIME-Version: 1.0
In-Reply-To: <20210122173546.531842-2-matthew.auld@intel.com>
References: <20210122173546.531842-1-matthew.auld@intel.com>
 <20210122173546.531842-2-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 17:43:27 +0000
Message-ID: <161133740725.24506.13068861174088432415@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: consolidate 2big error
 checking for object sizes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2021-01-22 17:35:46)
> Throw it into a simple helper, and throw a warning if we encounter an
> object which has been initialised with an object size that exceeds our
> limit of INT_MAX pages.
> 
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c  |  9 +------
>  drivers/gpu/drm/i915/gem/i915_gem_object.c  |  2 ++
>  drivers/gpu/drm/i915/gem/i915_gem_object.h  | 26 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_region.c  | 12 +---------
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 16 +------------
>  5 files changed, 31 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index dc11497f830b..5cc8a0b2387f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -244,14 +244,7 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
>                 }
>         }
>  
> -       /*
> -        * XXX: There is a prevalence of the assumption that we fit the
> -        * object's page count inside a 32bit _signed_ variable. Let's document
> -        * this and catch if we ever need to fix it. In the meantime, if you do
> -        * spot such a local variable, please consider fixing!
> -        */
> -
> -       if (dma_buf->size >> PAGE_SHIFT > INT_MAX)
> +       if (i915_gem_object_size_2big(dma_buf->size))
>                 return ERR_PTR(-E2BIG);
>  
>         /* need to attach */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 70f798405f7f..d3702ea8c6aa 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -62,6 +62,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>                           const struct drm_i915_gem_object_ops *ops,
>                           struct lock_class_key *key)
>  {
> +       GEM_CHECK_SIZE_OVERFLOW(obj->base.size);
> +
>         __mutex_init(&obj->mm.lock, ops->name ?: "obj->mm.lock", key);
>  
>         spin_lock_init(&obj->vma.lock);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index d0ae834d787a..d9cef56533ca 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -16,6 +16,32 @@
>  #include "i915_gem_gtt.h"
>  #include "i915_vma_types.h"
>  
> +/*
> + * XXX: There is a prevalence of the assumption that we fit the
> + * object's page count inside a 32bit _signed_ variable. Let's document
> + * this and catch if we ever need to fix it. In the meantime, if you do
> + * spot such a local variable, please consider fixing!
> + *
> + * Aside from our own locals (for which we have no excuse!):
> + * - sg_table embeds unsigned int for num_pages
> + * - get_user_pages*() mixed ints with longs
> + */
> +#define GEM_CHECK_SIZE_OVERFLOW(sz) \
> +       GEM_WARN_ON((sz) >> PAGE_SHIFT > INT_MAX)
> +
> +static inline bool i915_gem_object_size_2big(u64 size)
> +{
> +       struct drm_i915_gem_object *obj;
> +
> +       if (size >> PAGE_SHIFT > INT_MAX)
> +               return true;

Macro here^

Make it easy to grep, everybody gets a warning as a reminder to fix it.
And a prize to whoever does manage to trigger the warning.

> +
> +       if (overflows_type(size, obj->base.size))
> +               return true;
> +
> +       return false;
> +}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
