Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F045387A0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 20:59:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACCB10E0D8;
	Mon, 30 May 2022 18:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F33510E0D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 18:58:57 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id m68so11529qkb.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 11:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1kcoF/Rq6araXXFWdbL06S3OA/1EVhb4SZRZ/GXK6us=;
 b=LD7jgKi5Ou40+3Ycfk8/Z+evQ3BymqFe52TkZ6bHdPzVpK2yo4BSdLBIKj2bKHLYSc
 hA2heneQWDBCW0yJgOkyoka5DZPF9U+WvAuoJwlS3suWCJHj9IdfBKectSF0zkmob+2v
 aRqPp4RClr7nEfUvIboDxPzLeT/3co+uPNOIfo+jQmnWabRokjxU80U0jWwKrMDb9tys
 pgc+DnNQoCXQq0wUo29vNsvUVmWmYEenSp4WvOVQfVGrTCg1Ho5ag8s5we/G2RWl63lM
 kXhtQEfHH0pOxQceuw1vaNGDLYruq0sFAZWqv/AP1qfGFeobmKnCi5p6E7T8ggwYOlUC
 wQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1kcoF/Rq6araXXFWdbL06S3OA/1EVhb4SZRZ/GXK6us=;
 b=jLrAd54snMgXph81I2Tbvuz2xbleZpS45+wZF48kk6Iif3dCbbaPIdu5cLLHKBOJLI
 bPZnj/OSAzWZQtRlurgMToZnHVG+Yf9ptX/hW2t0tDH2oA6NH4UJLfrPE2umQL4/rqXe
 KbJGaozMZ5M9a+41frndKbUJkWstbGHb2TTzEKf1NzmTSB73EDrz1cIPdEVBJTkDVW5H
 +X1S3vBV5xPEGf1drru5hcgG/p8eZ9QV9K1xVEyZ3PReb+Zukn+shI6Y4g67s4eufC9/
 LomqTF++jYwFF2EVmFGc1AggvpN+Fqp2X2GTrDObtVBse5atIYs3q7gwv4lqdtzGE9MG
 1srQ==
X-Gm-Message-State: AOAM53227XfxBZKhg3AYW3jPtylMm+cpS3r6hmKgPj4iGpltRC83BSNH
 zo1Efrdxc20SJVodiQI0e+wjXVUVBq6WP+uPjBQ=
X-Google-Smtp-Source: ABdhPJyVYOMx4gziOa9WAHYhaI75E6oxXeWKQSg+tLmJt3rFRXpW82yPsUfKn8mMjitKunz8l+cVPxNPKxdrklFurOw=
X-Received: by 2002:a05:620a:4084:b0:6a0:4561:399f with SMTP id
 f4-20020a05620a408400b006a04561399fmr38635855qko.569.1653937136097; Mon, 30
 May 2022 11:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220517204513.429930-1-adrian.larumbe@collabora.com>
 <CAM0jSHP4A2dCxabkFC38=4-8sX4GnC-5jyUx-hzyN9u1noU0fw@mail.gmail.com>
 <20220527153753.3imu2lrhsnljotvt@sobremesa>
In-Reply-To: <20220527153753.3imu2lrhsnljotvt@sobremesa>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 May 2022 19:58:29 +0100
Message-ID: <CAM0jSHP3WqtbWj-Q0QziRvCW=PF6c1MW2SKA0hT5dWQzs07Wfw@mail.gmail.com>
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

