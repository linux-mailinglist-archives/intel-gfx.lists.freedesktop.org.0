Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0015C54B0D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 23:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E93310E07C;
	Wed, 12 Nov 2025 22:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B9D10E07C;
 Wed, 12 Nov 2025 22:10:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8649641708010076944=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/selftests=3A_De?=
 =?utf-8?q?fer_signalling_the_request_fence_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Niemiec" <krzysztof.niemiec@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Nov 2025 22:10:53 -0000
Message-ID: <176298545397.47587.15426646644273723303@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251029143501.42998-2-krzysztof.niemiec@intel.com>
In-Reply-To: <20251029143501.42998-2-krzysztof.niemiec@intel.com>
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

--===============8649641708010076944==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Defer signalling the request fence (rev3)
URL   : https://patchwork.freedesktop.org/series/156505/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17535_full -> Patchwork_156505v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_156505v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_156505v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_156505v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-tglu:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-2/igt@gem_mmap_gtt@cpuset-big-copy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-5/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_joiner@basic-max-non-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_joiner@basic-max-non-joiner.html

  
Known issues
------------

  Here are the changes found in Patchwork_156505v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-tglu:         NOTRUN -> [SKIP][5] ([i915#6230])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@api_intel_bb@crc32.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#11078])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance:
    - shard-snb:          NOTRUN -> [DMESG-WARN][7] ([i915#15095]) +1 other test dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb4/igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance.html

  * igt@gem_caching@read-writes:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][8] ([i915#12964]) +8 other tests dmesg-warn
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_caching@read-writes.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#3555] / [i915#9323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#9323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][11] -> [INCOMPLETE][12] ([i915#13356])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#7697])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_close_race@multigpu-basic-process.html
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#7697])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#6335])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#280])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@kms:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][17] ([i915#13363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#4525])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-glk10:        NOTRUN -> [SKIP][19] ([i915#6334]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#6334]) +1 other test skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3281]) +7 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#3281]) +6 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4860]) +2 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#4613])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-glk:          NOTRUN -> [SKIP][25] ([i915#4613])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk9/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#4613]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#4613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_mmap@bad-offset:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4083]) +3 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_mmap@bad-offset.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3282]) +2 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3282]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][31] ([i915#2658])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk9/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-rkl:          NOTRUN -> [TIMEOUT][32] ([i915#12964])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu-1:       NOTRUN -> [SKIP][33] ([i915#13398])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          [PASS][34] -> [TIMEOUT][35] ([i915#12964])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          [PASS][36] -> [TIMEOUT][37] ([i915#12917] / [i915#12964]) +1 other test timeout
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4270])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
    - shard-rkl:          NOTRUN -> [TIMEOUT][39] ([i915#12917] / [i915#12964]) +1 other test timeout
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#5190] / [i915#8428]) +3 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4079])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4885])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_softpin@evict-snoop-interruptible.html
    - shard-rkl:          NOTRUN -> [SKIP][43] +12 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4077]) +4 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_tiled_blits@basic.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3297]) +1 other test skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#3297])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3297] / [i915#4880])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#3297]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#3297])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#2527] / [i915#2856])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#2856]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#2527]) +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#2527] / [i915#2856]) +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_drm_fdinfo@virtual-busy-hang:
    - shard-snb:          NOTRUN -> [SKIP][54] +48 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb4/igt@i915_drm_fdinfo@virtual-busy-hang.html

  * igt@i915_drm_fdinfo@virtual-busy-idle-all:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#14118])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@i915_drm_fdinfo@virtual-busy-idle-all.html

  * igt@i915_module_load@load:
    - shard-tglu:         ([PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77]) -> ([PASS][78], [PASS][79], [PASS][80], [SKIP][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [SKIP][95], [PASS][96], [PASS][97], [PASS][98]) ([i915#14785])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-5/igt@i915_module_load@load.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-3/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-6/igt@i915_module_load@load.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-9/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-9/igt@i915_module_load@load.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-6/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-2/igt@i915_module_load@load.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-10/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-6/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-8/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-4/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-4/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-10/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-7/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-10/igt@i915_module_load@load.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-8/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-4/igt@i915_module_load@load.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-7/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-5/igt@i915_module_load@load.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-9/igt@i915_module_load@load.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-5/igt@i915_module_load@load.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-2/igt@i915_module_load@load.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@i915_module_load@load.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-2/igt@i915_module_load@load.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-4/igt@i915_module_load@load.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-6/igt@i915_module_load@load.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-5/igt@i915_module_load@load.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-2/igt@i915_module_load@load.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-4/igt@i915_module_load@load.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@i915_module_load@load.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@i915_module_load@load.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-9/igt@i915_module_load@load.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-2/igt@i915_module_load@load.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@i915_module_load@load.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@i915_module_load@load.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-4/igt@i915_module_load@load.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-3/igt@i915_module_load@load.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-9/igt@i915_module_load@load.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-10/igt@i915_module_load@load.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-5/igt@i915_module_load@load.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-6/igt@i915_module_load@load.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-9/igt@i915_module_load@load.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-3/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#8399])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu-1:       NOTRUN -> [WARN][100] ([i915#13790] / [i915#2681]) +1 other test warn
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#11681])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#4387])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#6245])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#6188])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#7707])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#12454] / [i915#12712])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [PASS][107] -> [FAIL][108] ([i915#5956]) +3 other tests fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#5286]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#5286]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#5286]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3638]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4538] / [i915#5190]) +7 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#6095]) +87 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#12313])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#6095]) +24 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][117] +211 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#12313])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#10307] / [i915#10434] / [i915#6095])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:
    - shard-dg1:          [PASS][120] -> [DMESG-WARN][121] ([i915#4423]) +2 other tests dmesg-warn
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-15/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#14098] / [i915#6095]) +44 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#6095]) +12 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [ABORT][124] ([i915#15132])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#12313])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#10307] / [i915#6095]) +153 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#6095]) +42 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#6095]) +29 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#3742])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg2:          NOTRUN -> [SKIP][130] +4 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#11151] / [i915#7828]) +4 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#11151] / [i915#7828]) +5 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#11151] / [i915#7828]) +4 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#11151] / [i915#7828]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium_sharpness_filter@filter-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#2575]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_chamelium_sharpness_filter@filter-basic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#9424])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3299])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#3116] / [i915#3299])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@uevent@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][140] ([i915#1339] / [i915#7173])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          [PASS][141] -> [SKIP][142] ([i915#14544]) +45 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][143] ([i915#13566]) +1 other test fail
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#3555]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#13049]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][146] ([i915#13566]) +3 other tests fail
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#3555]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu-1:       NOTRUN -> [FAIL][148] ([i915#13566]) +1 other test fail
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#13049])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#4103]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#13046] / [i915#5354]) +1 other test skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-rkl:          [PASS][152] -> [FAIL][153] ([i915#2346]) +1 other test fail
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#13691])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#13748])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3555] / [i915#3840])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#3555] / [i915#3840])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          [PASS][158] -> [SKIP][159] ([i915#14544] / [i915#14561])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#2065] / [i915#4854])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#9337])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#9934]) +3 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms-on-nop.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#9934])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          NOTRUN -> [FAIL][164] ([i915#13027]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#3637] / [i915#9934]) +3 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#9934])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][167] -> [TIMEOUT][168] ([i915#14033]) +1 other test timeout
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-snb6/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb6/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#3637] / [i915#9934]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          [PASS][170] -> [SKIP][171] ([i915#14544] / [i915#3637]) +6 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a4:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][172] ([i915#4423])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-15/igt@kms_flip@flip-vs-suspend@c-hdmi-a4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#2672] / [i915#3555]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#2587] / [i915#2672]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#2672] / [i915#3555]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#2672]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#2672]) +3 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#2587] / [i915#2672]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#2672] / [i915#3555]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
    - shard-rkl:          [PASS][180] -> [SKIP][181] ([i915#14544] / [i915#3555]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#2672] / [i915#3555]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#15104])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][185] +27 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-rkl:          [PASS][186] -> [SKIP][187] ([i915#14544] / [i915#1849] / [i915#5354]) +3 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#5439])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#8708]) +5 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#15102]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#15102])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#15102] / [i915#3023]) +8 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-glk10:        NOTRUN -> [SKIP][193] +127 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][194] +37 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#15102]) +13 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#9766])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#15102]) +11 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#15102] / [i915#3458]) +6 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#5354]) +17 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#1825]) +17 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#12713])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#3555] / [i915#8228])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#3555] / [i915#8228])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@zero-clock:
    - shard-rkl:          [PASS][204] -> [SKIP][205] ([i915#14544] / [i915#3555] / [i915#8826]) +2 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_invalid_mode@zero-clock.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_invalid_mode@zero-clock.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [PASS][206] -> [SKIP][207] ([i915#10656] / [i915#12388])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#1839])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - shard-rkl:          [PASS][209] -> [SKIP][210] ([i915#11190] / [i915#14544]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#14712])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-glk10:        NOTRUN -> [FAIL][212] ([i915#12178])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [FAIL][213] ([i915#7862]) +1 other test fail
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-rkl:          [PASS][214] -> [SKIP][215] ([i915#14544] / [i915#7294]) +2 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#13958])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#13958]) +1 other test skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#13958])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#12247]) +3 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-rkl:          [PASS][220] -> [SKIP][221] ([i915#14544] / [i915#8152]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#12247]) +4 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-rkl:          [PASS][223] -> [SKIP][224] ([i915#14544] / [i915#6953] / [i915#8152])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [PASS][225] -> [SKIP][226] ([i915#12247] / [i915#14544]) +2 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-rkl:          [PASS][227] -> [SKIP][228] ([i915#12247] / [i915#14544] / [i915#8152]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#12343])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][230] -> [SKIP][231] ([i915#15073])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][232] -> [SKIP][233] ([i915#14544] / [i915#15073])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_pm_rpm@dpms-non-lpsp.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#15073]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-dg2:          [PASS][235] -> [INCOMPLETE][236] ([i915#14419])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-6/igt@kms_pm_rpm@system-suspend-idle.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][237] ([i915#11520]) +6 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][238] ([i915#11520]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb4/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:
    - shard-glk10:        NOTRUN -> [SKIP][239] ([i915#11520]) +3 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#11520]) +4 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#11520]) +4 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#11520]) +5 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
    - shard-tglu-1:       NOTRUN -> [SKIP][243] ([i915#11520]) +4 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#9683])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#9732]) +12 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#1072] / [i915#9732]) +10 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_psr@psr-cursor-render.html
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#1072] / [i915#9732]) +12 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#9732]) +7 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#9685])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#5190])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#5289])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#3555]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu:         NOTRUN -> [ABORT][253] ([i915#13179]) +1 other test abort
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_selftest@drm_framebuffer.html
    - shard-glk:          NOTRUN -> [ABORT][254] ([i915#13179]) +1 other test abort
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk1/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_sequence@queue-idle@pipe-b-hdmi-a-2:
    - shard-rkl:          [PASS][255] -> [DMESG-WARN][256] ([i915#12964]) +15 other tests dmesg-warn
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@kms_sequence@queue-idle@pipe-b-hdmi-a-2.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-3/igt@kms_sequence@queue-idle@pipe-b-hdmi-a-2.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][257] ([i915#3555])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_sharpness_filter@filter-basic:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#15232]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_sharpness_filter@filter-basic.html

  * igt@kms_sharpness_filter@filter-scaler-upscale:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#15232])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_sharpness_filter@filter-scaler-upscale.html

  * igt@kms_sharpness_filter@invalid-filter-with-scaler:
    - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#15232]) +1 other test skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_sharpness_filter@invalid-filter-with-scaler.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#8623])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_tiled_display@basic-test-pattern.html
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#8623])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][263] ([i915#8623])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flipline:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#15243] / [i915#3555])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_vrr@flipline.html

  * igt@kms_vrr@max-min:
    - shard-tglu-1:       NOTRUN -> [SKIP][265] ([i915#9906])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#9906])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#9906])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#2437])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-glk:          NOTRUN -> [SKIP][269] ([i915#2437])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-glk1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@panthor/panthor_query@query:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#15265])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@panthor/panthor_query@query.html

  * igt@panthor/panthor_vm@vm_bind:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#15265])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@panthor/panthor_vm@vm_bind.html

  * igt@panthor/panthor_vm@vm_create_destroy:
    - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#2575])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@panthor/panthor_vm@vm_create_destroy.html

  * igt@perf@polling-small-buf:
    - shard-rkl:          [PASS][273] -> [FAIL][274] ([i915#14550])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@perf@polling-small-buf.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@perf@polling-small-buf.html

  * igt@perf_pmu@module-unload:
    - shard-rkl:          NOTRUN -> [FAIL][275] ([i915#14433])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#8516])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [PASS][277] -> [SKIP][278] ([i915#14544] / [i915#3708])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@prime_vgem@basic-fence-flip.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#3291] / [i915#3708])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@prime_vgem@basic-read.html
    - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#3291] / [i915#3708])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#3708])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@prime_vgem@fence-read-hang.html
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#3708])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][283] ([i915#12910]) +9 other tests fail
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#9917])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#4818])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][286] ([i915#14544] / [i915#2582]) -> [PASS][287] +1 other test pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@fbdev@unaligned-write.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@fbdev@unaligned-write.html

  * igt@gem_ctx_isolation@preservation-s3:
    - shard-rkl:          [ABORT][288] ([i915#15131]) -> [PASS][289] +3 other tests pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_ctx_isolation@preservation-s3.html

  * igt@gem_eio@in-flight-suspend:
    - shard-dg1:          [DMESG-WARN][290] ([i915#4391] / [i915#4423]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-17/igt@gem_eio@in-flight-suspend.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-18/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-mtlp:         [SKIP][292] ([i915#15178]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-mtlp-7/igt@gem_eio@unwedge-stress.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-mtlp-3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [INCOMPLETE][294] ([i915#13356]) -> [PASS][295] +1 other test pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          [TIMEOUT][296] ([i915#12917] / [i915#12964]) -> [PASS][297] +1 other test pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-2/igt@gem_pxp@protected-raw-src-copy-not-readible.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_softpin@softpin:
    - shard-rkl:          [DMESG-WARN][298] ([i915#12964]) -> [PASS][299] +7 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-2/igt@gem_softpin@softpin.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@gem_softpin@softpin.html

  * igt@i915_module_load@resize-bar:
    - shard-dg2:          [DMESG-WARN][300] ([i915#14545]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-11/igt@i915_module_load@resize-bar.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][302] ([i915#13729] / [i915#13821]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-snb7/igt@i915_pm_rps@reset.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [DMESG-FAIL][304] ([i915#12061]) -> [PASS][305] +1 other test pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-mtlp-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
    - shard-dg2:          [ABORT][306] ([i915#15091] / [i915#15132]) -> [PASS][307]
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html

  * igt@kms_color@ctm-0-25:
    - shard-rkl:          [SKIP][308] ([i915#12655] / [i915#14544]) -> [PASS][309] +2 other tests pass
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_color@ctm-0-25.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_color@ctm-0-25.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          [FAIL][310] ([i915#13566]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [SKIP][312] ([i915#13707]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][314] ([i915#14033] / [i915#14350]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][316] ([i915#14033]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          [SKIP][318] ([i915#14544] / [i915#3637]) -> [PASS][319] +10 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-dpms-on-nop:
    - shard-rkl:          [SKIP][320] ([i915#14544] / [i915#14553]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_flip@flip-vs-dpms-on-nop.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-dg2:          [FAIL][322] ([i915#13027]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-11/igt@kms_flip@flip-vs-expired-vblank.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
    - shard-snb:          [FAIL][324] ([i915#14600]) -> [PASS][325] +1 other test pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
    - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#3555]) -> [PASS][327] +2 other tests pass
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][328] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][329] +4 other tests pass
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_lease@lease-invalid-plane:
    - shard-rkl:          [SKIP][330] ([i915#14544]) -> [PASS][331] +51 other tests pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_lease@lease-invalid-plane.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-rkl:          [SKIP][332] ([i915#11190] / [i915#14544]) -> [PASS][333] +1 other test pass
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_pipe_crc_basic@hang-read-crc.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          [SKIP][334] ([i915#14544] / [i915#8825]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-rkl:          [SKIP][336] ([i915#14544] / [i915#7294]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-rkl:          [SKIP][338] ([i915#14544] / [i915#8152]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-rkl:          [SKIP][340] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
    - shard-rkl:          [SKIP][344] ([i915#12247] / [i915#14544]) -> [PASS][345] +2 other tests pass
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-b:
    - shard-rkl:          [SKIP][346] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][347] +2 other tests pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-b.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-b.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-rkl:          [SKIP][348] ([i915#13441] / [i915#14544]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#1849]) -> [PASS][351] +1 other test pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][352] ([i915#15073]) -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-mtlp:         [FAIL][354] ([i915#9196]) -> [PASS][355] +1 other test pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg1:          [DMESG-WARN][356] ([i915#4423]) -> [PASS][357] +1 other test pass
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-19/igt@kms_vblank@ts-continuation-modeset.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-18/igt@kms_vblank@ts-continuation-modeset.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [SKIP][358] ([i915#3555] / [i915#9906]) -> [PASS][359]
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-4/igt@kms_vrr@negative-basic.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-11/igt@kms_vrr@negative-basic.html

  * igt@perf_pmu@interrupts:
    - shard-rkl:          [FAIL][360] ([i915#14902]) -> [PASS][361]
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-2/igt@perf_pmu@interrupts.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@perf_pmu@interrupts.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#8411]) -> [SKIP][363] ([i915#8411])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][364] ([i915#14544] / [i915#6230]) -> [SKIP][365] ([i915#6230])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@api_intel_bb@crc32.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@api_intel_bb@crc32.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][366] ([i915#14544] / [i915#9323]) -> [SKIP][367] ([i915#9323])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          [SKIP][368] ([i915#7697]) -> [SKIP][369] ([i915#14544] / [i915#7697])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          [SKIP][370] ([i915#280]) -> [SKIP][371] ([i915#14544] / [i915#280])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@kms:
    - shard-rkl:          [DMESG-WARN][372] ([i915#13363]) -> [DMESG-WARN][373] ([i915#12964])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@gem_eio@kms.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          [SKIP][374] ([i915#14544] / [i915#4525]) -> [SKIP][375] ([i915#4525])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#6334]) -> [SKIP][377] ([i915#6334]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][378] ([i915#3281]) -> [SKIP][379] ([i915#14544] / [i915#3281]) +8 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          [SKIP][380] ([i915#14544] / [i915#3281]) -> [SKIP][381] ([i915#3281]) +4 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-active.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [SKIP][382] ([i915#14544] / [i915#7276]) -> [SKIP][383] ([i915#7276])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          [SKIP][384] ([i915#4613]) -> [SKIP][385] ([i915#14544] / [i915#4613]) +1 other test skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random:
    - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#4613]) -> [SKIP][387] ([i915#4613]) +4 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gem_lmem_swapping@random.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@gem_lmem_swapping@random.html

  * igt@gem_pread@snoop:
    - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#3282]) -> [SKIP][389] ([i915#3282]) +6 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gem_pread@snoop.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_pread@snoop.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-rkl:          [SKIP][390] ([i915#3282]) -> [SKIP][391] ([i915#14544] / [i915#3282]) +1 other test skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@gem_readwrite@write-bad-handle.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          [SKIP][392] ([i915#14544] / [i915#3297]) -> [SKIP][393] ([i915#3297]) +2 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#2527]) -> [SKIP][395] ([i915#2527]) +3 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][396] ([i915#2527]) -> [SKIP][397] ([i915#14544] / [i915#2527]) +3 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          [SKIP][398] ([i915#14544] / [i915#8399]) -> [SKIP][399] ([i915#8399])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          [SKIP][400] ([i915#14544]) -> [SKIP][401] +13 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][402] ([i915#4387]) -> [SKIP][403] ([i915#14544] / [i915#4387])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@i915_pm_sseu@full-enable.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@i915_pm_sseu@full-enable.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          [SKIP][404] ([i915#7707]) -> [SKIP][405] ([i915#14544] / [i915#7707])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@intel_hwmon@hwmon-read.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          [SKIP][406] ([i915#12454] / [i915#12712] / [i915#14544]) -> [SKIP][407] ([i915#12454] / [i915#12712])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][408] ([i915#14544]) -> [SKIP][409] ([i915#5286]) +5 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][410] ([i915#5286]) -> [SKIP][411] ([i915#14544]) +4 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg1:          [SKIP][412] ([i915#4423] / [i915#4538] / [i915#5286]) -> [SKIP][413] ([i915#4538] / [i915#5286])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][414] ([i915#3638]) -> [SKIP][415] ([i915#14544]) +2 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][416] ([i915#14544]) -> [SKIP][417] ([i915#3638]) +1 other test skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][418] -> [SKIP][419] ([i915#14544]) +13 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          [SKIP][420] ([i915#4423] / [i915#4538]) -> [SKIP][421] ([i915#4538])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][422] ([i915#14544]) -> [SKIP][423] ([i915#14098] / [i915#6095]) +10 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][424] ([i915#14098] / [i915#6095]) -> [SKIP][425] ([i915#6095]) +4 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
    - shard-rkl:          [SKIP][426] ([i915#14098] / [i915#6095]) -> [SKIP][427] ([i915#14544]) +8 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][428] ([i915#14544]) -> [SKIP][429] ([i915#12805])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
    - shard-rkl:          [SKIP][430] ([i915#14544]) -> [ABORT][431] ([i915#15132])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][432] ([i915#6095]) -> [SKIP][433] ([i915#14098] / [i915#6095]) +4 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][434] ([i915#14544]) -> [SKIP][435] ([i915#12313]) +2 other tests skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-rkl:          [SKIP][436] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][437] ([i915#11151] / [i915#7828]) +5 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_chamelium_edid@hdmi-mode-timings.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          [SKIP][438] ([i915#11151] / [i915#7828]) -> [SKIP][439] ([i915#11151] / [i915#14544] / [i915#7828]) +5 other tests skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][440] ([i915#12655] / [i915#3555]) -> [SKIP][441] ([i915#12655] / [i915#14544] / [i915#3555])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_color@deep-color.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][442] ([i915#14544]) -> [SKIP][443] ([i915#3116]) +1 other test skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          [SKIP][444] ([i915#14544]) -> [SKIP][445] ([i915#7118] / [i915#9424]) +2 other tests skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_content_protection@type1.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [SKIP][446] ([i915#7118] / [i915#9424]) -> [FAIL][447] ([i915#1339] / [i915#7173])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-4/igt@kms_content_protection@uevent.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-11/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][448] ([i915#3555]) -> [SKIP][449] ([i915#14544])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-rkl:          [DMESG-FAIL][450] ([i915#12964]) -> [DMESG-WARN][451] ([i915#12964])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          [SKIP][452] ([i915#13049]) -> [SKIP][453] ([i915#14544])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][454] ([i915#14544]) -> [SKIP][455] ([i915#3555]) +1 other test skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-rkl:          [DMESG-FAIL][456] ([i915#12964]) -> [FAIL][457] ([i915#13566])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_edge_walk@256x256-top-bottom:
    - shard-rkl:          [SKIP][458] ([i915#14544]) -> [DMESG-WARN][459] ([i915#12964]) +3 other tests dmesg-warn
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_cursor_edge_walk@256x256-top-bottom.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_cursor_edge_walk@256x256-top-bottom.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-rkl:          [DMESG-WARN][460] ([i915#12917] / [i915#12964]) -> [SKIP][461] ([i915#14544])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][462] ([i915#4103]) -> [SKIP][463] ([i915#14544])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][464] ([i915#14544]) -> [SKIP][465] ([i915#4103])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][466] ([i915#9723]) -> [SKIP][467] ([i915#14544])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][468] ([i915#14544]) -> [SKIP][469] ([i915#9723])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          [SKIP][470] ([i915#1257] / [i915#14544]) -> [SKIP][471] ([i915#1257])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_dp_aux_dev.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][472] ([i915#14544]) -> [SKIP][473] ([i915#3840])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#3955]) -> [SKIP][475] ([i915#3955])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][476] ([i915#658]) -> [SKIP][477] ([i915#14544] / [i915#658])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_feature_discovery@psr2.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-dg1:          [SKIP][478] ([i915#9934]) -> [SKIP][479] ([i915#4423] / [i915#9934])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-13/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-14/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-rkl:          [SKIP][480] ([i915#9934]) -> [SKIP][481] ([i915#14544] / [i915#9934]) +6 other tests skip
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_flip@2x-flip-vs-modeset.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-rkl:          [SKIP][482] ([i915#14544] / [i915#9934]) -> [SKIP][483] ([i915#9934]) +5 other tests skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-check.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][484] ([i915#2672] / [i915#3555]) -> [SKIP][485] ([i915#14544] / [i915#3555]) +3 other tests skip
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-rkl:          [SKIP][486] ([i915#14544] / [i915#3555]) -> [SKIP][487] ([i915#2672] / [i915#3555]) +1 other test skip
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-rkl:          [DMESG-WARN][488] ([i915#12964]) -> [SKIP][489] ([i915#14544] / [i915#3555])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][490] ([i915#1825]) -> [SKIP][491] ([i915#14544] / [i915#1849] / [i915#5354]) +27 other tests skip
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][492] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][493] ([i915#1825]) +29 other tests skip
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-rkl:          [SKIP][494] ([i915#14544] / [i915#1849] / [i915#5354]) -> [DMESG-WARN][495] ([i915#12964]) +3 other tests dmesg-warn
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          [SKIP][496] ([i915#15102]) -> [SKIP][497] ([i915#14544]) +2 other tests skip
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][498] ([i915#14544]) -> [SKIP][499] ([i915#15102]) +3 other tests skip
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
    - shard-dg1:          [SKIP][500] ([i915#15104] / [i915#4423]) -> [SKIP][501] ([i915#15104])
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][502] ([i915#15102] / [i915#3023]) -> [SKIP][503] ([i915#14544] / [i915#1849] / [i915#5354]) +15 other tests skip
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][504] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][505] ([i915#15102] / [i915#3023]) +19 other tests skip
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][506] ([i915#5439]) -> [SKIP][507] ([i915#14544] / [i915#1849] / [i915#5354])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][508] ([i915#15102] / [i915#3458]) -> [SKIP][509] ([i915#10433] / [i915#15102] / [i915#3458]) +2 other tests skip
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][510] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][511] ([i915#15102] / [i915#3458]) +1 other test skip
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg1:          [SKIP][512] -> [SKIP][513] ([i915#4423])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [SKIP][514] ([i915#3555] / [i915#8228]) -> [SKIP][515] ([i915#14544])
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][516] ([i915#12713]) -> [SKIP][517] ([i915#14544])
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          [SKIP][518] ([i915#14544]) -> [SKIP][519] ([i915#3555] / [i915#8228])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          [SKIP][520] ([i915#10656] / [i915#14544]) -> [SKIP][521] ([i915#10656])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][522] ([i915#12339] / [i915#14544]) -> [SKIP][523] ([i915#12339])
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          [SKIP][524] ([i915#12394] / [i915#14544]) -> [SKIP][525] ([i915#12394])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][526] ([i915#1839] / [i915#4816]) -> [SKIP][527] ([i915#4816])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-rkl:          [INCOMPLETE][528] ([i915#12756] / [i915#13476]) -> [DMESG-WARN][529] ([i915#12964])
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-7/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-rkl:          [INCOMPLETE][530] ([i915#13476]) -> [DMESG-WARN][531] ([i915#12964])
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-rkl:          [SKIP][532] ([i915#14544]) -> [SKIP][533] ([i915#14712])
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          [SKIP][534] ([i915#14544]) -> [SKIP][535] ([i915#13958])
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][536] ([i915#13958]) -> [SKIP][537] ([i915#14544])
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][538] ([i915#12247] / [i915#14544]) -> [SKIP][539] ([i915#12247])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][540] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][541] ([i915#12247]) +1 other test skip
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][542] ([i915#14544] / [i915#5354]) -> [SKIP][543] ([i915#5354])
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          [SKIP][544] ([i915#12343]) -> [SKIP][545] ([i915#12343] / [i915#14544])
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade:
    - shard-rkl:          [SKIP][546] ([i915#5354]) -> [SKIP][547] ([i915#14544] / [i915#5354])
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_pm_backlight@fade.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          [SKIP][548] ([i915#3828]) -> [SKIP][549] ([i915#14544] / [i915#3828])
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_pm_dc@dc5-retention-flops.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][550] ([i915#9295]) -> [SKIP][551] ([i915#3361])
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html
    - shard-tglu:         [SKIP][552] ([i915#15128]) -> [FAIL][553] ([i915#9295])
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][554] ([i915#3828]) -> [SKIP][555] ([i915#9340])
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][556] ([i915#14544] / [i915#15073]) -> [SKIP][557] ([i915#15073])
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][558] ([i915#14544] / [i915#6524]) -> [SKIP][559] ([i915#6524])
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][560] ([i915#11520]) -> [SKIP][561] ([i915#11520] / [i915#14544]) +5 other tests skip
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-dg1:          [SKIP][562] ([i915#11520]) -> [SKIP][563] ([i915#11520] / [i915#4423])
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-15/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][564] ([i915#11520] / [i915#14544]) -> [SKIP][565] ([i915#11520]) +6 other tests skip
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          [SKIP][566] ([i915#14544] / [i915#9683]) -> [SKIP][567] ([i915#9683])
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          [SKIP][568] ([i915#9683]) -> [SKIP][569] ([i915#14544] / [i915#9683])
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb8888.html
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-rkl:          [SKIP][570] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][571] ([i915#1072] / [i915#9732]) +20 other tests skip
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-blt.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@psr2-cursor-plane-move:
    - shard-rkl:          [SKIP][572] ([i915#1072] / [i915#9732]) -> [SKIP][573] ([i915#1072] / [i915#14544] / [i915#9732]) +12 other tests skip
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_psr@psr2-cursor-plane-move.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_psr@psr2-cursor-plane-move.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-dg1:          [SKIP][574] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][575] ([i915#1072] / [i915#9732])
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-dg1-12/igt@kms_psr@psr2-sprite-mmap-cpu.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-17/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-rkl:          [SKIP][576] ([i915#14544] / [i915#9685]) -> [SKIP][577] ([i915#9685])
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][578] ([i915#14544]) -> [SKIP][579] ([i915#5289])
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          [SKIP][580] ([i915#5289]) -> [SKIP][581] ([i915#14544]) +2 other tests skip
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-rkl:          [SKIP][582] ([i915#14544] / [i915#3555]) -> [SKIP][583] ([i915#3555])
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_sharpness_filter@invalid-filter-with-scaler:
    - shard-rkl:          [SKIP][584] ([i915#14544]) -> [SKIP][585] ([i915#15232])
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_sharpness_filter@invalid-filter-with-scaler.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_sharpness_filter@invalid-filter-with-scaler.html

  * igt@kms_sharpness_filter@invalid-filter-with-scaling-mode:
    - shard-rkl:          [SKIP][586] ([i915#15232]) -> [SKIP][587] ([i915#14544]) +1 other test skip
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@kms_sharpness_filter@invalid-filter-with-scaling-mode.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_sharpness_filter@invalid-filter-with-scaling-mode.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          [SKIP][588] ([i915#14544]) -> [SKIP][589] ([i915#3555] / [i915#9906])
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_vrr@negative-basic.html
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          [SKIP][590] ([i915#14544] / [i915#2437]) -> [SKIP][591] ([i915#2437])
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_writeback@writeback-fb-id.html

  * igt@panthor/panthor_gem@bo_mmap_offset_invalid_handle:
    - shard-rkl:          [SKIP][592] ([i915#14544] / [i915#15265]) -> [SKIP][593] ([i915#15265])
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@panthor/panthor_gem@bo_mmap_offset_invalid_handle.html
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@panthor/panthor_gem@bo_mmap_offset_invalid_handle.html

  * igt@panthor/panthor_vm@vm_create_destroy:
    - shard-rkl:          [SKIP][594] ([i915#15265]) -> [SKIP][595] ([i915#14544] / [i915#15265]) +2 other tests skip
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-8/igt@panthor/panthor_vm@vm_create_destroy.html
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@panthor/panthor_vm@vm_create_destroy.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [SKIP][596] ([i915#2434]) -> [SKIP][597] ([i915#14544] / [i915#2434])
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-5/igt@perf@mi-rpc.html
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@perf@mi-rpc.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          [SKIP][598] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][599] ([i915#3291] / [i915#3708]) +1 other test skip
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@prime_vgem@basic-fence-read.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          [SKIP][600] ([i915#14544] / [i915#9917]) -> [SKIP][601] ([i915#9917]) +1 other test skip
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-off.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
  [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14550
  [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
  [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14785]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785
  [i915#14902]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14902
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15091]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15091
  [i915#15095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15128]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15178
  [i915#15232]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15265]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15265
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17535 -> Patchwork_156505v3

  CI-20190529: 20190529
  CI_DRM_17535: 08d90d400dab923313d20526d1122d4688893391 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8621: 8621
  Patchwork_156505v3: 08d90d400dab923313d20526d1122d4688893391 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/index.html

--===============8649641708010076944==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Defer signalling the req=
uest fence (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/156505/">https://patchwork.freedesktop.org/series/156505/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156505v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156505v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17535_full -&gt; Patchwork_156505v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_156505v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_156505v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
156505v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-tglu-2/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v=
3/shard-tglu-5/igt@gem_mmap_gtt@cpuset-big-copy.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_joiner@basic-max-non-j=
oiner.html">SKIP</a></li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_joiner@basic-max-non-j=
oiner.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_156505v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@api_intel_bb@crc32.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-snb4/igt@drm_buddy@drm_buddy@drm_tes=
t_buddy_fragmentation_performance.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095">i915#15095</a>) +1 o=
ther test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_caching@read-writes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_caching@read-writes.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12964">i915#12964</a>) +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-6/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_eio@kms.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13363">i915#13363</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_exec_balancer@paralle=
l-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@gem_exec_capture@capture-i=
nvisible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@gem_exec_capture@capture-=
invisible@smem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-c=
pu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_exec_reloc@basic-write=
-read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_fence_thrash@bo-write-=
verify-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk9/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@gem_lmem_swapping@paralle=
l-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_mmap@bad-offset.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_partial_pwrite_pread@r=
eads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk9/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_pxp@create-valid-prote=
cted-context.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156505v3/shard-rkl-4/igt@gem_pxp@regular-baseline-src-copy-readible.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156505v3/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-on=
.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test timeout</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">TIMEOUT</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +=
1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_render_copy@mixed-tile=
d-to-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4885">i915#4885</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_tiled_blits@basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@gem_userptr_blits@readonl=
y-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@gen9_exec_parse@batch-inv=
alid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-snb4/igt@i915_drm_fdinfo@virtual-bus=
y-hang.html">SKIP</a> +48 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@i915_drm_fdinfo@virtual-bu=
sy-idle-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17535/shard-tglu-5/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-3/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17535/shard-tglu-6/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/=
shard-tglu-9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-9/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17535/shard-tglu-6/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-2/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_17535/shard-tglu-10/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535=
/shard-tglu-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-8/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_17535/shard-tglu-4/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-4/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_17535/shard-tglu-10/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1753=
5/shard-tglu-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-10/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17535/shard-tglu-8/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-4=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-7/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_175=
35/shard-tglu-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-9/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_17535/shard-tglu-5/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17535/shard-tglu-2=
/igt@i915_module_load@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156505v3/shard-tglu-2/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/sh=
ard-tglu-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-6/igt@i915_modu=
le_load@load.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156505v3/shard-tglu-5/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3=
/shard-tglu-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-4/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15650=
5v3/shard-tglu-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-9/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_156505v3/shard-tglu-2/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
6505v3/shard-tglu-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156505v3/shard-tglu-4/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_156505v3/shard-tglu-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-9/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-10/igt@i915_module_load@loa=
d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_156505v3/shard-tglu-5/igt@i915_module_load@load.html">SKIP</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu=
-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_156505v3/shard-tglu-9/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_156505v3/shard-tglu-3/igt@i915_module_load@load.html">PASS</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785">i91=
5#14785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@i915_pm_rc6_residency@rc6=
-fence.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13790">i915#13790</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@i915_pm_rps@thresholds-idl=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@i915_query@hwconfig_table=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-tr=
ansition@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-3/igt@kms_atomic_transi=
tion@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#595=
6</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5=
190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +87 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-y=
f-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4=
-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +211 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a=
-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434"=
>i915#10434</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen=
12-rc-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156505v3/shard-dg1-15/igt@kms_ccs@crc-primary-rotation-18=
0-y-tiled-gen12-rc-ccs.html">DMESG-WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +2 other tests dm=
esg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#609=
5</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +12 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1.html">ABORT</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +153 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +42 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_cdclk@mode-transition=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_chamelium_color@ctm-ma=
x.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_chamelium_frames@hdmi-=
crc-nonplanar-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other=
 tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_chamelium_frames@hdmi-=
crc-nonplanar-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd=
-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_sharpness_filter@filter-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_chamelium_sharpness_f=
ilter@filter-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_content_protection@con=
tent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-11/igt@kms_content_protection@ue=
vent@pipe-a-dp-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_156505v3/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a>) +45 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_cursor_crc@cursor-onsc=
reen-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fa=
il</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_cursor_crc@cursor-ran=
dom-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fa=
il</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_cursor_crc@cursor-rand=
om-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_cursor_legacy@cursora-=
vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-at=
omic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2346">i915#2346</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/sh=
ard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561">i915=
#14561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2065">i915#2065</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms-o=
n-nop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_flip@2x-flip-vs-dpms-=
on-nop-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk1/igt@kms_flip@2x-flip-vs-expired=
-vblank-interruptible.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13027">i915#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-panni=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-snb6/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156505v3/shard-snb6/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14033">i915#14033</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_flip@2x-nonexisting-f=
b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupt=
ible.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156505v3/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +6 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg1-15/igt@kms_flip@flip-vs-suspend@=
c-hdmi-a4.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i9=
15#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587=
">i915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#26=
72</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp=
-xtile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-upscaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> +27 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_156505v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-dra=
w-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +=
8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> +127 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +37 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +11=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_frontbuffer_tracking@p=
sr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +17 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +17 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_invalid_mode@zero-clock.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/=
shard-rkl-6/igt@kms_invalid_mode@zero-clock.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8826">i915#8826</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_156505v3/shard-dg2-8/igt@kms_joiner@invalid-modeset-force-big-joine=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/10656">i915#10656</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
6505v3/shard-rkl-6/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i9=
15#11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_pipe_stress@stress-xr=
gb8888-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@kms_plane_alpha_blend@alph=
a-basic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12178">i915#12178</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@kms_plane_alpha_blend@alph=
a-basic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7862">i915#7862</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_156505v3/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7294">i915#7294</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_plane_multiple@2x-til=
ing-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_multiple@2x-tili=
ng-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_plane_multiple@2x-tili=
ng-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-modifiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_scaling@plane-sca=
ler-unity-scaling-with-modifiers.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_scaling@planes-un=
ity-scaling-downscale-factor-0-5.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152=
">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_scaling@pl=
anes-unity-scaling-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_plane_scaling@pl=
anes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8152">i915#8152</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15650=
5v3/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/sha=
rd-rkl-6/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#1=
5073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-st=
ress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-6/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505=
v3/shard-dg2-1/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915=
#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk9/igt@kms_psr2_sf@fbc-pr-overlay-=
plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-snb4/igt@kms_psr2_sf@fbc-pr-primary-=
plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk10/igt@kms_psr2_sf@pr-cursor-plan=
e-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-pl=
ane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_psr2_sf@pr-overlay-pla=
ne-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-=
plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_psr@fbc-psr-cursor-pl=
ane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_psr@psr-cursor-render.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_psr@psr-cursor-render.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_scaling_modes@scaling-=
mode-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_selftest@drm_framebuf=
fer.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk1/igt@kms_selftest@drm_framebuffe=
r.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@queue-idle@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@kms_sequence@queue-idle@pipe-b-hdmi-a-2.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_156505v3/shard-rkl-3/igt@kms_sequence@queue-idle@pipe-b-hdmi-a-2.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12964">i915#12964</a>) +15 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_sharpness_filter@filte=
r-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15232">i915#15232</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-scaler-upscale:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_sharpness_filter@filt=
er-scaler-upscale.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15232">i915#15232</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@invalid-filter-with-scaler:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_sharpness_filter@inva=
lid-filter-with-scaler.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15232">i915#15232</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@kms_vrr@flipline.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5243">i915#15243</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@kms_vrr@max-min.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@kms_vrr@seamless-rr-switch=
-drrs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-7/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-glk1/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@panthor/panthor_query@query:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@panthor/panthor_query@quer=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15265">i915#15265</a>)</li>
</ul>
</li>
<li>
<p>igt@panthor/panthor_vm@vm_bind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@panthor/panthor_vm@vm_bind=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15265">i915#15265</a>)</li>
</ul>
</li>
<li>
<p>igt@panthor/panthor_vm@vm_create_destroy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-8/igt@panthor/panthor_vm@vm_cre=
ate_destroy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@perf@polling-small-buf.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard=
-rkl-6/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14550">i915#14550</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/=
shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i=
915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3708">i915#3708</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-8/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-2/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-tglu-1/igt@sriov_basic@bind-unbind-v=
f@vf-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@sriov_basic@enable-vfs-bin=
d-unbind-each-numvfs-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg2-5/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@fbdev@unaligned-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2582">i915#2582</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156505v3/shard-rkl-4/igt@fbdev@unaligned-write.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3.html">ABORT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
131">i915#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156505v3/shard-rkl-2/igt@gem_ctx_isolation@preservation-s3.ht=
ml">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-17/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391=
">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-dg1-18/igt@gem_eio@in-flight-suspend=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-mtlp-7/igt@gem_eio@unwedge-stress.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15178">i915#1=
5178</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_156505v3/shard-mtlp-3/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_156505v3/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-2/igt@gem_pxp@protected-raw-src-copy-not-readible.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@gem_pxp@=
protected-raw-src-copy-not-readible.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@softpin:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-2/igt@gem_softpin@softpin.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915=
#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_156505v3/shard-rkl-8/igt@gem_softpin@softpin.html">PASS</a> +7 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-11/igt@i915_module_load@resize-bar.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
545">i915#14545</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156505v3/shard-dg2-8/igt@i915_module_load@resize-bar.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-snb7/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729">i915#13=
729</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13821">i915#13821</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156505v3/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156505v3/shard-mtlp-5/igt@i915_selftest@live@workarounds.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-c=
cs.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15091">i915#15091</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15132">i915#15132</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg2-1/igt@kms_cc=
s@crc-primary-suspend-4-tiled-dg2-mc-ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_color@ctm-0-25.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156505v3/shard-rkl-7/igt@kms_color@ctm-0-25.html">PASS</a> +2=
 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_cursor_crc@curs=
or-random-256x85@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13707">i915#13707</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156505v3/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fal=
lback.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html=
">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14033">i915#14033</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb7/igt@kms_flip@2x-=
flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-v=
ga1-hdmi-a1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-snb7/igt@kms_flip@2x-=
flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3637">i915#3637</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_flip@bo-too-big-int=
erruptible.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14553">i915#14553</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_flip@flip-vs-dpms-on-n=
op.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-11/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1302=
7">i915#13027</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_156505v3/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hd=
mi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14600">i915#14600</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_156505v3/shard-snb7/igt@kms_flip@wf_vblank-ts=
-check-interruptible@a-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bp=
p-linear-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-r=
kl-5/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.=
html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1565=
05v3/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-dra=
w-mmap-wc.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-plane:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_156505v3/shard-rkl-4/igt@kms_lease@lease-invalid-plane.html">PASS<=
/a> +51 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1119=
0">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pipe_crc_basic@han=
g-read-crc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8825">i915#8825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane@plane-panning-=
top-left.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_plane_alpha_=
blend@constant-alpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-=
7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5=
-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
56505v3/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upsca=
le-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7=
/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling=
@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@km=
s_plane_scaling@planes-scaler-unity-scaling@pipe-a.html">PASS</a> +2 other =
tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling=
@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shar=
d-rkl-7/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-b.html">PASS=
</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i9=
15#13441</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pm_dc@dc5-dpms-negative=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1849">i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_pm_rpm@cursor-dpms.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156505v3/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-19/igt@kms_vblank@ts-continuation-modeset.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156505v3/shard-dg1-18/igt@kms_vblank@ts-continuation-mod=
eset.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-4/igt@kms_vrr@negative-basic.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156505v3/shard-dg2-11/igt@kms_vrr@negative-basic.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-2/igt@perf_pmu@interrupts.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14902">i915#149=
02</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_156505v3/shard-rkl-7/igt@perf_pmu@interrupts.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@api_intel_bb@blit-rel=
oc-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/62=
30">i915#6230</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_156505v3/shard-rkl-4/igt@api_intel_bb@crc32.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#=
6230</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_ccs@block-multicop=
y-compressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7697">i915#7697</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156505v3/shard-rkl-6/igt@gem_close_race@multigpu-basic-threa=
ds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#2=
80</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_156505v3/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363">i915#13363</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156=
505v3/shard-rkl-4/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@gem_exec_balancer@par=
allel-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6334">i915#6334</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@gem_exec_capture=
@capture-invisible@smem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i9=
15#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156505v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-active.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@gem_exec_reloc@bas=
ic-write-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7276">i915#7276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@gem_exec_schedule@semap=
hore-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613=
">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_156505v3/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gem_lmem_swapping@random.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156505v3/shard-rkl-5/igt@gem_lmem_swapping@random.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gem_pread@snoop.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"=
>i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_156505v3/shard-rkl-7/igt@gem_pread@snoop.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282=
</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@gem_readwrite@write-bad-handle.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">=
i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_156505v3/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@gem_userptr_blit=
s@readonly-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i91=
5#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_156505v3/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8399">i915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@i915_pm_freq_api@fre=
q-reset-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@i915_pm_rc6_residency@media-rc=
6-accuracy.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4=
387</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_156505v3/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#770=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
156505v3/shard-rkl-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/770=
7">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12454">i915#12454</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12712">i915#12712</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4=
/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156505v3/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5286">i915#5286</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5=
286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_156505v3/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-1=
2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#45=
38</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
8">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_156505v3/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156505v3/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_156505v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32=
bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rota=
te-180-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-1=
2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_ccs@bad-pixel-format-4-=
tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +10 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pi=
pe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-8/ig=
t@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-=
mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_c=
cs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a=
>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_ccs@crc-primary-suspend=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_ccs@crc-primary-su=
spend-y-tiled-gen12-rc-ccs.html">ABORT</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-r=
c-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-3/igt@kms_cc=
s@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098"=
>i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_ccs@crc-sprite-plan=
es-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_chamelium_edid@hdmi-mode-timings.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_=
chamelium_edid@hdmi-mode-timings.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151"=
>i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#126=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_color@deep-color.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655"=
>i915#12655</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_content_protection@dp-mst-=
lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3116">i915#3116</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_156505v3/shard-rkl-7/igt@kms_content_protection@type1.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118"=
>i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9424">i915#9424</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-4/igt@kms_content_protection@uevent.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i=
915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156505v3/shard-dg2-11/igt@kms_content_protection@ueven=
t.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1339">i915#1339</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x=
10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85.html">DME=
SG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-=
256x85.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21.html">DME=
SG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_156505v3/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding=
-64x21.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-bottom:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_cursor_edge_walk@256x256-top-bottom.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_cursor_edge_walk@256x256-to=
p-bottom.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12964">i915#12964</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cur=
sor_legacy@cursora-vs-flipa-toggle.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_cu=
rsor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-toggle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_cursor_legac=
y@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">=
i915#9723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_156505v3/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_156505v3/shard-rkl-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/972=
3">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_156505v3/shard-rkl-7/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_156505v3/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i91=
5#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3955">i915#3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#=
658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_156505v3/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-13/igt@kms_flip@2x-flip-vs-expired-vblank-interrupt=
ible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_156505v3/shard-dg1-14/igt@kms_flip@2x-flip-vs-ex=
pired-vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i91=
5#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_156505v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_flip@2x-plain-flip-ts=
-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard=
-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upsc=
aling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-=
rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscalin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@k=
ms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-=
indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_frontb=
uffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5354">i915#5354</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
56505v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-=
draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/1825">i915#1825</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-=
rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/12964">i915#12964</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_fro=
ntbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms=
_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
102">i915#15102</a>) +3 other tests skip</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen=
-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shar=
d-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mm=
ap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15104">i915#15104</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/ig=
t@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5354">i915#5354</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shar=
d-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3023">i915#3023</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5439">i915#5439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-=
tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg=
2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/s=
hard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri=
-indfb-draw-pwrite.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_156505v3/shard-dg1-15/igt@kms_frontbuffer_tracki=
ng@psr-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i9=
15#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156505v3/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_156505v3/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i9=
15#10656</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_joiner@basic-big-joiner=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339">=
i915#12339</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12394">i915#12394</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_joine=
r@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1839">i915#1839</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_multipip=
e_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-7/igt@kms_pipe_crc_basic@suspend-read-crc.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12756">i915#12756</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13476">i915#13476</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pipe_crc_=
basic@suspend-read-crc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hd=
mi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13476">i915#13476</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pipe_crc_=
basic@suspend-read-crc@pipe-a-hdmi-a-1.html">DMESG-WARN</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_pipe_stress@stress-xrgb8888=
-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_156505v3/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-none.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958"=
>i915#13958</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_156505v3/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-ro=
tation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7=
/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/122=
47">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-ro=
tation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v=
3/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-=
b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12247">i915#12247</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12343">i915#12343</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_pm_backlight@brightness-with-=
dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12343">i915#12343</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
56505v3/shard-rkl-6/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"=
>i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i=
915#3828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_156505v3/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1565=
05v3/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128">i915#151=
28</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_156505v3/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
56505v3/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_pm_rpm@m=
odeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6524">i915#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-conti=
nuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_psr2_s=
f@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#115=
20</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-cont=
inuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-15/igt@kms_psr2_sf@fbc=
-psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4=
423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_p=
sr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)=
 +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9683">i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_psr2_su@page_flip-nv12.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">=
i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_156505v3/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_psr@fbc-ps=
r2-primary-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +20 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_psr@psr2-cursor-plane-move.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_psr@psr2-cursor-plane-mo=
ve.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +12 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-dg1-12/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-dg1-17/igt@kms_psr@psr2-s=
prite-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@kms_p=
sr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-2=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc-stealin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-5/igt@kms_setmod=
e@invalid-clone-single-crtc-stealing.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@invalid-filter-with-scaler:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_sharpness_filter@invalid-filter-with-scal=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_sharpness_filter@in=
valid-filter-with-scaler.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15232">i915#15232</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@invalid-filter-with-scaling-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@kms_sharpness_filter@invalid-filter-with-scal=
ing-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15232">i915#15232</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-6/igt@kms_sharpness_fil=
ter@invalid-filter-with-scaling-mode.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_156505v3/shard-rkl-5/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2437">i915#2437</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_156505v3/shard-rkl-4/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@panthor/panthor_gem@bo_mmap_offset_invalid_handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@panthor/panthor_gem@bo_mmap_offset_invalid_ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15265">i915#15265</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@panth=
or/panthor_gem@bo_mmap_offset_invalid_handle.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15265">i915#15265</a>)=
</li>
</ul>
</li>
<li>
<p>igt@panthor/panthor_vm@vm_create_destroy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-8/igt@panthor/panthor_vm@vm_create_destroy.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15265">i915#15265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_156505v3/shard-rkl-6/igt@panthor/panthor_vm@vm_create_destr=
oy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15265">i915#15265</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-5/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v3/sh=
ard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@prime_vgem@basi=
c-fence-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17535/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_156505v3/shard-rkl-7/igt@sriov_basic@enable-v=
fs-autoprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9917">i915#9917</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17535 -&gt; Patchwork_156505v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17535: 08d90d400dab923313d20526d1122d4688893391 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8621: 8621<br />
  Patchwork_156505v3: 08d90d400dab923313d20526d1122d4688893391 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8649641708010076944==--
