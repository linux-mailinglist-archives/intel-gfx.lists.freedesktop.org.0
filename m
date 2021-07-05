Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 357B83BBE46
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 16:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58FF9891DD;
	Mon,  5 Jul 2021 14:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A514891DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jul 2021 14:36:37 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id h2so4193482qtq.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Jul 2021 07:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YRdneDY7JUDgGsGd0ZNtNWsLrT6NtBeJWWDnPXU3oq8=;
 b=jSrPRaEvxmHWTx/KjaTkkvTqYTQU6tTNXELGgyjFx3xBYupRU4stRtzxFB4bsKHpWA
 6XpBEG3Y0aQi/6nnWWT0wo1Hod9epZve0LQaMtSVJiGdHQrrr7lOlex5iJgWpIXaGaXL
 MgfO/WIusKvxmVnALvlcgacDyYJGxHskhVy56+WphrWj+QwbKEZBGpDAcB5YuJFqTZXi
 Yxf1Sz0BzKhfjWB6gtCZ/SQ/Rnj9elKLe/eK4WNCsIdLP30ynA5d+hlSX/CXYxgHdc9O
 V/sGsGS/5PjobtsghXHBJ4cTyX/AI/mRgGQWNckfdUEeBf/yztI1xcteP2bv28sqSRl5
 7DxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YRdneDY7JUDgGsGd0ZNtNWsLrT6NtBeJWWDnPXU3oq8=;
 b=Fw2nURWUOUz65ZJthOiBqIZuQYDrkgb74oDP3Ot3ZbI57EiBFvLNsITTlKaRPgje7h
 DfLtBextZhDkzoqPuPxdzMf6MiyQS/pveeGOY9vtpdhKtf4zG2tl91OEWeDnQhWNcrXQ
 T2aDNUJ/o0xsshBOaFxLzUSO41sr/vO3JaN5RTWASjPHm57C2vI7U0Sws19nuQUHpDSm
 7/a15PZIHvjBhHGtNeOgpwmzjAwQ8CXsMLEXTYgHGckSwWGk/AInppMiruHEw7ZShi7P
 e9iA/kULwyjDLasKlyFdZMn9VqRXtBHu2xhoqzmUzKGQlqwDBreIb0Dztryp3pIdhQRN
 7T/A==
X-Gm-Message-State: AOAM532pbeDHlYC0A5YNDweMIlIfBkfyhO7Cq+fGHDkD2iwC9cwCI1I7
 PyuD8jwCwFJtCugUfTH49ZpudGdSOUw7xdhAYPM=
X-Google-Smtp-Source: ABdhPJzcLfkT+QxvwVbMoq9RKTfAdQZ+jR9YRrGXHZlF2S6BG1cByHKJn4X46i9E9lavLUIYUdrH2T/ZEH8NNJkz4/I=
X-Received: by 2002:a05:622a:89:: with SMTP id
 o9mr12623259qtw.339.1625495796239; 
 Mon, 05 Jul 2021 07:36:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210701114234.3859716-1-maarten.lankhorst@linux.intel.com>
 <4dfba196-0106-6a20-aac1-4ca90c91f899@linux.intel.com>
In-Reply-To: <4dfba196-0106-6a20-aac1-4ca90c91f899@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 5 Jul 2021 15:36:08 +0100
Message-ID: <CAM0jSHNQpgTW88qX+fesNEJTnB_DnxqYcpwEASxVa89D02tvnQ@mail.gmail.com>
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

