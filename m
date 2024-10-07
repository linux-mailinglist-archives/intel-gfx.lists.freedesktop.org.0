Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 723DE9938E9
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0390F10E429;
	Mon,  7 Oct 2024 21:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5B610E429;
 Mon,  7 Oct 2024 21:17:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1052663588870256400=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_DP_DSC_min/max_src_bpc_fixe?=
 =?utf-8?q?s_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 07 Oct 2024 21:17:34 -0000
Message-ID: <172833585423.1200594.7666734119245410460@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1052663588870256400==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DP DSC min/max src bpc fixes (rev8)
URL   : https://patchwork.freedesktop.org/series/125571/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15478_full -> Patchwork_125571v8_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125571v8_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125571v8_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 8)
------------------------------

  Missing    (2): shard-snb-0 shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125571v8_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          ([PASS][1], [PASS][2]) -> [INCOMPLETE][3] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@kms_draw_crc@draw-method-blt:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] +1 other test dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk2/igt@kms_draw_crc@draw-method-blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk7/igt@kms_draw_crc@draw-method-blt.html

  * igt@perf_pmu@busy-accuracy-98:
    - shard-tglu:         ([PASS][6], [PASS][7]) -> [FAIL][8] +4 other tests fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-2/igt@perf_pmu@busy-accuracy-98.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@perf_pmu@busy-accuracy-98.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-5/igt@perf_pmu@busy-accuracy-98.html

  
