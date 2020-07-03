Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF312139F5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 14:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010316EB6E;
	Fri,  3 Jul 2020 12:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854B16E397
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 12:22:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jul 2020 14:21:58 +0200
Message-Id: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/23] drm/i915: Use ww locking in execbuf
 submission.
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

Change the locking hierarchy to put request inside ww, and fix selftests to hopefully pass now.

Maarten Lankhorst (23):
  Revert "drm/i915/gem: Async GPU relocations only"
  drm/i915: Revert relocation chaining commits.
  Revert "drm/i915/gem: Drop relocation slowpath".
  drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
  drm/i915: Remove locking from i915_gem_object_prepare_read/write
  drm/i915: Parse command buffer earlier in eb_relocate(slow)
  Revert "drm/i915/gem: Split eb_vma into its own allocation"
  drm/i915: Use per object locking in execbuf, v12.
  drm/i915: Use ww locking in intel_renderstate.
  drm/i915: Add ww context handling to context_barrier_task
  drm/i915: Nuke arguments to eb_pin_engine
  drm/i915: Pin engine before pinning all objects, v4.
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
    v2.
  drm/i915: Add ww locking to vm_fault_gtt
  drm/i915: Add ww locking to pin_to_display_plane

 drivers/gpu/drm/i915/display/intel_display.c  |    6 +-
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |   78 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   55 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |    4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   89 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 1569 +++++++++++------
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
 .../drm/i915/gem/selftests/i915_gem_context.c |   47 +-
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   57 +-
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
 drivers/gpu/drm/i915/i915_vma.c               |   13 +-
 drivers/gpu/drm/i915/i915_vma.h               |   13 +-
 drivers/gpu/drm/i915/selftests/i915_gem.c     |   41 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   18 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |    2 +-
 .../drm/i915/selftests/intel_memory_region.c  |    2 +-
 53 files changed, 2183 insertions(+), 989 deletions(-)


base-commit: 7faedc4873dd257f4ed064ab4e0a28407690ea73
prerequisite-patch-id: e6315738715ac4ffccaeb4c4bf5a94651fb8da1d
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
