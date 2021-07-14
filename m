Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5575D3C8B0B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 20:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A286E48C;
	Wed, 14 Jul 2021 18:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B5706E48C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 18:36:02 +0000 (UTC)
Received: by mail-yb1-xb2a.google.com with SMTP id v189so4799815ybg.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 11:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sVwpgAHBgUByxa7vuycl4nmQL2oT3G+a60Sxtv61ZPE=;
 b=eYnFS2gOr5w4i1mi88QD8ubf8R7hN/fTcBGDaHKIarfFH3RdGrkS6eKDWl3ghDBnyK
 xkgY8AWn4xvJMRIuTZHE+89NsJhuDL95p0L1qlAwETsaDoD9zjENNqYzV/pgBACXfeeF
 Pnx0Pesg/H5V1HpPoPfPj5R6tPAg48sWXdEPgFjbShHqlFOTYEBUDaaeYYZ/J1ovnFxF
 HWhFBRs0EdW3fRvsjSVuvh980utGCJjOz3Y+VmB/4onwRjd22y0e1NNP9vVFA0i50aiW
 cPcQGfy+zsZWvPDt6xQu88bYqnWOIFvVPmy5AWYS7MACJunnrW3KmCr4UXCb+b1xDbP9
 2FhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sVwpgAHBgUByxa7vuycl4nmQL2oT3G+a60Sxtv61ZPE=;
 b=SJ77rjwG7SVnKHopGYbcOaxVpVit9hrfJ46XG4SnWuVEvFbXFAN9+i/HGNWpb6ncXy
 bWOazDPcp10YAe+5jw+QRkSVNTdanIyGB7mZWk7/E0XvZstnf5pJkHLTpzcvqkbGwwks
 OXCWFAPonQQI5K4vPMLC9gBigJcmiFxjdps9EWhsqlyYFeb3YDaJxZzQZY8UlRbz/LWJ
 2450uSV9QO6ergLKH6KEb75uXbFtMUeFgg5451Dlds6TbquwmeDqXndSVX1+tu9ro2pm
 rMmAdu6Y/gO+4r7LLPFHwKr8BohnHYr/RXSJlOQajhfmgvAtG+2LSlHL1D9vBeR6l/LX
 zP8Q==
X-Gm-Message-State: AOAM532XzxipTBM7No3KHm2C0AoVSmcvcnWRpta65GxpNG7PLp8kOL5S
 Gijrf7mz5O5J68/22ivxF4e57Rgfu5Y3bpfFM8FPMQ==
X-Google-Smtp-Source: ABdhPJydXfu6Fi6f+hBcnPFPjaFufC8dBQ1NQS0D/JpVYz70djnsUCwyQPfHkySp19d7QwzaKprcrcMX6Rm6NSr9J3Y=
X-Received: by 2002:a25:7647:: with SMTP id r68mr14860950ybc.432.1626287761537; 
 Wed, 14 Jul 2021 11:36:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210714100323.752828-1-maarten.lankhorst@linux.intel.com>
 <CAOFGe96ScooLy0sahtTi=E_At+J8N+o+uUNCt2jcsMzq+Jc9sw@mail.gmail.com>
 <a7b6c71b-ddd7-ec6e-642c-b6e2c947c578@linux.intel.com>