On Thu, 1 Jul 2021 at 12:50, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> Op 01-07-2021 om 13:42 schreef Maarten Lankhorst:
> > This is only used for ttm, and tells userspace that the mapping type is
> > ignored. This disables the other type of mmap offsets when discrete
> > memory is used, so fix the selftests as well.
> >
> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 +++++++++++-
> >  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
> >  .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 +++++++++++++++++--
> >  include/uapi/drm/i915_drm.h                   |  9 ++++---
> >  4 files changed, 47 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > index a90f796e85c0..b34be9e5d094 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > @@ -679,10 +679,16 @@ __assign_mmap_offset(struct drm_i915_gem_object *obj,
> >               return -ENODEV;
> >
> >       if (obj->ops->mmap_offset)  {
> > +             if (mmap_type != I915_MMAP_TYPE_TTM)
> > +                     return -ENODEV;
> > +
> >               *offset = obj->ops->mmap_offset(obj);
> >               return 0;
> >       }
> >
> > +     if (mmap_type == I915_MMAP_TYPE_TTM)
> > +             return -ENODEV;
> > +
> >       if (mmap_type != I915_MMAP_TYPE_GTT &&
> >           !i915_gem_object_has_struct_page(obj) &&
> >           !i915_gem_object_has_iomem(obj))
> > @@ -727,7 +733,9 @@ i915_gem_dumb_mmap_offset(struct drm_file *file,
> >  {
> >       enum i915_mmap_type mmap_type;
> >
> > -     if (boot_cpu_has(X86_FEATURE_PAT))
> > +     if (HAS_LMEM(to_i915(dev)))
> > +             mmap_type = I915_MMAP_TYPE_TTM;
> > +     else if (boot_cpu_has(X86_FEATURE_PAT))
> >               mmap_type = I915_MMAP_TYPE_WC;

Hmm, I think we still need to check for X86_FEATURE_PAT somewhere,
since this is still just WC for lmem?

> >       else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
> >               return -ENODEV;
> > @@ -798,6 +806,10 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
> >               type = I915_MMAP_TYPE_UC;
> >               break;
> >
> > +     case I915_MMAP_OFFSET_TTM:
> > +             type = I915_MMAP_TYPE_TTM;
> > +             break;

Would it not be simpler to just convert to WC or WB here, if we
encounter _TTM? With that we also don't need to touch the dumb mmap
stuff and i915_gem_mmap()?

if (IS_DGFX()) {
        if (args->type != OFFSET_TTM)
               return -ENODEV:

       GEM_BUG_ON(!obj->mm.n_placements);
       if (i915_gem_object_placement_possible(obj, INTEL_MEMORY_LOCAL)) {
              type = TYPE_WC;
      else
              ttype = TYPE_WB;
}

https://patchwork.freedesktop.org/patch/442579/?series=92209&rev=1

> > +
> >       default:
> >               return -EINVAL;
> >       }
> > @@ -968,6 +980,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
> >               vma->vm_ops = &vm_ops_cpu;
> >               break;
> >
> > +     case I915_MMAP_TYPE_TTM:
> > +             GEM_WARN_ON(mmo->mmap_type == I915_MMAP_TYPE_TTM);
> > +             /* fall-through */

Hmm, we still want WC for lmem, or if it's possible for it to be placed there.

> >       case I915_MMAP_TYPE_WB:
> >               vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
> >               vma->vm_ops = &vm_ops_cpu;
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > index 441f913c87e6..8b872b22a7ec 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> > @@ -96,6 +96,7 @@ enum i915_mmap_type {
> >       I915_MMAP_TYPE_WC,
> >       I915_MMAP_TYPE_WB,
> >       I915_MMAP_TYPE_UC,
> > +     I915_MMAP_TYPE_TTM,
> >  };
> >
> >  struct i915_mmap_offset {
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > index 607b7d2d4c29..321271bd2fa1 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> > @@ -573,6 +573,14 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
> >       return 0;
> >  }
> >
> > +static enum i915_mmap_type default_mapping(struct drm_i915_private *i915)
> > +{
> > +     if (HAS_LMEM(i915))
> > +             return I915_MMAP_TYPE_TTM;
> > +
> > +     return I915_MMAP_TYPE_GTT;
> > +}
> > +
> >  static bool assert_mmap_offset(struct drm_i915_private *i915,
> >                              unsigned long size,
> >                              int expected)
> > @@ -585,7 +593,7 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
> >       if (IS_ERR(obj))
> >               return expected && expected == PTR_ERR(obj);
> >
> > -     ret = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
> > +     ret = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
> >       i915_gem_object_put(obj);
> >
> >       return ret == expected;
> > @@ -689,7 +697,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
> >               goto out;
> >       }
> >
> > -     err = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
> > +     err = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
> >       if (err) {
> >               pr_err("Unable to insert object into reclaimed hole\n");
> >               goto err_obj;
> > @@ -831,8 +839,14 @@ static int wc_check(struct drm_i915_gem_object *obj)
> >
> >  static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
> >  {
> > +     struct drm_i915_private *i915 = to_i915(obj->base.dev);
> >       bool no_map;
> >
> > +     if (HAS_LMEM(i915))
> > +             return type == I915_MMAP_TYPE_TTM;
> > +     else if (type == I915_MMAP_TYPE_TTM)
> > +             return false;
> > +
> >       if (type == I915_MMAP_TYPE_GTT &&
> >           !i915_ggtt_has_aperture(&to_i915(obj->base.dev)->ggtt))
> >               return false;
> > @@ -970,6 +984,8 @@ static int igt_mmap(void *arg)
> >                       err = __igt_mmap(i915, obj, I915_MMAP_TYPE_GTT);
> >                       if (err == 0)
> >                               err = __igt_mmap(i915, obj, I915_MMAP_TYPE_WC);
> > +                     if (err == 0)
> > +                             err = __igt_mmap(i915, obj, I915_MMAP_TYPE_TTM);
> >
> >                       i915_gem_object_put(obj);
> >                       if (err)
> > @@ -987,6 +1003,7 @@ static const char *repr_mmap_type(enum i915_mmap_type type)
> >       case I915_MMAP_TYPE_WB: return "wb";
> >       case I915_MMAP_TYPE_WC: return "wc";
> >       case I915_MMAP_TYPE_UC: return "uc";
> > +     case I915_MMAP_TYPE_TTM: return "ttm";
> >       default: return "unknown";
> >       }
> >  }
> > @@ -1100,6 +1117,8 @@ static int igt_mmap_access(void *arg)
> >                       err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_WC);
> >               if (err == 0)
> >                       err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_UC);
> > +             if (err == 0)
> > +                     err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_TTM);
> >
> >               i915_gem_object_put(obj);
> >               if (err)
> > @@ -1241,6 +1260,8 @@ static int igt_mmap_gpu(void *arg)
> >               err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_GTT);
> >               if (err == 0)
> >                       err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_WC);
> > +             if (err == 0)
> > +                     err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_TTM);
> >
> >               i915_gem_object_put(obj);
> >               if (err)
> > @@ -1396,6 +1417,8 @@ static int igt_mmap_revoke(void *arg)
> >               err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_GTT);
> >               if (err == 0)
> >                       err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_WC);
> > +             if (err == 0)
> > +                     err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_TTM);
> >
> >               i915_gem_object_put(obj);
> >               if (err)
> > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > index 2f70c48567c0..12ec9c7f1711 100644
> > --- a/include/uapi/drm/i915_drm.h
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -867,10 +867,11 @@ struct drm_i915_gem_mmap_offset {
> >        * (GTT, WC, WB, UC, etc) should be included.
> >        */
> >       __u64 flags;
> > -#define I915_MMAP_OFFSET_GTT 0
> > -#define I915_MMAP_OFFSET_WC  1
> > -#define I915_MMAP_OFFSET_WB  2
> > -#define I915_MMAP_OFFSET_UC  3
> > +#define I915_MMAP_OFFSET_GTT 0
> > +#define I915_MMAP_OFFSET_WC  1
> > +#define I915_MMAP_OFFSET_WB  2
> > +#define I915_MMAP_OFFSET_UC  3
> > +#define I915_MMAP_OFFSET_TTM 4
> >
> >       /*
> >        * Zero-terminated chain of extensions.
>
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
