Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F01C3DA2D4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 14:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E236ECEC;
	Thu, 29 Jul 2021 12:07:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D305B6ED72
 for <Intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 12:07:34 +0000 (UTC)
Received: by mail-ot1-x32b.google.com with SMTP id
 19-20020a9d08930000b02904b98d90c82cso5633204otf.5
 for <Intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 05:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZY4cE3puLg6lUJzQnhysDrPS1+4/6/fgBtmagYAzk+I=;
 b=C/GyMBcSxj/8GdBXUxPbvypvfXsuHCOaOCobF0RoRM38s3chWJ3qDiFvtkp1d0odIY
 LOK1D6SQObjNLczN4aRZTf4Lmlalt3yU+L5pqwi9Hd0/4XLa+Oykw3bNhilD4Fp9+iXP
 uyEUe73hpf7Am9dFacQLgqu/lvI+YxpElHee0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZY4cE3puLg6lUJzQnhysDrPS1+4/6/fgBtmagYAzk+I=;
 b=LwAyX4A7mKyskLaueFhMiNWkd1AFg3PGCzzpIYPeheUi8BsRBwnCN4aeQhV4EZDO1W
 2foluxgllpVLe64IwS5AgsrKaYUiztFHE0Xr1iWKRduEAwOUzI1xgcOeIqJz8tQgUIoh
 quuMwIy0CVMNp6/UOYOszujB26USaZ4Mstn73P4nzQu84XfR3Qqcxh37lwKcd7gEi81I
 2umByo9Lj2lSCmeLw1cjII5NaZ+1fsh4UByqZcYC4wZ32NOEqND4Dtgp5Fz7oGJ+pum+
 azu/9Wd6t6KJme8avt+rjlFGYRYLFGypwMgZz/TvHDoPnQHViS8AwzXuEjOAqUWI1RXs
 bVUg==
X-Gm-Message-State: AOAM530uzd5Tsx41GLjEiJ0Ncw6WrtBHpqAxBNtxvTAymAW2xuSW//Qh
 KXdOv9mp3EPg65wF+bXh8WXMnMr57X6Z36W5yf3J3A==
X-Google-Smtp-Source: ABdhPJxtWCpZjj6thM4zVFIVJoctN3S8GahV4wonOo/pr7uyog+8Mi5GCVbYktcDstQtwdm1i7QJnBMS9IurjqdC0tM=
X-Received: by 2002:a05:6830:2802:: with SMTP id
 w2mr3123309otu.303.1627560454084; 
 Thu, 29 Jul 2021 05:07:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210729111848.729888-1-tvrtko.ursulin@linux.intel.com>
 <20210729111848.729888-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210729111848.729888-2-tvrtko.ursulin@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 29 Jul 2021 14:07:23 +0200
Message-ID: <CAKMK7uGe-S+rtHGDQm0hRfc=0F99RZdCsz0aBBptPxkcpjUXgg@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Use Transparent Hugepages
 when IOMMU is enabled
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
Cc: intel-gfx <Intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 29, 2021 at 1:19 PM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Usage of Transparent Hugepages was disabled in 9987da4b5dcf
> ("drm/i915: Disable THP until we have a GPU read BW W/A"), but since it
> appears majority of performance regressions reported with an enabled IOMMU
> can be almost eliminated by turning them on, lets do that by adding a
> couple of Kconfig options.
>
> To err on the side of safety we keep the current default in cases where
> IOMMU is not active, and only when it is default to the "huge=within_size"
> mode. Although there probably would be wins to enable them throughout,
> more extensive testing across benchmarks and platforms would need to be
> done.
>
> With the patch and IOMMU enabled my local testing on a small Skylake part
> shows OglVSTangent regression being reduced from ~14% to ~2%.

I guess the 14% regression is iommu disabled vs iommu enabled? Would
be good to clarify that.

> v2:
>  * Add Kconfig dependency to transparent hugepages and some help text.

Uh I'm really not a huge fan of Kconfig for everything, especially for
tuning stuff. Maybe if there's a need a module param for debugging,
but otherwise can't we just pick the right default?

And it very much sounds like the right default here is "enable it
unconditionally if we have iommu support".
-Daniel