In-Reply-To: <a7b6c71b-ddd7-ec6e-642c-b6e2c947c578@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 14 Jul 2021 13:35:50 -0500
Message-ID: <CAOFGe94OpuJ45PQYZjXwO-SKTrQtf2ao0dYUSbwNckcqA5YtZQ@mail.gmail.com>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 14, 2021 at 12:05 PM Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> Op 14-07-2021 om 18:17 schreef Jason Ekstrand:
> > On Wed, Jul 14, 2021 at 5:03 AM Maarten Lankhorst
> > <maarten.lankhorst@linux.intel.com> wrote:
> >> The FIXED mapping is only used for ttm, and tells userspace that the
> >> mapping type is pre-defined. This disables the other type of mmap
> >> offsets when discrete memory is used, so fix the selftests as well.
> >>
> >> Document the struct as well, so it shows up in docbook.
> >>
> >> Cc: Jason Ekstrand <jason@jlekstrand.net>
> >> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 ++++++-
> >>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
> >>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 ++++++++++-
> >>  include/uapi/drm/i915_drm.h                   | 46 ++++++++++++++-----
> >>  4 files changed, 77 insertions(+), 14 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> >> index a90f796e85c0..31c4021bb6be 100644
> >> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> >> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> >> @@ -679,10 +679,16 @@ __assign_mmap_offset(struct drm_i915_gem_object *obj,
> >>                 return -ENODEV;
> >>
> >>         if (obj->ops->mmap_offset)  {
> >> +               if (mmap_type != I915_MMAP_TYPE_FIXED)
> >> +                       return -ENODEV;
> >> +
> >>                 *offset = obj->ops->mmap_offset(obj);
> >>                 return 0;
> >>         }
> >>
> >> +       if (mmap_type == I915_MMAP_TYPE_FIXED)
> >> +               return -ENODEV;
> >> +
> >>         if (mmap_type != I915_MMAP_TYPE_GTT &&
> >>             !i915_gem_object_has_struct_page(obj) &&
> >>             !i915_gem_object_has_iomem(obj))
> >> @@ -727,7 +733,9 @@ i915_gem_dumb_mmap_offset(struct drm_file *file,
> >>  {
> >>         enum i915_mmap_type mmap_type;
> >>
> >> -       if (boot_cpu_has(X86_FEATURE_PAT))
> >> +       if (HAS_LMEM(to_i915(dev)))
> >> +               mmap_type = I915_MMAP_TYPE_FIXED;
> >> +       else if (boot_cpu_has(X86_FEATURE_PAT))
> >>                 mmap_type = I915_MMAP_TYPE_WC;
> >>         else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
> >>                 return -ENODEV;
> >> @@ -798,6 +806,10 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
> >>                 type = I915_MMAP_TYPE_UC;
> >>                 break;
> >>
> >> +       case I915_MMAP_OFFSET_FIXED:
> >> +               type = I915_MMAP_TYPE_FIXED;
> >> +               break;
> >> +
> >>         default:
> >>                 return -EINVAL;
> >>         }
> >> @@ -968,6 +980,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
> >>                 vma->vm_ops = &vm_ops_cpu;
> >>                 break;
> >>
> >> +       case I915_MMAP_TYPE_FIXED:
> >> +               GEM_WARN_ON(1);
> >> +               /* fall-through */
> >>         case I915_MMAP_TYPE_WB:
> >>                 vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
> >>                 vma->vm_ops = &vm_ops_cpu;
> >> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> >> index ef3de2ae9723..afbadfc5516b 100644
> >> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> >> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> >> @@ -105,6 +105,7 @@ enum i915_mmap_type {
> >>         I915_MMAP_TYPE_WC,
> >>         I915_MMAP_TYPE_WB,
> >>         I915_MMAP_TYPE_UC,
> >> +       I915_MMAP_TYPE_FIXED,
> >>  };
> >>
> >>  struct i915_mmap_offset {
> >> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> >> index 1da8bd675e54..52789c8ad337 100644
> >> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> >> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> >> @@ -573,6 +573,14 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
> >>         return 0;
> >>  }
> >>
> >> +static enum i915_mmap_type default_mapping(struct drm_i915_private *i915)
> >> +{
> >> +       if (HAS_LMEM(i915))
> >> +               return I915_MMAP_TYPE_FIXED;
> >> +
> >> +       return I915_MMAP_TYPE_GTT;
> >> +}
> >> +
> >>  static bool assert_mmap_offset(struct drm_i915_private *i915,
> >>                                unsigned long size,
> >>                                int expected)
> >> @@ -585,7 +593,7 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
> >>         if (IS_ERR(obj))
> >>                 return expected && expected == PTR_ERR(obj);
> >>
> >> -       ret = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
> >> +       ret = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
> >>         i915_gem_object_put(obj);
> >>
> >>         return ret == expected;
> >> @@ -689,7 +697,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
> >>                 goto out;
> >>         }
> >>
> >> -       err = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
> >> +       err = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
> >>         if (err) {
> >>                 pr_err("Unable to insert object into reclaimed hole\n");
> >>                 goto err_obj;
> >> @@ -831,8 +839,14 @@ static int wc_check(struct drm_i915_gem_object *obj)
> >>
> >>  static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
> >>  {
> >> +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> >>         bool no_map;
> >>
> >> +       if (HAS_LMEM(i915))
> >> +               return type == I915_MMAP_TYPE_FIXED;
> >> +       else if (type == I915_MMAP_TYPE_FIXED)
> >> +               return false;
> >> +
> >>         if (type == I915_MMAP_TYPE_GTT &&
> >>             !i915_ggtt_has_aperture(&to_i915(obj->base.dev)->ggtt))
> >>                 return false;
> >> @@ -970,6 +984,8 @@ static int igt_mmap(void *arg)
> >>                         err = __igt_mmap(i915, obj, I915_MMAP_TYPE_GTT);
> >>                         if (err == 0)
> >>                                 err = __igt_mmap(i915, obj, I915_MMAP_TYPE_WC);
> >> +                       if (err == 0)
> >> +                               err = __igt_mmap(i915, obj, I915_MMAP_TYPE_FIXED);
> >>
> >>                         i915_gem_object_put(obj);
> >>                         if (err)
> >> @@ -987,6 +1003,7 @@ static const char *repr_mmap_type(enum i915_mmap_type type)
> >>         case I915_MMAP_TYPE_WB: return "wb";
> >>         case I915_MMAP_TYPE_WC: return "wc";
> >>         case I915_MMAP_TYPE_UC: return "uc";
> >> +       case I915_MMAP_TYPE_FIXED: return "ttm";
> > fixed?
> >
> > Otherwise, I trolled through the patch and everything looks good.  I
> > don't know the code well enough to know if you missed anything but
> > what you have seems sane.
> >
> > Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
> >
> > I suppose you'll be wanting a couple mesa patches to go with this?  I
> > can try and knock something out today.
>
> Yes please! IGT probably needs fixing too. I can probably take a look at that.

As promised: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/11888

As usual, we should make sure those are reviewed and we're happy with
them before we land the uAPI but it was easy enough to wire up.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
