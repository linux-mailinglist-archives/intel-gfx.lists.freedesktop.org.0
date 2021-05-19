Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28252389208
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 16:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0438E6EDE5;
	Wed, 19 May 2021 14:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0933389177;
 Wed, 19 May 2021 14:53:49 +0000 (UTC)
IronPort-SDR: QCOpFjouQvVdYog7F25/E8bE0xbGRJIViyMM9OREVNSbgtKdsV+qAc3JZJgbOxwt9geqfduEZL
 LQNIzZ972+Ag==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="201050864"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="201050864"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:53:46 -0700
IronPort-SDR: oxD5QYDbGohV2t46EfxpJlvVLoryxCdtCRa/hxBVBvwzRU+WAlOUaCAEx9cemv+smw22787lsn
 hQSgXycsTvWA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473527353"
Received: from ajwalton-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.22.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:53:44 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 19 May 2021 15:53:28 +0100
Message-Id: <20210519145337.255167-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 0/9] DG1/LMEM uAPI basics v2
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just the really basic stuff, which unlocks adding more interesting testcases
later, like gem_lmem_swapping.

On the kernel side we landed the uAPI bits[1] behind CONFIG_BROKEN, which is
already enabled in CI builds, so it should be possible to get some more BAT
testing(outside of just the selftests) on DG1 to the point where we can start to
exercise the LMEM paths with the new bits of uAPI.

[1] https://patchwork.freedesktop.org/series/89648/

v2:(Petri)
   - add missing kernel sha for i915_drm.h sync
   - squash the various region lib patches together
   - just directly use the uapi bits from the start, instead of adding a bunch
     of locals, which then later get removed anyway

Andrzej Turko (5):
  lib/i915/gem_create: Add gem_create_ext
  lib/i915/intel_memory_region: Add new memory region lib
  tests/i915/gem_exec_basic: Use memory region interface
  tests/i915/gem_gpgpu_fill: Use memory region interface
  tests/i915/gem_media_fill: Use memory region interface

Dominik Grzegorzek (1):
  tests/gem_gpgpu_fill: Convert from simple to standard igt_main

Kalamarz, Lukasz (1):
  tests/i915/gem_exec_basic: Iterate over all memory regions

