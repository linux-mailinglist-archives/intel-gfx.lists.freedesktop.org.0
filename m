Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5BD3C8886
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 18:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D78406E424;
	Wed, 14 Jul 2021 16:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E8B6E424
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 16:17:30 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id g5so4060702ybu.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 09:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FF25Hqumt6bePdMtvXM2SBXfCXdONydz4v1oJEs/qDY=;
 b=hSMC4wNL5iS7/ekacZcGF3Bvpoa1JYya6jV4nGgK2ftoEJTdwDdR37XoLQ5v9R1vVG
 K1jJ9CsOWO9MZ6KUDej3+CXNMrYAraZTG8oUFv4Jn08wQBj5UeRv0oOUAaox48ojLbU9
 SxS2C58r/AdiX3ok4Xua8CoyBfox0Y5PY+MAXIua2LdRAXapsrmO9n7GWtUwF9MWdIok
 GniwME23vmGBjXoSjiqCD0RwM1XBml30WDadzw4fnGnKd+LGL1Cluz9+FLlHseMlP7Ju
 Rc5GYWupnDwPIADIKTm6HYujj2khQbeYRPQzxukwV9q+GLYNd6TuI2Cux8Xo4c9WVMMA
 n5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FF25Hqumt6bePdMtvXM2SBXfCXdONydz4v1oJEs/qDY=;
 b=JAD8dk/K+uDQACST/yvX1mUnQcvPgyBUEh8jATrwFZ+D/K5p/SiIFssGBVpxBSiT2V
 0cVsN5Ri1vR1PrESVZhCPUWhspyRGchEIaSbGZz5SdF6jFMT9kVVlh+gRP1HJYlCfY6w
 kplh+tmuoyoRybezyO8IQJLy0IVWPUvJQKHR5/ZJCdRUwWhGOWRyiSML1p/w7Ltup7aO
 lBE46eapmNjkEdMBQhBXKwGaCUuwhCxw4fBvmYBcVD0LPUWrcoCN13sb8XowS9rsIpnX
 7wT7+pLhqc6IFk2a1mAN6kn4G+9iXm12h8kBjM8Dng4c7Nj2mnGEEfh9bHctGQ+y5UUi
 hrBw==
X-Gm-Message-State: AOAM531aAKUPaadWTQjin2YNcmecc/g0UF+1eZEPf3fHW0pFocep4Ijo
 dkjqHgDiRUB8N7AckXqM56xWNVN3VXGw3FAnWoZXbR6sRNE=
X-Google-Smtp-Source: ABdhPJwd5qHHNNlvY8rFcuW6ecw5kvtYVG+FNIOUARk4fzSvJeb+RxzeG/itkIIp1CxB3CqSWfbrB0JMAjgI18MyeZo=
X-Received: by 2002:a25:aa69:: with SMTP id s96mr14246141ybi.241.1626279448999; 
 Wed, 14 Jul 2021 09:17:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210714100323.752828-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210714100323.752828-1-maarten.lankhorst@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 14 Jul 2021 11:17:17 -0500
Message-ID: <CAOFGe96ScooLy0sahtTi=E_At+J8N+o+uUNCt2jcsMzq+Jc9sw@mail.gmail.com>
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

