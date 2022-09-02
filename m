Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 513145AA9EC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 10:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F2610E7B6;
	Fri,  2 Sep 2022 08:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6691510E7B6
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 08:26:02 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id b19so1490783ljf.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Sep 2022 01:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=yZ7GI/H/npr8l+qVhno9QYWaE882wgaDO0sWPEtrVzI=;
 b=gBY8OG2XpP3vttfs1RSHEWup1a1iLXJ18Xy6iShnIE/HNIwJph+Hjv9vUaXz/axDCA
 iVd1PNmFNZKCy8mr44bY9s780B3kBdRpDdSAJLWzZqHmPPNv0MmgLE8FgQmGk6MeCYim
 eQbCsVHw1nBiOsX3PwmKhBjTPYGZVbKvKvCNCB/j2NGcUvVfUG4QtfkZm/n90RiUuuse
 +6ym92aIJpO96LxYalFyXhF3gMayHDtAM6TI9mvOcTspQlr/goaxcGLOxLzkGjyKhYiq
 8M4XEf/deUHsFxD1OItXh9OiVX+tlJIFa2OFbUvSmaoB/oipSXfs/TyVEQ1VFlQH8aM6
 HOjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=yZ7GI/H/npr8l+qVhno9QYWaE882wgaDO0sWPEtrVzI=;
 b=0EA2s+O9ZdFj9kM3n4iwbVycTQ7ijLrWVLi4F6PQPe0U+HHM1EJSxUK269eu67Snzr
 X9wSVRf0AKhJxEzKk2GF3pZBfpH+uYXwgA5rDOsrafXhPcakGwN8qlQw49OuJA2FkeIP
 8HfJ9wGMjux+k0HiVQQwzf6KE0IRbcmblk46Pkb24gtbU3/dZAO3PLoiw4mEFoxtybHf
 hUhlGS7J/qpcExQ2mXHezq2xBRHIhDtwPoxk4+2No+FBG3e13mzrL39jIYH/o41nCKxG
 VxJ/29vg7WZmgYX2vqTfYZ/pBrIEt/MSpT+JZEaVYD46ZoMIqoo2Vi5Tktwznh7P5SzK
 7LmA==
X-Gm-Message-State: ACgBeo1r2Eb/9qupEDuunepJTQNCJB7uYyGD/pDqIjgAv26tpyZHKKeG
 V9ghG0jAFqCZJpJ18mXx5IF95iv8vecxhZnT3wk=
X-Google-Smtp-Source: AA6agR6HICholv9FC7LpKeoDOUnCvQdkHZTOJxhZ4iQqo4eM6ddVDLKACblmrSS4Nk3c0VjJ0a6i03hsVPNs8Hjweq0=
X-Received: by 2002:a2e:9e48:0:b0:261:c713:37dd with SMTP id
 g8-20020a2e9e48000000b00261c71337ddmr10154143ljk.385.1662107160591; Fri, 02
 Sep 2022 01:26:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220806122636.43068-1-tomas.winkler@intel.com>
 <20220806122636.43068-15-tomas.winkler@intel.com>
In-Reply-To: <20220806122636.43068-15-tomas.winkler@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 2 Sep 2022 09:25:33 +0100
Message-ID: <CAM0jSHO7sDegQysvZgfOXf5B-h6oe7nmfHeuH+KMAmFtnM3d2w@mail.gmail.com>
To: Tomas Winkler <tomas.winkler@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v7 14/15] drm/i915/gsc: allocate extended
 operational memory in LMEM
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 kernel list <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 6 Aug 2022 at 13:34, Tomas Winkler <tomas.winkler@intel.com> wrote:
>
> GSC requires more operational memory than available on chip.
> Reserve 4M of LMEM for GSC operation. The memory is provided to the
> GSC as struct resource to the auxiliary data of the child device.
>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gsc.c | 91 ++++++++++++++++++++++++++---
>  drivers/gpu/drm/i915/gt/intel_gsc.h |  3 +
>  2 files changed, 87 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
> index e1040c8f2fd3..162bea57fbb5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -7,6 +7,7 @@
>  #include <linux/mei_aux.h>
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "gem/i915_gem_region.h"
>  #include "gt/intel_gsc.h"
>  #include "gt/intel_gt.h"
>
> @@ -36,12 +37,68 @@ static int gsc_irq_init(int irq)
>         return irq_set_chip_data(irq, NULL);
>  }
>
> +static int
> +gsc_ext_om_alloc(struct intel_gsc *gsc, struct intel_gsc_intf *intf, size_t size)
> +{
> +       struct intel_gt *gt = gsc_to_gt(gsc);
> +       struct drm_i915_gem_object *obj;
> +       void *vaddr;
> +       int err;
> +
> +       obj = i915_gem_object_create_lmem(gt->i915, size, I915_BO_ALLOC_CONTIGUOUS);
> +       if (IS_ERR(obj)) {
> +               drm_err(&gt->i915->drm, "Failed to allocate gsc memory\n");
> +               return PTR_ERR(obj);
> +       }
> +
> +       err = i915_gem_object_pin_pages_unlocked(obj);
> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to pin pages for gsc memory\n");
> +               goto out_put;
> +       }
> +
> +       vaddr = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt->i915, obj, true));
> +       if (IS_ERR(vaddr)) {
> +               err = PTR_ERR(vaddr);
> +               drm_err(&gt->i915->drm, "Failed to map gsc memory\n");
> +               goto out_unpin;
> +       }
> +
> +       memset(vaddr, 0, obj->base.size);
> +
> +       i915_gem_object_unpin_map(obj);

I think this was mentioned before, here we should rather use:

create_lmem(gt->i915, size,
                      I915_BO_ALLOC_CONTIGUOUS |
                      I915_BO_ALLOC_CPU_CLEAR);

That way we don't need to manually map and clear it here. Instead when
first allocating the pages (like with pin_pages), the clear will be
done for you.
