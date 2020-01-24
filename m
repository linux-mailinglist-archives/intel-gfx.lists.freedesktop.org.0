Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C44A147CCE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:55:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81576E2CC;
	Fri, 24 Jan 2020 09:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1431B6E2CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:55:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 10:55:08 +0100
Message-Id: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/gem: Implement parallel
 execbuffer submission.
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

Working version, at least locally now. :)

This uses ww locking to ensure all buffer objects are locked during
submission. We still rely on struct_mutex to only submit one execbuf
at a time, but this is more because we cannot support parallel
submission yet without risking -EBUSY. When all code is converted to use
per-object locking, we can get rid of the BKL.

Chris Wilson (2):
  drm/i915: Drop inspection of execbuf flags during evict
  drm/i915/gem: Extract transient execbuf flags from i915_vma

Maarten Lankhorst (11):
  drm/i915: Separate lookup and pinning in execbuf.
  drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
  drm/i915: Remove locking from i915_gem_object_prepare_read/write
  drm/i915: Parse command buffer earlier in eb_relocate(slow)
  drm/i915: Use per object locking in execbuf on top of struct_mutex,
    v2.
  drm/i915: Use ww locking in intel_renderstate.
  drm/i915: Add ww context handling to context_barrier_task
  drm/i915: Nuke arguments to eb_pin_engine
  drm/i915: Pin engine before pinning all objects
  drm/i915: Rework intel_context pinning to do everything outside of
    pin_mutex
  drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.

 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  57 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  26 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 682 ++++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  39 +-
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |   2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   9 +
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   7 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |  24 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  38 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   4 +-
 .../i915/gem/selftests/i915_gem_object_blt.c  |   4 +-
 .../drm/i915/gem/selftests/i915_gem_phys.c    |   2 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   4 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |   4 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 250 ++++---
 drivers/gpu/drm/i915/gt/intel_context.h       |  13 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  23 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  35 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  65 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.h   |   9 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          |  10 +-
 drivers/gpu/drm/i915/gt/intel_ring.h          |   3 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  20 +-
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  10 +-
 drivers/gpu/drm/i915/gt/intel_timeline.h      |   3 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  14 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |   4 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  11 +-
 drivers/gpu/drm/i915/i915_drv.h               |   6 -
 drivers/gpu/drm/i915/i915_gem.c               |  72 +-
 drivers/gpu/drm/i915/i915_gem.h               |  11 +
 drivers/gpu/drm/i915/i915_gem_evict.c         |  15 +-
 drivers/gpu/drm/i915/i915_vma.c               |  13 +-
 drivers/gpu/drm/i915/i915_vma.h               |  13 +-
 drivers/gpu/drm/i915/i915_vma_types.h         |  11 -
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  41 ++
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
 .../drm/i915/selftests/intel_memory_region.c  |   2 +-
 48 files changed, 996 insertions(+), 589 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
