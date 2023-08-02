Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B31776D538
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 19:28:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD04510E558;
	Wed,  2 Aug 2023 17:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D73610E558;
 Wed,  2 Aug 2023 17:28:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90F99A0BA8;
 Wed,  2 Aug 2023 17:28:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6257257885138469541=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ziqi Zhao" <astrajoan@yahoo.com>
Date: Wed, 02 Aug 2023 17:28:39 -0000
Message-ID: <169099731954.6325.1357551820834061386@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <00000000000034cf5d05fea52dd4@google.com>
In-Reply-To: <00000000000034cf5d05fea52dd4@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/modes=3A_Fix_division_by_zero_error?=
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

--===============6257257885138469541==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/modes: Fix division by zero error
URL   : https://patchwork.freedesktop.org/series/121879/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13460_full -> Patchwork_121879v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_121879v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_121879v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_121879v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@core_setmaster@master-drop-set-user:
    - shard-dg2:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@core_setmaster@master-drop-set-user.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@core_setmaster@master-drop-set-user.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg2:          [PASS][3] -> [WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_async_flips@test-cursor:
    - shard-dg2:          NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_async_flips@test-cursor.html

  
#### Warnings ####

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          [SKIP][6] ([i915#8516]) -> [SKIP][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@perf_pmu@rc6-all-gts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html

  
Known issues
------------

  Here are the changes found in Patchwork_121879v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8414]) +9 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#8414]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8414]) +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@fbdev@eof:
    - shard-dg2:          [PASS][11] -> [SKIP][12] ([i915#2582]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@fbdev@eof.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@fbdev@eof.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][13] -> [SKIP][14] ([i915#1849] / [i915#2582])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@fbdev@info.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@fbdev@info.html

  * igt@gem_caching@read-writes:
    - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#4873])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_caching@read-writes.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#5325])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#6268])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#8555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@processes:
    - shard-snb:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#1099]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb7/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#2575]) +91 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-mtlp:         [PASS][22] -> [ABORT][23] ([i915#8503])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@in-flight-suspend:
    - shard-snb:          NOTRUN -> [DMESG-FAIL][24] ([fdo#103375]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][25] ([i915#8898])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#4812]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#2846])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][29] -> [FAIL][30] ([i915#2842])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#7697])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@no-bsd:
    - shard-dg2:          [PASS][32] -> [SKIP][33] ([fdo#109283] / [i915#2575])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_params@no-bsd.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_params@no-bsd.html

  * igt@gem_exec_reloc@basic-range-active:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3281]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-16/igt@gem_exec_reloc@basic-range-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#3281]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@gem_exec_reloc@basic-range-active.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4860]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-glk:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#4613])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4613])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_lmem_swapping@basic.html
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#4613])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#5775]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][41] -> [TIMEOUT][42] ([i915#5493])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@gem_mmap@bad-object.html

  * igt@gem_mmap@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#4083]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4077]) +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-snb:          [PASS][46] -> [DMESG-FAIL][47] ([i915#8295])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][48] ([i915#2658])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][49] ([i915#2658])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pwrite@basic-random:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#3282]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4270])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@new-obj:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#3282])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#8428]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4077]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#3297] / [i915#4880])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-16/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@mmap-offset-banned@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#3297]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_userptr_blits@mmap-offset-banned@gtt.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([fdo#109289]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-snb:          NOTRUN -> [SKIP][58] ([fdo#109271]) +196 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#2856]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#2527])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([fdo#109289])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rpm@cursor:
    - shard-dg1:          [PASS][62] -> [FAIL][63] ([i915#7940])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-17/igt@i915_pm_rpm@cursor.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-14/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][64] -> [SKIP][65] ([i915#1397])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-10/igt@i915_pm_rpm@dpms-lpsp.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][66] -> [SKIP][67] ([i915#5174]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-rkl:          [PASS][68] -> [SKIP][69] ([i915#1397])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#1397])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@pm-caching:
    - shard-tglu:         [PASS][71] -> [FAIL][72] ([i915#7940])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-10/igt@i915_pm_rpm@pm-caching.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-2/igt@i915_pm_rpm@pm-caching.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-dg1:          [PASS][73] -> [DMESG-WARN][74] ([i915#4423])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-17/igt@i915_pm_rpm@system-suspend-devices.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-15/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#6621])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_sseu@full-enable:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#8437])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-snb:          NOTRUN -> [DMESG-WARN][77] ([i915#8841]) +6 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb5/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - shard-dg2:          [PASS][78] -> [SKIP][79] ([i915#2575] / [i915#5190])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4212])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#8502] / [i915#8709]) +11 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#8502]) +7 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc_ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#8502]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [DMESG-FAIL][84] ([i915#8561]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#1769])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([fdo#111614]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-mtlp:         [PASS][87] -> [FAIL][88] ([i915#3743])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> [FAIL][89] ([i915#3743]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3638])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [PASS][91] -> [FAIL][92] ([i915#3743])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([fdo#111615]) +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4538])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([fdo#111615])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-addfb.html
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#6187]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3886]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-4_tiled_mtl_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#5354])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_ccs@pipe-b-bad-aux-stride-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#3689] / [i915#5354] / [i915#6095]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#5354] / [i915#6095]) +8 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_ccs@pipe-c-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3689] / [i915#3886] / [i915#5354])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#3886] / [i915#6095]) +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#6095]) +12 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4087] / [i915#7213]) +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4087]) +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([fdo#111827])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#7828]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#7828]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#7828])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#6944])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@legacy@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][112] ([i915#7173])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@kms_content_protection@legacy@pipe-a-dp-1.html

  * igt@kms_content_protection@mei_interface:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#8063])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_content_protection@mei_interface.html

  * igt@kms_content_protection@uevent:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#7116])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#8814])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#3359])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#3555])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#3359])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3546])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-snb:          NOTRUN -> [SKIP][120] ([fdo#109271] / [fdo#111767]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#4213])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#8812])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#3637]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][124] -> [FAIL][125] ([i915#2122])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][126] ([i915#79])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a3.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1:
    - shard-tglu:         [PASS][127] -> [FAIL][128] ([i915#2122])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([fdo#109315]) +9 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([fdo#109315] / [i915#5190]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#2672]) +4 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#2672]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [PASS][133] -> [SKIP][134] ([fdo#109315]) +26 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-snb:          [PASS][135] -> [SKIP][136] ([fdo#109271])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#1825]) +12 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-dg2:          [PASS][138] -> [FAIL][139] ([i915#6880])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([fdo#111825]) +8 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#8708])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271]) +12 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#3458]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#8708]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#8708])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3458])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8228])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#8228])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@kms_hdr@static-toggle.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][149] ([i915#8292])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#5176]) +11 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#5176]) +19 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#5176]) +5 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#5235]) +15 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#5235]) +5 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#5235]) +3 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#5235]) +19 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][157] ([fdo#109271]) +55 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#658])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([fdo#111068] / [i915#658])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#4348]) +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_psr2_su@page_flip-nv12.html
    - shard-apl:          NOTRUN -> [SKIP][161] ([fdo#109271] / [i915#658])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@sprite_blt:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#1072])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_psr@sprite_blt.html

  * igt@kms_selftest@drm_format:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#8661])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_selftest@drm_format.html

  * igt@kms_selftest@drm_format_helper:
    - shard-glk:          NOTRUN -> [SKIP][164] ([fdo#109271] / [i915#8661])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_selftest@drm_format_helper.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-dg2:          [PASS][165] -> [FAIL][166] ([fdo#103375])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-3/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][167] ([fdo#109271] / [i915#2437])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([fdo#109289] / [i915#2433])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf@whitelisted-registers-userspace-config:
    - shard-dg2:          [PASS][169] -> [SKIP][170] ([i915#5608]) +2 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@perf@whitelisted-registers-userspace-config.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@perf@whitelisted-registers-userspace-config.html

  * igt@perf_pmu@busy-double-start@ccs3:
    - shard-dg2:          NOTRUN -> [FAIL][171] ([i915#4349]) +6 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@perf_pmu@busy-double-start@ccs3.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([fdo#112283])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@most-busy-idle-check-all:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#5608]) +8 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@perf_pmu@most-busy-idle-check-all.html

  * igt@prime_udl:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([fdo#109291])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@prime_udl.html

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
    - shard-dg2:          [PASS][175] -> [SKIP][176] ([i915#2575]) +198 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html

  * igt@v3d/v3d_get_bo_offset@create-get-offsets:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#2575]) +3 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@v3d/v3d_get_bo_offset@create-get-offsets.html

  * igt@v3d/v3d_get_param@get-bad-param:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#2575]) +4 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@v3d/v3d_get_param@get-bad-param.html

  * igt@vc4/vc4_label_bo@set-bad-name:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#7711]) +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@vc4/vc4_label_bo@set-bad-name.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#7711])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#7711])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@api_intel_allocator@default-alignment:
    - shard-dg2:          [SKIP][182] ([fdo#109315]) -> [PASS][183] +22 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@api_intel_allocator@default-alignment.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@api_intel_allocator@default-alignment.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [SKIP][184] ([i915#2582]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@fbdev@nullptr.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@fbdev@nullptr.html

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-dg2:          [FAIL][186] ([fdo#103375]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@vcs1.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [ABORT][188] ([i915#4391] / [i915#7975] / [i915#8213]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-14/igt@gem_eio@hibernate.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-mtlp:         [ABORT][190] ([i915#7941]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-6/igt@gem_eio@in-flight-contexts-10ms.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][192] ([i915#5784]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-15/igt@gem_eio@reset-stress.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-16/igt@gem_eio@reset-stress.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [TIMEOUT][194] ([i915#3778] / [i915#7016] / [i915#7921]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-3/igt@gem_exec_endless@dispatch@bcs0.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [FAIL][196] ([i915#2842]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][198] ([i915#2842]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-dg2:          [SKIP][200] ([fdo#109283] / [i915#2575]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_params@no-blt.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_exec_params@no-blt.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-dg2:          [SKIP][202] ([i915#5775]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_lmem_evict@dontneed-evict-race.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][204] ([i915#3591]) -> [PASS][205] +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][206] ([i915#1397]) -> [PASS][207] +3 similar issues
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-dg1:          [SKIP][208] ([i915#1397]) -> [PASS][209] +1 similar issue
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-17/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-rkl:          [FAIL][210] ([i915#7940]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-dg2:          [SKIP][212] ([i915#5174]) -> [PASS][213] +3 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@i915_pm_rpm@sysfs-read.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@i915_pm_rpm@sysfs-read.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-tglu:         [FAIL][214] ([i915#7940]) -> [PASS][215] +2 similar issues
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-2/igt@i915_pm_rpm@system-suspend-devices.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-10/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][216] ([i915#5138]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         [FAIL][218] ([i915#3743]) -> [PASS][219] +1 similar issue
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-edp-1:
    - shard-mtlp:         [DMESG-WARN][220] ([i915#1982]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-edp-1.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-edp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][222] ([i915#2346]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [FAIL][224] ([i915#2346]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [FAIL][226] ([i915#79]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_plane@pixel-format@pipe-b-planes:
    - shard-mtlp:         [FAIL][228] ([i915#1623]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-2/igt@kms_plane@pixel-format@pipe-b-planes.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_plane@pixel-format@pipe-b-planes.html

  * igt@perf@create-destroy-userspace-config:
    - shard-dg2:          [SKIP][230] ([i915#5608]) -> [PASS][231] +4 similar issues
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@perf@create-destroy-userspace-config.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@perf@create-destroy-userspace-config.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][232] ([i915#7484]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - shard-dg2:          [SKIP][234] ([i915#2575]) -> [PASS][235] +165 similar issues
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          [SKIP][236] ([i915#2575]) -> [SKIP][237] ([i915#8411])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@render-ccs:
    - shard-dg2:          [FAIL][238] ([i915#6122]) -> [SKIP][239] ([i915#2575])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@api_intel_bb@render-ccs.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@api_intel_bb@render-ccs.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          [SKIP][240] ([i915#7701]) -> [FAIL][241] ([i915#6121])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@device_reset@cold-reset-bound.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          [FAIL][242] -> [SKIP][243] ([i915#7701])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - shard-dg2:          [SKIP][244] ([i915#5608]) -> [SKIP][245] ([i915#8414]) +1 similar issue
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@drm_fdinfo@all-busy-idle-check-all.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@drm_fdinfo@all-busy-idle-check-all.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg2:          [SKIP][246] ([i915#8414]) -> [SKIP][247] ([i915#5608]) +1 similar issue
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@drm_fdinfo@virtual-busy-hang.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@feature_discovery@display-4x:
    - shard-dg2:          [SKIP][248] ([i915#1839]) -> [SKIP][249] ([i915#2575])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@feature_discovery@display-4x.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@feature_discovery@display-4x.html

  * igt@feature_discovery@psr1:
    - shard-dg2:          [SKIP][250] ([i915#658]) -> [SKIP][251] ([i915#2575])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@feature_discovery@psr1.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@feature_discovery@psr1.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          [SKIP][252] ([i915#2575]) -> [SKIP][253] ([i915#3936])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_busy@semaphore.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_busy@semaphore.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          [SKIP][254] ([i915#2575]) -> [SKIP][255] ([i915#7697])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          [SKIP][256] ([i915#2575]) -> [SKIP][257] ([i915#8555])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          [SKIP][258] ([i915#8555]) -> [SKIP][259] ([i915#2575])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-many.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          [SKIP][260] ([i915#280]) -> [SKIP][261] ([i915#2575])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_ctx_sseu@engines.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          [SKIP][262] ([i915#2575]) -> [SKIP][263] ([i915#280])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          [SKIP][264] ([i915#2575]) -> [ABORT][265] ([i915#7975] / [i915#8213])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_eio@hibernate.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-10/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          [SKIP][266] ([i915#4771]) -> [SKIP][267] ([i915#2575])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_balancer@bonded-dual.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          [SKIP][268] ([i915#2575]) -> [SKIP][269] ([i915#4771])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@hog:
    - shard-dg2:          [SKIP][270] ([i915#2575]) -> [SKIP][271] ([i915#4812])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_balancer@hog.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          [SKIP][272] ([i915#4036]) -> [SKIP][273] ([i915#2575])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_balancer@invalid-bonds.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-dg2:          [SKIP][274] ([i915#2575]) -> [SKIP][275] ([i915#3539] / [i915#4852]) +1 similar issue
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_fair@basic-none-vip.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          [SKIP][276] ([i915#3539]) -> [SKIP][277] ([i915#2575])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_fair@basic-pace.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglu:         [FAIL][278] ([i915#2876]) -> [FAIL][279] ([i915#2842])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-5/igt@gem_exec_fair@basic-pace@vcs1.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          [SKIP][280] ([i915#4812]) -> [SKIP][281] ([i915#2575])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_fence@submit3.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          [SKIP][282] ([i915#3539] / [i915#4852]) -> [SKIP][283] ([i915#2575]) +5 similar issues
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_flush@basic-uc-pro-default.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          [SKIP][284] ([fdo#109283] / [i915#2575]) -> [SKIP][285] ([fdo#109283] / [i915#5107])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          [SKIP][286] ([fdo#112283]) -> [SKIP][287] ([i915#2575])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_params@secure-non-master.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg2:          [SKIP][288] ([i915#2575]) -> [SKIP][289] ([i915#3281]) +5 similar issues
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-read.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          [SKIP][290] ([i915#3281]) -> [SKIP][291] ([i915#2575]) +10 similar issues
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_exec_reloc@basic-write-read-active.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          [SKIP][292] ([i915#4537] / [i915#4812]) -> [SKIP][293] ([i915#2575])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-mtlp:         [TIMEOUT][294] ([i915#7392] / [i915#8628]) -> [ABORT][295] ([i915#7392] / [i915#8131])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-mtlp:         [ABORT][296] ([i915#7392] / [i915#8131]) -> [TIMEOUT][297] ([i915#7392])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          [SKIP][298] ([i915#4860]) -> [SKIP][299] ([i915#2575])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_fence_thrash@bo-copy.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg2:          [SKIP][300] ([i915#2575]) -> [SKIP][301] ([i915#4860])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_fenced_exec_thrash@too-many-fences.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          [SKIP][302] ([i915#4077]) -> [SKIP][303] ([i915#2575]) +12 similar issues
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_mmap_gtt@cpuset-big-copy.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          [SKIP][304] ([i915#2575]) -> [SKIP][305] ([i915#4083]) +5 similar issues
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_mmap_wc@close.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          [SKIP][306] ([i915#4083]) -> [SKIP][307] ([i915#2575]) +4 similar issues
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          [SKIP][308] ([i915#3282]) -> [SKIP][309] ([i915#2575]) +6 similar issues
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_partial_pwrite_pread@reads-uncached.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@snoop:
    - shard-dg2:          [SKIP][310] ([i915#2575]) -> [SKIP][311] ([i915#3282]) +4 similar issues
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_pread@snoop.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_pread@snoop.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          [SKIP][312] ([i915#2575]) -> [SKIP][313] ([i915#4270]) +2 similar issues
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_pxp@display-protected-crc.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          [SKIP][314] ([i915#4270]) -> [SKIP][315] ([i915#2575]) +3 similar issues
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_pxp@regular-baseline-src-copy-readible.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:
    - shard-dg2:          [SKIP][316] ([i915#2575] / [i915#5190]) -> [SKIP][317] ([i915#5190]) +4 similar issues
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          [SKIP][318] ([i915#5190]) -> [SKIP][319] ([i915#2575] / [i915#5190]) +10 similar issues
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          [SKIP][320] ([i915#2575]) -> [SKIP][321] ([i915#4079]) +1 similar issue
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg2:          [SKIP][322] ([i915#4079]) -> [SKIP][323] ([i915#2575])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_set_tiling_vs_pwrite.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          [SKIP][324] ([i915#4885]) -> [SKIP][325] ([i915#2575])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_softpin@evict-snoop.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_blits@basic:
    - shard-dg2:          [SKIP][326] ([i915#2575]) -> [SKIP][327] ([i915#4077]) +8 similar issues
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_tiled_blits@basic.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_tiled_blits@basic.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          [SKIP][328] ([i915#3297]) -> [SKIP][329] ([i915#2575]) +1 similar issue
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_userptr_blits@create-destroy-unsync.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          [SKIP][330] ([i915#2575]) -> [SKIP][331] ([i915#3297] / [i915#4880])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          [SKIP][332] ([i915#2575]) -> [SKIP][333] ([i915#3297]) +4 similar issues
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_userptr_blits@unsync-overlap.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen3_render_mixed_blits:
    - shard-dg2:          [SKIP][334] ([i915#2575]) -> [SKIP][335] ([fdo#109289]) +3 similar issues
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gen3_render_mixed_blits.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-10/igt@gen3_render_mixed_blits.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-dg2:          [SKIP][336] ([i915#2856]) -> [SKIP][337] ([i915#2575])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gen9_exec_parse@basic-rejected.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          [SKIP][338] ([i915#2575]) -> [SKIP][339] ([i915#2856]) +3 similar issues
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gen9_exec_parse@valid-registers.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_fb_tiling:
    - shard-dg2:          [SKIP][340] ([i915#4881]) -> [SKIP][341] ([i915#2575])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_fb_tiling.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_fb_tiling.html

  * igt@i915_pm_backlight@bad-brightness:
    - shard-dg2:          [SKIP][342] ([i915#2575]) -> [SKIP][343] ([i915#5354] / [i915#7561])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@i915_pm_backlight@bad-brightness.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_backlight@basic-brightness:
    - shard-dg2:          [SKIP][344] ([i915#5354] / [i915#7561]) -> [SKIP][345] ([i915#2575]) +1 similar issue
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_pm_backlight@basic-brightness.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-dg2:          [SKIP][346] ([i915#2575]) -> [SKIP][347] ([i915#658]) +1 similar issue
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@i915_pm_dc@dc5-psr.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-dg2:          [SKIP][348] ([i915#1902]) -> [SKIP][349] ([i915#2575])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@i915_pm_lpsp@screens-disabled.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - shard-dg2:          [SKIP][350] ([i915#4077]) -> [SKIP][351] ([i915#5174]) +1 similar issue
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@i915_pm_rpm@gem-evict-pwrite.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_rpm@gem-evict-pwrite.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          [SKIP][352] ([fdo#109506]) -> [SKIP][353] ([i915#5174])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@i2c:
    - shard-dg1:          [DMESG-WARN][354] ([i915#4391] / [i915#4423]) -> [DMESG-WARN][355] ([i915#4391])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-15/igt@i915_pm_rpm@i2c.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-19/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-dg2:          [SKIP][356] ([i915#5174]) -> [SKIP][357] ([fdo#109506])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@i915_pm_rpm@pc8-residency.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@i915_pm_rpm@pc8-residency.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          [SKIP][358] ([i915#6621]) -> [SKIP][359] ([i915#2575])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@i915_pm_rps@basic-api.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg2:          [SKIP][360] ([fdo#109303]) -> [SKIP][361] ([i915#2575])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_query@query-topology-known-pci-ids.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-dg2:          [SKIP][362] ([i915#4212]) -> [SKIP][363] ([i915#2575]) +2 similar issues
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][364] ([fdo#109315]) -> [SKIP][365] ([fdo#111614]) +4 similar issues
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          [SKIP][366] ([fdo#111614]) -> [SKIP][367] ([fdo#109315]) +2 similar issues
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          [SKIP][368] ([i915#5190]) -> [SKIP][369] ([fdo#109315] / [i915#5190]) +8 similar issues
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][370] ([fdo#109315] / [i915#5190]) -> [SKIP][371] ([i915#5190]) +4 similar issues
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg2:          [SKIP][372] ([i915#4538] / [i915#5190]) -> [SKIP][373] ([fdo#109315] / [i915#5190]) +4 similar issues
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][374] ([fdo#109315] / [i915#5190]) -> [SKIP][375] ([i915#4538] / [i915#5190]) +4 similar issues
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          [SKIP][376] ([i915#2705]) -> [SKIP][377] ([fdo#109315])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_big_joiner@basic.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg2:          [SKIP][378] ([fdo#109315]) -> [SKIP][379] ([i915#2705])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs:
    - shard-dg2:          [SKIP][380] ([i915#3689] / [i915#5354]) -> [SKIP][381] ([i915#2575]) +25 similar issues
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-dg2:          [SKIP][382] ([i915#2575]) -> [SKIP][383] ([i915#3689] / [i915#3886] / [i915#5354]) +5 similar issues
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-dg2:          [SKIP][384] ([i915#2575]) -> [SKIP][385] ([i915#3689] / [i915#5354]) +26 similar issues
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          [SKIP][386] ([i915#3689] / [i915#3886] / [i915#5354]) -> [SKIP][387] ([i915#2575]) +10 similar issues
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:
    - shard-dg2:          [SKIP][388] ([i915#5354]) -> [SKIP][389] ([i915#2575]) +18 similar issues
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_mtl_rc_ccs:
    - shard-dg2:          [SKIP][390] ([i915#2575]) -> [SKIP][391] ([i915#5354]) +16 similar issues
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_mtl_rc_ccs.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-10/igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_mtl_rc_ccs.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-dg2:          [SKIP][392] ([fdo#111827]) -> [SKIP][393] ([i915#2575]) +1 similar issue
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_chamelium_color@ctm-blue-to-red.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          [SKIP][394] ([i915#2575]) -> [SKIP][395] ([i915#7828]) +8 similar issues
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          [SKIP][396] ([i915#7828]) -> [SKIP][397] ([i915#2575]) +11 similar issues
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][398] ([i915#2575]) -> [SKIP][399] ([i915#7118])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][400] ([i915#2575]) -> [SKIP][401] ([i915#3299])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][402] ([i915#7118]) -> [SKIP][403] ([i915#2575]) +1 similar issue
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_content_protection@type1.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          [SKIP][404] ([i915#3359]) -> [SKIP][405] ([i915#2575]) +2 similar issues
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][406] ([i915#2575]) -> [SKIP][407] ([i915#3359])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          [SKIP][408] ([i915#3555]) -> [SKIP][409] ([i915#2575]) +5 similar issues
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          [SKIP][410] ([i915#4103] / [i915#4213]) -> [SKIP][411] ([i915#2575])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][412] ([i915#2575]) -> [SKIP][413] ([fdo#109274] / [i915#5354]) +2 similar issues
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          [SKIP][414] ([fdo#109274] / [fdo#111767] / [i915#5354]) -> [SKIP][415] ([i915#2575])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][416] ([fdo#109274] / [i915#5354]) -> [SKIP][417] ([i915#2575]) +9 similar issues
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [DMESG-FAIL][418] ([i915#2017] / [i915#5954]) -> [FAIL][419] ([i915#2346])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][420] ([i915#8812]) -> [SKIP][421] ([fdo#109315])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-wc.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          [SKIP][422] ([i915#3555] / [i915#3840]) -> [SKIP][423] ([fdo#109315])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_dsc@dsc-basic.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          [SKIP][424] ([fdo#109315]) -> [SKIP][425] ([i915#3555] / [i915#3840])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_dsc@dsc-with-bpc-formats.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          [SKIP][426] ([i915#2575]) -> [SKIP][427] ([i915#3469])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_fbcon_fbt@psr.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][428] ([i915#3955]) -> [SKIP][429] ([fdo#110189] / [i915#3955])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-dg2:          [SKIP][430] ([i915#2575]) -> [SKIP][431] ([fdo#109274]) +6 similar issues
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          [SKIP][432] ([fdo#109274]) -> [SKIP][433] ([i915#2575]) +6 similar issues
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          [SKIP][434] ([i915#8381]) -> [SKIP][435] ([i915#2575])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_flip@flip-vs-fences.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_flip@flip-vs-fences.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          [SKIP][436] ([fdo#109285]) -> [SKIP][437] ([i915#2575])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-dg2:          [SKIP][438] ([fdo#109315]) -> [FAIL][439] ([i915#6880])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][440] ([i915#8708]) -> [SKIP][441] ([fdo#109315]) +14 similar issues
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][442] ([fdo#109315]) -> [SKIP][443] ([i915#8708]) +23 similar issues
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [SKIP][444] ([fdo#109315]) -> [SKIP][445] ([i915#5354]) +24 similar issues
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][446] ([i915#3458]) -> [SKIP][447] ([fdo#109315]) +25 similar issues
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          [SKIP][448] ([i915#5354]) -> [SKIP][449] ([fdo#109315]) +32 similar issues
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][450] ([fdo#109315]) -> [SKIP][451] ([i915#3458]) +17 similar issues
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][452] ([i915#3555] / [i915#8228]) -> [SKIP][453] ([i915#2575]) +2 similar issues
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          [SKIP][454] ([i915#4816]) -> [SKIP][455] ([i915#2575])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-rkl:          [SKIP][456] ([i915#4816]) -> [SKIP][457] ([i915#4070] / [i915#4816])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-dg2:          [SKIP][458] ([fdo#109289]) -> [SKIP][459] ([i915#2575]) +1 similar issue
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          [SKIP][460] ([i915#2575]) -> [SKIP][461] ([i915#8806])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          [SKIP][462] ([i915#658]) -> [SKIP][463] ([fdo#109315]) +1 similar issue
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          [SKIP][464] ([fdo#109315]) -> [SKIP][465] ([i915#658]) +1 similar issue
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@primary_page_flip:
    - shard-dg2:          [SKIP][466] ([i915#1072]) -> [SKIP][467] ([fdo#109315]) +8 similar issues
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_psr@primary_page_flip.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_psr@primary_page_flip.html
    - shard-dg1:          [SKIP][468] ([i915#1072]) -> [SKIP][469] ([i915#1072] / [i915#4078])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-19/igt@kms_psr@primary_page_flip.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-12/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-dg2:          [SKIP][470] ([fdo#109315]) -> [SKIP][471] ([i915#1072]) +8 similar issues
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          [SKIP][472] ([i915#5461] / [i915#658]) -> [SKIP][473] ([fdo#109315]) +1 similar issue
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@ba

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/index.html

--===============6257257885138469541==
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
<tr><td><b>Series:</b></td><td>drm/modes: Fix division by zero error</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/121879/">https://patchwork.freedesktop.org/series/121879/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13460_full -&gt; Patchwork_121879v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_121879v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_121879v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_121879v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-user:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@core_setmaster@master-drop-set-user.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@core_setmaster@master-drop-set-user.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_async_flips@test-cursor.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@perf_pmu@rc6-all-gts:<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@perf_pmu@rc6-all-gts.html">SKIP</a> ([i915#8516]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_121879v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@drm_fdinfo@busy-check-all@vecs1.html">SKIP</a> ([i915#8414]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html">SKIP</a> ([i915#8414]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@drm_fdinfo@busy-idle-check-all@vcs1.html">SKIP</a> ([i915#8414]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@fbdev@eof.html">SKIP</a> ([i915#2582]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@fbdev@info.html">SKIP</a> ([i915#1849] / [i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@read-writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_caching@read-writes.html">SKIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#5325])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> ([i915#6268])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb7/igt@gem_ctx_persistence@processes.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html">SKIP</a> ([i915#2575]) +91 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html">ABORT</a> ([i915#8503])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb7/igt@gem_eio@in-flight-suspend.html">DMESG-FAIL</a> ([fdo#103375]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#8898])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_exec_balancer@sliced.html">SKIP</a> ([i915#4812]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_exec_gttfill@multigpu-basic.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_params@no-bsd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_params@no-bsd.html">SKIP</a> ([fdo#109283] / [i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-16/igt@gem_exec_reloc@basic-range-active.html">SKIP</a> ([i915#3281]) +1 similar issue</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@gem_exec_reloc@basic-range-active.html">SKIP</a> ([i915#3281]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-x.html">SKIP</a> ([i915#4860]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#5775]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@gem_mmap@bad-object.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_mmap@bad-size.html">SKIP</a> ([i915#4083]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_mmap_gtt@fault-concurrent.html">SKIP</a> ([i915#4077]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html">DMESG-FAIL</a> ([i915#8295])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_pwrite@basic-random.html">SKIP</a> ([i915#3282]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_readwrite@new-obj.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_tiled_swapping@non-threaded.html">SKIP</a> ([i915#4077]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-16/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-banned@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_userptr_blits@mmap-offset-banned@gtt.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([fdo#109271]) +196 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-17/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-14/igt@i915_pm_rpm@cursor.html">FAIL</a> ([i915#7940])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-10/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#1397])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#5174]) +3 similar issues</p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#1397])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#1397])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-caching:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-10/igt@i915_pm_rpm@pm-caching.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-2/igt@i915_pm_rpm@pm-caching.html">FAIL</a> ([i915#7940])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-17/igt@i915_pm_rpm@system-suspend-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-15/igt@i915_pm_rpm@system-suspend-devices.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#8437])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb5/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#8841]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html">SKIP</a> ([i915#8502] / [i915#8709]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc_ccs.html">SKIP</a> ([i915#8502]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html">SKIP</a> ([i915#8502]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_async_flips@crc@pipe-d-edp-1.html">DMESG-FAIL</a> ([i915#8561]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_atomic_transition@plane-all-modeset-transition.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#111615]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([fdo#111615])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i915#6187]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_ccs@pipe-b-bad-aux-stride-4_tiled_mtl_mc_ccs.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> ([i915#3689] / [i915#5354] / [i915#6095]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_ccs@pipe-c-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#3689] / [i915#3886] / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3886] / [i915#6095]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> ([i915#6095]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_chamelium_color@ctm-red-to-blue.html">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> ([i915#7828]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> ([i915#7828]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@kms_content_protection@legacy@pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_content_protection@mei_interface.html">SKIP</a> ([i915#8063])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#3546])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109271] / [fdo#111767]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([i915#3637]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a3.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([fdo#109315]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([fdo#109315] / [i915#5190]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109315]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html">SKIP</a> ([fdo#111825]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#5176]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#5176]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#5176]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#5235]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#5235]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> ([i915#5235]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#5235]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html">SKIP</a> ([fdo#109271]) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#4348]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_psr@sprite_blt.html">SKIP</a> ([i915#1072])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@kms_selftest@drm_format.html">SKIP</a> ([i915#8661])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_selftest@drm_format_helper.html">SKIP</a> ([fdo#109271] / [i915#8661])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-3/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html">FAIL</a> ([fdo#103375])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk6/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> ([fdo#109289] / [i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf@whitelisted-registers-userspace-config:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@perf@whitelisted-registers-userspace-config.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@perf@whitelisted-registers-userspace-config.html">SKIP</a> ([i915#5608]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@perf_pmu@busy-double-start@ccs3.html">FAIL</a> ([i915#4349]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@perf_pmu@event-wait@rcs0.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@perf_pmu@most-busy-idle-check-all.html">SKIP</a> ([i915#5608]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@prime_udl.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">SKIP</a> ([i915#2575]) +198 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_bo_offset@create-get-offsets:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@v3d/v3d_get_bo_offset@create-get-offsets.html">SKIP</a> ([i915#2575]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@v3d/v3d_get_param@get-bad-param.html">SKIP</a> ([i915#2575]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-bad-name:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@vc4/vc4_label_bo@set-bad-name.html">SKIP</a> ([i915#7711]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html">SKIP</a> ([i915#7711])</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html">SKIP</a> ([i915#7711])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_allocator@default-alignment:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@api_intel_allocator@default-alignment.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@api_intel_allocator@default-alignment.html">PASS</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@vcs1.html">FAIL</a> ([fdo#103375]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_ctx_isolation@preservation-s3@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> ([i915#4391] / [i915#7975] / [i915#8213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-18/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-6/igt@gem_eio@in-flight-contexts-10ms.html">ABORT</a> ([i915#7941]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-15/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-16/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-3/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT</a> ([i915#3778] / [i915#7016] / [i915#7921]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-5/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283] / [i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_exec_params@no-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#5775]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_lmem_evict@dontneed-evict-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-17/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html">FAIL</a> ([i915#7940]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-7/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@i915_pm_rpm@sysfs-read.html">SKIP</a> ([i915#5174]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@i915_pm_rpm@sysfs-read.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-2/igt@i915_pm_rpm@system-suspend-devices.html">FAIL</a> ([i915#7940]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-10/igt@i915_pm_rpm@system-suspend-devices.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> ([i915#5138]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-edp-1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-b-planes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-2/igt@kms_plane@pixel-format@pipe-b-planes.html">FAIL</a> ([i915#1623]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-2/igt@kms_plane@pixel-format@pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@create-destroy-userspace-config:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@perf@create-destroy-userspace-config.html">SKIP</a> ([i915#5608]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@perf@create-destroy-userspace-config.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">PASS</a> +165 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@api_intel_bb@render-ccs.html">FAIL</a> ([i915#6122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@api_intel_bb@render-ccs.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#7701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@device_reset@cold-reset-bound.html">FAIL</a> ([i915#6121])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> ([i915#5608]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> ([i915#8414]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#5608]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@feature_discovery@psr1.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@feature_discovery@psr1.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_busy@semaphore.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-many.html">SKIP</a> ([i915#8555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-many.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_eio@hibernate.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-10/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_balancer@hog.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_exec_balancer@hog.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> ([i915#4036]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_fair@basic-none-vip.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_exec_fair@basic-none-vip.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_fair@basic-pace.html">SKIP</a> ([i915#3539]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-tglu-5/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2876]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-tglu-7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> ([i915#2575]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([fdo#109283] / [i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([fdo#109283] / [i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([fdo#112283]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> ([i915#3281]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#3281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#2575]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html">TIMEOUT</a> ([i915#7392] / [i915#8628]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html">ABORT</a> ([i915#7392] / [i915#8131])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-priority-all.html">ABORT</a> ([i915#7392] / [i915#8131]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html">TIMEOUT</a> ([i915#7392])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_fence_thrash@bo-copy.html">SKIP</a> ([i915#4860]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_fenced_exec_thrash@too-many-fences.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_fenced_exec_thrash@too-many-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> ([i915#2575]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_mmap_wc@close.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@gem_mmap_wc@close.html">SKIP</a> ([i915#4083]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a> ([i915#2575]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> ([i915#2575]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_pread@snoop.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_pread@snoop.html">SKIP</a> ([i915#3282]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#2575]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#2575] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#5190]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#4079]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#4885]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_tiled_blits@basic.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_tiled_blits@basic.html">SKIP</a> ([i915#4077]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#2575]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gen3_render_mixed_blits.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-10/igt@gen3_render_mixed_blits.html">SKIP</a> ([fdo#109289]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> ([i915#2856]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2856]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_fb_tiling.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> ([i915#5354] / [i915#7561])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#5354] / [i915#7561]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#2575]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@i915_pm_dc@dc5-psr.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@i915_pm_dc@dc5-psr.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#1902]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-evict-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@i915_pm_rpm@gem-evict-pwrite.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_rpm@gem-evict-pwrite.html">SKIP</a> ([i915#5174]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([fdo#109506]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([i915#5174])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-15/igt@i915_pm_rpm@i2c.html">DMESG-WARN</a> ([i915#4391] / [i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-19/igt@i915_pm_rpm@i2c.html">DMESG-WARN</a> ([i915#4391])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@i915_pm_rpm@pc8-residency.html">SKIP</a> ([i915#5174]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@i915_pm_rpm@pc8-residency.html">SKIP</a> ([fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> ([fdo#109303]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> ([i915#2575]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([fdo#111614]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#111614]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#109315]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([fdo#109315] / [i915#5190]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> ([fdo#109315] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> ([fdo#109315] / [i915#5190]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109315] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_ccs.html">SKIP</a> ([i915#2575]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886] / [i915#5354]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html">SKIP</a> ([i915#3689] / [i915#5354]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#3689] / [i915#3886] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#2575]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> ([i915#2575]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_mtl_rc_ccs.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-10/igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_mtl_rc_ccs.html">SKIP</a> ([i915#5354]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_chamelium_color@ctm-blue-to-red.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_chamelium_color@ctm-blue-to-red.html">SKIP</a> ([i915#2575]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#7828]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> ([i915#2575]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> ([i915#2575]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#2575]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> ([i915#2575]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [i915#5354]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> ([fdo#109274] / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> ([i915#2575]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> ([i915#2017] / [i915#5954]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#8812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> ([fdo#109315])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([fdo#110189] / [i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> ([fdo#109274]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> ([i915#2575]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#8381]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109315]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#5354]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109315]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109315]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#2575]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#2575])</p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> ([fdo#109289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> ([i915#2575]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([fdo#109315]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-8/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-8/igt@kms_psr@primary_page_flip.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_psr@primary_page_flip.html">SKIP</a> ([fdo#109315]) +8 similar issues</p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg1-19/igt@kms_psr@primary_page_flip.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg1-12/igt@kms_psr@primary_page_flip.html">SKIP</a> ([i915#1072] / [i915#4078])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-11/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109315]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-3/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([i915#1072]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13460/shard-dg2-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#5461] / [i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121879v1/shard-dg2-11/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([fdo#109315]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@ba</p>
</li>
</ul>

</body>
</html>

--===============6257257885138469541==--
