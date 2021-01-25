Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CD8302425
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A386E051;
	Mon, 25 Jan 2021 11:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D3266E051
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:16:40 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id t17so9368241qtq.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 03:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6phctyhmTDIbaYWhIR2hZTdw6fmwcfQBC6QUlraLN6A=;
 b=EkL/ZHRJCZKnz5AVpdWT6vEnT9XUij2nRna/NBKsN70Sxm2qhbi92o7xVdikKLqClq
 m4WK+oVL/Uh7hGPiSrwlWloJ3r3K4iup/BJdWcZSq5y1h8v/g4WWgau8znmmD31f7h2j
 2UTcaDdwZg+h52mD9WMZacfIZ9llaOAnucMPVTl9L4FlZrF6uFmIsGlg31+7qdzPeGFD
 oK/KdWXM4kAnGeUtqF+hFwVEfenC8qL2sJWk6M4sJqzamRkUkkeH0dgTiGxAiO43Dttm
 pd5J4sohR/MYX6+pbzNr5eYrMdiQtF1FLq4xTY1t9z254vCyJiUeeG3BrXeC2VgApGnX
 R4AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6phctyhmTDIbaYWhIR2hZTdw6fmwcfQBC6QUlraLN6A=;
 b=PKxAP0TiClZWWArWV4pcijjY1UgA/sp2RclIFb/0QSgnKquN7b5SgyqWhtJLPuwAx1
 Jl8UcbNXhHtpSpZKvgWaCmq4L19HEs2cElafIm0xGfz/iIE3yr7FrNtd+wd4oAujfA4A
 y2pRxR7cZrQNlp1FLLrTzYjWC9T4GAQ79zwHzIcu5ER1mfsN0uICDYIvehxVO0gGscc/
 zbAZ9isk7E9qTqZjtuS7Lsh2UakH4Aw103rx/2pJhE4RPxpGNU9vCtoE4W0JWzoFqRbX
 AVsI6hAoepiJvdVZeeYU4wl2J1zwV8w8T17Oaev7pEWxWzXsCL3DvgD+HjW9BT5lUxNM
 zWyQ==
X-Gm-Message-State: AOAM532YgBBJWdBxjr1CVXD11vnwF/nEwevnRo4rfpf1pcXCL9CmORPc
 vw56tzWY192SZptg9NuC66Xncj+pQ7boZa7Lo/pOkgqn0F22YA==
X-Google-Smtp-Source: ABdhPJxY2HI+mwmxywNn67GyYxZWYcEytxDpWE9Ju1p2SklMKEKdO5wTQtdQNG8bFb9JKm6ZT/eU9eOPNed/AfANpWc=
X-Received: by 2002:aed:2090:: with SMTP id 16mr601301qtb.265.1611573399066;
 Mon, 25 Jan 2021 03:16:39 -0800 (PST)
MIME-Version: 1.0
References: <20210124135406.28756-1-chris@chris-wilson.co.uk>
 <20210124135726.1795-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210124135726.1795-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 25 Jan 2021 11:16:13 +0000
