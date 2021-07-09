Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5213C219D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 11:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8CB26E9F9;
	Fri,  9 Jul 2021 09:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124EA6E9F9
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 09:31:09 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id e14so8672382qkl.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Jul 2021 02:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=klcNaSOpc1RAPELBXww0Y8KdCL4F2jxOjskrd7C1cIM=;
 b=EhuXa9movHUjogf1HcUZCbol8Byd964c8iV/ZC/MoaGF3Ok6Lttrs/gg3I6UplMhRt
 /KgXzPu5eHl3PnUyjzK6JmdF01olPfMjpMf84tvHVUstmaPbqLwnzllii9r3xEXxI88t
 Ey3s810RlWRE+iYLKbDRJF+WgcN4TPGdGMZWEM6aFPYC5PaxMADQfESomnMLPrVGAlu2
 uMuYBEXiaNN57YIaZxSsSy9BpEZx/+P3EGLjOaICMCu03DdKghxUxzs43/j3tNHLrp1d
 3E0F4yNyh/HVZETBI6Ql/FSIVFEAj/8DhMSc1GldD33AXfzn9wDh0uCrmpDNbIk/mOe8
 eW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=klcNaSOpc1RAPELBXww0Y8KdCL4F2jxOjskrd7C1cIM=;
 b=We1S9rKan2vm1X4fljXx/itpP6szTfyMrHNTn2bpyI41s58t7zDb5jgbulN3Wdqns/
 gDXzvG7J4tFhKKvSRZZ0Ahp9W1yQwPKNWthEJM1MuB+kBUi/D6wYYMPkTTh7eqRO9xsW
 frWa/NInMH7FQ51UufNr2rHhWFPQFdfEoL1gdItDiopmzg1bTL3F7oKhu8/FC+uPjju0
 UFSNTwM2Q1P+Z7ehdg4nYt0DRBt/Gpb3MP9CGKC5i/iT8sC9+rWz5lTsmrtbds0iNzpk
 07zqvth+j9lhm95xmLOPzco2DyejG68hdKwSdH6v/Sd990oucpJp7mdLBRFCGK+EPcyW
 M12w==
X-Gm-Message-State: AOAM532eQFdE49NNS7d1ZUsX2HeY5QTOxMUEtk+LaI7mG3WRAU3UgMmi
 7EluFI8mQPXUnDYEDxcGs0U1hghCM2D4mrGNwtk=
X-Google-Smtp-Source: ABdhPJy+zT3rYygyqBI0MniNHmcyQMcEDNua77pCP4+0eB3I2Ik8WOewaZocaz/vsu+GY/dl+UVkd0pnbJMjSrzjROY=
X-Received: by 2002:a37:9e07:: with SMTP id h7mr12828734qke.481.1625823068240; 
 Fri, 09 Jul 2021 02:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210701114234.3859716-1-maarten.lankhorst@linux.intel.com>
 <4dfba196-0106-6a20-aac1-4ca90c91f899@linux.intel.com>
 <CAM0jSHNQpgTW88qX+fesNEJTnB_DnxqYcpwEASxVa89D02tvnQ@mail.gmail.com>
In-Reply-To: <CAM0jSHNQpgTW88qX+fesNEJTnB_DnxqYcpwEASxVa89D02tvnQ@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 9 Jul 2021 10:30:40 +0100
Message-ID: <CAM0jSHP0Dvik-FKQ9XdY-xbJmRX4GufJaC5QU4yyZ=Kzby8k4w@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add TTM offset argument to mmap.
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
Cc: "Ekstrand, Jason" <jason.ekstrand@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 5 Jul 2021 at 15:36, Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Thu, 1 Jul 2021 at 12:50, Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com> wrote:
> >
> > Op 01-07-2021 om 13:42 schreef Maarten Lankhorst:
> > > This is only used for ttm, and tells userspace that the mapping type is
> > > ignored. This disables the other type of mmap offsets when discrete
> > > memory is used, so fix the selftests as well.
> > >
> > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 +++++++++++-
> > >  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
> > >  .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 +++++++++++++++++--
> > >  include/uapi/drm/i915_drm.h                   |  9 ++++---
> > >  4 files changed, 47 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > index a90f796e85c0..b34be9e5d094 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > @@ -679,10 +679,16 @@ __assign_mmap_offset(struct drm_i915_gem_object *obj,
> > >               return -ENODEV;
> > >
> > >       if (obj->ops->mmap_offset)  {
> > > +             if (mmap_type != I915_MMAP_TYPE_TTM)
> > > +                     return -ENODEV;
> > > +
> > >               *offset = obj->ops->mmap_offset(obj);
> > >               return 0;
> > >       }
> > >
> > > +     if (mmap_type == I915_MMAP_TYPE_TTM)
> > > +             return -ENODEV;
> > > +
> > >       if (mmap_type != I915_MMAP_TYPE_GTT &&
> > >           !i915_gem_object_has_struct_page(obj) &&
> > >           !i915_gem_object_has_iomem(obj))
> > > @@ -727,7 +733,9 @@ i915_gem_dumb_mmap_offset(struct drm_file *file,
> > >  {
> > >       enum i915_mmap_type mmap_type;
> > >
> > > -     if (boot_cpu_has(X86_FEATURE_PAT))
> > > +     if (HAS_LMEM(to_i915(dev)))
> > > +             mmap_type = I915_MMAP_TYPE_TTM;
> > > +     else if (boot_cpu_has(X86_FEATURE_PAT))
> > >               mmap_type = I915_MMAP_TYPE_WC;
>
> Hmm, I think we still need to check for X86_FEATURE_PAT somewhere,
> since this is still just WC for lmem?
>
> > >       else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
> > >               return -ENODEV;
> > > @@ -798,6 +806,10 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
> > >               type = I915_MMAP_TYPE_UC;
> > >               break;
> > >
> > > +     case I915_MMAP_OFFSET_TTM:
> > > +             type = I915_MMAP_TYPE_TTM;
> > > +             break;
>
> Would it not be simpler to just convert to WC or WB here, if we
> encounter _TTM? With that we also don't need to touch the dumb mmap
> stuff and i915_gem_mmap()?
>
> if (IS_DGFX()) {
>         if (args->type != OFFSET_TTM)
>                return -ENODEV:
>
>        GEM_BUG_ON(!obj->mm.n_placements);
>        if (i915_gem_object_placement_possible(obj, INTEL_MEMORY_LOCAL)) {
>               type = TYPE_WC;
>       else
>               ttype = TYPE_WB;
> }
>
> https://patchwork.freedesktop.org/patch/442579/?series=92209&rev=1

fyi this patch is now merged, in case you need the
i915_gem_object_placement_possible() helper.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
