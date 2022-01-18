Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC3D49297D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 16:16:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D3C10E140;
	Tue, 18 Jan 2022 15:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79C7910E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 15:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642518960; x=1674054960;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FlBO3bxjxj612R+CckZxWXmESRl1uMMQ5sshb/8BHkA=;
 b=bFFAa9akEWTnpIOtd3ubgKgDtXYVtLzgXefS/IJy6zfBXUBzNDfQAKVi
 jEyuiQ9d0jCaLCqNdoDCzvq1sSNOvynp/FgnBNh63kKlAQNUZqpvV6CjM
 lJjPFxBaeXqLRCuEZXtYAIHW1Jl+Z8WLdJdsSIZDWBcZjCYYASf1IEmHm
 ZxKdrpXLhbBDQL/or+mdmZVwJdQoq9izLStzsMwQsDCrf7gq/T2T76Djh
 ta1qP2LMHR+VpW0vLmDK1XwCwlFbUFYMQHvt3q0vgf9e4Cms9ARDr3h1g
 fsCIZa5gjogDBQNwvn7yLStKLHdNgI/fs9I1OSVcfKrADdHl2jpCTmLwU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="243659510"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="243659510"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 07:16:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="693417136"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 07:15:58 -0800
Date: Tue, 18 Jan 2022 17:15:57 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20220118151557.GA15803@intel.com>
References: <20220114082517.25551-1-stanislav.lisovskiy@intel.com>
 <CAM0jSHPXSMQ83TRi2kygb5W7HGxvO1daB2GU9+CJUEJ4NtSewQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM0jSHPXSMQ83TRi2kygb5W7HGxvO1daB2GU9+CJUEJ4NtSewQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use
 i915_gem_object_pin_map_unlocked function for lmem allocation
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
 Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 18, 2022 at 01:45:10PM +0000, Matthew Auld wrote:
> On Fri, 14 Jan 2022 at 08:25, Stanislav Lisovskiy
> <stanislav.lisovskiy@intel.com> wrote:
> >
> > Using i915_gem_object_pin_map_unlocked instead of
> > i915_gem_object_lmem_io_map, would eliminate the need
> > of using I915_BO_ALLOC_CONTIGUOUS, when calling
> > i915_vma_pin_iomap, because it supports non-contiguous
> > allocation as well.
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_vma.c | 27 ++++++++++++++++++++-------
> >  1 file changed, 20 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > index 1f15c3298112..194ad92013f6 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -547,10 +547,16 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
> >                  * of pages, that way we can also drop the
> >                  * I915_BO_ALLOC_CONTIGUOUS when allocating the object.
> >                  */
> 
> Remove the TODO above also?

Yep, should remove

> 
> > -               if (i915_gem_object_is_lmem(vma->obj))
> > -                       ptr = i915_gem_object_lmem_io_map(vma->obj, 0,
> > -                                                         vma->obj->base.size);
> > -               else
> > +               if (i915_gem_object_is_lmem(vma->obj)) {
> > +                       ptr = (void __iomem *)
> > +                              i915_gem_object_pin_map_unlocked(vma->obj,
> > +                                                               I915_MAP_WC);
> 
> Do you know if we need some kind of sanity check here to ensure that
> the vma->pages == obj->mm.pages, when dealing with LMEM? AFAIK the vma
> could in theory remap the pages, and here pin_map only cares about the
> obj->mm.pages? Maybe check if the vma is VIEW_NORMAL or something?

As I see i915_gem_object_pin_map_unlocked is basically just
calling i915_gem_object_pin_pages, which is also being called
by i915_vma_get_pages, which handles this by calling __i915_vma_get_pages.
It then checks if those need to be remapped based on ggtt_view.type.
So wondering if I just need to call __i915_vma_get_pages as well,
afterwards.

> 
> > +                       if (IS_ERR(ptr)) {
> > +                               err = PTR_ERR(ptr);
> > +                               goto err;
> > +                       }
> > +                       ptr = page_pack_bits(ptr, 1);
> 
> AFAIK, the guidance is to move away from pointer packing. Can we just
> make the iounmap check for is_lmem()?

Yes, will check this.

Stan

> 
> > +               } else
> >                         ptr = io_mapping_map_wc(&i915_vm_to_ggtt(vma->vm)->iomap,
> >                                                 vma->node.start,
> >                                                 vma->node.size);
> > @@ -560,7 +566,10 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
> >                 }
> >
> >                 if (unlikely(cmpxchg(&vma->iomap, NULL, ptr))) {
> > -                       io_mapping_unmap(ptr);
> > +                       if (page_unmask_bits(ptr))
> > +                               __i915_gem_object_release_map(vma->obj);
> > +                       else
> > +                               io_mapping_unmap(ptr);
> >                         ptr = vma->iomap;
> >                 }
> >         }
> > @@ -574,7 +583,7 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
> >         i915_vma_set_ggtt_write(vma);
> >
> >         /* NB Access through the GTT requires the device to be awake. */
> > -       return ptr;
> > +       return page_mask_bits(ptr);
> >
> >  err_unpin:
> >         __i915_vma_unpin(vma);
> > @@ -1687,7 +1696,11 @@ static void __i915_vma_iounmap(struct i915_vma *vma)
> >         if (vma->iomap == NULL)
> >                 return;
> >
> > -       io_mapping_unmap(vma->iomap);
> > +       if (page_unmask_bits(vma->iomap))
> > +               __i915_gem_object_release_map(vma->obj);
> > +       else
> > +               io_mapping_unmap(vma->iomap);
> > +
> >         vma->iomap = NULL;
> >  }
> >
> > --
> > 2.24.1.485.gad05a3d8e5
> >
