Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7273D1432
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 18:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB816E492;
	Wed, 21 Jul 2021 16:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F9D56E492;
 Wed, 21 Jul 2021 16:29:50 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id m68so2611065qke.7;
 Wed, 21 Jul 2021 09:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vmZC8RwCDPt5j3h2gD+FrEvMYlrL4687xb3GjrKTjRw=;
 b=qApaHeb7BeuOMBQwmpMmQMQ0iAtirfa7mw7IT/wjZwDU8+Koe0XqR6SzUN7pG5u+KZ
 +eykdA/ICLJJiJumxE6XIp6binl/ZKyxeWR1XQspyWjZHoGgmOr0hcd9XRwZwwmyhTjP
 PBu+e6oTS2mX+tHj1+OxVb30ynIGOIbnHCcVJICfX4BfZFdha8o1EB2Pi5KGaY8wDLPC
 cmCGloVY6timyOYgMz2PVowztCPMS/tu2yOInztmiLzKVfvxpR9fD6igTPUwzGp31McZ
 IXhfWrxovDFanSuSZENUC5zi0udmuvBzMiKi4jj1xu3CUu1767fEXNVfnbpJuptR36I3
 QeqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vmZC8RwCDPt5j3h2gD+FrEvMYlrL4687xb3GjrKTjRw=;
 b=lzqhzTkKnhU7YJc8xPocg3tb6s8QJmufe0T4JsNJyMyHhbCtFWbm34fj0EOl1FYtjW
 D26uRYZJ9tapC3xH+Wp1koBHhl3tPJkjdC8fkKHoUJqGhiJ4DGnOmfSpWzA5+2V6cjGo
 bMVRpyfmhGEU8Diqkb1VClSUtEsrqOHUfqqyXebcYOMzWa1Eimje9ofnYJRWqb+30Snr
 j0p7D5wZ+M0Sfk8W/9RGAe9PzRqIFepzwR+xhF8WIiiBNmBtOO8xrM4lC+hGmIjx0Tvi
 PHxdoSeP95mUS1iKC7PnAwYSDfRqRT8lXjCWI5WPlPcgikG1ejKcEn28BvI/ejuQymRn
 E9Rg==
X-Gm-Message-State: AOAM533+0UmPuDZQTP3I+VzlGVrTuXi+vHrT8ETn9ieA+CJ9eyRd0n9i
 zGAIFqqNt8kFZmVwZRlzoiG7Rd0h1wHNZlwM1VlrLIqDhRM=
X-Google-Smtp-Source: ABdhPJzvhq3L/kpPYBVzaT22t/kQgxoFZ/LzjaIXe4qD1F1StLWvLieKirIwbLHPu3bTMCE25iQStqEPeGsRMrw6qH8=
X-Received: by 2002:a37:5d5:: with SMTP id 204mr35977467qkf.17.1626884989465; 
 Wed, 21 Jul 2021 09:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-4-jason@jlekstrand.net>
 <CAM0jSHPKaFkT=U-Ra1V8HS88ciAKhQ32ZZtBDkHutH74P5i8BQ@mail.gmail.com>
 <CAOFGe96dsX4x6CFYL+CT+b11Lwkv6a-Pn=MKJqgtbPBC+nZ60w@mail.gmail.com>
 <CAM0jSHMMN6neG5DtiqWb54ZA46gh4iCmB94i7ZJCH=YTS8t=bg@mail.gmail.com>
 <CAOFGe97n5i7YR0ik1cP4Cvp5x48Z15Muo8pHY1EjnyD7uKO-wg@mail.gmail.com>
