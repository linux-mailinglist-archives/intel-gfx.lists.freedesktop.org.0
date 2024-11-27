Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 767F69DA4B1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 10:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 307E710EA66;
	Wed, 27 Nov 2024 09:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4E910EA73;
 Wed, 27 Nov 2024 09:20:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0215112812379112662=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_Refactor_VRR_for_differe?=
 =?utf-8?q?nt_VRR_timing_generator?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2024 09:20:04 -0000
Message-ID: <173269920442.3666921.15344467917788313460@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241127071136.1017190-1-ankit.k.nautiyal@intel.com>
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

--===============0215112812379112662==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Refactor VRR for different VRR timing generator
URL   : https://patchwork.freedesktop.org/series/141820/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15750_full -> Patchwork_141820v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141820v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141820v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141820v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-14/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb2/igt@i915_pm_rps@reset.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb1/igt@i915_pm_rps@reset.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][5] -> [DMESG-WARN][6] +1 other test dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-snb:          NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb2/igt@kms_joiner@basic-big-joiner.html

  
Known issues
------------

  Here are the changes found in Patchwork_141820v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> [SKIP][8] ([i915#11078])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8414])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@fbdev@pan:
    - shard-dg2:          [PASS][10] -> [SKIP][11] ([i915#2582])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@fbdev@pan.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@fbdev@pan.html

  * igt@fbdev@read:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#2582])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@fbdev@read.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#3555] / [i915#9323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#7697])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#7697])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][16] ([i915#12353])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@engines-hostile-preempt:
    - shard-rkl:          [PASS][17] -> [DMESG-WARN][18] ([i915#12964]) +7 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-4/igt@gem_ctx_persistence@engines-hostile-preempt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@gem_ctx_persistence@engines-hostile-preempt.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#8555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         NOTRUN -> [FAIL][20] ([i915#11980] / [i915#12580])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#280])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#280])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#280])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539] / [i915#4852])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#3281]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#3281])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3281]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_exec_reloc@basic-write-gtt-noreloc.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][28] -> [INCOMPLETE][29] ([i915#11441]) +1 other test incomplete
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-8/igt@gem_exec_suspend@basic-s0@smem.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4860]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu-1:       NOTRUN -> [SKIP][31] ([i915#4613] / [i915#7582])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-dg2:          [PASS][32] -> [SKIP][33] ([i915#12936]) +2 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-random.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][34] ([i915#4613])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4613])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#4613]) +2 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][37] -> [TIMEOUT][38] ([i915#5493]) +1 other test timeout
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap@bad-offset:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4083])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap_gtt@basic-small-copy:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4077]) +3 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_mmap_gtt@basic-small-copy.html

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4077]) +2 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_mmap_gtt@basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4077]) +2 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4083])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4270])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu-1:       NOTRUN -> [FAIL][45] ([i915#12940])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#5190] / [i915#8428]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#8428])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4885])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#3297])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#3297])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#2527])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#2527] / [i915#2856]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#2856])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#2527] / [i915#2856]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][55] -> [ABORT][56] ([i915#9820])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          NOTRUN -> [ABORT][57] ([i915#9820])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#6590]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         NOTRUN -> [WARN][59] ([i915#2681]) +4 other tests warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@gem-execbuf:
    - shard-dg2:          [PASS][60] -> [SKIP][61] ([i915#13014])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#11681])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_rps@waitboost:
    - shard-dg2:          [PASS][63] -> [SKIP][64] ([i915#2575]) +73 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@i915_pm_rps@waitboost.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@i915_pm_rps@waitboost.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#6245])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@i915_query@hwconfig_table.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#2575] / [i915#5190]) +4 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#8709]) +7 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#3555])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#1769] / [i915#3555])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg1:          [PASS][70] -> [FAIL][71] ([i915#5956])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-12/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][72] ([i915#5956])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#5286]) +2 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4538] / [i915#5286])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#5286]) +2 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-dg2:          [PASS][76] -> [SKIP][77] +17 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4538] / [i915#5190])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#5190]) +4 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][80] +2 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][81] +8 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4538])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#6095]) +108 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#6095]) +24 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#12313]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#6095]) +39 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#6095]) +67 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#6095]) +21 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#6095]) +8 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#10307] / [i915#6095]) +92 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#12313])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#7213]) +3 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-glk:          NOTRUN -> [SKIP][94] +25 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk8/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#7828]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#7828]) +5 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#7828])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-snb:          NOTRUN -> [SKIP][98] +9 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb2/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#7828]) +6 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#7828])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3299])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#3116] / [i915#3299])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#6944] / [i915#9424]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#13049])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#13049])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3555])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#3555] / [i915#8814])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_edge_walk@64x64-left-edge@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][109] ([i915#12964]) +5 other tests dmesg-warn
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-1/igt@kms_cursor_edge_walk@64x64-left-edge@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#4103])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4103] / [i915#4213])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][112] +57 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-glk:          [PASS][113] -> [FAIL][114] ([i915#2346])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#4103] / [i915#4213])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#12402])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3555] / [i915#3840])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#3555] / [i915#3840])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#3840] / [i915#9053])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3469])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#9337])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#9934]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#3637]) +3 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#9934])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3637]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#3637])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-dg2:          [PASS][127] -> [FAIL][128] ([i915#11989])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-3/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][129] ([i915#11989])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-rkl:          [PASS][130] -> [FAIL][131] ([i915#11989])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1:
    - shard-rkl:          NOTRUN -> [FAIL][132] ([i915#11989])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a3:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][133] ([i915#6113])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-12/igt@kms_flip@flip-vs-suspend@c-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend@d-edp1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][134] ([i915#6113])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-4/igt@kms_flip@flip-vs-suspend@d-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [PASS][135] -> [FAIL][136] ([i915#11989]) +9 other tests fail
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb2/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb2/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:
    - shard-tglu:         [PASS][137] -> [FAIL][138] ([i915#11989]) +7 other tests fail
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-7/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a4:
    - shard-dg1:          NOTRUN -> [FAIL][139] ([i915#12431])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a4:
    - shard-dg1:          NOTRUN -> [FAIL][140] ([i915#11989]) +2 other tests fail
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@b-hdmi-a4.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-mtlp:         [PASS][141] -> [FAIL][142] ([i915#11989]) +5 other tests fail
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#2672] / [i915#3555])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#2587] / [i915#2672]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#2587] / [i915#2672] / [i915#3555])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#2587] / [i915#2672] / [i915#3555])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#2672] / [i915#3555]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#2587] / [i915#2672]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#2672] / [i915#3555])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#2587] / [i915#2672]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#2672])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#5354]) +9 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#1825]) +7 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#8708]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#5439])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][157] +53 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#3458]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#3458]) +2 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#8708]) +5 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][161] +46 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#10433] / [i915#3458])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#13012] / [i915#13030])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#3555] / [i915#8228])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#3555] / [i915#8228]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#10656])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#12339])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#12394])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][169] ([i915#12964])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-tglu:         NOTRUN -> [FAIL][170] ([i915#8292]) +1 other test fail
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#12247]) +4 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#12247] / [i915#9423])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [PASS][173] -> [SKIP][174] ([i915#2575] / [i915#9423]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#12247]) +9 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#12247]) +7 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#2575] / [i915#9423]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][178] -> [SKIP][179] ([i915#4281])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#3828])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][181] -> [SKIP][182] ([i915#9519])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][183] -> [SKIP][184] ([i915#12937])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#9519]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][186] ([i915#9519])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][187] -> [SKIP][188] ([i915#9519]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#6524])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([Intel XE#3529])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#11520]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#11520]) +4 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#9808])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#12316]) +2 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#11520]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#11520]) +5 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9683])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#1072] / [i915#9732]) +6 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#9688]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#9732]) +8 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#1072] / [i915#9732]) +5 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#9732]) +11 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#5289])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#5289])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#3555]) +3 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [PASS][206] -> [FAIL][207] ([i915#12317]) +1 other test fail
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-2/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#8623])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@ts-continuation-idle-hang:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#2575]) +109 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_vblank@ts-continuation-idle-hang.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#3555] / [i915#9906])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#2437])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@blocking:
    - shard-mtlp:         [PASS][212] -> [FAIL][213] ([i915#10538] / [i915#12664]) +1 other test fail
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-3/igt@perf@blocking.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-8/igt@perf@blocking.html

  * igt@perf@i915-ref-count:
    - shard-dg2:          [PASS][214] -> [SKIP][215] ([i915#12506]) +3 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@perf@i915-ref-count.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@perf@i915-ref-count.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#2434])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@perf@mi-rpc.html

  * igt@perf@polling:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#12506]) +5 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@perf@polling.html

  * igt@perf_pmu@busy-accuracy-98@rcs0:
    - shard-tglu:         [PASS][218] -> [FAIL][219] ([i915#12513] / [i915#4349]) +1 other test fail
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-4/igt@perf_pmu@busy-accuracy-98@rcs0.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-2/igt@perf_pmu@busy-accuracy-98@rcs0.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#8850])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][221] ([i915#12549] / [i915#6806]) +1 other test fail
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#3291] / [i915#3708])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#3708] / [i915#4077])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
    - shard-tglu:         NOTRUN -> [FAIL][224] ([i915#12910]) +9 other tests fail
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html

  
#### Possible fixes ####

  * igt@core_getversion@all-cards:
    - shard-dg2:          [FAIL][225] ([i915#12869]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@core_getversion@all-cards.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@core_getversion@all-cards.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [SKIP][227] ([i915#2582]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@fbdev@nullptr.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@fbdev@nullptr.html

  * igt@gem_eio@suspend:
    - shard-tglu:         [ABORT][229] ([i915#10030] / [i915#8213]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-5/igt@gem_eio@suspend.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gem_eio@suspend.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          [ABORT][231] ([i915#7975] / [i915#8213]) -> [PASS][232] +1 other test pass
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-dg2:          [SKIP][233] ([i915#12936]) -> [PASS][234] +2 other tests pass
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-rkl:          [FAIL][235] -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-7/igt@gem_tiled_swapping@non-threaded.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-4/igt@gem_tiled_swapping@non-threaded.html
    - shard-tglu:         [FAIL][237] -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-7/igt@gem_tiled_swapping@non-threaded.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][239] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-dg1:          [FAIL][241] ([i915#12548] / [i915#3591]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rpm@gem-pread:
    - shard-dg2:          [SKIP][243] ([i915#13014]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@i915_pm_rpm@gem-pread.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@i915_pm_rpm@gem-pread.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [ABORT][245] ([i915#12061]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-snb:          [FAIL][247] ([i915#2346]) -> [PASS][248] +1 other test pass
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][249] ([i915#11989] / [i915#12948]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][251] ([i915#11989]) -> [PASS][252] +5 other tests pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][253] -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-mtlp:         [FAIL][255] ([i915#11989]) -> [PASS][256] +3 other tests pass
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1:
    - shard-snb:          [FAIL][257] ([i915#11989]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
    - shard-tglu:         [FAIL][259] ([i915#11989]) -> [PASS][260] +4 other tests pass
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-7/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-mtlp:         [INCOMPLETE][261] ([i915#6113]) -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-5/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-4/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [INCOMPLETE][263] ([i915#4839]) -> [PASS][264] +1 other test pass
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb2/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-mtlp:         [FAIL][265] -> [PASS][266] +1 other test pass
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:
    - shard-rkl:          [FAIL][267] ([i915#11989]) -> [PASS][268] +2 other tests pass
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-1/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-1/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [SKIP][269] -> [PASS][270] +13 other tests pass
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [SKIP][271] -> [PASS][272] +9 other tests pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [SKIP][273] ([i915#2575] / [i915#9423]) -> [PASS][274] +1 other test pass
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [SKIP][275] ([i915#9519]) -> [PASS][276] +1 other test pass
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg1:          [DMESG-WARN][277] ([i915#4423]) -> [PASS][278] +5 other tests pass
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-13/igt@kms_rotation_crc@bad-pixel-format.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-13/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@perf@invalid-remove-userspace-config:
    - shard-dg2:          [SKIP][279] ([i915#12506]) -> [PASS][280] +5 other tests pass
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@perf@invalid-remove-userspace-config.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@perf@invalid-remove-userspace-config.html

  * igt@syncobj_timeline@reset-during-wait-for-submit:
    - shard-rkl:          [DMESG-WARN][281] ([i915#12964]) -> [PASS][282] +4 other tests pass
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-2/igt@syncobj_timeline@reset-during-wait-for-submit.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-1/igt@syncobj_timeline@reset-during-wait-for-submit.html

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - shard-dg2:          [SKIP][283] ([i915#2575]) -> [PASS][284] +100 other tests pass
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [INCOMPLETE][285] ([i915#11814]) -> [ABORT][286] ([i915#11814] / [i915#11815])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-17/igt@device_reset@unbind-reset-rebind.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@virtual-busy:
    - shard-dg2:          [SKIP][287] ([i915#12506]) -> [SKIP][288] ([i915#8414])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@drm_fdinfo@virtual-busy.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][289] ([i915#7297]) -> [SKIP][290] ([i915#2575])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@gem_ccs@suspend-resume.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-dg2:          [SKIP][291] ([i915#2575]) -> [INCOMPLETE][292] ([i915#12353])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          [SKIP][293] ([i915#8555]) -> [SKIP][294] ([i915#2575])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-close.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          [SKIP][295] ([i915#5882]) -> [SKIP][296] ([i915#2575])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          [SKIP][297] ([i915#4771]) -> [SKIP][298] ([i915#2575])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          [SKIP][299] ([i915#2575]) -> [SKIP][300] ([i915#4812])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_exec_fence@submit67.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          [SKIP][301] ([i915#3539] / [i915#4852]) -> [SKIP][302] ([i915#2575])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_exec_flush@basic-wb-pro-default.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          [SKIP][303] ([i915#3281]) -> [SKIP][304] ([i915#2575]) +2 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          [SKIP][305] ([i915#2575]) -> [SKIP][306] ([i915#3281]) +3 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          [SKIP][307] ([i915#2575]) -> [SKIP][308] ([i915#4537] / [i915#4812]) +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_mmap@short-mmap:
    - shard-dg2:          [SKIP][309] ([i915#2575]) -> [SKIP][310] ([i915#4083])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_mmap@short-mmap.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          [SKIP][311] ([i915#2575]) -> [SKIP][312] ([i915#4077]) +4 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_mmap_gtt@zero-extend.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          [SKIP][313] ([i915#4083]) -> [SKIP][314] ([i915#2575]) +3 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@gem_mmap_wc@bad-size.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_mmap_wc@bad-size.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          [SKIP][315] ([i915#2575]) -> [SKIP][316] ([i915#3282]) +6 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg2:          [SKIP][317] ([i915#3282]) -> [SKIP][318] ([i915#2575]) +2 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          [SKIP][319] ([i915#4270]) -> [SKIP][320] ([i915#2575])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2:          [SKIP][321] ([i915#2575]) -> [SKIP][322] ([i915#4270])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
    - shard-dg2:          [SKIP][323] ([i915#2575] / [i915#5190]) -> [SKIP][324] ([i915#5190] / [i915#8428])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          [SKIP][325] ([i915#5190] / [i915#8428]) -> [SKIP][326] ([i915#2575] / [i915#5190]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg2:          [SKIP][327] ([i915#4077]) -> [SKIP][328] ([i915#2575]) +2 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_tiled_swapping@non-threaded.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg2:          [SKIP][329] ([i915#3282] / [i915#3297]) -> [SKIP][330] ([i915#2575])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_userptr_blits@forbidden-operations.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2:          [SKIP][331] ([i915#2575]) -> [SKIP][332] ([i915#3297]) +1 other test skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          [SKIP][333] ([i915#3297] / [i915#4880]) -> [SKIP][334] ([i915#2575])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          [SKIP][335] ([i915#2575]) -> [SKIP][336] ([i915#3297] / [i915#4958])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_userptr_blits@sd-probe.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-dg2:          [SKIP][337] ([i915#2575]) -> [SKIP][338] ([i915#2856])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gen9_exec_parse@basic-rejected.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg2:          [SKIP][339] ([i915#2856]) -> [SKIP][340] ([i915#2575]) +1 other test skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gen9_exec_parse@bb-secure.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gen9_exec_parse@bb-secure.html

  * igt@i915_fb_tiling:
    - shard-dg2:          [SKIP][341] ([i915#2575]) -> [SKIP][342] ([i915#4881])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@i915_fb_tiling.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@i915_fb_tiling.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg2:          [SKIP][343] ([i915#2575]) -> [SKIP][344] ([i915#11681])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@i915_pm_rps@thresholds.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@i915_pm_rps@thresholds.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          [SKIP][345] ([i915#2575]) -> [SKIP][346] ([i915#6228])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_async_flips@invalid-async-flip.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          [SKIP][347] ([i915#4538] / [i915#5190]) -> [SKIP][348] ([i915#5190]) +4 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          [SKIP][349] ([i915#5190]) -> [SKIP][350] ([i915#4538] / [i915#5190]) +2 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][351] -> [SKIP][352] ([i915#10307] / [i915#6095]) +3 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][353] ([i915#6095]) -> [SKIP][354] +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
    - shard-dg2:          [SKIP][355] -> [SKIP][356] ([i915#6095])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][357] ([i915#12313]) -> [SKIP][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][359] ([i915#10307] / [i915#6095]) -> [SKIP][360] +3 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-dg1:          [SKIP][361] ([i915#7828]) -> [SKIP][362] ([i915#4423] / [i915#7828])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-12/igt@kms_chamelium_edid@dp-edid-read.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-multiple:
    - shard-dg2:          [SKIP][363] ([i915#7828]) -> [SKIP][364] ([i915#2575]) +3 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_chamelium_frames@dp-crc-multiple.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-multiple.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          [SKIP][365] ([i915#4423] / [i915#7828]) -> [SKIP][366] ([i915#7828])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-single.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-12/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          [SKIP][367] ([i915#2575]) -> [SKIP][368] ([i915#7828]) +3 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-storm.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [SKIP][369] ([i915#2575]) -> [SKIP][370] ([i915#7118] / [i915#9424])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_content_protection@atomic.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][371] ([i915#7118] / [i915#9424]) -> [SKIP][372] ([i915#2575])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_content_protection@legacy.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [FAIL][373] ([i915#1339] / [i915#7173]) -> [SKIP][374] ([i915#7118] / [i915#9424])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_content_protection@uevent.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          [SKIP][375] ([i915#13049]) -> [SKIP][376] ([i915#2575])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          [SKIP][377] ([i915#2575]) -> [SKIP][378] ([i915#5354]) +1 other test skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          [SKIP][379] ([i915#5354]) -> [SKIP][380] ([i915#2575]) +3 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          [SKIP][381] ([i915#4103] / [i915#4213]) -> [SKIP][382] ([i915#2575])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          [SKIP][383] ([i915#2575]) -> [SKIP][384] ([i915#3555]) +1 other test skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_display_modes@extended-mode-basic.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [SKIP][385] ([i915#2575]) -> [SKIP][386] ([i915#1257])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_dp_aux_dev.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_dp_aux_dev.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          [SKIP][387] ([i915#2575]) -> [SKIP][388] ([i915#1839])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_feature_discovery@display-3x.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          [SKIP][389] ([i915#658]) -> [SKIP][390] ([i915#2575])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_feature_discovery@psr1.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          [SKIP][391] ([i915#2575]) -> [SKIP][392] ([i915#658])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_feature_discovery@psr2.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-dg2:          [SKIP][393] ([i915#2575]) -> [SKIP][394] ([i915#9934])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-dg2:          [SKIP][395] ([i915#9934]) -> [SKIP][396] ([i915#2575])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_flip@2x-flip-vs-dpms.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:
    - shard-tglu:         [FAIL][397] -> [FAIL][398] ([i915#11989]) +1 other test fail
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-3/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-5/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][399] -> [SKIP][400] ([i915#2672] / [i915#3555])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          [SKIP][401] -> [SKIP][402] ([i915#5354]) +14 other tests skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          [SKIP][403] ([i915#5354]) -> [SKIP][404] +10 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][405] ([i915#8708]) -> [SKIP][406] +5 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [SKIP][407] ([i915#3458]) -> [SKIP][408] +5 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][409] ([i915#3458]) -> [SKIP][410] ([i915#10433] / [i915#3458])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][411] ([i915#10433] / [i915#3458]) -> [SKIP][412] ([i915#3458]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][413] -> [SKIP][414] ([i915#8708]) +6 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][415] -> [SKIP][416] ([i915#3458]) +7 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][417] ([i915#1187] / [i915#12713]) -> [SKIP][418] ([i915#12713])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2:          [SKIP][419] ([i915#3555] / [i915#8228]) -> [SKIP][420] ([i915#2575])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_hdr@invalid-hdr.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_hdr@invalid-hdr.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          [SKIP][421] ([i915#2575]) -> [SKIP][422] +2 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          [SKIP][423] ([i915#2575]) -> [SKIP][424] ([i915#8806])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          [SKIP][425] ([i915#2575] / [i915#9423]) -> [SKIP][426] ([i915#12247] / [i915#3555] / [i915#9423])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          [SKIP][427] -> [SKIP][428] ([i915#8430])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          [SKIP][429] ([i915#11520]) -> [SKIP][430] +2 other tests skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-dg2:          [SKIP][431] -> [SKIP][432] ([i915#11520]) +2 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-primary-render:
    - shard-dg2:          [SKIP][433] -> [SKIP][434] ([i915#1072] / [i915#9732]) +8 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_psr@fbc-pr-primary-render.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_psr@fbc-pr-primary-render.html

  * igt@kms_psr@pr-cursor-mmap-gtt:
    - shard-dg1:          [SKIP][435] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][436] ([i915#1072] / [i915#9732])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-18/igt@kms_psr@pr-cursor-mmap-gtt.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-12/igt@kms_psr@pr-cursor-mmap-gtt.html

  * igt@kms_psr@pr-primary-mmap-gtt:
    - shard-dg2:          [SKIP][437] ([i915#1072] / [i915#9732]) -> [SKIP][438] +5 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_psr@pr-primary-mmap-gtt.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_psr@pr-primary-mmap-gtt.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg2:          [SKIP][439] ([i915#2575]) -> [SKIP][440] ([i915#12755]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_rotation_crc@bad-tiling.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][441] ([i915#5190]) -> [SKIP][442] ([i915#2575] / [i915#5190])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2:          [SKIP][443] ([i915#3555]) -> [SKIP][444] ([i915#2575]) +4 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg2:          [SKIP][445] ([i915#2437] / [i915#9412]) -> [SKIP][446] ([i915#2575])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_writeback@writeback-check-output-xrgb2101010.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          [SKIP][447] ([i915#2575]) -> [SKIP][448] ([i915#2437] / [i915#9412]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-dg2:          [SKIP][449] ([i915#12506]) -> [SKIP][450]
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@perf@unprivileged-single-ctx-counters.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@perf@unprivileged-single-ctx-counters.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#3529]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/3529
  [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/index.html

--===============0215112812379112662==
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
<tr><td><b>Series:</b></td><td>Refactor VRR for different VRR timing generator</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141820/">https://patchwork.freedesktop.org/series/141820/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15750_full -&gt; Patchwork_141820v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141820v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_141820v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_141820v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-14/igt@gem_eio@in-flight-contexts-immediate.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb2/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb1/igt@i915_pm_rps@reset.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb2/igt@kms_joiner@basic-big-joiner.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141820v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@drm_fdinfo@virtual-busy-idle.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@fbdev@pan.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@fbdev@pan.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@fbdev@read.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3@vcs0.html">INCOMPLETE</a> ([i915#12353])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-4/igt@gem_ctx_persistence@engines-hostile-preempt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@gem_ctx_persistence@engines-hostile-preempt.html">DMESG-WARN</a> ([i915#12964]) +7 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-many.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_exec_reloc@basic-write-gtt-noreloc.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-8/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> ([i915#11441]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([i915#12936]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_lmem_swapping@random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@gem_mmap@bad-offset.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_mmap_gtt@basic-small-copy.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_mmap_gtt@basic-small-copy-odd.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_pxp@create-regular-buffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html">FAIL</a> ([i915#12940])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681]) +4 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a> ([i915#13014])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@i915_pm_rps@thresholds-idle.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@i915_pm_rps@waitboost.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@i915_pm_rps@waitboost.html">SKIP</a> ([i915#2575]) +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#2575] / [i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-12/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +108 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / [i915#6095]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +67 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#6095]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / [i915#6095]) +92 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk8/igt@kms_chamelium_color@ctm-negative.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-single.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb2/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_chamelium_hpd@hdmi-hpd-storm.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#6944] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_content_protection@type1.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-left-edge@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-1/igt@kms_cursor_edge_walk@64x64-left-edge@pipe-a-hdmi-a-2.html">DMESG-WARN</a> ([i915#12964]) +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#9934]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-3/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-12/igt@kms_flip@flip-vs-suspend@c-hdmi-a3.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@d-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-4/igt@kms_flip@flip-vs-suspend@d-edp1.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb2/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb2/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a> ([i915#11989]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-7/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html">FAIL</a> ([i915#11989]) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html">FAIL</a> ([i915#12431])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@b-hdmi-a4.html">FAIL</a> ([i915#11989]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i915#11989]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([i915#1825]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> +53 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html">SKIP</a> ([i915#3458]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#13012] / [i915#13030])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_joiner@basic-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">DMESG-FAIL</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_plane_scaling@intel-max-src-size.html">FAIL</a> ([i915#8292]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#2575] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">SKIP</a> ([i915#2575] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#12937])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_prime@d3hot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/3529">Intel XE#3529</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1.html">SKIP</a> ([i915#12316]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#11520]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a> ([i915#1072] / [i915#9732]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_psr@fbc-psr2-cursor-plane-move.html">SKIP</a> ([i915#9688]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-2/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a> ([i915#12317]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-idle-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_vblank@ts-continuation-idle-hang.html">SKIP</a> ([i915#2575]) +109 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-3/igt@perf@blocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-8/igt@perf@blocking.html">FAIL</a> ([i915#10538] / [i915#12664]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf@i915-ref-count:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@perf@i915-ref-count.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@perf@i915-ref-count.html">SKIP</a> ([i915#12506]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@perf@polling.html">SKIP</a> ([i915#12506]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-4/igt@perf_pmu@busy-accuracy-98@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-2/igt@perf_pmu@busy-accuracy-98@rcs0.html">FAIL</a> ([i915#12513] / [i915#4349]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-1/igt@perf_pmu@cpu-hotplug.html">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@perf_pmu@frequency@gt0.html">FAIL</a> ([i915#12549] / [i915#6806]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-3/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_getversion@all-cards:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@core_getversion@all-cards.html">FAIL</a> ([i915#12869]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@core_getversion@all-cards.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-5/igt@gem_eio@suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030">i915#10030</a> / [i915#8213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#12936]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_lmem_swapping@parallel-multi.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-7/igt@gem_tiled_swapping@non-threaded.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-4/igt@gem_tiled_swapping@non-threaded.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-7/igt@gem_tiled_swapping@non-threaded.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / [i915#10887] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">FAIL</a> ([i915#12548] / [i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-pread:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@i915_pm_rpm@gem-pread.html">SKIP</a> ([i915#13014]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@i915_pm_rpm@gem-pread.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-8/igt@i915_selftest@live@workarounds.html">ABORT</a> ([i915#12061]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#11989] / [i915#12948]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#11989]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a> ([i915#11989]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html">FAIL</a> ([i915#11989]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html">FAIL</a> ([i915#11989]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-7/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-5/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> ([i915#6113]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-4/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb2/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-1/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html">FAIL</a> ([i915#11989]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-1/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html">SKIP</a> ([i915#2575] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-13/igt@kms_rotation_crc@bad-pixel-format.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-13/igt@kms_rotation_crc@bad-pixel-format.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-remove-userspace-config:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@perf@invalid-remove-userspace-config.html">SKIP</a> ([i915#12506]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@perf@invalid-remove-userspace-config.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@reset-during-wait-for-submit:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-2/igt@syncobj_timeline@reset-during-wait-for-submit.html">DMESG-WARN</a> ([i915#12964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-1/igt@syncobj_timeline@reset-during-wait-for-submit.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">PASS</a> +100 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-17/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#11814]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html">ABORT</a> ([i915#11814] / [i915#11815])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@drm_fdinfo@virtual-busy.html">SKIP</a> ([i915#12506]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3.html">INCOMPLETE</a> ([i915#12353])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#8555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html">SKIP</a> ([i915#5882]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_exec_fence@submit67.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_exec_fence@submit67.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_exec_flush@basic-wb-pro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-pro-default.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#3281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> ([i915#4537] / [i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@gem_mmap_wc@bad-size.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_mmap_wc@bad-size.html">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> ([i915#3282]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> ([i915#4270]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html">SKIP</a> ([i915#2575] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html">SKIP</a> ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_tiled_swapping@non-threaded.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_tiled_swapping@non-threaded.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-busy.html">SKIP</a> ([i915#3297] / [i915#4880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-busy.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@gem_userptr_blits@sd-probe.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@gen9_exec_parse@bb-secure.html">SKIP</a> ([i915#2856]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@gen9_exec_parse@bb-secure.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@i915_fb_tiling.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@i915_pm_rps@thresholds.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@i915_pm_rps@thresholds.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> ([i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html">SKIP</a> ([i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-12/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-18/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</a> ([i915#4423] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-multiple:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_chamelium_frames@dp-crc-multiple.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-multiple.html">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#4423] / [i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-12/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#1339] / [i915#7173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-3/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> ([i915#13049]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([i915#2575]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> ([i915#9934]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-tglu-3/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-tglu-5/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> ([i915#1187] / [i915#12713]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> ([i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#2575] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_psr@fbc-pr-primary-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_psr@fbc-pr-primary-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg1-18/igt@kms_psr@pr-cursor-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#4423] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg1-12/igt@kms_psr@pr-cursor-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_psr@pr-primary-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_psr@pr-primary-mmap-gtt.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_rotation_crc@bad-tiling.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-8/igt@kms_rotation_crc@bad-tiling.html">SKIP</a> ([i915#12755]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> ([i915#2575] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-10/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> ([i915#2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-6/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-11/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15750/shard-dg2-11/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> ([i915#12506]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141820v1/shard-dg2-2/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<p>[i</p>

</body>
</html>

--===============0215112812379112662==--