>  * Move to helper for easier handling of kernel build options.
>
> References: b901bb89324a ("drm/i915/gemfs: enable THP")
> References: 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/430
> Co-developed-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Eero Tamminen <eero.t.tamminen@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
> ---
>  drivers/gpu/drm/i915/Kconfig.profile  | 73 +++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gem/i915_gemfs.c | 27 ++++++++--
>  2 files changed, 97 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> index 39328567c200..d49ee794732f 100644
> --- a/drivers/gpu/drm/i915/Kconfig.profile
> +++ b/drivers/gpu/drm/i915/Kconfig.profile
> @@ -119,3 +119,76 @@ config DRM_I915_TIMESLICE_DURATION
>           /sys/class/drm/card?/engine/*/timeslice_duration_ms
>
>           May be 0 to disable timeslicing.
> +
> +choice
> +       prompt "Transparent Hugepage Support (native)"
> +       default DRM_I915_THP_NATIVE_NEVER
> +       depends on TRANSPARENT_HUGEPAGE
> +       help
> +         Select the preferred method for allocating from Transparent Hugepages
> +         when IOMMU is not enabled.
> +
> +       config DRM_I915_THP_NATIVE_NEVER
> +       bool "Never"
> +       help
> +         Disable using THP for system memory allocations, individually
> +         allocating each 4K chunk as a separate page. It is unlikely that such
> +         individual allocations will return contiguous memory.
> +
> +       config DRM_I915_THP_NATIVE_WITHIN
> +       bool "Within size"
> +       help
> +         Allocate whole 2M superpages while those chunks do not exceed the
> +         object size. The remainder of the object will be allocated from 4K
> +         pages. No overallocation.
> +
> +       config DRM_I915_THP_NATIVE_ALWAYS
> +       bool "Always"
> +       help
> +         Allocate the whole object using 2M superpages, even if the object does
> +         not require an exact number of superpages.
> +
> +endchoice
> +
> +config DRM_I915_THP_NATIVE
> +       string
> +       default "always" if DRM_I915_THP_NATIVE_ALWAYS
> +       default "within_size" if DRM_I915_THP_NATIVE_WITHIN
> +       default "never" if DRM_I915_THP_NATIVE_NEVER
> +
> +choice
> +       prompt "Transparent Hugepage Support (IOMMU)"
> +       default DRM_I915_THP_IOMMU_WITHIN if TRANSPARENT_HUGEPAGE=y
> +       default DRM_I915_THP_IOMMU_NEVER if TRANSPARENT_HUGEPAGE=n
> +       depends on TRANSPARENT_HUGEPAGE
> +       help
> +         Select the preferred method for allocating from Transparent Hugepages
> +         with IOMMU active.
> +
> +       config DRM_I915_THP_IOMMU_NEVER
> +       bool "Never"
> +       help
> +         Disable using THP for system memory allocations, individually
> +         allocating each 4K chunk as a separate page. It is unlikely that such
> +         individual allocations will return contiguous memory.
> +
> +       config DRM_I915_THP_IOMMU_WITHIN
> +       bool "Within size"
> +       help
> +         Allocate whole 2M superpages while those chunks do not exceed the
> +         object size. The remainder of the object will be allocated from 4K
> +         pages. No overallocation.
> +
> +       config DRM_I915_THP_IOMMU_ALWAYS
> +       bool "Always"
> +       help
> +         Allocate the whole object using 2M superpages, even if the object does
> +         not require an exact number of superpages.
> +
> +endchoice
> +
> +config DRM_I915_THP_IOMMU
> +       string
> +       default "always" if DRM_I915_THP_IOMMU_ALWAYS
> +       default "within_size" if DRM_I915_THP_IOMMU_WITHIN
> +       default "never" if DRM_I915_THP_IOMMU_NEVER
> diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> index 5e6e8c91ab38..871cbfb02fdf 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> @@ -11,6 +11,26 @@
>  #include "i915_drv.h"
>  #include "i915_gemfs.h"
>
> +#if defined(CONFIG_DRM_I915_THP_NATIVE) && defined(CONFIG_DRM_I915_THP_IOMMU)
> +static char *gemfd_mount_opts(struct drm_i915_private *i915)
> +{
> +       static char thp_native[] = "huge=" CONFIG_DRM_I915_THP_NATIVE;
> +       static char thp_iommu[] = "huge=" CONFIG_DRM_I915_THP_IOMMU;
> +       char *opts;
> +
> +       opts = intel_vtd_active() ? thp_iommu : thp_native;
> +       drm_info(&i915->drm, "Transparent Hugepage mode '%s'", opts);
> +
> +       return opts;
> +}
> +#else
> +static char *gemfd_mount_opts(struct drm_i915_private *i915)
> +{
> +       return NULL;
> +}
> +#endif
> +
> +
>  int i915_gemfs_init(struct drm_i915_private *i915)
>  {
>         struct file_system_type *type;
> @@ -26,10 +46,11 @@ int i915_gemfs_init(struct drm_i915_private *i915)
>          *
>          * One example, although it is probably better with a per-file
>          * control, is selecting huge page allocations ("huge=within_size").
> -        * Currently unused due to bandwidth issues (slow reads) on Broadwell+.
> +        * However, we only do so to offset the overhead of iommu lookups
> +        * due to bandwidth issues (slow reads) on Broadwell+.
>          */
> -
> -       gemfs = kern_mount(type);
> +       gemfs = vfs_kern_mount(type, SB_KERNMOUNT, type->name,
> +                              gemfd_mount_opts(i915));
>         if (IS_ERR(gemfs))
>                 return PTR_ERR(gemfs);
>
> --
> 2.30.2
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
