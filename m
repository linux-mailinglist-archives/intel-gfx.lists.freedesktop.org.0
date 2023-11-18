Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 886727F01F3
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Nov 2023 19:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3438310E359;
	Sat, 18 Nov 2023 18:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 450E210E359;
 Sat, 18 Nov 2023 18:30:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EAC2A47DF;
 Sat, 18 Nov 2023 18:30:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5223452280397226664=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 18 Nov 2023 18:30:56 -0000
Message-ID: <170033225615.12899.8564114883109549110@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/fbc=3A_Split_plane_size_vs?=
 =?utf-8?q?=2E_surface_size_checks_apart?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5223452280397226664==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/fbc: Split plane size vs. surface size checks apart
URL   : https://patchwork.freedesktop.org/series/126594/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13888_full -> Patchwork_126594v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126594v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126594v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/index.html

Participating hosts (11 -> 10)
------------------------------

  Additional (1): shard-tglu0 
  Missing    (2): shard-mtlp0 shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126594v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:
    - shard-apl:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@drm_mm@drm_mm@drm_test_mm_align64}:
    - shard-tglu:         [PASS][2] -> [TIMEOUT][3] +1 other test timeout
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-9/igt@drm_mm@drm_mm@drm_test_mm_align64.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-4/igt@drm_mm@drm_mm@drm_test_mm_align64.html

  * {igt@drm_mm@drm_mm@drm_test_mm_highest}:
    - shard-apl:          [PASS][4] -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl1/igt@drm_mm@drm_mm@drm_test_mm_highest.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@drm_mm@drm_mm@drm_test_mm_highest.html

  * {igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0}:
    - shard-dg1:          [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * {igt@kms_dsc@dsc-fractional-bpp-with-bpc}:
    - shard-rkl:          NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * {igt@kms_pm_rpm@basic-pci-d3-state}:
    - shard-rkl:          [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_pm_rpm@basic-pci-d3-state.html

  * {igt@kms_psr@pr_cursor_mmap_cpu}:
    - shard-mtlp:         NOTRUN -> [SKIP][11] +1 other test skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_psr@pr_cursor_mmap_cpu.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:
    - shard-rkl:          [PASS][12] -> [TIMEOUT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
    - shard-snb:          NOTRUN -> [TIMEOUT][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html

  * {igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_32bpp}:
    - shard-snb:          [PASS][15] -> [TIMEOUT][16] +1 other test timeout
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-snb4/igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_32bpp.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_32bpp.html

  
Known issues
------------

  Here are the changes found in Patchwork_126594v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#8411])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#7701])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-rkl:          [PASS][19] -> [FAIL][20] ([i915#4778])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@device_reset@unbind-reset-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#8414]) +5 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@drm_fdinfo@busy@vcs1.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][22] -> [FAIL][23] ([i915#7742]) +1 other test fail
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@unaligned-read:
    - shard-rkl:          [PASS][24] -> [SKIP][25] ([i915#2582]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@fbdev@unaligned-read.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@fbdev@unaligned-read.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#7697])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-copy-uncompressed:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#7957])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_ccs@block-copy-uncompressed.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#7697])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4812]) +2 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#8555]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@sliced:
    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#4812]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#6334]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-rkl:          [PASS][33] -> [FAIL][34] ([i915#2842])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3539] / [i915#4852]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-rkl:          [PASS][36] -> [SKIP][37] ([fdo#109315]) +18 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_nop@basic-sequential.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_params@secure-non-root:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([fdo#112283])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#3281]) +3 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#3281]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [PASS][41] -> [SKIP][42] ([i915#3281]) +12 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#3281]) +3 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3281])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4537] / [i915#4812])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [PASS][46] -> [SKIP][47] ([i915#7276])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][48] ([i915#7975] / [i915#8213])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices@smem.html
    - shard-tglu:         [PASS][49] -> [ABORT][50] ([i915#7975] / [i915#8213])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4860])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#4613] / [i915#7582])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#4613])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][54] ([i915#4936] / [i915#5493])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          [PASS][55] -> [DMESG-WARN][56] ([i915#4936] / [i915#5493])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#4083]) +3 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@basic-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4077]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_mmap_gtt@basic-wc.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4077]) +4 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4083]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4083])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_mmap_wc@read-write-distinct.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [PASS][62] -> [SKIP][63] ([i915#3282]) +4 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#3282]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#3282])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pread@snoop:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#3282]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_pread@snoop.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4270]) +3 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#4270])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_pxp@display-protected-crc.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#8428]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#5190]) +3 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#768]) +7 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [PASS][72] -> [SKIP][73] ([i915#8411])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4079])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4079])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3297]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#3282])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#3297])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-mtlp:         NOTRUN -> [FAIL][79] ([i915#3318])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([fdo#109289]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gen3_render_linear_blits.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([fdo#109289])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@bb-large:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#2527])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#2527])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#2856]) +2 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gen9_exec_parse@unaligned-jump.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          [PASS][85] -> [SKIP][86] ([i915#2527]) +6 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [PASS][87] -> [SKIP][88] ([i915#9588])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-apl:          NOTRUN -> [FAIL][89] ([i915#7036])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_freq_api@freq-reset-multiple@gt0:
    - shard-mtlp:         [PASS][90] -> [ABORT][91] ([i915#9414])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-6/igt@i915_pm_freq_api@freq-reset-multiple@gt0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-5/igt@i915_pm_freq_api@freq-reset-multiple@gt0.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#8399])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][93] -> [INCOMPLETE][94] ([i915#9407])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#8925])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][96] -> [SKIP][97] ([i915#7984])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-2/igt@i915_power@sanity.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-4/igt@i915_power@sanity.html
    - shard-rkl:          [PASS][98] -> [SKIP][99] ([i915#7984])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@i915_power@sanity.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@i915_power@sanity.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4077]) +4 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-apl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#1769])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([fdo#111614])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#5286]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4538] / [i915#5286])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-mtlp:         [PASS][105] -> [FAIL][106] ([i915#5138]) +1 other test fail
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([fdo#111614] / [i915#3638]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-rkl:          [PASS][108] -> [SKIP][109] ([i915#1845] / [i915#4098]) +35 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([fdo#111614]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][111] -> [FAIL][112] ([i915#3743]) +3 other tests fail
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([fdo#110723]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4538] / [i915#5190]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([fdo#111615]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([fdo#111615])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4538]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([fdo#111827])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([fdo#111827])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#7828]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#7828])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#7828]) +4 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#7828]) +4 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - shard-rkl:          [PASS][124] -> [SKIP][125] ([i915#4098]) +5 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_color@ctm-green-to-red@pipe-b.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#9608])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#7118])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3116])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#7118])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#7116])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@srm@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][131] ([i915#7173])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl1/igt@kms_content_protection@srm@pipe-a-dp-1.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][132] ([i915#1339])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#1845] / [i915#4098]) +37 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3359])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#3359])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#3555] / [i915#8814])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][137] ([fdo#103375])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-11/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-4.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([fdo#111767] / [fdo#111825])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-rkl:          [PASS][139] -> [SKIP][140] ([i915#2575]) +10 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([fdo#109274] / [i915#5354])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#3546]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([fdo#111767] / [i915#3546])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][145] -> [FAIL][146] ([i915#2346])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#4103] / [i915#4213])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][148] -> [DMESG-WARN][149] ([i915#2017])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#3555])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3804])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#3555] / [i915#3840])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#3555] / [i915#3840])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-snb:          NOTRUN -> [SKIP][154] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#3637]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([fdo#111825]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([fdo#111825]) +9 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([fdo#109274]) +5 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3637] / [i915#4098]) +7 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#2672])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#3555]) +13 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#2672]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#2672]) +5 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#2587] / [i915#2672])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#3555] / [i915#8810])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([fdo#109285])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [PASS][167] -> [SKIP][168] ([i915#1849] / [i915#4098] / [i915#5354]) +20 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#5354]) +14 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#8708]) +5 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#3458]) +7 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3023]) +7 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([fdo#111825] / [i915#1825]) +11 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#1825]) +7 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#5460])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#8708])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#3458]) +3 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#8708]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][179] ([fdo#109271]) +115 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@static-swap:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#3555] / [i915#8228])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_hdr@static-swap.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3555] / [i915#4098]) +4 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#4098]) +14 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][183] ([i915#7862]) +1 other test fail
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#3555] / [i915#8806])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#6953] / [i915#8152])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3555] / [i915#4098] / [i915#8152])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#5176] / [i915#9423]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#5176] / [i915#9423]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#5235]) +3 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#5235]) +9 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#2575]) +5 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#8152]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#5235]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#4098] / [i915#6953] / [i915#8152])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_prime@d3hot:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#6524])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_prime@d3hot.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-rkl:          [PASS][197] -> [SKIP][198] ([i915#1849]) +2 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#9683])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#9681]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#9673]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([fdo#111615] / [i915#5289])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#4235])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#8623])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([fdo#109309])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][206] -> [FAIL][207] ([i915#9196]) +1 other test fail
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#3555]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2437])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-rkl:          [PASS][210] -> [SKIP][211] ([fdo#109289])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([fdo#109289]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg1:          NOTRUN -> [SKIP][213] ([fdo#109289])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@invalid-remove-userspace-config:
    - shard-rkl:          [PASS][214] -> [SKIP][215] ([i915#5608])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@perf@invalid-remove-userspace-config.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@perf@invalid-remove-userspace-config.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [PASS][216] -> [SKIP][217] ([i915#2434])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@perf@mi-rpc.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@perf@mi-rpc.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#2433])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#3555] / [i915#8807])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@faulting-read:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#5608])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@perf_pmu@faulting-read.html

  * igt@prime_udl:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([fdo#109291])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#3708] / [i915#4077])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3291] / [i915#3708])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3708] / [i915#4077])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([fdo#109295] / [i915#3291] / [i915#3708])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [PASS][226] -> [SKIP][227] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#3708])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@prime_vgem@fence-write-hang.html

  * igt@v3d/v3d_create_bo@create-bo-zeroed:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#2575]) +5 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@v3d/v3d_create_bo@create-bo-zeroed.html

  * igt@v3d/v3d_get_param@get-bad-param:
    - shard-snb:          NOTRUN -> [SKIP][230] ([fdo#109271]) +43 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@v3d/v3d_get_param@get-bad-param.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#2575]) +3 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#2575]) +2 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html

  * igt@v3d/v3d_submit_csd@job-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([fdo#109315]) +11 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@v3d/v3d_submit_csd@job-perfmon.html

  * igt@vc4/vc4_label_bo@set-kernel-name:
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#7711])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@vc4/vc4_label_bo@set-kernel-name.html

  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#7711]) +2 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#7711]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@vc4/vc4_tiling@set-get.html

  * igt@vc4/vc4_wait_bo@used-bo-0ns:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#7711]) +1 other test skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@vc4/vc4_wait_bo@used-bo-0ns.html

  
#### Possible fixes ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [SKIP][238] ([i915#8411]) -> [PASS][239] +1 other test pass
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@api_intel_bb@object-reloc-keep-cache.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic}:
    - shard-tglu:         [TIMEOUT][240] -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-3/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [FAIL][242] ([i915#7742]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html

  * {igt@drm_mm@drm_mm@drm_test_mm_highest}:
    - shard-dg2:          [TIMEOUT][244] -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg2-11/igt@drm_mm@drm_mm@drm_test_mm_highest.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-2/igt@drm_mm@drm_mm@drm_test_mm_highest.html
    - shard-mtlp:         [TIMEOUT][246] -> [PASS][247]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-4/igt@drm_mm@drm_mm@drm_test_mm_highest.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@drm_mm@drm_mm@drm_test_mm_highest.html

  * igt@drm_read@empty-block:
    - shard-rkl:          [SKIP][248] ([i915#1845] / [i915#4098]) -> [PASS][249] +29 other tests pass
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@drm_read@empty-block.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@drm_read@empty-block.html

  * igt@fbdev@pan:
    - shard-rkl:          [SKIP][250] ([i915#2582]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@fbdev@pan.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@fbdev@pan.html

  * {igt@gem_compute@compute-square}:
    - shard-rkl:          [SKIP][252] ([i915#9310]) -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_compute@compute-square.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_compute@compute-square.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-rkl:          [SKIP][254] ([i915#6252]) -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][256] ([i915#2842]) -> [PASS][257]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][258] ([i915#2842]) -> [PASS][259]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [FAIL][260] ([i915#2876]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [FAIL][262] ([i915#2842]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_fair@basic-pace@vcs0.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          [SKIP][264] ([fdo#109313]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][266] ([i915#3281]) -> [PASS][267] +13 other tests pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-rkl:          [DMESG-WARN][268] -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-7/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          [SKIP][270] ([i915#1850]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][272] ([i915#3282]) -> [PASS][273] +11 other tests pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [SKIP][274] ([i915#2527]) -> [PASS][275] +5 other tests pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gen9_exec_parse@allowed-all.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - shard-rkl:          [SKIP][276] ([i915#9588]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@i915_hangman@gt-engine-error@bcs0.html

  * {igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:
    - shard-dg1:          [FAIL][278] -> [PASS][279] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][280] ([i915#7790]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-snb6/igt@i915_pm_rps@reset.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][282] ([i915#5138]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][284] ([i915#3743]) -> [PASS][285] +1 other test pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_color@degamma@pipe-a:
    - shard-rkl:          [SKIP][286] ([i915#4098]) -> [PASS][287] +18 other tests pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_color@degamma@pipe-a.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_color@degamma@pipe-a.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [FAIL][288] ([i915#2346]) -> [PASS][289]
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [SKIP][290] ([i915#1849] / [i915#4098] / [i915#5354]) -> [PASS][291] +21 other tests pass
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][292] ([i915#180] / [i915#9392]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * {igt@kms_pm_dc@dc5-dpms-negative}:
    - shard-rkl:          [SKIP][294] ([i915#9293]) -> [PASS][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_pm_dc@dc5-dpms-negative.html

  * {igt@kms_pm_rpm@dpms-lpsp}:
    - shard-rkl:          [SKIP][296] ([i915#9519]) -> [PASS][297] +3 other tests pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-rkl:          [INCOMPLETE][298] ([i915#8875] / [i915#9569]) -> [PASS][299]
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * {igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list}:
    - shard-glk:          [TIMEOUT][300] ([i915#8628]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-glk4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-glk2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html

  * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
    - shard-rkl:          [TIMEOUT][302] -> [PASS][303] +3 other tests pass
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
    - shard-dg1:          [TIMEOUT][304] -> [PASS][305]
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-15/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-snb:          [TIMEOUT][306] -> [PASS][307] +1 other test pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-snb6/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb5/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
    - shard-apl:          [TIMEOUT][308] -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl2/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl6/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][310] ([i915#9196]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][312] ([i915#9196]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@perf_pmu@module-unload:
    - shard-mtlp:         [DMESG-WARN][314] ([i915#1982]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-2/igt@perf_pmu@module-unload.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-5/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][316] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@prime_vgem@basic-fence-read.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
#### Warnings ####

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][318] ([i915#7957]) -> [SKIP][319] ([i915#3555]) +1 other test skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][320] ([i915#4098] / [i915#9323]) -> [SKIP][321] ([i915#7957])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][322] ([i915#9323]) -> [SKIP][323] ([i915#7957])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_ccs@suspend-resume.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][324] ([i915#280]) -> [SKIP][325] ([fdo#109315])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_ctx_sseu@engines.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [SKIP][326] ([i915#9591]) -> [FAIL][327] ([i915#2842])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][328] ([i915#2842]) -> [SKIP][329] ([i915#9591])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          [SKIP][330] ([i915#3281]) -> [SKIP][331] ([fdo#109315]) +2 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-active.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-rkl:          [SKIP][332] ([i915#3282]) -> [SKIP][333] ([fdo#109315]) +1 other test skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_madvise@dontneed-before-pwrite.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_pread@exhaustion:
    - shard-rkl:          [WARN][334] ([i915#2658]) -> [SKIP][335] ([i915#3282]) +1 other test skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_pread@exhaustion.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          [SKIP][336] ([i915#3297]) -> [SKIP][337] ([fdo#109315]) +1 other test skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][338] ([i915#2527]) -> [SKIP][339] ([i915#2532])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gen9_exec_parse@bb-oversize.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          [SKIP][340] ([fdo#109289]) -> [SKIP][341] ([fdo#109315]) +1 other test skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][342] ([i915#1845] / [i915#4098]) -> [SKIP][343] ([i915#1769] / [i915#3555]) +1 other test skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][344] ([i915#5286]) -> [SKIP][345] ([i915#1845] / [i915#4098]) +8 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][346] ([i915#5286]) -> [SKIP][347] ([fdo#109315]) +1 other test skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][348] ([i915#1845] / [i915#4098]) -> [SKIP][349] ([i915#5286]) +9 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][350] ([fdo#111614] / [i915#3638]) -> [SKIP][351] ([i915#1845] / [i915#4098]) +6 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][352] ([i915#1845] / [i915#4098]) -> [SKIP][353] ([fdo#111614] / [i915#3638]) +4 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][354] ([i915#1845] / [i915#4098]) -> [SKIP][355] ([fdo#110723]) +8 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][356] ([fdo#110723]) -> [SKIP][357] ([i915#1845] / [i915#4098]) +7 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          [SKIP][358] ([i915#1845] / [i915#4098]) -> [SKIP][359] ([fdo#111615])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][360] ([fdo#111615]) -> [SKIP][361] ([i915#1845] / [i915#4098])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-rkl:          [SKIP][362] ([i915#2705]) -> [SKIP][363] ([fdo#109315])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_joiner@invalid-modeset.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-rkl:          [SKIP][364] ([i915#7828]) -> [SKIP][365] ([i915#2575])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_chamelium_edid@hdmi-mode-timings.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-dg1:          [SKIP][366] ([i915#7828]) -> [SKIP][367] ([i915#4423] / [i915#7828])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-15/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          [SKIP][368] ([i915#7118]) -> [SKIP][369] ([i915#1845] / [i915#4098]) +1 other test skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_content_protection@atomic.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:
    - shard-apl:          [TIMEOUT][370] ([i915#7173]) -> [FAIL][371] ([i915#7173] / [i915#7181])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl1/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html

  * igt@kms_content_protection@atomic@pipe-a-dp-1:
    - shard-apl:          [TIMEOUT][372] ([i915#7173]) -> [FAIL][373] ([i915#7181])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl6/igt@kms_content_protection@atomic@pipe-a-dp-1.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl1/igt@kms_content_protection@atomic@pipe-a-dp-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][374] ([i915#1845] / [i915#4098]) -> [SKIP][375] ([i915#7118])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_content_protection@legacy.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          [SKIP][376] ([fdo#109279] / [i915#3359]) -> [SKIP][377] ([i915#1845] / [i915#4098]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][378] ([i915#1845] / [i915#4098]) -> [SKIP][379] ([i915#3359]) +3 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          [SKIP][380] ([i915#3555]) -> [SKIP][381] ([i915#2575])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          [SKIP][382] ([i915#1845] / [i915#4098]) -> [SKIP][383] ([i915#3555]) +5 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][384] ([i915#3359]) -> [SKIP][385] ([i915#1845] / [i915#4098])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][386] ([i915#3555]) -> [SKIP][387] ([i915#1845] / [i915#4098]) +7 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][388] ([i915#1845] / [i915#4098]) -> [SKIP][389] ([fdo#111825]) +6 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][390] ([i915#1845] / [i915#4098]) -> [SKIP][391] ([i915#4103])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][392] ([i915#4103]) -> [SKIP][393] ([i915#1845] / [i915#4098]) +3 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-dg1:          [SKIP][394] ([i915#4103] / [i915#4213]) -> [SKIP][395] ([i915#4103] / [i915#4213] / [i915#4423])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-19/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          [SKIP][396] ([fdo#111825]) -> [SKIP][397] ([i915#1845] / [i915#4098]) +6 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-rkl:          [SKIP][398] ([fdo#111825]) -> [SKIP][399] ([i915#2575]) +1 other test skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-rkl:          [SKIP][400] ([fdo#111767] / [fdo#111825]) -> [SKIP][401] ([i915#1845] / [i915#4098])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          [SKIP][402] ([i915#4098]) -> [SKIP][403] ([i915#8588])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][404] ([i915#3555] / [i915#3840]) -> [SKIP][405] ([i915#4098]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_dsc@dsc-basic.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][406] -> [SKIP][407] ([i915#4098])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          [SKIP][408] ([i915#3555] / [i915#3840]) -> [SKIP][409] ([i915#1845] / [i915#4098])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_dsc@dsc-with-formats.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][410] ([fdo#110189] / [i915#3955]) -> [SKIP][411] ([i915#3955])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][412] ([i915#3955]) -> [SKIP][413] ([fdo#110189] / [i915#3955])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
    - shard-dg1:          [SKIP][414] ([fdo#111825]) -> [SKIP][415] ([fdo#111825] / [i915#4423])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][416] ([i915#1849] / [i915#4098] / [i915#5354]) -> [SKIP][417] ([fdo#111825] / [i915#1825]) +55 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][418] ([fdo#111825] / [i915#1825]) -> [SKIP][419] ([fdo#109315]) +4 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][420] ([i915#5439]) -> [SKIP][421] ([i915#1849] / [i915#4098] / [i915#5354])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          [SKIP][422] ([i915#1849] / [i915#4098] / [i915#5354]) -> [SKIP][423] ([i915#3023]) +30 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][424] ([i915#3023]) -> [SKIP][425] ([fdo#109315]) +5 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          [SKIP][426] ([i915#3023]) -> [SKIP][427] ([i915#1849] / [i915#4098] / [i915#5354]) +38 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][428] ([i915#1849] / [i915#4098] / [i915#5354]) -> [SKIP][429] ([fdo#111825])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][430] ([fdo#111825]) -> [SKIP][431] ([i915#1849] / [i915#4098] / [i915#5354])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][432] ([fdo#111825] / [i915#1825]) -> [SKIP][433] ([i915#1849] / [i915#4098] / [i915#5354]) +61 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [SKIP][434] ([i915#3555] / [i915#8228]) -> [SKIP][435] ([i915#2575])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_hdr@bpc-switch-suspend.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][436] ([i915#4098]) -> [SKIP][437] ([i915#3555] / [i915#8228])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          [SKIP][438] ([i915#3555] / [i915#8228]) -> [SKIP][439] ([i915#4098])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_hdr@invalid-metadata-sizes.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][440] ([i915#4070] / [i915#4816]) -> [SKIP][441] ([i915#1839] / [i915#4070] / [i915#4816])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][442] ([i915#1845] / [i915#4098]) -> [SKIP][443] ([i915#6301])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][444] ([i915#6301]) -> [SKIP][445] ([i915#1845] / [i915#4098])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_panel_fitting@legacy.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][446] ([fdo#111825] / [i915#8152]) -> [SKIP][447] ([fdo#111825])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][448] ([i915#1845] / [i915#4098]) -> [SKIP][449] ([i915#5289])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][450] ([fdo#111615] / [i915#5289]) -> [SKIP][451] ([i915#1845] / [i915#4098]) +1 other test skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          [SKIP][452] ([i915#2437]) -> [SKIP][453] ([i915#2575])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_writeback@writeback-fb-id.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_writeback@writeback-fb-id.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [SKIP][454] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [SKIP][455] ([fdo#109315])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@prime_vgem@basic-read.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@prime_vgem@basic-read.html

  
  {name}: This element is suppressed. This means it is ignored when compu

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/index.html

--===============5223452280397226664==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/fbc: Split plane size vs. surface size checks apart</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126594/">https://patchwork.freedesktop.org/series/126594/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13888_full -&gt; Patchwork_126594v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126594v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126594v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/index.html</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Additional (1): shard-tglu0 <br />
  Missing    (2): shard-mtlp0 shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126594v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@drm_mm@drm_mm@drm_test_mm_align64}:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-9/igt@drm_mm@drm_mm@drm_test_mm_align64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-4/igt@drm_mm@drm_mm@drm_test_mm_align64.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>{igt@drm_mm@drm_mm@drm_test_mm_highest}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl1/igt@drm_mm@drm_mm@drm_test_mm_highest.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@drm_mm@drm_mm@drm_test_mm_highest.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_dsc@dsc-fractional-bpp-with-bpc}:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@basic-pci-d3-state}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_psr@pr_cursor_mmap_cpu}:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_psr@pr_cursor_mmap_cpu.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_32bpp}:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-snb4/igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_32bpp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_32bpp.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126594v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html">FAIL</a> ([i915#4778])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@drm_fdinfo@busy@vcs1.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html">FAIL</a> ([i915#7742]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@fbdev@unaligned-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-uncompressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_ccs@block-copy-uncompressed.html">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_exec_balancer@noheartbeat.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_exec_balancer@sliced.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-sequential:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_nop@basic-sequential.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_nop@basic-sequential.html">SKIP</a> ([fdo#109315]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@gem_exec_params@secure-non-root.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> ([i915#3281]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> ([i915#7975] / [i915#8213])</p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> ([i915#7975] / [i915#8213])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl6/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> ([i915#4936] / [i915#5493])</p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> ([i915#4936] / [i915#5493])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_mmap@bad-size.html">SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_mmap_gtt@basic-wc.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_mmap_wc@read-write-distinct.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_partial_pwrite_pread@reads-snoop.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_pread@snoop.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#5190]) +3 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +7 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@gen3_render_linear_blits.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@gen7_exec_parse@bitmasks.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2527]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP</a> ([i915#9588])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> ([i915#7036])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple@gt0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-6/igt@i915_pm_freq_api@freq-reset-multiple@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-5/igt@i915_pm_freq_api@freq-reset-multiple@gt0.html">ABORT</a> ([i915#9414])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> ([i915#9407])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>
<p>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-2/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-4/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([fdo#109271] / [i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286])</p>
</li>
<li>
<p>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138]) +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([fdo#111614] / [i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#1845] / [i915#4098]) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> ([fdo#111614]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> ([fdo#110723]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#111615]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_chamelium_color@ctm-0-75.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_chamelium_color@ctm-negative.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_color@ctm-green-to-red@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html">SKIP</a> ([i915#4098]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a> ([i915#9608])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_content_protection@lic.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl1/igt@kms_content_protection@srm@pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html">FAIL</a> ([i915#1339])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html">SKIP</a> ([i915#1845] / [i915#4098]) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-11/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-4.html">FAIL</a> ([fdo#103375])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#111767] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> ([i915#2575]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> ([fdo#109274] / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([i915#3546]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([fdo#111767] / [i915#3546])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html">DMESG-WARN</a> ([i915#2017])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> ([fdo#109271] / [fdo#111767]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_flip@2x-plain-flip.html">SKIP</a> ([fdo#111825]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([fdo#111825]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([fdo#109274]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_flip@dpms-off-confusion-interruptible.html">SKIP</a> ([i915#3637] / [i915#4098]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3555]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html">SKIP</a> ([i915#5354]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#3023]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#1825]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> ([i915#5460])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +115 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a> ([i915#3555] / [i915#4098]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a> ([i915#4098]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> ([i915#3555] / [i915#4098] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#5176] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> ([i915#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#5235]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#2575]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#8152]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html">SKIP</a> ([i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> ([i915#4098] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html">SKIP</a> ([i915#1849]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([i915#9681]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> ([i915#9673]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([fdo#111615] / [i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@kms_tv_load_detect@load-detect.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">FAIL</a> ([i915#9196]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-ctx-handle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> ([fdo#109289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-remove-userspace-config:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@perf@invalid-remove-userspace-config.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@perf@invalid-remove-userspace-config.html">SKIP</a> ([i915#5608])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@perf@mi-rpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@perf_pmu@event-wait@rcs0.html">SKIP</a> ([i915#3555] / [i915#8807])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@perf_pmu@faulting-read.html">SKIP</a> ([i915#5608])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@prime_udl.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@prime_vgem@basic-write.html">SKIP</a> ([fdo#109295] / [i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([fdo#109295] / [fdo#111656] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_create_bo@create-bo-zeroed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-6/igt@v3d/v3d_create_bo@create-bo-zeroed.html">SKIP</a> ([i915#2575]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-param:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@v3d/v3d_get_param@get-bad-param.html">SKIP</a> ([fdo#109271]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@v3d/v3d_perfmon@get-values-invalid-pad.html">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@job-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@v3d/v3d_submit_csd@job-perfmon.html">SKIP</a> ([fdo#109315]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-kernel-name:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@vc4/vc4_label_bo@set-kernel-name.html">SKIP</a> ([i915#7711])</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-1/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@vc4/vc4_tiling@set-get.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-0ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@vc4/vc4_wait_bo@used-bo-0ns.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> ([i915#8411]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic}:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-3/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@drm_mm@drm_mm@drm_test_mm_highest}:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg2-11/igt@drm_mm@drm_mm@drm_test_mm_highest.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg2-2/igt@drm_mm@drm_mm@drm_test_mm_highest.html">PASS</a></p>
</li>
<li>
<p>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-4/igt@drm_mm@drm_mm@drm_test_mm_highest.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-6/igt@drm_mm@drm_mm@drm_test_mm_highest.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@drm_read@empty-block.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@drm_read@empty-block.html">PASS</a> +29 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@fbdev@pan.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_compute@compute-square}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_compute@compute-square.html">SKIP</a> ([i915#9310]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_compute@compute-square.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">SKIP</a> ([i915#6252]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([fdo#109313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> ([i915#3281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-7/igt@gem_exec_whisper@basic-contexts-priority-all.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> ([i915#1850]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP</a> ([i915#9588]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-snb6/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> ([i915#5138]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_color@degamma@pipe-a.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_color@degamma@pipe-a.html">PASS</a> +18 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +21 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">INCOMPLETE</a> ([i915#180] / [i915#9392]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc5-dpms-negative}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> ([i915#9293]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">INCOMPLETE</a> ([i915#8875] / [i915#9569]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-glk4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">TIMEOUT</a> ([i915#8628]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-glk2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html">PASS</a> +3 other tests pass</p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-15/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-17/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-snb6/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-snb5/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">PASS</a> +1 other test pass</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl2/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl6/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">FAIL</a> ([i915#9196]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-mtlp-2/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-mtlp-5/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([fdo#109295] / [i915#3291] / [i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#7957]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#4098] / [i915#9323]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_ctx_sseu@engines.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> ([i915#9591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html">SKIP</a> ([i915#9591])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#3281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([fdo#109315]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> ([fdo#109315]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@gem_pread@exhaustion.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([fdo#109315]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2532])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> ([fdo#109289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> ([fdo#109315]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#1845] / [i915#4098]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> ([fdo#109315]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([i915#1845] / [i915#4098]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> ([fdo#110723]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> ([fdo#110723]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#1845] / [i915#4098]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> ([fdo#111615]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([i915#2705]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-15/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> ([i915#4423] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl1/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl2/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html">FAIL</a> ([i915#7173] / [i915#7181])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-apl6/igt@kms_content_protection@atomic@pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-apl1/igt@kms_content_protection@atomic@pipe-a-dp-1.html">FAIL</a> ([i915#7181])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([fdo#109279] / [i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#3359]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> ([i915#1845] / [i915#4098]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> ([fdo#111825]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098]) +3 other tests skip</p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-19/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213] / [i915#4423])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#111767] / [fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([fdo#110189] / [i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([fdo#110189] / [i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#111825] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) +55 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109315]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> ([i915#5439]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#3023]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#3023]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109315]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> ([i915#3023]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1849] / [i915#4098] / [i915#5354]) +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839] / [i915#4070] / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([fdo#111825] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([fdo#111615] / [i915#5289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2437]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13888/shard-rkl-1/igt@prime_vgem@basic-read.html">SKIP</a> ([fdo#109295] / [i915#3291] / [i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126594v1/shard-rkl-5/igt@prime_vgem@basic-read.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when compu</p>

</body>
</html>

--===============5223452280397226664==--
