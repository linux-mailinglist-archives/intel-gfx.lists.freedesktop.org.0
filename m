Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2451B52BDA5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 17:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E85F2899AB;
	Wed, 18 May 2022 15:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 703A5899AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 15:00:59 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id j6so1657932qkp.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 08:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GEFBCPvLAoeJLhlxyoZoE1dSvvmhUYqmjmzfPwPup70=;
 b=IkiAEtLKHtIWmfpY1xy3N6jJqDAEg6qpsDWtmDo1yJjpqTrzrSILogrYhWm0PMrBbN
 t5O/zQlTLJtmCdkEuANhvK/vI/fm58mfmX6SpjQ3h5vvn91apHyZbKh505ZMKuanUiyp
 PNuHkxAoRPIKgT/c4rZqmlKzjenOZo//2ef8nJelnCS1nNwkcBIGpqqiW62EwGpQZOGV
 WUYTpuOJ5Chpu3ib2DcX7BDnWlk/CMnJ5JAeh1vIDT0GVuxI43POrhf111EedbQtiFPP
 d1H3x2DNrU9U+JEQnIp6v1id7BWDgHr57mnfvwU6iAqDUsADJesyo3BRumfhj/uIlB9p
 1KZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GEFBCPvLAoeJLhlxyoZoE1dSvvmhUYqmjmzfPwPup70=;
 b=tbxtGVbKkYu+WBo0hk0GwfWtVnyDsB3JEKYTc2t8fIjVlMxITbJS+bH5BhFBGIP3pJ
 yj1E2+AUrNrTXCXiMliM4XPbxRwzFGVBsl78yIaeyDEKTw0jfPmcElWxZcHDr7CYrrXB
 nEnK8wHnbPk2uehiGifMagekdeVXKrgR8UQQmg3K+v9aYxwwPvxyNe1Q3clcTYdDPPCD
 LvxNLAGld1gH5G2FUb+6OvhjeZrXH66GQD/1GEzH6Gv8/H+zIP1eQI0Zz8EkTrm1SrEy
 srSvO6BuDmkSsGQ5n9zXop0jJL0PRgPsw5gAM1tEo/qW9rlZB8nhybUxJCGk1gJ6KMxN
 exkw==
X-Gm-Message-State: AOAM533djCcdzpTTC+BkYkSqoLmF8+q51RPUtA02vkL8ISMQzuuE134z
 8j6uGA8PZ+AT8jw2r3W0dsOzX5UGMIp9I84q6U99IulqVTs=
X-Google-Smtp-Source: ABdhPJyNFhe//oLFf6UiJubGZ/SvotHQV39AUx2Yx3WJWk4W0L+lOFIzOBbQP/iQNGHW9gKrVm/DxHCN3vTCYHEYz0o=
X-Received: by 2002:a37:a1c5:0:b0:6a0:38ab:da41 with SMTP id
 k188-20020a37a1c5000000b006a038abda41mr19520889qke.519.1652886058432; Wed, 18
 May 2022 08:00:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220517204513.429930-1-adrian.larumbe@collabora.com>
In-Reply-To: <20220517204513.429930-1-adrian.larumbe@collabora.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 18 May 2022 16:00:32 +0100
Message-ID: <CAM0jSHP4A2dCxabkFC38=4-8sX4GnC-5jyUx-hzyN9u1noU0fw@mail.gmail.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC PATCH v2 0/1] Replace shmem memory region and
 object backend
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

On Tue, 17 May 2022 at 21:45, Adrian Larumbe
<adrian.larumbe@collabora.com> wrote:
>
> This patch is a second attempt at eliminating the old shmem memory region
> and GEM object backend, in favour of a TTM-based one that is able to manage
> objects placed on both system and local memory.
>
> Questions addressed since previous revision:
>
> * Creating an anonymous vfs mount for shmem files in TTM
> * Fixing LLC caching properties and bit 17 swizzling before setting a TTM
> bo's pages when calling get_pages
> * Added handling of phys backend from TTM functions
> * Added pread callback to TTM gem object backend
> * In shmem_create_from_object, ensuring an shmem object we just got a filp
> for has its pages marked dirty and accessed. Otherwise, the engine won't be
> able to read the initial state and a GPU hung will ensue
>
> However, one of the issues persists:
>
> Many GPU hungs in machines of GEN <= 5. My assumption is this has something
>  to do with a caching pitfall, but everywhere across the TTM backend code
>  I've tried to handle object creation and getting its pages with the same
>  set of caching and coherency properties as in the old shmem backend.

Some thoughts in case it's helpful:

- We still look to be trampling the cache_level etc after object
creation. AFAICT i915_ttm_adjust_gem_after_move can be called in
various places after creation.

- The i915_ttm_pwrite hook won't play nice on non-llc platforms, since
it doesn't force a clflush or keep track of the writes with
cache_dirty. The existing ->shmem_pwrite hook only works because we
are guaranteed to have not yet populated the mm.pages, and on non-llc
platforms we always force a clflush in __set_pages(). In
i915_ttm_pwrite we are now just calling pin_pages() and then writing
through the page-cache without forcing a clflush, or ensuring that we
leave cache_dirty set. Also AFAIK the whole point of shmem_pwrite was
to avoid needing to populate the entire object like when calling
pin_pages(). Would it make sense to just fallback to using
i915_gem_shmem_pwrite, which should already take care of the required
flushing?

For reference a common usage pattern is something like:

bb = gem_create() <-- assume non-llc so must be CACHE_NONE
gem_write(bb, BATCH_BUFFER_END) <-- might use cached pwrite internally
execbuf(bb) <-- doesn't see BATCH_BUFFER_END if we don't clflush

>
> Adrian Larumbe (1):
>   drm/i915: Replace shmem memory region and object backend with TTM
>
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h   |   4 +-
>  drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  32 +-
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 390 +------------------
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 267 ++++++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
>  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |   9 +-
>  drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
>  drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
>  10 files changed, 398 insertions(+), 422 deletions(-)
>
> --
> 2.35.1
>
