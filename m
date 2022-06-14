Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7176E54B827
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 19:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745F8112895;
	Tue, 14 Jun 2022 17:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8067D1128FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 17:55:45 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id a184so6966729qkg.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 10:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/AfPGXOenoA0NNVeZOTXFXMBd2KLxHOqVKV6mnKJIec=;
 b=RZ7TGla5jfBdOC7Nf2WzY9PYzkJEUuU0qm9PZfXqNzWl2V2yhM+6qSC4Nr1qFIuYkv
 c1Qeo1k3co5P7Jn+xH9YWunGsQbtNaVapvlHIZnknXff3Z+JTWr57a4FqsLT3RC3oTTK
 Amv+oI6Ztm9WtrKH7qmyHnBhOYLH/EOPlhu0dIux6Y/CJD5TDCLWNwFUt6+qrZBqxDh/
 hz+4iPquYC7bPtN8LW/FyuGshPuWGuF99H6YGP6IfKTVG6tfTwxcQQeXxMN72JT8XYqA
 b3xfEx99SIoKfl7+EXf6LkUVqboUr27+YkySKhsM/QVKKV9JMN977IWesHCG+XGUQfD6
 2MAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/AfPGXOenoA0NNVeZOTXFXMBd2KLxHOqVKV6mnKJIec=;
 b=URbRmS5SgMifwEmo+WQo6LLV0yKaR1z1P3Shp1VGhmkcFAaKMItAlBo0uOCXN738Eo
 9ykkIdCxpm4jefzsE829GrEPn2tZ9kR6C2HEUw65DYM6Q/Fynpaq1p5H0Nxuaeo3e4et
 WNlK5a0pJd4ahMGhdBr2Rk6a8wVUqCx5J1b4aQbwptmDg0C2qUu3FI7k1VZUK5H5aikT
 6BNBy5hHpCszeUajqhgumJHVbZxtDfMSM7RR4hjBC6fBTdjxutqAybVQaKgRl2WGc6yG
 17dHLrIwJM2qg4UINwzSdAtR+cbAhhklaptNF8djayVo1pF9/ZTWfRY2rVbpp0IHiDGe
 2jtw==
X-Gm-Message-State: AOAM533l6TcqRqFk6XYKry7LL80IKx8ZfPHl9SvLgINd1+pGLxQ8YgZY
 1ztzggsv97q6v9CtuoT8t19Gom/VLqfKTOCKxrWRHRyEJUkhXw==
X-Google-Smtp-Source: ABdhPJy7OICzIPScSIXQhqqeGswr1yRbqv1KcNfTVDGS3mStQiuhyMnOdtq3QxC3UCFQ1cBEpBfdiglCOOpZ9K3Cjyc=
X-Received: by 2002:a05:620a:4495:b0:6a7:19e2:62e6 with SMTP id
 x21-20020a05620a449500b006a719e262e6mr5045052qkp.569.1655229344512; Tue, 14
 Jun 2022 10:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220614011350.122168-1-adrian.larumbe@collabora.com>
 <20220614011350.122168-3-adrian.larumbe@collabora.com>
In-Reply-To: <20220614011350.122168-3-adrian.larumbe@collabora.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 14 Jun 2022 18:55:17 +0100
Message-ID: <CAM0jSHNvCqeNLO_i0_uVUHGhw_-DQi5Mxtw5nOiogeGU2HSWkg@mail.gmail.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/ttm: don't overwrite
 cache_dirty after setting coherency
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Jun 2022 at 02:14, Adrian Larumbe
<adrian.larumbe@collabora.com> wrote:
>
> When i915_gem_object_set_cache_level sets the GEM object's cache_dirty to
> true, in the case of TTM that will sometimes be overwritten when getting
> the object's pages, more specifically for shmem-placed objects for which
> its ttm structure has just been populated.
>
> This wasn't an issue so far, even though intel_dpt_create was setting the
> object's cache level to 'none', regardless of the platform and memory
> placement of the framebuffer. However, commit 2f0ec95ed20c ("drm/i915/ttm:
> dont trample cache_level overrides during ttm move") makes sure the cache
> level set by older backends soon to be managed by TTM isn't altered after
> their TTM bo ttm structure is populated.
>
> However this led to the 'obj->cache_dirty = true' set in
> i915_gem_object_set_cache_level to stick around rather than being reset
> inside i915_ttm_adjust_gem_after_move after calling ttm_tt_populate in
> __i915_ttm_get_pages, which eventually led to a warning in DGFX platforms.
>
> There also seems to be no need for this statement to be kept in
> i915_gem_object_set_cache_level, since i915_gem_object_set_cache_coherency
> is already taking care of it, and also considering whether it's a discrete
> platform.
>
> Remove statement altogether.
>
> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index 3e5d6057b3ef..b2c9e16bfa55 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -273,10 +273,8 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
>                 return ret;
>
>         /* Always invalidate stale cachelines */
> -       if (obj->cache_level != cache_level) {
> +       if (obj->cache_level != cache_level)
>                 i915_gem_object_set_cache_coherency(obj, cache_level);
> -               obj->cache_dirty = true;

Maybe ban calling this on dgpu or have it fail silently? At the ioctl
level this should already be banned.

Ignoring dgpu, the cache_dirty handling is quite thorny on non-LLC
platforms. I'm not sure if there are other historical reasons for
having this here, but one big issue is that we are not allowed to
freely set cache_dirty = false, unless we are certain that the pages
underneath have been populated and the potential flush-on-acquire
completed. See the kernel-doc for @cache_dirty for more details.

> -       }
>
>         /* The cache-level will be applied when each vma is rebound. */
>         return i915_gem_object_unbind(obj,
> --
> 2.36.1
>
