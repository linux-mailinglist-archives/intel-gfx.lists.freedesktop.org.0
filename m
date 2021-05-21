Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E748B38C1E4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 10:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 227376F5D2;
	Fri, 21 May 2021 08:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF456F5D2;
 Fri, 21 May 2021 08:33:10 +0000 (UTC)
IronPort-SDR: 9VQ5e8e2pZLUjPZo235yxu0piCXTb4GvEqInb/bQpByGTruAAi6DQWezfCS0RdSAPH86VnN3QD
 PNwdUjrYdazQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="198354590"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="198354590"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 01:33:09 -0700
IronPort-SDR: OmtFJtPshlEKQVJFK0hxXNg90vMWO5iFib7JSQziNcKdIBHmmv+NAKae+Znm/C19csbhczqcf2
 QP51DyN3saHg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="412521397"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 01:33:07 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1lk0cD-0000nG-GQ; Fri, 21 May 2021 11:34:41 +0300
Date: Fri, 21 May 2021 11:34:41 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YKdwoTd+1DQlj9Ig@platvala-desk.ger.corp.intel.com>
References: <20210519145337.255167-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519145337.255167-1-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH i-g-t 0/9] DG1/LMEM uAPI basics v2
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
Cc: igt-dev@lists.freedesktop.org, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 19, 2021 at 03:53:28PM +0100, Matthew Auld wrote:
> Just the really basic stuff, which unlocks adding more interesting testcases
> later, like gem_lmem_swapping.
> 
> On the kernel side we landed the uAPI bits[1] behind CONFIG_BROKEN, which is
> already enabled in CI builds, so it should be possible to get some more BAT
> testing(outside of just the selftests) on DG1 to the point where we can start to
> exercise the LMEM paths with the new bits of uAPI.
> 
> [1] https://patchwork.freedesktop.org/series/89648/
> 
> v2:(Petri)
>    - add missing kernel sha for i915_drm.h sync
>    - squash the various region lib patches together
>    - just directly use the uapi bits from the start, instead of adding a bunch
>      of locals, which then later get removed anyway
> 
> Andrzej Turko (5):
>   lib/i915/gem_create: Add gem_create_ext
>   lib/i915/intel_memory_region: Add new memory region lib
>   tests/i915/gem_exec_basic: Use memory region interface
>   tests/i915/gem_gpgpu_fill: Use memory region interface
>   tests/i915/gem_media_fill: Use memory region interface
> 
> Dominik Grzegorzek (1):
>   tests/gem_gpgpu_fill: Convert from simple to standard igt_main
> 
> Kalamarz, Lukasz (1):
>   tests/i915/gem_exec_basic: Iterate over all memory regions
> 
> Matthew Auld (2):
>   i915_drm.h sync
>   tests/i915/gem_create: exercise placements extension
> 
>  benchmarks/gem_blt.c                    |   2 +-
>  benchmarks/gem_busy.c                   |   2 +-
>  benchmarks/gem_create.c                 |   2 +-
>  benchmarks/gem_exec_ctx.c               |   2 +-
>  benchmarks/gem_exec_fault.c             |   2 +-
>  benchmarks/gem_exec_nop.c               |   2 +-
>  benchmarks/gem_exec_reloc.c             |   2 +-
>  benchmarks/gem_exec_trace.c             |   2 +-
>  benchmarks/gem_latency.c                |   2 +-
>  benchmarks/gem_prw.c                    |   2 +-
>  benchmarks/gem_set_domain.c             |   2 +-
>  benchmarks/gem_syslatency.c             |   2 +-
>  benchmarks/gem_wsim.c                   |   2 +-
>  benchmarks/prime_lookup.c               |   2 +-
>  include/drm-uapi/i915_drm.h             | 394 +++++++++++++++++++--
>  lib/i915/gem.h                          |   3 -
>  lib/i915/gem_create.c                   |  43 ++-
>  lib/i915/gem_create.h                   |  19 +
>  lib/i915/gem_mman.c                     |   2 +-
>  lib/i915/gem_ring.c                     |   1 +
>  lib/i915/gem_submission.c               |   1 +
>  lib/i915/intel_memory_region.c          | 441 ++++++++++++++++++++++++
>  lib/i915/intel_memory_region.h          | 130 +++++++
>  lib/igt_draw.c                          |   2 +-
>  lib/igt_dummyload.c                     |   2 +-
>  lib/igt_fb.c                            |   2 +-
>  lib/intel_batchbuffer.c                 |   2 +-
>  lib/intel_bufops.c                      |   2 +-
>  lib/ioctl_wrappers.c                    |   2 +-
>  lib/ioctl_wrappers.h                    |   1 +
>  lib/meson.build                         |   1 +
>  tests/amdgpu/amd_prime.c                |   1 +
>  tests/core_hotunplug.c                  |   1 +
>  tests/i915/api_intel_allocator.c        |   1 +
>  tests/i915/api_intel_bb.c               |   1 +
>  tests/i915/gem_bad_reloc.c              |   1 +
>  tests/i915/gem_basic.c                  |   2 +-
>  tests/i915/gem_blits.c                  |   1 +
>  tests/i915/gem_busy.c                   |   1 +
>  tests/i915/gem_close.c                  |   1 +
>  tests/i915/gem_close_race.c             |   1 +
>  tests/i915/gem_concurrent_all.c         |   1 +
>  tests/i915/gem_create.c                 | 189 ++++++++++
>  tests/i915/gem_cs_tlb.c                 |   1 +
>  tests/i915/gem_ctx_clone.c              |   1 +
>  tests/i915/gem_ctx_create.c             |   1 +
>  tests/i915/gem_ctx_engines.c            |   1 +
>  tests/i915/gem_ctx_exec.c               |   1 +
>  tests/i915/gem_ctx_isolation.c          |   1 +
>  tests/i915/gem_ctx_param.c              |   1 +
>  tests/i915/gem_ctx_shared.c             |   1 +
>  tests/i915/gem_ctx_sseu.c               |   1 +
>  tests/i915/gem_ctx_switch.c             |   1 +
>  tests/i915/gem_eio.c                    |   1 +
>  tests/i915/gem_evict_alignment.c        |   1 +
>  tests/i915/gem_evict_everything.c       |   1 +
>  tests/i915/gem_exec_alignment.c         |   1 +
>  tests/i915/gem_exec_async.c             |   1 +
>  tests/i915/gem_exec_await.c             |   1 +
>  tests/i915/gem_exec_balancer.c          |   1 +
>  tests/i915/gem_exec_basic.c             |  53 ++-
>  tests/i915/gem_exec_big.c               |   1 +
>  tests/i915/gem_exec_capture.c           |   1 +
>  tests/i915/gem_exec_create.c            |   1 +
>  tests/i915/gem_exec_endless.c           |   1 +
>  tests/i915/gem_exec_fair.c              |   1 +
>  tests/i915/gem_exec_fence.c             |   1 +
>  tests/i915/gem_exec_flush.c             |   1 +
>  tests/i915/gem_exec_gttfill.c           |   1 +
>  tests/i915/gem_exec_latency.c           |   1 +
>  tests/i915/gem_exec_lut_handle.c        |   1 +
>  tests/i915/gem_exec_nop.c               |   1 +
>  tests/i915/gem_exec_parallel.c          |   1 +
>  tests/i915/gem_exec_params.c            |   1 +
>  tests/i915/gem_exec_reloc.c             |   1 +
>  tests/i915/gem_exec_schedule.c          |   1 +
>  tests/i915/gem_exec_store.c             |   1 +
>  tests/i915/gem_exec_suspend.c           |   1 +
>  tests/i915/gem_exec_whisper.c           |   1 +
>  tests/i915/gem_fd_exhaustion.c          |   2 +-
>  tests/i915/gem_fence_thrash.c           |   2 +-
>  tests/i915/gem_fence_upload.c           |   2 +-
>  tests/i915/gem_fenced_exec_thrash.c     |   1 +
>  tests/i915/gem_flink_race.c             |   2 +-
>  tests/i915/gem_gpgpu_fill.c             |  61 +++-
>  tests/i915/gem_gtt_cpu_tlb.c            |   2 +-
>  tests/i915/gem_gtt_hog.c                |   1 +
>  tests/i915/gem_gtt_speed.c              |   2 +-
>  tests/i915/gem_huc_copy.c               |   1 +
>  tests/i915/gem_linear_blits.c           |   1 +
>  tests/i915/gem_lut_handle.c             |   2 +-
>  tests/i915/gem_madvise.c                |   2 +-
>  tests/i915/gem_media_fill.c             |  57 ++-
>  tests/i915/gem_mmap.c                   |   2 +-
>  tests/i915/gem_mmap_gtt.c               |   1 +
>  tests/i915/gem_mmap_offset.c            |   1 +
>  tests/i915/gem_mmap_wc.c                |   2 +-
>  tests/i915/gem_ppgtt.c                  |   1 +
>  tests/i915/gem_pread.c                  |   2 +-
>  tests/i915/gem_pwrite.c                 |   2 +-
>  tests/i915/gem_readwrite.c              |   2 +-
>  tests/i915/gem_reset_stats.c            |   1 +
>  tests/i915/gem_ringfill.c               |   1 +
>  tests/i915/gem_set_tiling_vs_gtt.c      |   2 +-
>  tests/i915/gem_set_tiling_vs_pwrite.c   |   2 +-
>  tests/i915/gem_shrink.c                 |   1 +
>  tests/i915/gem_softpin.c                |   1 +
>  tests/i915/gem_streaming_writes.c       |   1 +
>  tests/i915/gem_sync.c                   |   1 +
>  tests/i915/gem_tiled_fence_blits.c      |   1 +
>  tests/i915/gem_tiled_pread_basic.c      |   2 +-
>  tests/i915/gem_tiled_pread_pwrite.c     |   2 +-
>  tests/i915/gem_tiled_swapping.c         |   2 +-
>  tests/i915/gem_tiled_wb.c               |   2 +-
>  tests/i915/gem_tiled_wc.c               |   2 +-
>  tests/i915/gem_tiling_max_stride.c      |   2 +-
>  tests/i915/gem_unfence_active_buffers.c |   1 +
>  tests/i915/gem_unref_active_buffers.c   |   1 +
>  tests/i915/gem_userptr_blits.c          |   1 +
>  tests/i915/gem_vm_create.c              |   1 +
>  tests/i915/gem_wait.c                   |   1 +
>  tests/i915/gem_watchdog.c               |   1 +
>  tests/i915/gem_workarounds.c            |   1 +
>  tests/i915/gen3_mixed_blits.c           |   1 +
>  tests/i915/gen3_render_linear_blits.c   |   1 +
>  tests/i915/gen3_render_mixed_blits.c    |   1 +
>  tests/i915/gen3_render_tiledx_blits.c   |   1 +
>  tests/i915/gen3_render_tiledy_blits.c   |   1 +
>  tests/i915/gen7_exec_parse.c            |   1 +
>  tests/i915/gen9_exec_parse.c            |   1 +
>  tests/i915/i915_hangman.c               |   1 +
>  tests/i915/i915_module_load.c           |   2 +-
>  tests/i915/i915_pm_rc6_residency.c      |   1 +
>  tests/i915/i915_pm_rpm.c                |   1 +
>  tests/i915/i915_suspend.c               |   1 +
>  tests/i915/perf_pmu.c                   |   1 +
>  tests/i915/sysfs_clients.c              |   1 +
>  tests/i915/sysfs_timeslice_duration.c   |   1 +
>  tests/kms_big_fb.c                      |   2 +-
>  tests/kms_ccs.c                         |   2 +-
>  tests/kms_flip.c                        |   2 +-
>  tests/kms_frontbuffer_tracking.c        |   1 +
>  tests/kms_getfb.c                       |   2 +-
>  tests/prime_busy.c                      |   1 +
>  tests/prime_mmap.c                      |   2 +-
>  tests/prime_mmap_kms.c                  |   2 +-
>  tests/prime_self_import.c               |   2 +-
>  tests/prime_vgem.c                      |   1 +
>  tools/intel_reg.c                       |   2 +-
>  149 files changed, 1447 insertions(+), 134 deletions(-)
>  create mode 100644 lib/i915/gem_create.h
>  create mode 100644 lib/i915/intel_memory_region.c
>  create mode 100644 lib/i915/intel_memory_region.h


Series is
Acked-by: Petri Latvala <petri.latvala@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