Matthew Auld (2):
  i915_drm.h sync
  tests/i915/gem_create: exercise placements extension

 benchmarks/gem_blt.c                    |   2 +-
 benchmarks/gem_busy.c                   |   2 +-
 benchmarks/gem_create.c                 |   2 +-
 benchmarks/gem_exec_ctx.c               |   2 +-
 benchmarks/gem_exec_fault.c             |   2 +-
 benchmarks/gem_exec_nop.c               |   2 +-
 benchmarks/gem_exec_reloc.c             |   2 +-
 benchmarks/gem_exec_trace.c             |   2 +-
 benchmarks/gem_latency.c                |   2 +-
 benchmarks/gem_prw.c                    |   2 +-
 benchmarks/gem_set_domain.c             |   2 +-
 benchmarks/gem_syslatency.c             |   2 +-
 benchmarks/gem_wsim.c                   |   2 +-
 benchmarks/prime_lookup.c               |   2 +-
 include/drm-uapi/i915_drm.h             | 394 +++++++++++++++++++--
 lib/i915/gem.h                          |   3 -
 lib/i915/gem_create.c                   |  43 ++-
 lib/i915/gem_create.h                   |  19 +
 lib/i915/gem_mman.c                     |   2 +-
 lib/i915/gem_ring.c                     |   1 +
 lib/i915/gem_submission.c               |   1 +
 lib/i915/intel_memory_region.c          | 441 ++++++++++++++++++++++++
 lib/i915/intel_memory_region.h          | 130 +++++++
 lib/igt_draw.c                          |   2 +-
 lib/igt_dummyload.c                     |   2 +-
 lib/igt_fb.c                            |   2 +-
 lib/intel_batchbuffer.c                 |   2 +-
 lib/intel_bufops.c                      |   2 +-
 lib/ioctl_wrappers.c                    |   2 +-
 lib/ioctl_wrappers.h                    |   1 +
 lib/meson.build                         |   1 +
 tests/amdgpu/amd_prime.c                |   1 +
 tests/core_hotunplug.c                  |   1 +
 tests/i915/api_intel_allocator.c        |   1 +
 tests/i915/api_intel_bb.c               |   1 +
 tests/i915/gem_bad_reloc.c              |   1 +
 tests/i915/gem_basic.c                  |   2 +-
 tests/i915/gem_blits.c                  |   1 +
 tests/i915/gem_busy.c                   |   1 +
 tests/i915/gem_close.c                  |   1 +
 tests/i915/gem_close_race.c             |   1 +
 tests/i915/gem_concurrent_all.c         |   1 +
 tests/i915/gem_create.c                 | 189 ++++++++++
 tests/i915/gem_cs_tlb.c                 |   1 +
 tests/i915/gem_ctx_clone.c              |   1 +
 tests/i915/gem_ctx_create.c             |   1 +
 tests/i915/gem_ctx_engines.c            |   1 +
 tests/i915/gem_ctx_exec.c               |   1 +
 tests/i915/gem_ctx_isolation.c          |   1 +
 tests/i915/gem_ctx_param.c              |   1 +
 tests/i915/gem_ctx_shared.c             |   1 +
 tests/i915/gem_ctx_sseu.c               |   1 +
 tests/i915/gem_ctx_switch.c             |   1 +
 tests/i915/gem_eio.c                    |   1 +
 tests/i915/gem_evict_alignment.c        |   1 +
 tests/i915/gem_evict_everything.c       |   1 +
 tests/i915/gem_exec_alignment.c         |   1 +
 tests/i915/gem_exec_async.c             |   1 +
 tests/i915/gem_exec_await.c             |   1 +
 tests/i915/gem_exec_balancer.c          |   1 +
 tests/i915/gem_exec_basic.c             |  53 ++-
 tests/i915/gem_exec_big.c               |   1 +
 tests/i915/gem_exec_capture.c           |   1 +
 tests/i915/gem_exec_create.c            |   1 +
 tests/i915/gem_exec_endless.c           |   1 +
 tests/i915/gem_exec_fair.c              |   1 +
 tests/i915/gem_exec_fence.c             |   1 +
 tests/i915/gem_exec_flush.c             |   1 +
 tests/i915/gem_exec_gttfill.c           |   1 +
 tests/i915/gem_exec_latency.c           |   1 +
 tests/i915/gem_exec_lut_handle.c        |   1 +
 tests/i915/gem_exec_nop.c               |   1 +
 tests/i915/gem_exec_parallel.c          |   1 +
 tests/i915/gem_exec_params.c            |   1 +
 tests/i915/gem_exec_reloc.c             |   1 +
 tests/i915/gem_exec_schedule.c          |   1 +
 tests/i915/gem_exec_store.c             |   1 +
 tests/i915/gem_exec_suspend.c           |   1 +
 tests/i915/gem_exec_whisper.c           |   1 +
 tests/i915/gem_fd_exhaustion.c          |   2 +-
 tests/i915/gem_fence_thrash.c           |   2 +-
 tests/i915/gem_fence_upload.c           |   2 +-
 tests/i915/gem_fenced_exec_thrash.c     |   1 +
 tests/i915/gem_flink_race.c             |   2 +-
 tests/i915/gem_gpgpu_fill.c             |  61 +++-
 tests/i915/gem_gtt_cpu_tlb.c            |   2 +-
 tests/i915/gem_gtt_hog.c                |   1 +
 tests/i915/gem_gtt_speed.c              |   2 +-
 tests/i915/gem_huc_copy.c               |   1 +
 tests/i915/gem_linear_blits.c           |   1 +
 tests/i915/gem_lut_handle.c             |   2 +-
 tests/i915/gem_madvise.c                |   2 +-
 tests/i915/gem_media_fill.c             |  57 ++-
 tests/i915/gem_mmap.c                   |   2 +-
 tests/i915/gem_mmap_gtt.c               |   1 +
 tests/i915/gem_mmap_offset.c            |   1 +
 tests/i915/gem_mmap_wc.c                |   2 +-
 tests/i915/gem_ppgtt.c                  |   1 +
 tests/i915/gem_pread.c                  |   2 +-
 tests/i915/gem_pwrite.c                 |   2 +-
 tests/i915/gem_readwrite.c              |   2 +-
 tests/i915/gem_reset_stats.c            |   1 +
 tests/i915/gem_ringfill.c               |   1 +
 tests/i915/gem_set_tiling_vs_gtt.c      |   2 +-
 tests/i915/gem_set_tiling_vs_pwrite.c   |   2 +-
 tests/i915/gem_shrink.c                 |   1 +
 tests/i915/gem_softpin.c                |   1 +
 tests/i915/gem_streaming_writes.c       |   1 +
 tests/i915/gem_sync.c                   |   1 +
 tests/i915/gem_tiled_fence_blits.c      |   1 +
 tests/i915/gem_tiled_pread_basic.c      |   2 +-
 tests/i915/gem_tiled_pread_pwrite.c     |   2 +-
 tests/i915/gem_tiled_swapping.c         |   2 +-
 tests/i915/gem_tiled_wb.c               |   2 +-
 tests/i915/gem_tiled_wc.c               |   2 +-
 tests/i915/gem_tiling_max_stride.c      |   2 +-
 tests/i915/gem_unfence_active_buffers.c |   1 +
 tests/i915/gem_unref_active_buffers.c   |   1 +
 tests/i915/gem_userptr_blits.c          |   1 +
 tests/i915/gem_vm_create.c              |   1 +
 tests/i915/gem_wait.c                   |   1 +
 tests/i915/gem_watchdog.c               |   1 +
 tests/i915/gem_workarounds.c            |   1 +
 tests/i915/gen3_mixed_blits.c           |   1 +
 tests/i915/gen3_render_linear_blits.c   |   1 +
 tests/i915/gen3_render_mixed_blits.c    |   1 +
 tests/i915/gen3_render_tiledx_blits.c   |   1 +
 tests/i915/gen3_render_tiledy_blits.c   |   1 +
 tests/i915/gen7_exec_parse.c            |   1 +
 tests/i915/gen9_exec_parse.c            |   1 +
 tests/i915/i915_hangman.c               |   1 +
 tests/i915/i915_module_load.c           |   2 +-
 tests/i915/i915_pm_rc6_residency.c      |   1 +
 tests/i915/i915_pm_rpm.c                |   1 +
 tests/i915/i915_suspend.c               |   1 +
 tests/i915/perf_pmu.c                   |   1 +
 tests/i915/sysfs_clients.c              |   1 +
 tests/i915/sysfs_timeslice_duration.c   |   1 +
 tests/kms_big_fb.c                      |   2 +-
 tests/kms_ccs.c                         |   2 +-
 tests/kms_flip.c                        |   2 +-
 tests/kms_frontbuffer_tracking.c        |   1 +
 tests/kms_getfb.c                       |   2 +-
 tests/prime_busy.c                      |   1 +
 tests/prime_mmap.c                      |   2 +-
 tests/prime_mmap_kms.c                  |   2 +-
 tests/prime_self_import.c               |   2 +-
 tests/prime_vgem.c                      |   1 +
 tools/intel_reg.c                       |   2 +-
 149 files changed, 1447 insertions(+), 134 deletions(-)
 create mode 100644 lib/i915/gem_create.h
 create mode 100644 lib/i915/intel_memory_region.c
 create mode 100644 lib/i915/intel_memory_region.h

-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
