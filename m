Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AC83C25A8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 16:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB18D6EA36;
	Fri,  9 Jul 2021 14:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC636EA36
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 14:14:29 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id i4so14884635ybe.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Jul 2021 07:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0nG3jbGRRyOv98ID/d07qzsStyC7o99FJGcjJ2SiW30=;
 b=H/BjJ7hQh9g0wg/HSg83f6WFLMTNRTDM1m/MdaFC70bOrolkArCrTmcv685fAcuPjG
 asMgBKYpU900/3ReIjhzzbDwqXpHilZPrcwctGX0itRHFVYzO4sYZ7sRrW1UZz6hjo2h
 /8+YNSEqJoi6b+vRQukYRy39i0Sxp0Pd9QiOH+H12oWAIbrKJIYxwhxz/Q6q3rlZ/xJk
 CXoZmjFKvqVbf9P1gD5kPT1LHPnyhwV+qX6Crzghjkl13jli2sOOgjbuNSFGWSaL2VfV
 xdfSVIyUgcKfgwDaEzBoSHXOLlNOoQHe0Jd4UhPx6OuQnQFFajxI8l//lirLGAM1pPzw
 OfbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0nG3jbGRRyOv98ID/d07qzsStyC7o99FJGcjJ2SiW30=;
 b=hcnugSiQKXIl/lbZMkq2i/BupaGOseEcbGLE2BkUrZHMM/bU1wVOmGfiMWKtcROWvb
 ayc0pMhhbMt6lI8iuieeMm66vqhLCuERY626rrvXL8WeYNWMPJM5trDsXszS41GCagrU
 W02LsD4uGQ9qWvfN7nk9f4iM832lvsTEUuDllA+Boe084VPvCRl0pXYwUESp2dLsCJEV
 bq/vkI5/iGB7Seeslxtd87Z9e8Og6Ewjh6b004xHyYKkCURSG1lnJYx+uIpYxnAO9X74
 LerrqFVW4tGVziAc7gOngzMLiymO1fX+q9wKWQi/90+RQ/ubE+k+DaSmC/wDIf5PFHs3
 4iZg==
X-Gm-Message-State: AOAM5310Re7m2h0emWTQZCiWgv2HzHpuOFc5OIp5xDEnyJBwbpkRg+Ap
 RXmXNjekxuhSGWm2LgT9aIoTKtyAKw439g1ox8ad+g==
X-Google-Smtp-Source: ABdhPJwHI+Nh/VCLhNPq7DVX6jRPD2fqP3gSuj0mWvmIOw7qz6Zd4OTKDQwECWBFypajCCTTBAuiycIXrjZh0LTcVto=
X-Received: by 2002:a25:d3c1:: with SMTP id
 e184mr49686211ybf.139.1625840068156; 
 Fri, 09 Jul 2021 07:14:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210701114234.3859716-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210701114234.3859716-1-maarten.lankhorst@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 9 Jul 2021 09:14:16 -0500
