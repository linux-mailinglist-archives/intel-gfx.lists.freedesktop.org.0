Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD8B15D5AB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 11:31:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DA06EB70;
	Fri, 14 Feb 2020 10:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E5A6EB6C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:30:59 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 11:30:36 +0100
Message-Id: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/19] drm/i915/gem: Implement parallel execbuf
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

New version!

This time fast-feedback passes on my system. :)

Implement ww-locking in parallel execbuf, and most places where we
care about it.

Chris Wilson (2):
  drm/i915: Drop inspection of execbuf flags during evict
  drm/i915/gem: Extract transient execbuf flags from i915_vma

Maarten Lankhorst (17):
  drm/i915: Separate lookup and pinning in execbuf.
  drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
  drm/i915: Remove locking from i915_gem_object_prepare_read/write
  drm/i915: Parse command buffer earlier in eb_relocate(slow)
  drm/i915: Use per object locking in execbuf on top of struct_mutex,
    v3.
  drm/i915: Use ww locking in intel_renderstate.
  drm/i915: Add ww context handling to context_barrier_task
  drm/i915: Nuke arguments to eb_pin_engine
  drm/i915: Pin engine before pinning all objects, v2.
  drm/i915: Rework intel_context pinning to do everything outside of
    pin_mutex
  drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
  drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as
    well
  drm/i915: Kill last user of intel_context_create_request outside of
    selftests
  drm/i915: Convert i915_perf to ww locking as well
  drm/i915: Dirty hack to fix selftests locking inversion
  drm/i915/selftests: Fix locking inversion in lrc selftest.
  drm/i915: Use ww pinning for intel_context_create_request()

 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |  78 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  57 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  26 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 783 ++++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  39 +-
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    | 152 ++--
 .../gpu/drm/i915/gem/i915_gem_object_blt.h    |   3 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   9 +
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   7 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |  24 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  38 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   4 +-
 .../drm/i915/gem/selftests/i915_gem_phys.c    |   2 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   4 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |   4 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 298 ++++---
 drivers/gpu/drm/i915/gt/intel_context.h       |  13 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  25 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  37 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  65 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.h   |   9 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          |  10 +-
 drivers/gpu/drm/i915/gt/intel_ring.h          |   3 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  20 +-
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  12 +-
 drivers/gpu/drm/i915/gt/intel_timeline.h      |   3 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  43 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  14 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  15 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |   4 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  11 +-
 drivers/gpu/drm/i915/i915_drv.h               |  19 +-
 drivers/gpu/drm/i915/i915_gem.c               |  83 +-
 drivers/gpu/drm/i915/i915_gem.h               |  11 +
 drivers/gpu/drm/i915/i915_gem_evict.c         |  15 +-
 drivers/gpu/drm/i915/i915_perf.c              |  57 +-
 drivers/gpu/drm/i915/i915_vma.c               |  13 +-
 drivers/gpu/drm/i915/i915_vma.h               |  13 +-
 drivers/gpu/drm/i915/i915_vma_types.h         |  11 -
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  41 +
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
 .../drm/i915/selftests/intel_memory_region.c  |   2 +-
 52 files changed, 1341 insertions(+), 767 deletions(-)

-- 
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
