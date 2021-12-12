Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4258471B3D
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Dec 2021 16:21:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39AAD10F499;
	Sun, 12 Dec 2021 15:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 898FB10F499;
 Sun, 12 Dec 2021 15:21:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="219292930"
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="219292930"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:21:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="517445697"
Received: from nipunpan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:21:26 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Sun, 12 Dec 2021 17:21:05 +0200
Message-Id: <20211212152117.118428-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND v7 00/12] More preparation for multi gt
 patches
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

the first patch concludes the first stage of refactoring which
makes the use of intel_gt on the different subsystem. It's taken
from Matt's series and it has alread been reviewed. The patch has
just been replaced before any multitile patches and I think it
can be already pushed.

Patch 2-10 hides i915->gt behind the to_gt() wrapper proposed by
Michał. Finally i915->gt changes to i915->gt0.

Until here all patches have been review and they can be already
pushed. Thank you Matt for the reviews.

The last two abstract the ggtt reference. It moves, indeed, in
the gt as a structure instead of a pointer.

Andi

Changelog:
==========
Patchwork: https://patchwork.freedesktop.org/series/97020/

v6 -> v7:
 - Patch 1: add a note about the double presence of
   __intel_gt_init_early() and intel_gt_init_early().
 - Added all Matt's r-b's for patches 2-10.
 - Added a patch 12 that moves the i915->ggtt into gt->ggtt.

v5 -> v6:
 - fixed the assignement of i915->gt->ggtt = ggtt in the mock gem
   device that was making use of it before.

v4 -> v5:
 - use to_gt() instead of to_root_gt() and use Michał work done
   previously.
 - split the /i915->gt/to_gt()/ patch in smaller chunks in order
   to make review easier. (Thanks Lucas)

v3 -> v4:
 - the intel_gt_init_early() has been split as it was causing
   some headaches for the order of the early initialization. The
   split has been done keeping in mind the coming next patch in
   the series that wil make this a static function.

v2 -> v3:
 - sed -i ... took too much freedom and changed more than it was
   supposed to.
 - fix a compile error which did not appear in my local build

v1 -> v2:
 - patch 2: do not use anymore the reference i915->gt but use
   to_root_gt(), coming from Matt Roper's patch.
 - fix some comments from Chris.

Andi Shyti (4):
  drm/i915/selftests: Use to_gt() helper
  drm/i915/pxp: Use to_gt() helper
  drm/i915: Rename i915->gt to i915->gt0
  drm/i915: Move the GGTT from i915 private data to the GT

Michał Winiarski (8):
  drm/i915: Store backpointer to GT in uncore
  drm/i915: Introduce to_gt() helper
  drm/i915/display: Use to_gt() helper
  drm/i915/gt: Use to_gt() helper
  drm/i915/gem: Use to_gt() helper
  drm/i915/gvt: Use to_gt() helper
  drm/i915: Use to_gt() helper
  drm/i915: Use to_gt() helper for GGTT accesses

 .../gpu/drm/i915/display/intel_atomic_plane.c |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 18 +++---
 drivers/gpu/drm/i915/display/intel_dpt.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  2 +-
 .../drm/i915/display/intel_plane_initial.c    |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 22 ++++----
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  8 +--
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 21 +++----
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  8 +--
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  8 +--
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  8 ++-
 drivers/gpu/drm/i915/gem/i915_gem_throttle.c  |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    | 17 +++---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  | 12 ++--
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  4 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |  8 +--
 .../i915/gem/selftests/i915_gem_coherency.c   |  2 +-
 .../drm/i915/gem/selftests/i915_gem_context.c | 14 ++---
 .../drm/i915/gem/selftests/i915_gem_migrate.c |  2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 47 ++++++++--------
 .../drm/i915/gem/selftests/i915_gem_object.c  |  2 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  6 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 14 ++---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  6 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 20 +++----
 drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |  7 +--
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |  4 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  8 +--
 drivers/gpu/drm/i915/gt/intel_ring.c          |  2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 12 ++--
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  4 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         | 12 ++--
 drivers/gpu/drm/i915/gt/selftest_context.c    |  2 +-
 drivers/gpu/drm/i915/gt/selftest_engine.c     |  2 +-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  4 +-
 .../drm/i915/gt/selftest_engine_heartbeat.c   |  4 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 16 +++---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |  8 +--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  8 +--
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  4 +-
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |  4 +-
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |  4 +-
 drivers/gpu/drm/i915/gt/selftest_reset.c      |  4 +-
 .../drm/i915/gt/selftest_ring_submission.c    |  4 +-
 drivers/gpu/drm/i915/gt/selftest_slpc.c       |  6 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  6 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  6 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  6 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  6 +-
 drivers/gpu/drm/i915/gt/uc/selftest_guc.c     |  2 +-
 .../drm/i915/gt/uc/selftest_guc_multi_lrc.c   |  2 +-
 drivers/gpu/drm/i915/gvt/aperture_gm.c        | 26 ++++-----
 drivers/gpu/drm/i915/gvt/dmabuf.c             |  2 +-
 drivers/gpu/drm/i915/gvt/gvt.c                |  2 +-
 drivers/gpu/drm/i915/gvt/gvt.h                |  2 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c              |  2 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           | 42 +++++++-------
 drivers/gpu/drm/i915/i915_debugfs_params.c    |  4 +-
 drivers/gpu/drm/i915/i915_driver.c            | 35 ++++++------
 drivers/gpu/drm/i915/i915_drv.h               | 13 +++--
 drivers/gpu/drm/i915/i915_gem.c               | 39 ++++++-------
 drivers/gpu/drm/i915/i915_gem_gtt.c           |  6 +-
 drivers/gpu/drm/i915/i915_getparam.c          | 12 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         | 14 ++---
 drivers/gpu/drm/i915/i915_gpu_error.h         |  4 +-
 drivers/gpu/drm/i915/i915_irq.c               | 56 +++++++++----------
 drivers/gpu/drm/i915/i915_perf.c              |  8 +--
 drivers/gpu/drm/i915/i915_pmu.c               | 14 ++---
 drivers/gpu/drm/i915/i915_query.c             |  2 +-
 drivers/gpu/drm/i915/i915_request.c           |  2 +-
 drivers/gpu/drm/i915/i915_sysfs.c             | 22 ++++----
 drivers/gpu/drm/i915/i915_vma.c               |  2 +-
 drivers/gpu/drm/i915/intel_gvt.c              |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  9 +--
 drivers/gpu/drm/i915/intel_uncore.h           |  3 +-
 drivers/gpu/drm/i915/intel_wopcm.c            |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  4 +-
 drivers/gpu/drm/i915/selftests/i915_active.c  |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem.c     | 10 ++--
 .../gpu/drm/i915/selftests/i915_gem_evict.c   | 18 +++---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 12 ++--
 drivers/gpu/drm/i915/selftests/i915_perf.c    |  2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c | 12 ++--
 .../gpu/drm/i915/selftests/i915_selftest.c    |  4 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  4 +-
 .../gpu/drm/i915/selftests/igt_flush_test.c   |  2 +-
 .../gpu/drm/i915/selftests/igt_live_test.c    |  4 +-
 .../drm/i915/selftests/intel_memory_region.c  |  4 +-
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 36 ++++++------
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |  5 +-
 drivers/gpu/drm/i915/selftests/mock_uncore.c  |  2 +-
 110 files changed, 455 insertions(+), 444 deletions(-)

-- 
2.34.1