Message-ID: <CAM0jSHMc8F4tS6SsZtSLUMs3XOUS4puW3XBq1nUHJp1o=3=1sg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove guard page insertion
 around unevictable nodes
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 24 Jan 2021 at 13:57, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Assume that unevictable nodes are not in the GTT and so we can ignore
> page boundary concerns, and so allow regular nodes to abutt against
> irregular unevictable nodes.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_drv.h       |  2 --
>  drivers/gpu/drm/i915/i915_gem_evict.c |  6 ++++--
>  drivers/gpu/drm/i915/i915_vma.h       | 10 +++++++++-
>  drivers/gpu/drm/i915/i915_vma_types.h |  2 ++
>  4 files changed, 15 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 99cf861df92d..69c5a185ecff 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -357,8 +357,6 @@ enum i915_cache_level {
>         I915_CACHE_WT, /* hsw:gt3e WriteThrough for scanouts */
>  };
>
> -#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
> -
>  struct intel_fbc {
>         /* This is always the inner lock when overlapping with struct_mutex and
>          * it's the outer lock when overlapping with stolen_lock. */
> diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
> index 4d2d59a9942b..aef88fdb9f66 100644
> --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> @@ -313,11 +313,13 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
>                  */
>                 if (i915_vm_has_cache_coloring(vm)) {
>                         if (node->start + node->size == target->start) {
> -                               if (node->color == target->color)
> +                               if (i915_node_color_matches(node,
> +                                                           target->color))
>                                         continue;
>                         }
>                         if (node->start == target->start + target->size) {
> -                               if (node->color == target->color)
> +                               if (i915_node_color_matches(node,
> +                                                           target->color))
>                                         continue;
>                         }
>                 }

Since we bail early on seeing COLOR_UNEVICTABLE, and since we have to
enlarge our search space by a page on both ends, do we need something
like:

@@ -291,18 +291,22 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,

                /* Always look at the page afterwards to avoid the end-of-GTT */
                end += I915_GTT_PAGE_SIZE;
+
+               /*
+                * The special head node is marked as I915_COLOR_UNEVICTABLE to
+                * prevent normal vma from using the last page, in order to
+                * prevent prefetching over the boundary. If we are dealing with
+                * a normal vma and we abutt with the head node we will always
+                * get -ENOSPC as per the color adjust later, so just bail
+                * early???
+                */
+               if (target->color != I915_COLOR_UNEVICTABLE && end >= vm->total)
+                       return -ENOSPC;
        }
        GEM_BUG_ON(start >= end);

        drm_mm_for_each_node_in_range(node, &vm->mm, start, end) {
-               /* If we find any non-objects (!vma), we cannot evict them */
-               if (node->color == I915_COLOR_UNEVICTABLE) {
-                       ret = -ENOSPC;
-                       break;
-               }
-
                GEM_BUG_ON(!drm_mm_node_allocated(node));
-               vma = container_of(node, typeof(*vma), node);

                /*
                 * If we are using coloring to insert guard pages between
@@ -310,6 +314,9 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
                 * to check whether the objects on either side of our range
                 * abutt and conflict. If they are in conflict, then we evict
                 * those as well to make room for our guard pages.
+                *
+                * Also consider I915_COLOR_UNEVICTABLE nodes, since we consider
+                * these special and permit abutting on either end.
                 */
                if (i915_vm_has_cache_coloring(vm)) {
                        if (node->start + node->size == target->start) {
@@ -324,6 +331,14 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
                        }
                }

+               /* If we find any non-objects (!vma), we cannot evict them */
+               if (node->color == I915_COLOR_UNEVICTABLE) {
+                       ret = -ENOSPC;
+                       break;
+               }
+
+               vma = container_of(node, typeof(*vma), node);
+
                if (i915_vma_is_pinned(vma)) {
                        ret = -ENOSPC;
                        break;


> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index a64adc8c883b..dac953815118 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -283,10 +283,18 @@ static inline bool i915_vma_is_bound(const struct i915_vma *vma,
>         return atomic_read(&vma->flags) & where;
>  }
>
> +static inline bool i915_node_color_matches(const struct drm_mm_node *node,
> +                                          unsigned long color)
> +{
> +       return (node->color | color) == I915_COLOR_UNEVICTABLE ||
> +               node->color == color;
> +}
> +
>  static inline bool i915_node_color_differs(const struct drm_mm_node *node,
>                                            unsigned long color)
>  {
> -       return drm_mm_node_allocated(node) && node->color != color;
> +       return drm_mm_node_allocated(node) &&
> +               !i915_node_color_matches(node, color);
>  }
>
>  /**
> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
> index f5cb848b7a7e..e72a07692a64 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -95,6 +95,8 @@ enum i915_cache_level;
>   *
>   */
>
> +#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
> +
>  struct intel_remapped_plane_info {
>         /* in gtt pages */
>         unsigned int width, height, stride, offset;
> --
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