Message-ID: <CAOFGe95pp+EJXV-PRTN4o1m7tF0M=ALb3=oJ6ZMJdED2EbpKoA@mail.gmail.com>
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 1, 2021 at 6:42 AM Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> This is only used for ttm, and tells userspace that the mapping type is
> ignored. This disables the other type of mmap offsets when discrete
> memory is used, so fix the selftests as well.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 +++++++++++-
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 +++++++++++++++++--
>  include/uapi/drm/i915_drm.h                   |  9 ++++---
>  4 files changed, 47 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index a90f796e85c0..b34be9e5d094 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -679,10 +679,16 @@ __assign_mmap_offset(struct drm_i915_gem_object *obj,
>                 return -ENODEV;
>
>         if (obj->ops->mmap_offset)  {
> +               if (mmap_type != I915_MMAP_TYPE_TTM)
> +                       return -ENODEV;
> +
>                 *offset = obj->ops->mmap_offset(obj);
>                 return 0;
>         }
>
> +       if (mmap_type == I915_MMAP_TYPE_TTM)
> +               return -ENODEV;
> +
>         if (mmap_type != I915_MMAP_TYPE_GTT &&
>             !i915_gem_object_has_struct_page(obj) &&
>             !i915_gem_object_has_iomem(obj))
> @@ -727,7 +733,9 @@ i915_gem_dumb_mmap_offset(struct drm_file *file,
>  {
>         enum i915_mmap_type mmap_type;
>
> -       if (boot_cpu_has(X86_FEATURE_PAT))
> +       if (HAS_LMEM(to_i915(dev)))
> +               mmap_type = I915_MMAP_TYPE_TTM;
> +       else if (boot_cpu_has(X86_FEATURE_PAT))
>                 mmap_type = I915_MMAP_TYPE_WC;
>         else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
>                 return -ENODEV;
> @@ -798,6 +806,10 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
>                 type = I915_MMAP_TYPE_UC;
>                 break;
>
> +       case I915_MMAP_OFFSET_TTM:
> +               type = I915_MMAP_TYPE_TTM;
> +               break;
> +
>         default:
>                 return -EINVAL;
>         }
> @@ -968,6 +980,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>                 vma->vm_ops = &vm_ops_cpu;
>                 break;
>
> +       case I915_MMAP_TYPE_TTM:
> +               GEM_WARN_ON(mmo->mmap_type == I915_MMAP_TYPE_TTM);
> +               /* fall-through */
>         case I915_MMAP_TYPE_WB:
>                 vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
>                 vma->vm_ops = &vm_ops_cpu;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 441f913c87e6..8b872b22a7ec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -96,6 +96,7 @@ enum i915_mmap_type {
>         I915_MMAP_TYPE_WC,
>         I915_MMAP_TYPE_WB,
>         I915_MMAP_TYPE_UC,
> +       I915_MMAP_TYPE_TTM,
>  };
>
>  struct i915_mmap_offset {
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 607b7d2d4c29..321271bd2fa1 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -573,6 +573,14 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
>         return 0;
>  }
>
> +static enum i915_mmap_type default_mapping(struct drm_i915_private *i915)
> +{
> +       if (HAS_LMEM(i915))
> +               return I915_MMAP_TYPE_TTM;
> +
> +       return I915_MMAP_TYPE_GTT;
> +}
> +
>  static bool assert_mmap_offset(struct drm_i915_private *i915,
>                                unsigned long size,
>                                int expected)
> @@ -585,7 +593,7 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
>         if (IS_ERR(obj))
>                 return expected && expected == PTR_ERR(obj);
>
> -       ret = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
> +       ret = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
>         i915_gem_object_put(obj);
>
>         return ret == expected;
> @@ -689,7 +697,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
>                 goto out;
>         }
>
> -       err = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
> +       err = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
>         if (err) {
>                 pr_err("Unable to insert object into reclaimed hole\n");
>                 goto err_obj;
> @@ -831,8 +839,14 @@ static int wc_check(struct drm_i915_gem_object *obj)
>
>  static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
>  {
> +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
>         bool no_map;
>
> +       if (HAS_LMEM(i915))
> +               return type == I915_MMAP_TYPE_TTM;
> +       else if (type == I915_MMAP_TYPE_TTM)
> +               return false;
> +
>         if (type == I915_MMAP_TYPE_GTT &&
>             !i915_ggtt_has_aperture(&to_i915(obj->base.dev)->ggtt))
>                 return false;
> @@ -970,6 +984,8 @@ static int igt_mmap(void *arg)
>                         err = __igt_mmap(i915, obj, I915_MMAP_TYPE_GTT);
>                         if (err == 0)
>                                 err = __igt_mmap(i915, obj, I915_MMAP_TYPE_WC);
> +                       if (err == 0)
> +                               err = __igt_mmap(i915, obj, I915_MMAP_TYPE_TTM);
>
>                         i915_gem_object_put(obj);
>                         if (err)
> @@ -987,6 +1003,7 @@ static const char *repr_mmap_type(enum i915_mmap_type type)
>         case I915_MMAP_TYPE_WB: return "wb";
>         case I915_MMAP_TYPE_WC: return "wc";
>         case I915_MMAP_TYPE_UC: return "uc";
> +       case I915_MMAP_TYPE_TTM: return "ttm";
>         default: return "unknown";
>         }
>  }
> @@ -1100,6 +1117,8 @@ static int igt_mmap_access(void *arg)
>                         err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_WC);
>                 if (err == 0)
>                         err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_UC);
> +               if (err == 0)
> +                       err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_TTM);
>
>                 i915_gem_object_put(obj);
>                 if (err)
> @@ -1241,6 +1260,8 @@ static int igt_mmap_gpu(void *arg)
>                 err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_GTT);
>                 if (err == 0)
>                         err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_WC);
> +               if (err == 0)
> +                       err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_TTM);
>
>                 i915_gem_object_put(obj);
>                 if (err)
> @@ -1396,6 +1417,8 @@ static int igt_mmap_revoke(void *arg)
>                 err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_GTT);
>                 if (err == 0)
>                         err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_WC);
> +               if (err == 0)
> +                       err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_TTM);
>
>                 i915_gem_object_put(obj);
>                 if (err)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 2f70c48567c0..12ec9c7f1711 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -867,10 +867,11 @@ struct drm_i915_gem_mmap_offset {
>          * (GTT, WC, WB, UC, etc) should be included.
>          */
>         __u64 flags;
> -#define I915_MMAP_OFFSET_GTT 0
> -#define I915_MMAP_OFFSET_WC  1
> -#define I915_MMAP_OFFSET_WB  2
> -#define I915_MMAP_OFFSET_UC  3
> +#define I915_MMAP_OFFSET_GTT   0
> +#define I915_MMAP_OFFSET_WC    1
> +#define I915_MMAP_OFFSET_WB    2
> +#define I915_MMAP_OFFSET_UC    3
> +#define I915_MMAP_OFFSET_TTM   4

I'm not sure I like the name here.  TTM is an implementation detail,
not a kind of map.  I think we want something more like
I915_MMAP_OFFSET_IMPLICIT or something like that.  The semantics here,
as far as I can tell, are "the mmap type is based on the object; you
can't change it."  On DG1, the mmap type is fixed for all objects.  On
integrated, we could have a BO create option for the mmap type but we
don't yet.

--Jason

>
>         /*
>          * Zero-terminated chain of extensions.
> --
> 2.31.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