On Fri, 27 May 2022 at 16:37, Adrian Larumbe
<adrian.larumbe@collabora.com> wrote:
>
> On 18.05.2022 16:00, Matthew Auld wrote:
> > On Tue, 17 May 2022 at 21:45, Adrian Larumbe
> > <adrian.larumbe@collabora.com> wrote:
> > >
> > > This patch is a second attempt at eliminating the old shmem memory region
> > > and GEM object backend, in favour of a TTM-based one that is able to manage
> > > objects placed on both system and local memory.
> > >
> > > Questions addressed since previous revision:
> > >
> > > * Creating an anonymous vfs mount for shmem files in TTM
> > > * Fixing LLC caching properties and bit 17 swizzling before setting a TTM
> > > bo's pages when calling get_pages
> > > * Added handling of phys backend from TTM functions
> > > * Added pread callback to TTM gem object backend
> > > * In shmem_create_from_object, ensuring an shmem object we just got a filp
> > > for has its pages marked dirty and accessed. Otherwise, the engine won't be
> > > able to read the initial state and a GPU hung will ensue
> > >
> > > However, one of the issues persists:
> > >
> > > Many GPU hungs in machines of GEN <= 5. My assumption is this has something
> > >  to do with a caching pitfall, but everywhere across the TTM backend code
> > >  I've tried to handle object creation and getting its pages with the same
> > >  set of caching and coherency properties as in the old shmem backend.
> >
> > Some thoughts in case it's helpful:
> >
> > - We still look to be trampling the cache_level etc after object
> > creation. AFAICT i915_ttm_adjust_gem_after_move can be called in
> > various places after creation.
>
> I traced this function so that I could see everywhere it was being called when
> running some IGT tests and kmscube, and the only place it was setting a caching
> coherence value other than none was in init_status_page, where I915_CACHE_LLC is
> picked as the cache coherency mode even for machines that do not have
> it. However this code was already present before my changes and didn't seem to
> cause any issues, so I don't think it's involved.

Yeah, I guess it's a different issue, but we still need to somehow
ensure we never trample the cache_level etc on integrated platforms
after object creation. On non-LLC platforms(not discrete) it's normal
to set CACHE_LLC for certain types of buffers. And even on LLC
platforms it's normal to set CACHE_NONE, like for display buffers,
since the display engine is not coherent.

For reference we can have something like:

bb = gem_create() <-- assume non-llc so must be CACHE_NONE
gem_set_caching(bb, CACHED) <-- should now be CACHE_LLC/L3
ptr = mmap_wb(bb); *ptr = BATCH_BUFFER_END <-- gem_after_move() resets
to CACHE_NONE
execbuf(bb) <-- doesn't see the BATCH_BUFFER_END

>
> > - The i915_ttm_pwrite hook won't play nice on non-llc platforms, since
> > it doesn't force a clflush or keep track of the writes with
> > cache_dirty. The existing ->shmem_pwrite hook only works because we
> > are guaranteed to have not yet populated the mm.pages, and on non-llc
> > platforms we always force a clflush in __set_pages(). In
> > i915_ttm_pwrite we are now just calling pin_pages() and then writing
> > through the page-cache without forcing a clflush, or ensuring that we
> > leave cache_dirty set. Also AFAIK the whole point of shmem_pwrite was
> > to avoid needing to populate the entire object like when calling
> > pin_pages(). Would it make sense to just fallback to using
> > i915_gem_shmem_pwrite, which should already take care of the required
> > flushing?
> >
> > For reference a common usage pattern is something like:
> >
> > bb = gem_create() <-- assume non-llc so must be CACHE_NONE
> > gem_write(bb, BATCH_BUFFER_END) <-- might use cached pwrite internally
> > execbuf(bb) <-- doesn't see BATCH_BUFFER_END if we don't clflush
>
> It turns out this was the underlying issue causing machines GEN <= 5 to break in
> pretty much every single test. It seems that for older hardware, IGT tests would
> pick pwrite as the preferred method for filling BO's from UM, so my code wasn't
> calling clfush after getting the pages and writing the UM pointer data into the
> shmem file.
>
> The way I fixed it was creating an shmem file for this and other cases when it's
> required by the existing code, but without getting the pages.  In a way, I just
> cut through the usual TTM populate path and instance an shmem object so that I
> can avoid caching issues.
>
> Thanks a lot for catching this one!
>
> > >
> > > Adrian Larumbe (1):
> > >   drm/i915: Replace shmem memory region and object backend with TTM
> > >
> > >  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
> > >  drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
> > >  drivers/gpu/drm/i915/gem/i915_gem_object.h   |   4 +-
> > >  drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  32 +-
> > >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 390 +------------------
> > >  drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 267 ++++++++++++-
> > >  drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
> > >  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |   9 +-
> > >  drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
> > >  drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
> > >  10 files changed, 398 insertions(+), 422 deletions(-)
> > >
> > > --
> > > 2.35.1
>
