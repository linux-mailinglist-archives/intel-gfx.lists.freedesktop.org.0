Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F15997B19
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 05:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B1910E2A6;
	Thu, 10 Oct 2024 03:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3650D10E2A6;
 Thu, 10 Oct 2024 03:08:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5262175427669277973=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_gen2_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2024 03:08:45 -0000
Message-ID: <172852972520.1212995.2141273283230484359@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
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

--===============5262175427669277973==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: gen2 stuff
URL   : https://patchwork.freedesktop.org/series/139728/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15494_full -> Patchwork_139728v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139728v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139728v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/index.html

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139728v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@perf@polling@1-vcs1:
    - shard-mtlp:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-1/igt@perf@polling@1-vcs1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15494_full and Patchwork_139728v1_full:

### New IGT tests (1) ###

  * igt@kms_panel_fitting:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_139728v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#8411])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#11078])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-mtlp:         NOTRUN -> [SKIP][8] ([i915#8414])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@drm_fdinfo@virtual-busy-all.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][9] -> [SKIP][10] ([i915#2582])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@fbdev@nullptr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@fbdev@nullptr.html

  * igt@gem_busy@close-race:
    - shard-tglu:         NOTRUN -> [FAIL][11] ([i915#12297])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@gem_busy@close-race.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#9323])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#3555] / [i915#9323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#9323])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][15] -> [INCOMPLETE][16] ([i915#7297])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#7697])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          ([PASS][18], [PASS][19]) -> [FAIL][20] ([i915#12027])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk1/igt@gem_ctx_engines@invalid-engines.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@gem_ctx_engines@invalid-engines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk3/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#280])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#280])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4525])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][24] ([i915#11713])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@gem_exec_big@single.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          NOTRUN -> [FAIL][25] ([i915#2842]) +3 other tests fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#3539] / [i915#4852])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-17/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281]) +10 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#3281]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_schedule@pi-ringfull@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][29] ([i915#12296]) +4 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@gem_exec_schedule@pi-ringfull@rcs0.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4860])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#4860]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@massive:
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#4613])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-glk:          NOTRUN -> [SKIP][33] ([i915#4613])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#4613]) +4 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#3282])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3282]) +2 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#284])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4077])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-1/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4077])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-17/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4077]) +2 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@gem_mmap_gtt@big-bo-tiledy.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4083]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#4270]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#4270]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#8428])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4079])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#3297]) +3 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#3297])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#2527]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [PASS][49] -> [ABORT][50] ([i915#9820])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#4387])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][52] ([i915#9311]) +1 other test dmesg-warn
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@i915_selftest@mock.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg1:          [PASS][53] -> [DMESG-WARN][54] ([i915#4391] / [i915#4423])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-14/igt@i915_suspend@basic-s2idle-without-i915.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-12/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][55] ([i915#4817])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#8709]) +3 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#8709]) +7 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#10333])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic@plane-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#9197]) +4 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_atomic@plane-cursor-legacy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#1769] / [i915#3555])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-transition:
    - shard-dg2:          [PASS][61] -> [SKIP][62] ([i915#9197]) +37 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_atomic_transition@plane-all-transition.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          [PASS][63] -> [FAIL][64] ([i915#5956]) +1 other test fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-14/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-15/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#5286]) +4 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#4538] / [i915#5286])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-14/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][67] -> [FAIL][68] ([i915#5138])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#5286]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3638]) +3 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#6187])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][72] +26 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4538] / [i915#5190])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#10307] / [i915#6095]) +139 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-11/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#12313]) +2 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#6095]) +14 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#6095]) +71 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-18/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][78] +37 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#6095]) +57 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#12313]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#6095]) +9 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#3742])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-17/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#11616] / [i915#7213]) +4 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4087]) +3 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#7828]) +11 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#7828]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#7828])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#7828]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#6944] / [i915#9424])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#3116])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][92] ([i915#7173])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#9424])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#6944] / [i915#7116] / [i915#7118])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#7118] / [i915#9424])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#8814]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#3555] / [i915#8814])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#3555])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#11453]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4213])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#5354]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
    - shard-dg1:          NOTRUN -> [SKIP][102] +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-mtlp:         [PASS][103] -> [FAIL][104] ([i915#2346])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#9067])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#4103]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#1257])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_dp_aux_dev.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          ([PASS][108], [PASS][109]) -> [FAIL][110] ([i915#4767])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk5/igt@kms_fbcon_fbt@fbc-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#1839])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_feature_discovery@display-2x.html
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#1839])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#1839])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#9337])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#3637] / [i915#3966])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-glk:          [PASS][116] -> [INCOMPLETE][117] ([i915#2295])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@blocking-absolute-wf_vblank:
    - shard-dg2:          [PASS][118] -> [SKIP][119] ([i915#5354]) +8 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_flip@blocking-absolute-wf_vblank.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_flip@blocking-absolute-wf_vblank.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-dg1:          [PASS][120] -> [FAIL][121] ([i915#2122])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-19/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-mtlp:         [PASS][122] -> [FAIL][123] ([i915#2122]) +1 other test fail
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:
    - shard-dg1:          NOTRUN -> [FAIL][124] ([i915#2122])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-19/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1:
    - shard-rkl:          [PASS][125] -> [FAIL][126] ([i915#2122])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-7/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-vga1:
    - shard-snb:          [PASS][127] -> [FAIL][128] ([i915#2122]) +4 other tests fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
    - shard-dg2:          [PASS][129] -> [SKIP][130] ([i915#3555]) +5 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#2672] / [i915#3555] / [i915#8813])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#2672] / [i915#3555])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#2587] / [i915#2672] / [i915#3555])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#2587] / [i915#2672]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2672] / [i915#3555]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#2672]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#2672] / [i915#3555])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#2672]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg2:          [PASS][139] -> [FAIL][140] ([i915#6880])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#8708]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][142] +25 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#1825]) +33 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-snb:          NOTRUN -> [SKIP][144] +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-snb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3023]) +21 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#8708])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#1825]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3555] / [i915#8228]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#3555] / [i915#8228])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [PASS][150] -> [SKIP][151] ([i915#3555] / [i915#8228]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-10/igt@kms_hdr@static-swap.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-11/igt@kms_hdr@static-swap.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#10656])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#10656])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#12339])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#4816])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-dg2:          [PASS][156] -> [SKIP][157] ([i915#8825])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_plane@pixel-format-source-clamping.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-dg2:          [PASS][158] -> [SKIP][159] ([i915#7294]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#12247]) +9 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-dg2:          [PASS][161] -> [SKIP][162] ([i915#8152] / [i915#9423])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][163] -> [SKIP][164] ([i915#8152]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#12247]) +8 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#3555]) +6 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#12247] / [i915#6953])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-dg2:          [PASS][168] -> [SKIP][169] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg2:          [PASS][170] -> [SKIP][171] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:
    - shard-dg2:          [PASS][172] -> [SKIP][173] ([i915#12247]) +11 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][174] -> [SKIP][175] ([i915#12247] / [i915#8152]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-dg2:          [PASS][176] -> [SKIP][177] ([i915#6953] / [i915#8152] / [i915#9423])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#12247] / [i915#3555])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#12343])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [PASS][180] -> [SKIP][181] ([i915#9340])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][182] -> [SKIP][183] ([i915#9519]) +2 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#9519]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#9519])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#6524]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          [PASS][187] -> [SKIP][188] ([i915#11521])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_properties@plane-properties-atomic.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#11520]) +3 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][190] ([i915#11520])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#11520]) +7 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#12316])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#9683])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-dpms@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#9688]) +6 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_psr@fbc-psr-dpms@edp-1.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#1072] / [i915#9732]) +22 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#1072] / [i915#9732]) +2 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9732]) +6 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#5289])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_vrr@flip-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#3555] / [i915#8808])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@lobf:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#11920])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#9906]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][202] +7 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#2434])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@perf@mi-rpc.html

  * igt@perf@polling:
    - shard-glk:          ([PASS][204], [PASS][205]) -> [FAIL][206] ([i915#10538]) +1 other test fail
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk5/igt@perf@polling.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk1/igt@perf@polling.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk3/igt@perf@polling.html

  * igt@perf@polling@0-rcs0:
    - shard-mtlp:         [PASS][207] -> [FAIL][208] ([i915#10538]) +1 other test fail
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-8/igt@perf@polling@0-rcs0.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-1/igt@perf@polling@0-rcs0.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#8850])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@enable-race:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][210] ([i915#2295] / [i915#9853])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-4/igt@perf_pmu@enable-race.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#8516])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#3708])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][213] ([i915#9781])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@syncobj_timeline@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [FAIL][214] ([i915#12027]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][216] ([i915#5784]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-18/igt@gem_eio@reset-stress.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [DMESG-WARN][218] -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-8/igt@gem_exec_balancer@nop.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][220] ([i915#2842]) -> [PASS][221] +1 other test pass
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][222] ([i915#2842]) -> [PASS][223] +1 other test pass
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          ([ABORT][224], [ABORT][225]) ([i915#9820]) -> [PASS][226]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          [FAIL][227] ([i915#3591]) -> [PASS][228] +1 other test pass
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          ([FAIL][229], [PASS][230]) ([i915#12308]) -> [PASS][231]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@i915_pm_rps@engine-order.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk1/igt@i915_pm_rps@engine-order.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk3/igt@i915_pm_rps@engine-order.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-glk:          ([PASS][232], [FAIL][233]) ([i915#10991]) -> [PASS][234] +1 other test pass
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk4/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic@plane-primary-legacy:
    - shard-dg2:          [SKIP][235] ([i915#9197]) -> [PASS][236] +33 other tests pass
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_atomic@plane-primary-legacy.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_atomic@plane-primary-legacy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [FAIL][237] ([i915#11808]) -> [PASS][238] +1 other test pass
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_color@ctm-0-75:
    - shard-dg1:          [DMESG-WARN][239] ([i915#4423]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-16/igt@kms_color@ctm-0-75.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-15/igt@kms_color@ctm-0-75.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][241], [FAIL][242]) ([i915#2122]) -> [PASS][243] +3 other tests pass
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][244], [PASS][245]) ([i915#2122]) -> [PASS][246] +1 other test pass
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-dg2:          [FAIL][247] ([i915#2122]) -> [PASS][248] +3 other tests pass
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-3/igt@kms_flip@plain-flip-fb-recreate.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-3/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1:
    - shard-snb:          [FAIL][249] ([i915#2122]) -> [PASS][250] +1 other test pass
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-snb6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-snb2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          [SKIP][251] ([i915#3555]) -> [PASS][252] +3 other tests pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][253] ([i915#5354]) -> [PASS][254] +12 other tests pass
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_plane@plane-position-covered:
    - shard-dg2:          [SKIP][255] ([i915#8825]) -> [PASS][256] +1 other test pass
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane@plane-position-covered.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-dg2:          [SKIP][257] ([i915#7294]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [SKIP][259] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-dg2:          [SKIP][261] ([i915#8152] / [i915#9423]) -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][263] ([i915#8152]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [SKIP][265] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          [SKIP][267] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [SKIP][269] ([i915#12247]) -> [PASS][270] +11 other tests pass
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][271] ([i915#12247] / [i915#8152]) -> [PASS][272] +2 other tests pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-dg2:          [FAIL][273] ([i915#7330]) -> [PASS][274]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [SKIP][275] ([i915#9519]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_pm_rpm@dpms-non-lpsp.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [SKIP][277] ([i915#11521]) -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-mtlp:         [FAIL][279] -> [PASS][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-mtlp:         [FAIL][281] ([i915#12031]) -> [FAIL][282] ([i915#12027])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-4/igt@gem_ctx_engines@invalid-engines.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          ([PASS][283], [FAIL][284]) ([i915#2846]) -> [FAIL][285] ([i915#2846])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          ([FAIL][286], [PASS][287]) ([i915#2842]) -> [FAIL][288] ([i915#2842]) +1 other test fail
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk6/igt@gem_exec_fair@basic-pace-solo.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk1/igt@gem_exec_fair@basic-pace-solo.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk1/igt@gem_exec_fair@basic-pace-solo.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][289] ([i915#10131] / [i915#9820]) -> [ABORT][290] ([i915#10131] / [i915#10887] / [i915#9697])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          [SKIP][291] ([i915#9197]) -> [SKIP][292] ([i915#6228])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-glk:          ([PASS][293], [FAIL][294]) ([i915#12238]) -> [FAIL][295] ([i915#12238])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
    - shard-glk:          ([PASS][296], [FAIL][297]) ([i915#11859]) -> [FAIL][298] ([i915#11859])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-dg2:          [SKIP][299] ([i915#9197]) -> [SKIP][300] +3 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_big_fb@linear-32bpp-rotate-270.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][301] -> [SKIP][302] ([i915#9197]) +4 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-dg2:          [SKIP][303] ([i915#5190] / [i915#9197]) -> [SKIP][304] ([i915#4538] / [i915#5190]) +6 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][305] ([i915#5190]) -> [SKIP][306] ([i915#5190] / [i915#9197])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          [SKIP][307] ([i915#4538] / [i915#5190]) -> [SKIP][308] ([i915#5190] / [i915#9197]) +7 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][309] ([i915#9197]) -> [SKIP][310] ([i915#10307] / [i915#6095]) +7 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs:
    - shard-dg2:          [SKIP][311] ([i915#10307] / [i915#6095]) -> [SKIP][312] ([i915#9197]) +5 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][313] ([i915#9197]) -> [SKIP][314] ([i915#12313])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg2:          [SKIP][315] ([i915#9197]) -> [SKIP][316] ([i915#4087])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_cdclk@plane-scaling.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg1:          [SKIP][317] ([i915#7828]) -> [SKIP][318] ([i915#4423] / [i915#7828])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-16/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          [SKIP][319] ([i915#9424]) -> [SKIP][320] ([i915#9197])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_content_protection@content-type-change.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          [SKIP][321] ([i915#9197]) -> [SKIP][322] ([i915#3299])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][323] ([i915#9424]) -> [TIMEOUT][324] ([i915#7173])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][325] ([i915#9197]) -> [SKIP][326] ([i915#9424])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_content_protection@mei-interface.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [SKIP][327] ([i915#7118]) -> [SKIP][328] ([i915#9197])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_content_protection@srm.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [FAIL][329] ([i915#1339] / [i915#7173]) -> [SKIP][330] ([i915#7118] / [i915#9424])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-10/igt@kms_content_protection@uevent.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-4/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          [SKIP][331] ([i915#11453]) -> [SKIP][332] ([i915#9197]) +3 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x512.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-dg2:          [SKIP][333] ([i915#3555]) -> [SKIP][334] ([i915#9197])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_cursor_crc@cursor-random-max-size.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          [SKIP][335] ([i915#9197]) -> [SKIP][336] ([i915#11453])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          [SKIP][337] ([i915#5354]) -> [SKIP][338] ([i915#9197]) +6 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][339] ([i915#9197]) -> [SKIP][340] ([i915#5354]) +1 other test skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([FAIL][341], [PASS][342]) ([i915#2346]) -> [FAIL][343] ([i915#2346])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          [SKIP][344] ([i915#9197]) -> [SKIP][345] ([i915#4103] / [i915#4213])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][346] ([i915#9833]) -> [SKIP][347] ([i915#9197])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          [SKIP][348] ([i915#3840]) -> [SKIP][349] ([i915#9197])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          [SKIP][350] ([i915#4881]) -> [SKIP][351] ([i915#9197])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_fence_pin_leak.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_fence_pin_leak.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          ([PASS][352], [INCOMPLETE][353]) ([i915#4839]) -> [INCOMPLETE][354] ([i915#4839])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:
    - shard-glk:          ([INCOMPLETE][355], [PASS][356]) ([i915#9878]) -> [INCOMPLETE][357] ([i915#9878])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-dg2:          [SKIP][358] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][359] ([i915#3555] / [i915#5190])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][360] ([i915#3555]) -> [SKIP][361] ([i915#2672] / [i915#3555]) +1 other test skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][362] ([i915#3555] / [i915#5190]) -> [SKIP][363] ([i915#2672] / [i915#3555] / [i915#5190])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][364] ([i915#5354]) -> [SKIP][365] ([i915#8708]) +10 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][366] ([i915#10433] / [i915#3458]) -> [SKIP][367] ([i915#5354])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][368] ([i915#5354]) -> [SKIP][369] ([i915#3458]) +12 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-dg2:          [SKIP][370] ([i915#3458]) -> [SKIP][371] ([i915#10433] / [i915#3458])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][372] ([i915#3458]) -> [SKIP][373] ([i915#5354]) +12 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          [SKIP][374] ([i915#8708]) -> [SKIP][375] ([i915#5354]) +6 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [SKIP][376] ([i915#9197]) -> [SKIP][377] ([i915#3555] / [i915#8228])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_hdr@bpc-switch.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [SKIP][378] ([i915#3555] / [i915#8228]) -> [SKIP][379] ([i915#9197])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][380] ([i915#4070] / [i915#4816]) -> [SKIP][381] ([i915#4816])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          [SKIP][382] ([i915#5354] / [i915#8152] / [i915#9423]) -> [SKIP][383] ([i915#5354] / [i915#9423])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][384] ([i915#6953] / [i915#9423]) -> [SKIP][385] ([i915#6953] / [i915#8152] / [i915#9423])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][386] ([i915#12247] / [i915#8152]) -> [SKIP][387] ([i915#12247]) +1 other test skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
    - shard-dg2:          [SKIP][388] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][389] ([i915#12247] / [i915#9423]) +1 other test skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          [SKIP][390] ([i915#11131]) -> [SKIP][391] ([i915#9197]) +2 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-270.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][392] ([i915#5190] / [i915#9197]) -> [SKIP][393] ([i915#5190])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][394] ([i915#11131] / [i915#5190]) -> [SKIP][395] ([i915#5190] / [i915#9197])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          [SKIP][396] ([i915#5190] / [i915#9197]) -> [SKIP][397] ([i915#11131] / [i915#5190])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-dg2:          [SKIP][398] ([i915#9197]) -> [SKIP][399] ([i915#3555]) +1 other test skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_scaling_modes@scaling-mode-full-aspect.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          [SKIP][400] ([i915#8623]) -> [SKIP][401] ([i915#9197])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2:          [SKIP][402] ([i915#9906]) -> [SKIP][403] ([i915#9197])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-virtual.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf_pmu@enable-race:
    - shard-glk:          [INCOMPLETE][404] ([i915#9853]) -> [INCOMPLETE][405] ([i915#2295] / [i915#9853])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@perf_pmu@enable-race.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk5/igt@perf_pmu@enable-race.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10333]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10333
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
  [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
  [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12296
  [i915#12297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297
  [i915#12308]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12308
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
  [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
  [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7330
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/ke

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/index.html

--===============5262175427669277973==
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
<tr><td><b>Series:</b></td><td>drm/i915: gen2 stuff</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139728/">https://patchwork.freedesktop.org/series/139728/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15494_full -&gt; Patchwork_139728v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139728v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139728v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/index.html</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139728v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling@1-vcs1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-1/igt@perf@polling@1-vcs1.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15494_full and Patchwork_139728v1_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_panel_fitting:<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139728v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@gem_busy@close-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12297">i915#12297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk1/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@gem_ctx_engines@invalid-engines.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-in-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@gem_exec_big@single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713">i915#11713</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-17/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@gem_exec_reloc@basic-wc-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@gem_exec_schedule@pi-ringfull@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12296">i915#12296</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-1/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-17/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@gem_mmap_gtt@big-bo-tiledy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@i915_selftest@mock.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311">i915#9311</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-14/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-12/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_async_flips@test-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10333">i915#10333</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_atomic@plane-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_atomic_transition@plane-all-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-14/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-15/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-14/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-11/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +139 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-18/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +71 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-17/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-64x21.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk5/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk6/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_flip@blocking-absolute-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_flip@blocking-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-13/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-19/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-19/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-7/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@b-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-snb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-11/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_plane@pixel-format-source-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3558">i915#3558</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/ke">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_properties@plane-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-7/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-dpms@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_psr@fbc-psr-dpms@edp-1.html">SKIP</a> ([i915#9688]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / [i915#9732]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-10/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> ([i915#9732]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-3/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-7/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#9906]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk5/igt@perf@polling.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk1/igt@perf@polling.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk3/igt@perf@polling.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf@polling@0-rcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-8/igt@perf@polling@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-1/igt@perf@polling@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-5/igt@perf_pmu@cpu-hotplug.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850">i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@enable-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-4/igt@perf_pmu@enable-race.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295">i915#2295</a> / [i915#9853])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@syncobj_timeline@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-tglu-9/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-13/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-8/igt@gem_exec_balancer@nop.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-8/igt@gem_exec_balancer@nop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@i915_pm_rps@engine-order.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk1/igt@i915_pm_rps@engine-order.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12308">i915#12308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk3/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991">i915#10991</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk4/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_atomic@plane-primary-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_atomic@plane-primary-legacy.html">PASS</a> +33 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808">i915#11808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-16/igt@kms_color@ctm-0-75.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-15/igt@kms_color@ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-3/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-3/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-snb6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-snb2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane@plane-position-covered.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane@plane-position-covered.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7330">i915#7330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_properties@plane-properties-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031">i915#12031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk6/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk1/igt@gem_exec_fair@basic-pace-solo.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk1/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / [i915#9697])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238">i915#12238</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238">i915#12238</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087">i915#4087</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg1-16/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-6/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-10/igt@kms_content_protection@uevent.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-4/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9833]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881">i915#4881</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html">PASS</a>) ([i915#9878]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html">INCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-2/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-5/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> ([i915#9906]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@enable-race:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15494/shard-glk7/igt@perf_pmu@enable-race.html">INCOMPLETE</a> ([i915#9853]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139728v1/shard-glk5/igt@perf_pmu@enable-race.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295">i915#2295</a> / [i915#9853])</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============5262175427669277973==--