In-Reply-To: <CAOFGe97n5i7YR0ik1cP4Cvp5x48Z15Muo8pHY1EjnyD7uKO-wg@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 21 Jul 2021 17:29:23 +0100
Message-ID: <CAM0jSHNbz_fytz1HeMynv+M3E6QO4mXpDFHS=qR04G1h-6zO3w@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/gem: Unify user object creation
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 21 Jul 2021 at 16:47, Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> On Wed, Jul 21, 2021 at 3:25 AM Matthew Auld
> <matthew.william.auld@gmail.com> wrote:
> >
> > On Tue, 20 Jul 2021 at 23:04, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > >
> > > On Tue, Jul 20, 2021 at 4:35 AM Matthew Auld
> > > <matthew.william.auld@gmail.com> wrote:
> > > >
> > > > On Thu, 15 Jul 2021 at 23:39, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > > > >
> > > > > Instead of hand-rolling the same three calls in each function, pull them
> > > > > into an i915_gem_object_create_user helper.  Apart from re-ordering of
> > > > > the placements array ENOMEM check, the only functional change here
> > > > > should be that i915_gem_dumb_create now calls i915_gem_flush_free_objects
> > > > > which it probably should have been calling all along.
> > > > >
> > > > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/gem/i915_gem_create.c | 106 +++++++++------------
> > > > >  1 file changed, 43 insertions(+), 63 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > > > index 391c8c4a12172..69bf9ec777642 100644
> > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > > > > @@ -11,13 +11,14 @@
> > > > >  #include "i915_trace.h"
> > > > >  #include "i915_user_extensions.h"
> > > > >
> > > > > -static u32 object_max_page_size(struct drm_i915_gem_object *obj)
> > > > > +static u32 object_max_page_size(struct intel_memory_region **placements,
> > > > > +                               unsigned int n_placements)
> > > > >  {
> > > > >         u32 max_page_size = 0;
> > > > >         int i;
> > > > >
> > > > > -       for (i = 0; i < obj->mm.n_placements; i++) {
> > > > > -               struct intel_memory_region *mr = obj->mm.placements[i];
> > > > > +       for (i = 0; i < n_placements; i++) {
> > > > > +               struct intel_memory_region *mr = placements[i];
> > > > >
> > > > >                 GEM_BUG_ON(!is_power_of_2(mr->min_page_size));
> > > > >                 max_page_size = max_t(u32, max_page_size, mr->min_page_size);
> > > > > @@ -81,22 +82,35 @@ static int i915_gem_publish(struct drm_i915_gem_object *obj,
> > > > >         return 0;
> > > > >  }
> > > > >
> > > > > -static int
> > > > > -i915_gem_setup(struct drm_i915_gem_object *obj, u64 size)
> > > > > +static struct drm_i915_gem_object *
> > > > > +i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
> > > > > +                           struct intel_memory_region **placements,
> > > > > +                           unsigned int n_placements)
> > > > >  {
> > > > > -       struct intel_memory_region *mr = obj->mm.placements[0];
> > > > > +       struct intel_memory_region *mr = placements[0];
> > > > > +       struct drm_i915_gem_object *obj;
> > > > >         unsigned int flags;
> > > > >         int ret;
> > > > >
> > > > > -       size = round_up(size, object_max_page_size(obj));
> > > > > +       i915_gem_flush_free_objects(i915);
> > > > > +
> > > > > +       obj = i915_gem_object_alloc();
> > > > > +       if (!obj)
> > > > > +               return ERR_PTR(-ENOMEM);
> > > > > +
> > > > > +       size = round_up(size, object_max_page_size(placements, n_placements));
> > > > >         if (size == 0)
> > > > > -               return -EINVAL;
> > > > > +               return ERR_PTR(-EINVAL);
> > > > >
> > > > >         /* For most of the ABI (e.g. mmap) we think in system pages */
> > > > >         GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
> > > > >
> > > > >         if (i915_gem_object_size_2big(size))
> > > > > -               return -E2BIG;
> > > > > +               return ERR_PTR(-E2BIG);
> > > > > +
> > > > > +       ret = object_set_placements(obj, placements, n_placements);
> > > > > +       if (ret)
> > > > > +               goto object_free;
> > > >
> > > > Thinking on this again, it might be way too thorny to expose
> > > > create_user as-is to other parts of i915, like we do in the last
> > > > patch. Since the caller will be expected to manually validate the
> > > > placements, otherwise we might crash and burn in weird ways as new
> > > > users pop up. i.e it needs the same validation that happens as part of
> > > > the extension. Also as new extensions arrive, like with PXP, that also
> > > > has to get bolted onto create_user, which might have its own hidden
> > > > constraints.
> > >
> > > Perhaps.  Do you have a suggestion for how to make it available to
> > > selftests without exposing it to "the rest of i915"?  If you want, I
> > > can make create_user duplicate the placements uniqueness check.
> > > That's really the only validation currently in the ioctl besides all
> > > the stuff for making sure that the class/instance provided by the user
> > > isn't bogus.  But if we've got real i915_memory_region pointers, we
> > > don't need that.
> >
> > Yeah, I guess the concern here was duplicated placements(that would
> > change the meaning of n_placements > 1), and then ofc regions not
> > supported by the device. Also maybe stolen which doesn't have a TTM
> > backend yet.
> >
> > If this is just for the selftests, doing what the mman selftests do
> > with create_region + set_placements would be one option. Otherwise
> > maybe just add  __two_underscores and a big comment, for why you
> > should be careful when using this?
>
> I've added __two_underscores and some kerneldoc.  I also looked at
> adding some validation to that function.  I'm happy to do so if you'd
> like but didn't want to add overhead if you thought __ and a big fat
> warning were enough.

__two_underscores and a comment should be fine for now.

>
> --Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
