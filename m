Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 206705364C8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 17:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585C310F7CB;
	Fri, 27 May 2022 15:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DCF110F7CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 15:37:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alarumbe) with ESMTPSA id D53751F46384
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1653665876;
 bh=yPngH8QZpec4WtQ1CMvIU4dSmYfFAea4Tp/q9heggdU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iw/NV5fvqVUTJhLB9B/4n9yXc8w+aJNgtTaV23l2IvIU4+s85Apr1FZjmRFf1svSS
 TOOvc01N7RZNpq/yUNsjNR94zY1oTay7ghUkMAItFXryblBHuzok2YMMchZzY3nT8W
 vgsElsQxZtjucqLE86gB1i0dWuWF8p8wcHBt7/B07mxUVa4hb8VKW1Ab2lNyoyx0Zl
 MTktIID2XAjF32zyjc8C0CTKbwjSI1jPGweLVKyxDv6SE6/0D72oXqZy8dicS9snhS
 Lt89aiLIGwpurfg8InKOrmWzUGYLafuLOgKs1bQOn/B019s3cgwT0UnyOzu/4Rh+dA
 gWifSoLmZj3Ew==
Date: Fri, 27 May 2022 16:37:53 +0100
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20220527153753.3imu2lrhsnljotvt@sobremesa>
References: <20220517204513.429930-1-adrian.larumbe@collabora.com>
 <CAM0jSHP4A2dCxabkFC38=4-8sX4GnC-5jyUx-hzyN9u1noU0fw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAM0jSHP4A2dCxabkFC38=4-8sX4GnC-5jyUx-hzyN9u1noU0fw@mail.gmail.com>
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

On 18.05.2022 16:00, Matthew Auld wrote:
> On Tue, 17 May 2022 at 21:45, Adrian Larumbe
> <adrian.larumbe@collabora.com> wrote:
> >
> > This patch is a second attempt at eliminating the old shmem memory region
> > and GEM object backend, in favour of a TTM-based one that is able to manage
> > objects placed on both system and local memory.
> >
> > Questions addressed since previous revision:
> >
> > * Creating an anonymous vfs mount for shmem files in TTM
> > * Fixing LLC caching properties and bit 17 swizzling before setting a TTM
> > bo's pages when calling get_pages
> > * Added handling of phys backend from TTM functions
> > * Added pread callback to TTM gem object backend
> > * In shmem_create_from_object, ensuring an shmem object we just got a filp
> > for has its pages marked dirty and accessed. Otherwise, the engine won't be
> > able to read the initial state and a GPU hung will ensue
> >
> > However, one of the issues persists:
> >
> > Many GPU hungs in machines of GEN <= 5. My assumption is this has something
> >  to do with a caching pitfall, but everywhere across the TTM backend code
> >  I've tried to handle object creation and getting its pages with the same
> >  set of caching and coherency properties as in the old shmem backend.
> 
> Some thoughts in case it's helpful:
> 
> - We still look to be trampling the cache_level etc after object
> creation. AFAICT i915_ttm_adjust_gem_after_move can be called in
> various places after creation.

I traced this function so that I could see everywhere it was being called when
running some IGT tests and kmscube, and the only place it was setting a caching
coherence value other than none was in init_status_page, where I915_CACHE_LLC is
picked as the cache coherency mode even for machines that do not have
it. However this code was already present before my changes and didn't seem to
cause any issues, so I don't think it's involved.

> - The i915_ttm_pwrite hook won't play nice on non-llc platforms, since
> it doesn't force a clflush or keep track of the writes with
> cache_dirty. The existing ->shmem_pwrite hook only works because we
> are guaranteed to have not yet populated the mm.pages, and on non-llc
> platforms we always force a clflush in __set_pages(). In
> i915_ttm_pwrite we are now just calling pin_pages() and then writing
> through the page-cache without forcing a clflush, or ensuring that we
> leave cache_dirty set. Also AFAIK the whole point of shmem_pwrite was
> to avoid needing to populate the entire object like when calling
> pin_pages(). Would it make sense to just fallback to using
> i915_gem_shmem_pwrite, which should already take care of the required
> flushing?
> 
> For reference a common usage pattern is something like:
> 
> bb = gem_create() <-- assume non-llc so must be CACHE_NONE
> gem_write(bb, BATCH_BUFFER_END) <-- might use cached pwrite internally
> execbuf(bb) <-- doesn't see BATCH_BUFFER_END if we don't clflush

It turns out this was the underlying issue causing machines GEN <= 5 to break in
pretty much every single test. It seems that for older hardware, IGT tests would
pick pwrite as the preferred method for filling BO's from UM, so my code wasn't
calling clfush after getting the pages and writing the UM pointer data into the
shmem file.

The way I fixed it was creating an shmem file for this and other cases when it's
required by the existing code, but without getting the pages.  In a way, I just
cut through the usual TTM populate path and instance an shmem object so that I
can avoid caching issues.

Thanks a lot for catching this one!

> >
> > Adrian Larumbe (1):
> >   drm/i915: Replace shmem memory region and object backend with TTM
> >
> >  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_object.h   |   4 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  32 +-
> >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 390 +------------------
> >  drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 267 ++++++++++++-
> >  drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
> >  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |   9 +-
> >  drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
> >  drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
> >  10 files changed, 398 insertions(+), 422 deletions(-)
> >
> > --
> > 2.35.1

