Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1F23D0434
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 00:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979D06E479;
	Tue, 20 Jul 2021 22:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com
 [IPv6:2607:f8b0:4864:20::b2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D6286E33F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 22:04:48 +0000 (UTC)
Received: by mail-yb1-xb2e.google.com with SMTP id t186so602669ybf.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 15:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MlMYdfS3CZqIrJSCUlmdKEKcRbfUeG3060IKS1Zohew=;
 b=Wk2sXGWrFJW4CHq+gOTK4cU3b4BdS0G+83O7+0uHQ3tk0vqbeJEDnXkUX+IiZbs6Cc
 NENr+PXloehFTZLljUPgNOGFi11Nd12+oME3RfT+ClyX/epS7IskWvgMP6q4OFxHQM2n
 aw9THaS5w085Ax9NbE6UG1fM8cEZOYXNc8N/V02VU9aeQyLYsSReYX5WM490KgrmTN/k
 PUYS1jL2DZD/S31iGXBjB3dDu+b/D13PE3ISk4XIJspeibWhzVzQ+iVK8sVZCMVZaPJz
 Zs3sVYzY3G9OugxTX/PXrdckI4QjgQHGRZ+RwVzk/qCHCt6b4LVXtQNGGBdM8dyO/Q7s
 LiCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MlMYdfS3CZqIrJSCUlmdKEKcRbfUeG3060IKS1Zohew=;
 b=mlVTx0SlazxgvaDxvrz7HiSYqhtB10AA7FTBOxVQljluzKUguzoWfwfaNztp67Iro5
 eH3xeOWHyDH2hlDhBMaWSoo7KTe4VlbbvIkUHDmwbaPO7g+E8XaaTqrjiHV4b9dDbXck
 09DL9PxPGOu4dJCD6XmRxBfB/P3taeX/hrtK3++PIyPkyyQBv8QzNlWt72Msql0CrTWG
 8KstC/d9iqY3Uv63OXozXjjHJjb9VzrJtqzK+MCEFNXcsYv4A7frFV3DwtqFcTFXIYPu
 r2HVpAyzZyAlLXqCbL0/UihfXVtFrEEgKaq0nl00dS2mQp57I7IH5Gn88zaM8e4fDhLi
 jBMA==
X-Gm-Message-State: AOAM531QZ+4TSanA6cmKgx8AxG5Ag78eyIjFL5rKQJ7Kd2osbumHASCm
 xsTUjqd4XyovIlRTf9j+/u2KdtNQnIy/+iEKp7OnEQ==
X-Google-Smtp-Source: ABdhPJyb9ndXVtvCOcKxKUk78kwXpMx8fKU5YYGsOKlBYR3E4Eem7EzSQ0R9YtPEVIGZ/I1LZN8z0dzDeyI9vpPL9cc=
X-Received: by 2002:a25:208b:: with SMTP id
 g133mr40066973ybg.211.1626818686827; 
 Tue, 20 Jul 2021 15:04:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-4-jason@jlekstrand.net>
 <CAM0jSHPKaFkT=U-Ra1V8HS88ciAKhQ32ZZtBDkHutH74P5i8BQ@mail.gmail.com>
In-Reply-To: <CAM0jSHPKaFkT=U-Ra1V8HS88ciAKhQ32ZZtBDkHutH74P5i8BQ@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 20 Jul 2021 17:04:35 -0500
Message-ID: <CAOFGe96dsX4x6CFYL+CT+b11Lwkv6a-Pn=MKJqgtbPBC+nZ60w@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
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

On Tue, Jul 20, 2021 at 4:35 AM Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Thu, 15 Jul 2021 at 23:39, Jason Ekstrand <jason@jlekstrand.net> wrote:
> >
> > Instead of hand-rolling the same three calls in each function, pull them
> > into an i915_gem_object_create_user helper.  Apart from re-ordering of
> > the placements array ENOMEM check, the only functional change here
> > should be that i915_gem_dumb_create now calls i915_gem_flush_free_objects
> > which it probably should have been calling all along.
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_create.c | 106 +++++++++------------
> >  1 file changed, 43 insertions(+), 63 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > index 391c8c4a12172..69bf9ec777642 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > @@ -11,13 +11,14 @@
> >  #include "i915_trace.h"
> >  #include "i915_user_extensions.h"
> >
> > -static u32 object_max_page_size(struct drm_i915_gem_object *obj)
> > +static u32 object_max_page_size(struct intel_memory_region **placements,
> > +                               unsigned int n_placements)
> >  {
> >         u32 max_page_size = 0;
> >         int i;
> >
> > -       for (i = 0; i < obj->mm.n_placements; i++) {
> > -               struct intel_memory_region *mr = obj->mm.placements[i];
> > +       for (i = 0; i < n_placements; i++) {
> > +               struct intel_memory_region *mr = placements[i];
> >
> >                 GEM_BUG_ON(!is_power_of_2(mr->min_page_size));
> >                 max_page_size = max_t(u32, max_page_size, mr->min_page_size);
> > @@ -81,22 +82,35 @@ static int i915_gem_publish(struct drm_i915_gem_object *obj,
> >         return 0;
> >  }
> >
> > -static int
> > -i915_gem_setup(struct drm_i915_gem_object *obj, u64 size)
> > +static struct drm_i915_gem_object *
> > +i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
> > +                           struct intel_memory_region **placements,
> > +                           unsigned int n_placements)
> >  {
> > -       struct intel_memory_region *mr = obj->mm.placements[0];
> > +       struct intel_memory_region *mr = placements[0];
> > +       struct drm_i915_gem_object *obj;
> >         unsigned int flags;
> >         int ret;
> >
> > -       size = round_up(size, object_max_page_size(obj));
> > +       i915_gem_flush_free_objects(i915);
> > +
> > +       obj = i915_gem_object_alloc();
> > +       if (!obj)
> > +               return ERR_PTR(-ENOMEM);
> > +
> > +       size = round_up(size, object_max_page_size(placements, n_placements));
> >         if (size == 0)
> > -               return -EINVAL;
> > +               return ERR_PTR(-EINVAL);
> >
> >         /* For most of the ABI (e.g. mmap) we think in system pages */
> >         GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
> >
> >         if (i915_gem_object_size_2big(size))
> > -               return -E2BIG;
> > +               return ERR_PTR(-E2BIG);
> > +
> > +       ret = object_set_placements(obj, placements, n_placements);
> > +       if (ret)
> > +               goto object_free;
>
> Thinking on this again, it might be way too thorny to expose
> create_user as-is to other parts of i915, like we do in the last
> patch. Since the caller will be expected to manually validate the
> placements, otherwise we might crash and burn in weird ways as new
> users pop up. i.e it needs the same validation that happens as part of
> the extension. Also as new extensions arrive, like with PXP, that also
> has to get bolted onto create_user, which might have its own hidden
> constraints.

Perhaps.  Do you have a suggestion for how to make it available to
selftests without exposing it to "the rest of i915"?  If you want, I
can make create_user duplicate the placements uniqueness check.
That's really the only validation currently in the ioctl besides all
the stuff for making sure that the class/instance provided by the user
isn't bogus.  But if we've got real i915_memory_region pointers, we
don't need that.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