#### Warnings ####

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         ([PASS][9], [DMESG-WARN][10]) -> [DMESG-WARN][11]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@gem_exec_balancer@nop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@gem_exec_balancer@nop.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@gem_exec_balancer@nop.html

  
Known issues
------------

  Here are the changes found in Patchwork_125571v8_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#8411])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-4/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8414]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@drm_fdinfo@virtual-busy-idle-all:
    - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#8414])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@drm_fdinfo@virtual-busy-idle-all.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          ([PASS][15], [PASS][16]) -> [INCOMPLETE][17] ([i915#7297])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#7697])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#6335])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][20] -> [FAIL][21] ([i915#12027])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          ([PASS][22], [PASS][23]) -> [FAIL][24] ([i915#5784])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@gem_eio@reset-stress.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@gem_eio@reset-stress.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          NOTRUN -> [FAIL][25] ([i915#2842]) +1 other test fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk7/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_reloc@basic-active:
    - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#3281]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#3281]) +2 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#3281]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          ([PASS][29], [PASS][30]) -> [INCOMPLETE][31] ([i915#11441]) +1 other test incomplete
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#4613])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4613])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_mmap@big-bo:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4083]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@gem_mmap@big-bo.html
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4083]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-6/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4077]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4077])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#3282]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4270]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#4270])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#8428]) +2 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-4/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#2527])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          ([PASS][43], [PASS][44]) -> [ABORT][45] ([i915#9820])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          ([PASS][46], [PASS][47]) -> [FAIL][48] ([i915#3591]) +1 other test fail
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@reset:
    - shard-tglu:         ([PASS][49], [PASS][50]) -> [ABORT][51] ([i915#12309])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@i915_pm_rps@reset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-4/igt@i915_pm_rps@reset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#11681])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_pm_rps@waitboost:
    - shard-mtlp:         NOTRUN -> [FAIL][53] ([i915#8346])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@i915_pm_rps@waitboost.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#12177])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#11859])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
    - shard-mtlp:         ([PASS][58], [PASS][59]) -> [FAIL][60] ([i915#11808] / [i915#5956]) +1 other test fail
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         ([PASS][61], [PASS][62]) -> [FAIL][63] ([i915#5138])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][64] +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-5/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4538] / [i915#5286]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#5286])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#5286])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#3638])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#3638])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#4538])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#6095]) +4 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-edp-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#6095]) +46 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#6095]) +19 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#10307] / [i915#6095]) +130 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#6095]) +56 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4087]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#7828]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#7828]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#7828])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@dp-crc-multiple:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#7828])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_chamelium_frames@dp-crc-multiple.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#7828]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#7118] / [i915#9424])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][84] ([i915#7173])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#9424])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_content_protection@content-type-change.html
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#6944] / [i915#9424])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#3116] / [i915#3299])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-snb:          NOTRUN -> [SKIP][89]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb1/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#3555])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-glk:          NOTRUN -> [SKIP][91] +98 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk7/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#11453])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][93] -> [FAIL][94] ([i915#2346])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#9197]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3555] / [i915#3840])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#3555] / [i915#3840])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#9337])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#3637] / [i915#3966])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#9934])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-rkl:          NOTRUN -> [SKIP][101] +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_flip@2x-wf_vblank-ts-check.html
    - shard-snb:          ([PASS][102], [PASS][103]) -> [FAIL][104] ([i915#2122]) +4 other tests fail
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@kms_flip@2x-wf_vblank-ts-check.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg1:          ([PASS][105], [PASS][106]) -> [DMESG-WARN][107] ([i915#4423]) +2 other tests dmesg-warn
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_flip@flip-vs-suspend-interruptible.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:
    - shard-dg1:          [PASS][108] -> [DMESG-WARN][109] ([i915#4423])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][110] ([i915#4839])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk9/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][111] ([i915#4839] / [i915#6113])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-11/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][112] ([i915#11989]) +1 other test fail
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          ([PASS][113], [PASS][114]) -> [SKIP][115] ([i915#5354]) +4 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#2672] / [i915#3555]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#2587] / [i915#2672]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          ([PASS][118], [PASS][119]) -> [SKIP][120] ([i915#3555]) +3 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#2672] / [i915#3555])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#2587] / [i915#2672])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#1825]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#8708]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#5354]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#1825]) +9 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][127] +20 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#3458])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][129] +8 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3023]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#8708]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#8708])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#3555] / [i915#8228])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3555] / [i915#8228])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#10656])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#6301])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][137] +5 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_plane@plane-position-hole:
    - shard-dg2:          ([PASS][138], [PASS][139]) -> [SKIP][140] ([i915#8825])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane@plane-position-hole.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane@plane-position-hole.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          ([PASS][141], [PASS][142]) -> [SKIP][143] ([i915#7294])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#12247]) +9 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#8152] / [i915#9423])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#12247]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#8152])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-dg2:          ([PASS][148], [PASS][149]) -> [SKIP][150] ([i915#12247] / [i915#8152] / [i915#9423])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          ([PASS][151], [PASS][152]) -> [SKIP][153] ([i915#6953] / [i915#8152] / [i915#9423])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:
    - shard-dg2:          ([PASS][154], [PASS][155]) -> [SKIP][156] ([i915#12247] / [i915#8152]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          ([PASS][157], [PASS][158]) -> [SKIP][159] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:
    - shard-dg2:          ([PASS][160], [PASS][161]) -> [SKIP][162] ([i915#12247]) +8 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:
    - shard-dg2:          ([PASS][163], [PASS][164]) -> [SKIP][165] ([i915#8152])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#9685])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#9685])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-dg2:          ([PASS][168], [PASS][169]) -> [FAIL][170] ([i915#7330])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_pm_dc@dc9-dpms.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_pm_dc@dc9-dpms.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          ([PASS][171], [PASS][172]) -> [SKIP][173] ([i915#9519])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][174] -> [SKIP][175] ([i915#9519])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#6524])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-dg2:          ([PASS][177], [PASS][178]) -> [SKIP][179] ([i915#11521])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_properties@crtc-properties-legacy.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_properties@crtc-properties-legacy.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#11520]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#11520]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#12316]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#9808])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#11520])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][185] ([i915#11520]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk7/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#9683])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-sprite-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#1072] / [i915#9732]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html

  * igt@kms_psr@fbc-psr-sprite-plane-move:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#1072] / [i915#9732]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_psr@fbc-psr-sprite-plane-move.html
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#9688]) +3 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_psr@fbc-psr-sprite-plane-move.html

  * igt@kms_psr@pr-primary-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#1072] / [i915#9732]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_psr@pr-primary-mmap-gtt.html

  * igt@kms_psr@psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#9732]) +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_psr@psr-no-drrs.html

  * igt@kms_psr@psr-sprite-mmap-gtt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#4077] / [i915#9688]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_psr@psr-sprite-mmap-gtt@edp-1.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#11131])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#5289])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#3555])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#8623])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          ([PASS][197], [PASS][198]) -> [SKIP][199] ([i915#9197]) +32 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_vblank@ts-continuation-modeset.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_vblank@ts-continuation-modeset.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#9906])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_vrr@flip-basic-fastset.html

  * igt@prime_mmap_kms@buffer-sharing:
    - shard-dg2:          ([PASS][201], [PASS][202]) -> [SKIP][203]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@prime_mmap_kms@buffer-sharing.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@prime_mmap_kms@buffer-sharing.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - shard-dg2:          ([SKIP][204], [PASS][205]) ([i915#1849] / [i915#2582]) -> [PASS][206]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@fbdev@info.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@fbdev@info.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@fbdev@info.html

  * igt@fbdev@read:
    - shard-dg2:          ([PASS][207], [SKIP][208]) ([i915#2582]) -> [PASS][209]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@fbdev@read.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@fbdev@read.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@fbdev@read.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][210] ([i915#11980]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-4/igt@gem_ctx_persistence@hostile.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-6/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          ([FAIL][212], [FAIL][213]) ([i915#5784]) -> [PASS][214]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@gem_eio@unwedge-stress.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-18/igt@gem_eio@unwedge-stress.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][215] ([i915#2842]) -> [PASS][216] +1 other test pass
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-rkl:          ([FAIL][217], [PASS][218]) ([i915#2842]) -> [PASS][219] +1 other test pass
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         ([FAIL][220], [PASS][221]) ([i915#2842]) -> [PASS][222] +1 other test pass
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          ([ABORT][223], [PASS][224]) ([i915#9820]) -> [PASS][225]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          ([ABORT][226], [PASS][227]) ([i915#9820]) -> [PASS][228]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          ([PASS][229], [INCOMPLETE][230]) ([i915#7790]) -> [PASS][231]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@i915_pm_rps@reset.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb2/igt@i915_pm_rps@reset.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb6/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [INCOMPLETE][232] ([i915#4817]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-tglu:         ([PASS][234], [FAIL][235]) ([i915#10991]) -> [PASS][236] +1 other test pass
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-7/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-glk:          [FAIL][237] ([i915#12238]) -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
    - shard-glk:          [FAIL][239] ([i915#11859]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-dg2:          ([PASS][241], [SKIP][242]) ([i915#9197]) -> [PASS][243] +66 other tests pass
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-rkl:          ([PASS][244], [ABORT][245]) ([i915#10354]) -> [PASS][246]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-3/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg1:          [INCOMPLETE][247] ([i915#2295]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][249] ([i915#2346]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-snb:          [FAIL][251] -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
    - shard-mtlp:         ([FAIL][253], [PASS][254]) ([i915#2346]) -> [PASS][255]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-dg2:          ([PASS][256], [SKIP][257]) ([i915#1849]) -> [PASS][258]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_fbcon_fbt@fbc.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          ([FAIL][259], [PASS][260]) ([i915#4767]) -> [PASS][261]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_fbcon_fbt@fbc-suspend.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
    - shard-snb:          ([PASS][262], [FAIL][263]) ([i915#2122]) -> [PASS][264] +1 other test pass
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb5/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html

  * igt@kms_flip@dpms-vs-vblank-race:
    - shard-mtlp:         ([PASS][265], [FAIL][266]) -> [PASS][267] +1 other test pass
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_flip@dpms-vs-vblank-race.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-4/igt@kms_flip@dpms-vs-vblank-race.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-4/igt@kms_flip@dpms-vs-vblank-race.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          [FAIL][268] ([i915#2122]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-mtlp:         ([FAIL][270], [PASS][271]) ([i915#2122]) -> [PASS][272]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-mtlp:         ([FAIL][273], [FAIL][274]) ([i915#11989]) -> [PASS][275]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-mtlp:         ([FAIL][276], [FAIL][277]) ([i915#2122]) -> [PASS][278]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:
    - shard-tglu:         ([PASS][279], [FAIL][280]) ([i915#2122]) -> [PASS][281] +4 other tests pass
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-2/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          ([PASS][282], [SKIP][283]) ([i915#3555]) -> [PASS][284] +7 other tests pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          ([FAIL][285], [SKIP][286]) ([i915#5354] / [i915#6880]) -> [PASS][287]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
    - shard-snb:          ([SKIP][288], [SKIP][289]) -> [PASS][290] +1 other test pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          ([SKIP][291], [PASS][292]) ([i915#5354]) -> [PASS][293] +24 other tests pass
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          ([SKIP][294], [SKIP][295]) ([i915#3555] / [i915#8228] / [i915#9197]) -> [PASS][296]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_hdr@static-swap.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_hdr@static-swap.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          ([SKIP][297], [SKIP][298]) ([i915#3555] / [i915#8228]) -> [PASS][299] +1 other test pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_hdr@static-toggle-suspend.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg2:          ([PASS][300], [INCOMPLETE][301]) ([i915#1982]) -> [PASS][302]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-10/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
    - shard-dg1:          ([INCOMPLETE][303], [PASS][304]) ([i915#1982]) -> [PASS][305]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-12/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_pipe_crc_basic@suspend-read-crc.html
    - shard-mtlp:         ([INCOMPLETE][306], [INCOMPLETE][307]) -> [PASS][308] +1 other test pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          ([PASS][309], [SKIP][310]) ([i915#9581]) -> [PASS][311]
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane@planar-pixel-format-settings.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-panning-bottom-right:
    - shard-dg2:          ([SKIP][312], [PASS][313]) ([i915#8825]) -> [PASS][314]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane@plane-panning-bottom-right.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_plane@plane-panning-bottom-right.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-dg2:          ([PASS][315], [SKIP][316]) ([i915#7294]) -> [PASS][317] +1 other test pass
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-7efc.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          ([FAIL][318], [PASS][319]) ([i915#8292]) -> [PASS][320]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:
    - shard-dg2:          ([SKIP][321], [PASS][322]) ([i915#8152]) -> [PASS][323] +1 other test pass
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          ([SKIP][324], [PASS][325]) ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][326] +1 other test pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
    - shard-dg2:          ([SKIP][327], [PASS][328]) ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -> [PASS][329]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          ([SKIP][330], [PASS][331]) ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][332] +1 other test pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-dg2:          ([PASS][333], [SKIP][334]) ([i915#12247]) -> [PASS][335] +26 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-dg2:          ([SKIP][336], [PASS][337]) ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][338] +1 other test pass
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          ([PASS][339], [SKIP][340]) ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][341]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          ([PASS][342], [SKIP][343]) ([i915#12247] / [i915#8152]) -> [PASS][344] +6 other tests pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          ([PASS][345], [SKIP][346]) ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][347]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         ([PASS][348], [FAIL][349]) ([i915#9295]) -> [PASS][350]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         ([SKIP][351], [PASS][352]) ([i915#4281]) -> [PASS][353]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          ([PASS][354], [SKIP][355]) ([i915#9519]) -> [PASS][356] +2 other tests pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          ([SKIP][357], [PASS][358]) ([i915#3547]) -> [PASS][359]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_pm_rpm@drm-resources-equal.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          ([PASS][360], [SKIP][361]) -> [PASS][362]
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_pm_rpm@i2c.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          ([SKIP][363], [SKIP][364]) ([i915#9519]) -> [PASS][365] +1 other test pass
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][366] ([i915#9519]) -> [PASS][367]
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          ([SKIP][368], [PASS][369]) ([i915#9519]) -> [PASS][370] +3 other tests pass
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_properties@get_properties-sanity-atomic:
    - shard-dg1:          ([DMESG-WARN][371], [PASS][372]) ([i915#4423]) -> [PASS][373] +1 other test pass
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_properties@get_properties-sanity-atomic.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_properties@get_properties-sanity-atomic.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-15/igt@kms_properties@get_properties-sanity-atomic.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         ([PASS][374], [FAIL][375]) ([i915#9196]) -> [PASS][376] +1 other test pass
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         ([FAIL][377], [PASS][378]) ([i915#4349]) -> [PASS][379]
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         ([PASS][380], [FAIL][381]) ([i915#12027]) -> [FAIL][382] ([i915#12027])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         ([FAIL][383], [PASS][384]) ([i915#12027]) -> [FAIL][385] ([i915#12027])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         ([FAIL][386], [FAIL][387]) ([i915#2842] / [i915#2876]) -> [FAIL][388] ([i915#2842])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-10/igt@gem_exec_fair@basic-pace@rcs0.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-10/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          ([ABORT][389], [PASS][390]) ([i915#9820]) -> [ABORT][391] ([i915#9820])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         ([PASS][392], [ABORT][393]) ([i915#10887] / [i915#9820]) -> [ABORT][394] ([i915#9820])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         ([PASS][395], [ABORT][396]) ([i915#10131] / [i915#9820]) -> [ABORT][397] ([i915#10131] / [i915#9820])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          ([SKIP][398], [SKIP][399]) ([i915#7091]) -> [SKIP][400] ([i915#9197])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][401] ([i915#9311]) -> [DMESG-WARN][402] ([i915#1982] / [i915#9311])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/igt@i915_selftest@mock.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk4/igt@i915_selftest@mock.html
    - shard-dg2:          ([DMESG-WARN][403], [DMESG-WARN][404]) ([i915#1982] / [i915#9311]) -> [DMESG-WARN][405] ([i915#9311])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@i915_selftest@mock.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@i915_selftest@mock.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-5/igt@i915_selftest@mock.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          ([SKIP][406], [SKIP][407]) ([i915#1769] / [i915#3555]) -> [SKIP][408] ([i915#9197])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          ([SKIP][409], [SKIP][410]) -> [SKIP][411] ([i915#9197]) +2 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         ([PASS][412], [FAIL][413]) ([i915#5138]) -> [FAIL][414] ([i915#5138])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          ([SKIP][415], [SKIP][416]) ([i915#9197]) -> [SKIP][417] +4 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          ([SKIP][418], [SKIP][419]) ([i915#4538] / [i915#5190] / [i915#9197]) -> [SKIP][420] ([i915#4538] / [i915#5190]) +14 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg2:          ([SKIP][421], [SKIP][422]) ([i915#4538] / [i915#5190]) -> [SKIP][423] ([i915#5190] / [i915#9197]) +4 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-dg2:          ([SKIP][424], [SKIP][425]) ([i915#10307] / [i915#6095] / [i915#9197]) -> [SKIP][426] ([i915#10307] / [i915#6095]) +19 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          ([SKIP][427], [SKIP][428]) ([i915#12313]) -> [SKIP][429] ([i915#9197]) +2 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg2:          ([SKIP][430], [SKIP][431]) ([i915#12313] / [i915#9197]) -> [SKIP][432] ([i915#12313]) +1 other test skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          ([SKIP][433], [SKIP][434]) ([i915#10307] / [i915#6095]) -> [SKIP][435] ([i915#9197]) +6 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          ([SKIP][436], [SKIP][437]) ([i915#11616] / [i915#7213] / [i915#9197]) -> [SKIP][438] ([i915#11616] / [i915#7213])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_cdclk@mode-transition.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cdclk@mode-transition.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_cdclk@mode-transition.html

  * igt@kms_color@deep-color:
    - shard-dg2:          ([SKIP][439], [SKIP][440]) ([i915#3555] / [i915#5354]) -> [SKIP][441] ([i915#3555])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_color@deep-color.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_color@deep-color.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          ([SKIP][442], [SKIP][443]) ([i915#7118] / [i915#9424]) -> [TIMEOUT][444] ([i915#7173])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
    - shard-snb:          ([SKIP][445], [SKIP][446]) -> [INCOMPLETE][447] ([i915#8816])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@kms_content_protection@atomic-dpms.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb4/igt@kms_content_protection@atomic-dpms.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          ([SKIP][448], [SKIP][449]) ([i915#3299] / [i915#9197]) -> [SKIP][450] ([i915#3299])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          ([SKIP][451], [SKIP][452]) ([i915#9424]) -> [SKIP][453] ([i915#9197])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_content_protection@lic-type-1.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_content_protection@lic-type-1.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_content_protection@lic-type-1.html
    - shard-dg1:          ([SKIP][454], [SKIP][455]) ([i915#9424]) -> [SKIP][456] ([i915#4423] / [i915#9424])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_content_protection@lic-type-1.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_content_protection@lic-type-1.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-17/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          ([SKIP][457], [SKIP][458]) ([i915#9197] / [i915#9424]) -> [SKIP][459] ([i915#9424])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_content_protection@mei-interface.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_content_protection@mei-interface.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-1/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          ([SKIP][460], [SKIP][461]) ([i915#9424] / [i915#9433]) -> [SKIP][462] ([i915#9424])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-18/igt@kms_content_protection@mei-interface.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-15/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          ([SKIP][463], [SKIP][464]) ([i915#7118] / [i915#9424]) -> [SKIP][465] ([i915#7118] / [i915#7162] / [i915#9424])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_content_protection@type1.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_content_protection@type1.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          ([SKIP][466], [SKIP][467]) ([i915#11453] / [i915#9197]) -> [SKIP][468] ([i915#11453]) +1 other test skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          ([SKIP][469], [SKIP][470]) ([i915#3555]) -> [SKIP][471] ([i915#9197]) +2 other tests skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          ([SKIP][472], [SKIP][473]) ([i915#11453]) -> [SKIP][474] ([i915#9197])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          ([SKIP][475], [SKIP][476]) ([i915#4103] / [i915#4213] / [i915#9197]) -> [SKIP][477] ([i915#4103] / [i915#4213]) +2 other tests skip
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          ([SKIP][478], [SKIP][479]) ([i915#5354]) -> [SKIP][480] ([i915#9197])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          ([SKIP][481], [SKIP][482]) ([i915#5354] / [i915#9197]) -> [SKIP][483] ([i915#5354]) +9 other tests skip
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          ([SKIP][484], [SKIP][485]) ([i915#9197] / [i915#9833]) -> [SKIP][486] ([i915#9833])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          ([SKIP][487], [SKIP][488]) ([i915#8588] / [i915#9197]) -> [SKIP][489] ([i915#8588])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_display_modes@mst-extended-mode-negative.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          ([SKIP][490], [PASS][491]) ([i915#3555]) -> [SKIP][492] ([i915#3555])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          ([SKIP][493], [SKIP][494]) ([i915#3555] / [i915#9197]) -> [SKIP][495] ([i915#3555]) +6 other tests skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          ([SKIP][496], [SKIP][497]) ([i915#8812] / [i915#9197]) -> [SKIP][498] ([i915#8812])
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          ([SKIP][499], [SKIP][500]) ([i915#3840] / [i915#9197] / [i915#9688]) -> [SKIP][501] ([i915#3840] / [i915#9688])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          ([SKIP][502], [SKIP][503]) ([i915#3840] / [i915#9197]) -> [SKIP][504] ([i915#3840])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          ([SKIP][505], [SKIP][506]) ([i915#4881]) -> [SKIP][507] ([i915#9197])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_fence_pin_leak.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_fence_pin_leak.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg1:          ([SKIP][508], [SKIP][509]) ([i915#4423]) -> [SKIP][510]
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-15/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-dg1:          ([SKIP][5

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/index.html

--===============1052663588870256400==
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
<tr><td><b>Series:</b></td><td>DP DSC min/max src bpc fixes (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125571/">https://patchwork.freedesktop.org/series/125571/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15478_full -&gt; Patchwork_125571v8_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125571v8_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125571v8_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 8)</h2>
<p>Missing    (2): shard-snb-0 shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125571v8_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-blt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk2/igt@kms_draw_crc@draw-method-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk7/igt@kms_draw_crc@draw-method-blt.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-2/igt@perf_pmu@busy-accuracy-98.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@perf_pmu@busy-accuracy-98.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-5/igt@perf_pmu@busy-accuracy-98.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_balancer@nop:<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@gem_exec_balancer@nop.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@gem_exec_balancer@nop.html">DMESG-WARN</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@gem_exec_balancer@nop.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125571v8_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-4/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@drm_fdinfo@virtual-busy-idle-all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@gem_eio@reset-stress.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@gem_eio@reset-stress.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk7/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_exec_reloc@basic-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-read-noreloc.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#11441]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@gem_mmap@big-bo.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-6/igt@gem_mmap@big-bo.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@gem_mmap_gtt@fault-concurrent-x.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-4/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> ([i915#3591]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@i915_pm_rps@reset.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-4/igt@i915_pm_rps@reset.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@i915_pm_rps@reset.html">ABORT</a> ([i915#12309])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@i915_pm_rps@thresholds-park.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@i915_pm_rps@waitboost.html">FAIL</a> ([i915#8346])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">FAIL</a> ([i915#12177])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">FAIL</a> ([i915#11808] / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-5/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +130 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_chamelium_audio@hdmi-audio-edid.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-multiple:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_chamelium_frames@dp-crc-multiple.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#9424])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb1/igt@kms_cursor_crc@cursor-offscreen-max-size.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk7/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> +98 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> +1 other test skip</li>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@kms_flip@2x-wf_vblank-ts-check.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html">FAIL</a> ([i915#2122]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html">DMESG-WARN</a> ([i915#4423]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk9/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-11/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">INCOMPLETE</a> ([i915#4839] / [i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([i915#5354]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> ([i915#1825]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#1825]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#3023]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane@plane-position-hole.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane@plane-position-hole.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane@plane-position-hole.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_pm_dc@dc5-psr.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_pm_dc@dc9-dpms.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_pm_dc@dc9-dpms.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html">FAIL</a> ([i915#7330])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_properties@crtc-properties-legacy.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_properties@crtc-properties-legacy.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_properties@crtc-properties-legacy.html">SKIP</a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#12316]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk7/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-plane-move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_psr@fbc-psr-sprite-plane-move.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_psr@fbc-psr-sprite-plane-move.html">SKIP</a> ([i915#9688]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@kms_psr@pr-primary-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_psr@psr-no-drrs.html">SKIP</a> ([i915#9732]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-mmap-gtt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_psr@psr-sprite-mmap-gtt@edp-1.html">SKIP</a> ([i915#4077] / [i915#9688]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> ([i915#11131])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_vblank@ts-continuation-modeset.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_vblank@ts-continuation-modeset.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html">SKIP</a> ([i915#9197]) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-8/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_kms@buffer-sharing:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@prime_mmap_kms@buffer-sharing.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@prime_mmap_kms@buffer-sharing.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@fbdev@info.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@fbdev@info.html">PASS</a>) ([i915#1849] / [i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@fbdev@read.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@fbdev@read.html">SKIP</a>) ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-4/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-6/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@gem_eio@unwedge-stress.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-18/igt@gem_eio@unwedge-stress.html">FAIL</a>) ([i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@i915_pm_rps@reset.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb2/igt@i915_pm_rps@reset.html">INCOMPLETE</a>) ([i915#7790]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb6/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> ([i915#4817]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a>) ([i915#10991]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-7/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">FAIL</a> ([i915#12238]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">FAIL</a> ([i915#11859]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKIP</a>) ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> +66 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">ABORT</a>) ([i915#10354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-3/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> ([i915#2295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a>) ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_fbcon_fbt@fbc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html">SKIP</a>) ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_fbcon_fbt@fbc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>) ([i915#4767]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html">FAIL</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb5/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_flip@dpms-vs-vblank-race.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-4/igt@kms_flip@dpms-vs-vblank-race.html">FAIL</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-4/igt@kms_flip@dpms-vs-vblank-race.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html">PASS</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a>) ([i915#11989]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html">FAIL</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-2/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a>) ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a>) ([i915#5354] / [i915#6880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html">SKIP</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a>) ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +24 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_hdr@static-swap.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_hdr@static-swap.html">SKIP</a>) ([i915#3555] / [i915#8228] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_hdr@static-toggle-suspend.html">SKIP</a>) ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-10/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a>) ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a></li>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-12/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-14/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a>) ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-14/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a></li>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane@planar-pixel-format-settings.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a>) ([i915#9581]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_plane@planar-pixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane@plane-panning-bottom-right.html">PASS</a>) ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_plane@plane-panning-bottom-right.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a>) ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a>) ([i915#8292]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">PASS</a>) ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a>) ([i915#12247] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">PASS</a>) ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a>) ([i915#3555] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a>) ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a> +26 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a>) ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a>) ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a>) ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a>) ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html">FAIL</a>) ([i915#9295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html">PASS</a>) ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a>) ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a>) ([i915#3547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_pm_rpm@i2c.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@i2c.html">SKIP</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>) ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a>) ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-atomic:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_properties@get_properties-sanity-atomic.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_properties@get_properties-sanity-atomic.html">PASS</a>) ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-15/igt@kms_properties@get_properties-sanity-atomic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a>) ([i915#9196]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html">PASS</a>) ([i915#4349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>) ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html">PASS</a>) ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-10/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>) ([i915#2842] / [i915#2876]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-10/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#10887] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#10131] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a>) ([i915#7091]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-glk7/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-glk4/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#1982] / [i915#9311])</li>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@i915_selftest@mock.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@i915_selftest@mock.html">DMESG-WARN</a>) ([i915#1982] / [i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-5/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a>) ([i915#1769] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a>) ([i915#5138]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a>) ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a>) ([i915#4538] / [i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a>) ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#5190] / [i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a>) ([i915#10307] / [i915#6095] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a>) ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a>) ([i915#12313] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html">SKIP</a>) ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_cdclk@mode-transition.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cdclk@mode-transition.html">SKIP</a>) ([i915#11616] / [i915#7213] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#11616] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_color@deep-color.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_color@deep-color.html">SKIP</a>) ([i915#3555] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html">SKIP</a>) ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#7173])</li>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb1/igt@kms_content_protection@atomic-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-snb4/igt@kms_content_protection@atomic-dpms.html">SKIP</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-snb4/igt@kms_content_protection@atomic-dpms.html">INCOMPLETE</a> ([i915#8816])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a>) ([i915#3299] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_content_protection@lic-type-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_content_protection@lic-type-1.html">SKIP</a>) ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9197])</li>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_content_protection@lic-type-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-19/igt@kms_content_protection@lic-type-1.html">SKIP</a>) ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-17/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#4423] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_content_protection@mei-interface.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_content_protection@mei-interface.html">SKIP</a>) ([i915#9197] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-1/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424])</li>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-18/igt@kms_content_protection@mei-interface.html">SKIP</a>) ([i915#9424] / [i915#9433]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-15/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_content_protection@type1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_content_protection@type1.html">SKIP</a>) ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#7162] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a>) ([i915#11453] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a>) ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a>) ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>) ([i915#4103] / [i915#4213] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a>) ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a>) ([i915#5354] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>) ([i915#9197] / [i915#9833]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-5/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a>) ([i915#8588] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS</a>) ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a>) ([i915#3555] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a>) ([i915#8812] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a>) ([i915#3840] / [i915#9197] / [i915#9688]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a>) ([i915#3840] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-8/igt@kms_fence_pin_leak.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg2-6/igt@kms_fence_pin_leak.html">SKIP</a>) ([i915#4881]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg2-2/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-13/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15478/shard-dg1-17/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a>) ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125571v8/shard-dg1-15/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-dg1:          ([SKIP][5</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1052663588870256400==--
