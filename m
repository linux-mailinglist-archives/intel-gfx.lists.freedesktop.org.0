Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DACC02404C3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 12:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C991C6E3E5;
	Mon, 10 Aug 2020 10:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9088F89CDE
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 10:33:26 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Aug 2020 12:30:39 +0200
Message-Id: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/24] drm/i915: Correct the locking hierarchy
 in gem.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

First start with a few reverts, to get to a good starting base for this
series:
- Async gpu relocations are not the way to go, for new platforms we will
  disable gpu relocations altogether.
- We also need the relocation slowpath (EFAULT handling) back.
- The eb_vma no longer needs to be refcounted, with the next
  patch that removes all vma's at a single place only.

Some igt tests will be broken, because they rely on certain behavior of
relocations, mostly that they are taken without any ww locks, or the tests
wiil fail.

This is because the tests themselves are broken wrt upstream behavior,
and hangcheck should kick in to stop them.

After those changes, we can finally plug in the full ww locking to execbuf,
inverting the locking hierarchy between reservation_object and the timeline
lock as well. The ww lock becomes the outer lock, and the timeline lock the
inner lock.

After this, we fix all the fallout from inverting the locks, except all
selftests have not been fixed yet completely, they use a lockdep nesting
hack until they are finally fixed. As this code is never run bynormal users,
it's safe for now until that conversion is done separately.

After this series, we hook up ww locking in a few more places, fix userptr
and finally flatten obj->mm.lock and remove the different subclasses of
this lock, as a preparation to removing it altogether in the near future.

Test-with: 20200810090034.158383-1-maarten.lankhorst@linux.intel.com

Maarten Lankhorst (24):
  Revert "drm/i915/gem: Async GPU relocations only"
  drm/i915: Revert relocation chaining commits.
  Revert "drm/i915/gem: Drop relocation slowpath".
  Revert "drm/i915/gem: Split eb_vma into its own allocation"
  drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
  drm/i915: Remove locking from i915_gem_object_prepare_read/write
  drm/i915: Parse command buffer earlier in eb_relocate(slow)
  drm/i915: Use per object locking in execbuf, v12.
  drm/i915: make lockdep slightly happier about execbuf.
  drm/i915: Use ww locking in intel_renderstate.
  drm/i915: Add ww context handling to context_barrier_task
  drm/i915: Nuke arguments to eb_pin_engine
  drm/i915: Pin engine before pinning all objects, v5.
  drm/i915: Rework intel_context pinning to do everything outside of
    pin_mutex
  drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
  drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as
    well, v2.
  drm/i915: Kill last user of intel_context_create_request outside of
    selftests
  drm/i915: Convert i915_perf to ww locking as well
  drm/i915: Dirty hack to fix selftests locking inversion
  drm/i915/selftests: Fix locking inversion in lrc selftest.
  drm/i915: Use ww pinning for intel_context_create_request()
  drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion,
    v3.
  drm/i915: Add ww locking to vm_fault_gtt
  drm/i915: Add ww locking to pin_to_display_plane

 drivers/gpu/drm/i915/display/intel_display.c  |    6 +-
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |   78 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   55 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |    4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   89 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 1619 +++++++++++------
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   51 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   40 +-
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |  152 +-
 .../gpu/drm/i915/gem/i915_gem_object_blt.h    |    3 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |    9 +
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |    2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |    2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |    7 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |    2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |   50 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  142 +-
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   60 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   45 +-
 .../drm/i915/gem/selftests/i915_gem_phys.c    |    2 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |    4 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |    4 +-
 drivers/gpu/drm/i915/gt/intel_context.c       |  309 ++--
 drivers/gpu/drm/i915/gt/intel_context.h       |   13 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |    5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |    2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   23 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   37 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |   73 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.h   |    9 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          |   10 +-
 drivers/gpu/drm/i915/gt/intel_ring.h          |    3 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   20 +-
 drivers/gpu/drm/i915/gt/intel_timeline.c      |   12 +-
 drivers/gpu/drm/i915/gt/intel_timeline.h      |    3 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   43 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |   14 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   17 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   30 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |    4 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |    2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |    2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |    3 +-
 drivers/gpu/drm/i915/i915_drv.h               |   13 +-
 drivers/gpu/drm/i915/i915_gem.c               |   89 +-
 drivers/gpu/drm/i915/i915_gem.h               |   12 +
 drivers/gpu/drm/i915/i915_perf.c              |   57 +-
 drivers/gpu/drm/i915/i915_vma.c               |   21 +-
 drivers/gpu/drm/i915/i915_vma.h               |   16 +-
 drivers/gpu/drm/i915/selftests/i915_gem.c     |   41 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   18 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |    2 +-
 .../drm/i915/selftests/intel_memory_region.c  |    2 +-
 53 files changed, 2274 insertions(+), 1057 deletions(-)


base-commit: 147f0d3f7239756494adef31518f87e60a970878
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
