Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B0A3C275E
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 18:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC8076EA4B;
	Fri,  9 Jul 2021 16:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 207A76EA4A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 16:13:24 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id a189so2554289oii.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Jul 2021 09:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zfWvBZ/jD2xhgNviKG41iPjcNK58J1n9HAd4z59lB+Q=;
 b=M0wJrRiUREKykRFdIsbE1Pc3OGNdrAN2yVaVKS0bU06IiJi07lDLlM9jXwH41j4VNO
 jwo0rbFucvh3/pkhUKjjcLlD4qpkdkBSh2EIwbWZALRxXfJ0E1iUgbIoVVHjdODymQC9
 THlJTV/d7txg7/+ukBYqe9qn6+2INcYGSeJm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zfWvBZ/jD2xhgNviKG41iPjcNK58J1n9HAd4z59lB+Q=;
 b=AgvVue7R6jDRrF+ARQrDoLTVl8OFEIXPSlH4DGFGY2Y9AGaugJt5sxvnbbTBbwYd++
 cpxIUX3Y9Fq8a+MHeBttTZgs2u7kI9iF+TqMwiFT4vaFRe1RpCOhn3vx+9SMbg3XVA6o
 FAZ9sQvOMqiuo1bGx0o3EmS/oM95K7iaupDo2278eELMBuE+uF31ksVmi0wByzpFukSE
 imopAyeu6vuuKZNiePQ/eX0TWy7mqfwXXfkjATvSPYIQ07HpBDWesERENUBqDxQ8OUeN
 OAkoWoRokLkrLbu70E6N61f4WI3xtZ1PBc/cIbVdduEk+tQsUJCwNomjpPeU/zMv0qRp
 7FNw==
X-Gm-Message-State: AOAM532dYx/NCsaroGJ2PSUYAAcRY5KVrLPPQcZeRiHw4z6GXl6+ZxpG
 gQxoaZJWjqDdwLaITrfFW47DfpVjkGIfNzZ+WcnUEQ==
X-Google-Smtp-Source: ABdhPJyDJI/68d390LlRy2JqeSRGTmYRRCMlvkyP5i/6lilPh9Tk6hWmjh44O2zZaHqHiXS+sNzLcxKAn8iLnGTVp50=
X-Received: by 2002:aca:f491:: with SMTP id
 s139mr22957256oih.128.1625847203505; 
 Fri, 09 Jul 2021 09:13:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210709151933.1994078-1-matthew.auld@intel.com>
In-Reply-To: <20210709151933.1994078-1-matthew.auld@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 9 Jul 2021 18:13:12 +0200
Message-ID: <CAKMK7uHThXJBMKxgyhAN5-1N793a9n=RN39anqCS6GPZiP=bNA@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: unconditionally flush the
 pages on acquire
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
Cc: Francisco Jerez <francisco.jerez.plata@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 9, 2021 at 5:19 PM Matthew Auld <matthew.auld@intel.com> wrote:
>
> EHL and JSL add the 'Bypass LLC' MOCS entry, which should make it
> possible for userspace to bypass the GTT caching bits set by the kernel,
> as per the given object cache_level. This is troublesome since the heavy
> flush we apply when first acquiring the pages is skipped if the kernel
> thinks the object is coherent with the GPU. As a result it might be
> possible to bypass the cache and read the contents of the page directly,
> which could be stale data. If it's just a case of userspace shooting
> themselves in the foot then so be it, but since i915 takes the stance of
> always zeroing memory before handing it to userspace, we need to prevent
> this.
>
> BSpec: 34007
> References: 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: Francisco Jerez <francisco.jerez.plata@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 29 +++++++++++++++++++++--
>  1 file changed, 27 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 6a04cce188fc..7e9ec68cce9e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -298,11 +298,12 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
>
>  void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_table *pages)
>  {
> +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
>         struct sgt_iter sgt_iter;
>         struct pagevec pvec;
>         struct page *page;
>
> -       GEM_WARN_ON(IS_DGFX(to_i915(obj->base.dev)));
> +       GEM_WARN_ON(IS_DGFX(i915));
>         __i915_gem_object_release_shmem(obj, pages, true);
>
>         i915_gem_gtt_finish_pages(obj, pages);
> @@ -325,7 +326,12 @@ void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_
>         }
>         if (pagevec_count(&pvec))
>                 check_release_pagevec(&pvec);
> -       obj->mm.dirty = false;
> +
> +       /* See the comment in shmem_object_init() for why we need this */
> +       if (IS_JSL_EHL(i915) && obj->flags & I915_BO_ALLOC_USER)
> +               obj->mm.dirty = true;
> +       else
> +               obj->mm.dirty = false;
>
>         sg_free_table(pages);
>         kfree(pages);
> @@ -539,6 +545,25 @@ static int shmem_object_init(struct intel_memory_region *mem,
>
>         i915_gem_object_set_cache_coherency(obj, cache_level);
>
> +       /*
> +        * EHL and JSL add the 'Bypass LLC' MOCS entry, which should make it
> +        * possible for userspace to bypass the GTT caching bits set by the
> +        * kernel, as per the given object cache_level. This is troublesome
> +        * since the heavy flush we apply when first gathering the pages is
> +        * skipped if the kernel thinks the object is coherent with the GPU. As
> +        * a result it might be possible to bypass the cache and read the
> +        * contents of the page directly, which could be stale data. If it's
> +        * just a case of userspace shooting themselves in the foot then so be
> +        * it, but since i915 takes the stance of always zeroing memory before
> +        * handing it to userspace, we need to prevent this.
> +        *
> +        * By setting cache_dirty here we make the clflush when first acquiring
> +        * the pages unconditional on such platforms. We also set this again in
> +        * put_pages().
> +        */
> +       if (IS_JSL_EHL(i915) && flags & I915_BO_ALLOC_USER)
> +               obj->cache_dirty = true;

I don't think this is enough, because every time we drop our pages
shmem could move them around or swap them out, and we get fresh ones.
So we need to re-force this every time we grab new pages.

Also there's already a pile of other cases (well not WB coherency
mode) where userspace can be clever and bypass the coherency if we
don't clflush first. I think it'd be really good to have all that in
one places as much as possible.

Finally this is extremely tricky code, and obj->cache_dirty and
related stuff isn't really documented. kerneldoc for all that would be
really good.
-Daniel

> +
>         i915_gem_object_init_memory_region(obj, mem);
>
>         return 0;
> --
> 2.26.3
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
