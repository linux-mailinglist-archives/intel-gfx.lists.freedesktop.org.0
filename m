Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21DF3C27D6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 18:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91E06E8F1;
	Fri,  9 Jul 2021 16:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com
 [IPv6:2607:f8b0:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E652E6E8EB
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 16:57:48 +0000 (UTC)
Received: by mail-ot1-x332.google.com with SMTP id
 i5-20020a9d68c50000b02904b41fa91c97so5698231oto.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Jul 2021 09:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WRF8//kJJACAatw9JPVGOQMSmTzkvIj+S5nFtVDd2EM=;
 b=JYi9IhUuDAJsyclPgjnsRQSUDqV3PJ4s3UhQCv5feSEWNzdEfr6U14tSntAJC9NuVv
 hk8hoOTYwA+CsZmvU1ha3gJrcWOkVDkicVMwfQRIDRQoIiymXXSuSIDez0Gd7bqoX5z8
 2dyEaK0IDQwANhswIqI5Wao1vGAn8yMnMNVYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WRF8//kJJACAatw9JPVGOQMSmTzkvIj+S5nFtVDd2EM=;
 b=Uqfvt3DeLi9+Yo+iXgDDwVoaFSpe1QKewz0xWqngeS46waBxIIN9yq+5FtavdOKxBz
 uPjOJurRMTBBoMxo6w7dFRIlFuZerxGiBzPpRz3agslb7fXLGB0YmQ14X3836ayK+VnM
 fELc2yQEIAPPAUZrBONpU693nDMUJPPNqjGi8CgNN5BVQEZqh7aOXOxisXkqEUpRNTAD
 mkhDcVOAXU7bRnFLsdxx7poyEKEtzS79ILboTPgMeh8/DC2JUCK0AsXYdVnlX04I8ayn
 q4VOVkFXGHET7TmnAo0GlLQIIHn8yJI7uBq1MKiVGt6sWlM24i8efg/YhbWEFxVwsRYj
 2/xw==
X-Gm-Message-State: AOAM530JB1/BifrOcE6HveUWhnePGTd1kpELMVa1xT++SMysjh8j8Lsh
 PJRAzpG7IBdB87Xlc5iPcY9/6I/rD4n6O1G6EcVlkA==
X-Google-Smtp-Source: ABdhPJwctORKOz8mFv6M2AvOcl3igNA5oXA/iv+fF+0gYYsMoT1K6d06RJ5iJbDSdVbCOJOqC5hy/GhmoOt3qNaMP2E=
X-Received: by 2002:a05:6830:2366:: with SMTP id
 r6mr29073537oth.188.1625849866843; 
 Fri, 09 Jul 2021 09:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210709151933.1994078-1-matthew.auld@intel.com>
 <CAKMK7uHThXJBMKxgyhAN5-1N793a9n=RN39anqCS6GPZiP=bNA@mail.gmail.com>
 <CAM0jSHNswrbF6Mzsm1RuJnEBWG3utWCrOww46fr9=X3O6ssS9A@mail.gmail.com>
In-Reply-To: <CAM0jSHNswrbF6Mzsm1RuJnEBWG3utWCrOww46fr9=X3O6ssS9A@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 9 Jul 2021 18:57:35 +0200
Message-ID: <CAKMK7uGp_8n6SOPtvTiiW90ceZ+wk2wi+YqCV15r0sZqXvL-1A@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
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
Cc: Chris Wilson <chris.p.wilson@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 Francisco Jerez <francisco.jerez.plata@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 9, 2021 at 6:35 PM Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Fri, 9 Jul 2021 at 17:13, Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Fri, Jul 9, 2021 at 5:19 PM Matthew Auld <matthew.auld@intel.com> wrote:
> > >
> > > EHL and JSL add the 'Bypass LLC' MOCS entry, which should make it
> > > possible for userspace to bypass the GTT caching bits set by the kernel,
> > > as per the given object cache_level. This is troublesome since the heavy
> > > flush we apply when first acquiring the pages is skipped if the kernel
> > > thinks the object is coherent with the GPU. As a result it might be
> > > possible to bypass the cache and read the contents of the page directly,
> > > which could be stale data. If it's just a case of userspace shooting
> > > themselves in the foot then so be it, but since i915 takes the stance of
> > > always zeroing memory before handing it to userspace, we need to prevent
> > > this.
> > >
> > > BSpec: 34007
> > > References: 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > Cc: Francisco Jerez <francisco.jerez.plata@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> > > Cc: Chris Wilson <chris.p.wilson@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 29 +++++++++++++++++++++--
> > >  1 file changed, 27 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > > index 6a04cce188fc..7e9ec68cce9e 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > > @@ -298,11 +298,12 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
> > >
> > >  void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_table *pages)
> > >  {
> > > +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > >         struct sgt_iter sgt_iter;
> > >         struct pagevec pvec;
> > >         struct page *page;
> > >
> > > -       GEM_WARN_ON(IS_DGFX(to_i915(obj->base.dev)));
> > > +       GEM_WARN_ON(IS_DGFX(i915));
> > >         __i915_gem_object_release_shmem(obj, pages, true);
> > >
> > >         i915_gem_gtt_finish_pages(obj, pages);
> > > @@ -325,7 +326,12 @@ void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_
> > >         }
> > >         if (pagevec_count(&pvec))
> > >                 check_release_pagevec(&pvec);
> > > -       obj->mm.dirty = false;
> > > +
> > > +       /* See the comment in shmem_object_init() for why we need this */
> > > +       if (IS_JSL_EHL(i915) && obj->flags & I915_BO_ALLOC_USER)
> > > +               obj->mm.dirty = true;
> > > +       else
> > > +               obj->mm.dirty = false;
> > >
> > >         sg_free_table(pages);
> > >         kfree(pages);
> > > @@ -539,6 +545,25 @@ static int shmem_object_init(struct intel_memory_region *mem,
> > >
> > >         i915_gem_object_set_cache_coherency(obj, cache_level);
> > >
> > > +       /*
> > > +        * EHL and JSL add the 'Bypass LLC' MOCS entry, which should make it
> > > +        * possible for userspace to bypass the GTT caching bits set by the
> > > +        * kernel, as per the given object cache_level. This is troublesome
> > > +        * since the heavy flush we apply when first gathering the pages is
> > > +        * skipped if the kernel thinks the object is coherent with the GPU. As
> > > +        * a result it might be possible to bypass the cache and read the
> > > +        * contents of the page directly, which could be stale data. If it's
> > > +        * just a case of userspace shooting themselves in the foot then so be
> > > +        * it, but since i915 takes the stance of always zeroing memory before
> > > +        * handing it to userspace, we need to prevent this.
> > > +        *
> > > +        * By setting cache_dirty here we make the clflush when first acquiring
> > > +        * the pages unconditional on such platforms. We also set this again in
> > > +        * put_pages().
> > > +        */
> > > +       if (IS_JSL_EHL(i915) && flags & I915_BO_ALLOC_USER)
> > > +               obj->cache_dirty = true;
> >
> > I don't think this is enough, because every time we drop our pages
> > shmem could move them around or swap them out, and we get fresh ones.
> > So we need to re-force this every time we grab new pages.
>
> We also rearm this in put_pages(), or at least we do in v2, so if the
> pages are swapped out or whatever it should then flush them again when
> we re-acquire the pages.

Yeah v2 looks better, that put_pages on obj->mm.dirty made no sense.

Conceptually I think it's cleaner though if we set this in get_pages,
since that's the action that requires the cleaning. But maybe that
doesn't work from a sequencing pov? I'd have thought that any time we
get to check whether we need to clflush the pages would exist already
...

Maybe it would be even cleaner if get_pages would issue the clflush
directly, long-term at least, when we have the infrastructure for
pipeline clear/move in place and make sure we never ignore such a
fence. That's perhaps conceptually the cleanest version.
-Daniel

> > Also there's already a pile of other cases (well not WB coherency
> > mode) where userspace can be clever and bypass the coherency if we
> > don't clflush first. I think it'd be really good to have all that in
> > one places as much as possible.
> >
> > Finally this is extremely tricky code, and obj->cache_dirty and
> > related stuff isn't really documented. kerneldoc for all that would be
> > really good.
>
> Ok, I'll take a look.
>
> > -Daniel
> >
> > > +
> > >         i915_gem_object_init_memory_region(obj, mem);
> > >
> > >         return 0;
> > > --
> > > 2.26.3
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