On Wed, Jul 14, 2021 at 5:03 AM Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> The FIXED mapping is only used for ttm, and tells userspace that the
> mapping type is pre-defined. This disables the other type of mmap
> offsets when discrete memory is used, so fix the selftests as well.
>
> Document the struct as well, so it shows up in docbook.
>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 ++++++-
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 ++++++++++-
>  include/uapi/drm/i915_drm.h                   | 46 ++++++++++++++-----
>  4 files changed, 77 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index a90f796e85c0..31c4021bb6be 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -679,10 +679,16 @@ __assign_mmap_offset(struct drm_i915_gem_object *obj,
>                 return -ENODEV;
>
>         if (obj->ops->mmap_offset)  {
> +               if (mmap_type != I915_MMAP_TYPE_FIXED)
> +                       return -ENODEV;
> +
>                 *offset = obj->ops->mmap_offset(obj);
>                 return 0;
>         }
>
> +       if (mmap_type == I915_MMAP_TYPE_FIXED)
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
> +               mmap_type = I915_MMAP_TYPE_FIXED;
> +       else if (boot_cpu_has(X86_FEATURE_PAT))
>                 mmap_type = I915_MMAP_TYPE_WC;
>         else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
>                 return -ENODEV;
> @@ -798,6 +806,10 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
>                 type = I915_MMAP_TYPE_UC;
>                 break;
>
> +       case I915_MMAP_OFFSET_FIXED:
> +               type = I915_MMAP_TYPE_FIXED;
> +               break;
> +
>         default:
>                 return -EINVAL;
>         }
> @@ -968,6 +980,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>                 vma->vm_ops = &vm_ops_cpu;
>                 break;
>
> +       case I915_MMAP_TYPE_FIXED:
> +               GEM_WARN_ON(1);
> +               /* fall-through */
>         case I915_MMAP_TYPE_WB:
>                 vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
>                 vma->vm_ops = &vm_ops_cpu;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index ef3de2ae9723..afbadfc5516b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -105,6 +105,7 @@ enum i915_mmap_type {
>         I915_MMAP_TYPE_WC,
>         I915_MMAP_TYPE_WB,
>         I915_MMAP_TYPE_UC,
> +       I915_MMAP_TYPE_FIXED,
>  };
>
>  struct i915_mmap_offset {
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 1da8bd675e54..52789c8ad337 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -573,6 +573,14 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
>         return 0;
>  }
>
> +static enum i915_mmap_type default_mapping(struct drm_i915_private *i915)
> +{
> +       if (HAS_LMEM(i915))
> +               return I915_MMAP_TYPE_FIXED;
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
> +               return type == I915_MMAP_TYPE_FIXED;
> +       else if (type == I915_MMAP_TYPE_FIXED)
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
> +                               err = __igt_mmap(i915, obj, I915_MMAP_TYPE_FIXED);
>
>                         i915_gem_object_put(obj);
>                         if (err)
> @@ -987,6 +1003,7 @@ static const char *repr_mmap_type(enum i915_mmap_type type)
>         case I915_MMAP_TYPE_WB: return "wb";
>         case I915_MMAP_TYPE_WC: return "wc";
>         case I915_MMAP_TYPE_UC: return "uc";
> +       case I915_MMAP_TYPE_FIXED: return "ttm";

fixed?

Otherwise, I trolled through the patch and everything looks good.  I
don't know the code well enough to know if you missed anything but
what you have seems sane.

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

I suppose you'll be wanting a couple mesa patches to go with this?  I
can try and knock something out today.

--Jason

>         default: return "unknown";
>         }
>  }
> @@ -1100,6 +1117,8 @@ static int igt_mmap_access(void *arg)
>                         err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_WC);
>                 if (err == 0)
>                         err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_UC);
> +               if (err == 0)
> +                       err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_FIXED);
>
>                 i915_gem_object_put(obj);
>                 if (err)
> @@ -1241,6 +1260,8 @@ static int igt_mmap_gpu(void *arg)
>                 err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_GTT);
>                 if (err == 0)
>                         err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_WC);
> +               if (err == 0)
> +                       err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_FIXED);
>
>                 i915_gem_object_put(obj);
>                 if (err)
> @@ -1396,6 +1417,8 @@ static int igt_mmap_revoke(void *arg)
>                 err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_GTT);
>                 if (err == 0)
>                         err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_WC);
> +               if (err == 0)
> +                       err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_FIXED);
>
>                 i915_gem_object_put(obj);
>                 if (err)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index e334a8b14ef2..223f60d7694a 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -849,31 +849,55 @@ struct drm_i915_gem_mmap_gtt {
>         __u64 offset;
>  };
>
> +/**
> + * struct drm_i915_gem_mmap_offset - Retrieve an offset so we can mmap this buffer object.
> + *
> + * This struct is passed as argument to the `DRM_IOCTL_I915_GEM_MMAP_OFFSET` ioctl,
> + * and is used to retrieve the fake offset to mmap an object specified by &handle.
> + *
> + * The legacy way of using `DRM_IOCTL_I915_GEM_MMAP` is removed on gen12+.
> + * `DRM_IOCTL_I915_GEM_MMAP_GTT` is an older supported alias to this struct, but will behave
> + * as setting the &extensions to 0, and &flags to `I915_MMAP_OFFSET_GTT`.
> + */
>  struct drm_i915_gem_mmap_offset {
> -       /** Handle for the object being mapped. */
> +       /** @handle: Handle for the object being mapped. */
>         __u32 handle;
> +       /** @pad: Must be zero */
>         __u32 pad;
>         /**
> -        * Fake offset to use for subsequent mmap call
> +        * @offset: The fake offset to use for subsequent mmap call
>          *
>          * This is a fixed-size type for 32/64 compatibility.
>          */
>         __u64 offset;
>
>         /**
> -        * Flags for extended behaviour.
> +        * @flags: Flags for extended behaviour.
> +        *
> +        * It is mandatory that one of the `MMAP_OFFSET` types
> +        * should be included:
> +        * - `I915_MMAP_OFFSET_GTT`: Use mmap with the object bound to GTT. (Write-Combined)
> +        * - `I915_MMAP_OFFSET_WC`: Use Write-Combined caching.
> +        * - `I915_MMAP_OFFSET_WB`: Use Write-Back caching.
> +        * - `I915_MMAP_OFFSET_FIXED`: Use object placement to determine caching.
> +        *
> +        * On devices with local memory `I915_MMAP_OFFSET_FIXED` is the only valid
> +        * type. Ondevices without local memory, this caching mode is invalid.
>          *
> -        * It is mandatory that one of the MMAP_OFFSET types
> -        * (GTT, WC, WB, UC, etc) should be included.
> +        * As caching mode when specifying `I915_MMAP_OFFSET_FIXED`, WC or WB will
> +        * be used, depending on the object placement on creation. WB will be used
> +        * when the object can only exist in system memory, WC otherwise.
>          */
>         __u64 flags;
> -#define I915_MMAP_OFFSET_GTT 0
> -#define I915_MMAP_OFFSET_WC  1
> -#define I915_MMAP_OFFSET_WB  2
> -#define I915_MMAP_OFFSET_UC  3
>
> -       /*
> -        * Zero-terminated chain of extensions.
> +#define I915_MMAP_OFFSET_GTT   0
> +#define I915_MMAP_OFFSET_WC    1
> +#define I915_MMAP_OFFSET_WB    2
> +#define I915_MMAP_OFFSET_UC    3
> +#define I915_MMAP_OFFSET_FIXED 4
> +
> +       /**
> +        * @extensions: Zero-terminated chain of extensions.
>          *
>          * No current extensions defined; mbz.
>          */
> --
> 2.31.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
