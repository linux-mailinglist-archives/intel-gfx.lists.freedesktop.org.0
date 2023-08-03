Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9922276DD89
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 03:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C623810E58E;
	Thu,  3 Aug 2023 01:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E7AA10E212;
 Thu,  3 Aug 2023 01:50:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25919A00E6;
 Thu,  3 Aug 2023 01:50:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6073792911437036803=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 03 Aug 2023 01:50:29 -0000
Message-ID: <169102742910.5269.17939583622400764148@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230802184940.911753-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230802184940.911753-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Fix_potential_null_pointer_deref_in_GuC_=27steal_i?=
 =?utf-8?q?d=27_test?=
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

--===============6073792911437036803==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Fix potential null pointer deref in GuC 'steal id' test
URL   : https://patchwork.freedesktop.org/series/121903/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13463_full -> Patchwork_121903v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_121903v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_121903v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_121903v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@core_setmaster@master-drop-set-user:
    - shard-dg2:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@core_setmaster@master-drop-set-user.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-snb:          NOTRUN -> [ABORT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - shard-dg2:          NOTRUN -> [SKIP][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events.html

  
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          [SKIP][4] ([i915#7701]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@device_reset@unbind-cold-reset-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_121903v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@short-buffer-block:
    - shard-dg2:          [PASS][6] -> [SKIP][7] ([i915#2575]) +47 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@drm_read@short-buffer-block.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@drm_read@short-buffer-block.html

  * igt@fbdev@read:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#2582])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@fbdev@read.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#3555] / [i915#5325])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][10] -> [FAIL][11] ([i915#6268])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [PASS][12] -> [FAIL][13] ([i915#6786])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-snb:          NOTRUN -> [DMESG-WARN][14] ([i915#8841]) +5 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@engines-hang:
    - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1099]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb6/igt@gem_ctx_persistence@engines-hang.html

  * igt@gem_exec_await@wide-contexts:
    - shard-dg2:          [PASS][16] -> [FAIL][17] ([i915#5892])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-1/igt@gem_exec_await@wide-contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#4771])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_capture@pi@vcs1:
    - shard-mtlp:         [PASS][19] -> [FAIL][20] ([i915#4475] / [i915#7765])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-6/igt@gem_exec_capture@pi@vcs1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@gem_exec_capture@pi@vcs1.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-mtlp:         [PASS][21] -> [DMESG-WARN][22] ([i915#5591])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-6/igt@gem_exec_capture@pi@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#3539] / [i915#4852])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#3281])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#3281]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_schedule@preempt-self:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#2575]) +93 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_exec_schedule@preempt-self.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#4860])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-dg2:          [PASS][28] -> [SKIP][29] ([i915#5775])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_lmem_evict@dontneed-evict-race.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#4565])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][31] -> [DMESG-WARN][32] ([i915#4936] / [i915#5493])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4077])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-1/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4077])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#3282])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-snb:          [PASS][36] -> [DMESG-FAIL][37] ([i915#8295])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4270])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#2575] / [i915#5190]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4079]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@noreloc-s3:
    - shard-dg2:          [PASS][41] -> [FAIL][42] ([fdo#103375]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-6/igt@gem_softpin@noreloc-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#3297])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3297] / [i915#4880])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gen3_render_tiledx_blits:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([fdo#109289])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@gen3_render_tiledx_blits.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([fdo#109289]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][47] -> [ABORT][48] ([i915#5566])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#2527])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [PASS][50] -> [FAIL][51] ([i915#8691])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg1:          [PASS][52] -> [SKIP][53] ([i915#1397])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#8925])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][55] -> [SKIP][56] ([i915#7984])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-4/igt@i915_power@sanity.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-1/igt@i915_power@sanity.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#4212])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1:
    - shard-mtlp:         [PASS][58] -> [FAIL][59] ([i915#2521]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-3/igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#8502]) +7 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4538] / [i915#5286])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#3638]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [PASS][63] -> [SKIP][64] ([fdo#109315]) +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-mtlp:         [PASS][65] -> [FAIL][66] ([i915#3743])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#6187])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4538])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([fdo#109315] / [i915#5190]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#3689] / [i915#5354] / [i915#6095]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3886] / [i915#6095])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#5354] / [i915#6095])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#6095])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3742])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#7828]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#7828])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#4103] / [i915#4213]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([fdo#111767] / [i915#3546])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#2346])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-apl:          [PASS][82] -> [FAIL][83] ([i915#2346])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3555])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#3637])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-mtlp:         [PASS][86] -> [DMESG-WARN][87] ([i915#1982])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#2122])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#2672])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#2672]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#2587] / [i915#2672])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([fdo#111825]) +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#1825]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([fdo#109315]) +15 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#8708]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#3458]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3555] / [i915#8228]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - shard-mtlp:         [PASS][99] -> [FAIL][100] ([i915#1623])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-3/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-snb:          NOTRUN -> [DMESG-FAIL][101] ([fdo#103375])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][102] ([i915#8292])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#5176]) +5 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#5176]) +27 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-14/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#5235]) +19 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][106] ([fdo#109271]) +172 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb7/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#5235]) +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#658])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([fdo#111068] / [i915#658])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@sprite_plane_onoff:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#1072] / [i915#4078])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_selftest@drm_format_helper:
    - shard-snb:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#8661])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb6/igt@kms_selftest@drm_format_helper.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][112] ([i915#5465]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@perf@blocking-parameterized:
    - shard-dg2:          [PASS][113] -> [SKIP][114] ([i915#5608]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@perf@blocking-parameterized.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@busy-accuracy-2:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#5608]) +5 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@perf_pmu@busy-accuracy-2.html

  * igt@v3d/v3d_mmap@mmap-bad-flags:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#2575]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@v3d/v3d_mmap@mmap-bad-flags.html

  * igt@v3d/v3d_submit_csd@bad-pad:
    - shard-glk:          NOTRUN -> [SKIP][117] ([fdo#109271]) +16 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk5/igt@v3d/v3d_submit_csd@bad-pad.html

  * igt@vc4/vc4_mmap@mmap-bo:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#7711]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@vc4/vc4_mmap@mmap-bo.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#7711])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-dg2:          [SKIP][120] ([i915#6767]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@core_hotunplug@unbind-rebind.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-glk:          [INCOMPLETE][122] ([i915#4793]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk5/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][124] ([i915#2842]) -> [PASS][125] +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][126] ([i915#2842]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-dg2:          [SKIP][128] ([fdo#109283] / [i915#2575]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_params@no-blt.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          [ABORT][130] ([i915#7975] / [i915#8213]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@i915_module_load@reload:
    - shard-dg2:          [FAIL][132] -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@i915_module_load@reload.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][134] ([i915#8489] / [i915#8668]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-rkl:          [SKIP][136] ([i915#1937]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-dg1:          [FAIL][138] ([i915#3591]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-dg2:          [SKIP][140] ([i915#5174]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@i915_pm_rpm@basic-rte.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@gem-execbuf-stress@smem0:
    - shard-dg1:          [FAIL][142] ([i915#7940]) -> [PASS][143] +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-17/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][144] ([i915#1397]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg2:          [SKIP][146] ([fdo#109315]) -> [PASS][147] +13 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-mtlp:         [FAIL][148] ([i915#5138]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:
    - shard-dg2:          [FAIL][150] ([fdo#103375]) -> [PASS][151] +3 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-5/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-8/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-mtlp:         [FAIL][152] ([i915#8248]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][154] ([i915#79]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_plane@pixel-format@pipe-b-planes:
    - shard-mtlp:         [FAIL][156] ([i915#1623]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-2/igt@kms_plane@pixel-format@pipe-b-planes.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-6/igt@kms_plane@pixel-format@pipe-b-planes.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][158] ([i915#7484]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@polling-parameterized:
    - shard-dg2:          [SKIP][160] ([i915#5608]) -> [PASS][161] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@perf@polling-parameterized.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@perf@polling-parameterized.html

  * igt@syncobj_timeline@device-submit-unordered:
    - shard-mtlp:         [DMESG-WARN][162] ([i915#2017]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-7/igt@syncobj_timeline@device-submit-unordered.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@syncobj_timeline@device-submit-unordered.html

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - shard-dg2:          [SKIP][164] ([i915#2575]) -> [PASS][165] +79 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg2:          [SKIP][166] ([i915#2575]) -> [SKIP][167] ([i915#8411])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@api_intel_bb@object-reloc-keep-cache.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-dg2:          [SKIP][168] ([i915#8414]) -> [SKIP][169] ([i915#5608])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@drm_fdinfo@all-busy-check-all.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@drm_fdinfo@all-busy-check-all.html

  * igt@feature_discovery@display-2x:
    - shard-dg2:          [SKIP][170] ([i915#2575]) -> [SKIP][171] ([i915#1839])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@feature_discovery@display-2x.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@feature_discovery@display-2x.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          [SKIP][172] ([i915#2575]) -> [SKIP][173] ([i915#3936])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_busy@semaphore.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_busy@semaphore.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [ABORT][174] ([i915#7461]) -> [SKIP][175] ([i915#2575])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_create@create-ext-cpu-access-big.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          [SKIP][176] ([i915#8562]) -> [SKIP][177] ([i915#2575])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_create@create-ext-set-pat.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          [SKIP][178] ([i915#2575]) -> [SKIP][179] ([i915#8555])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          [SKIP][180] ([i915#2575]) -> [SKIP][181] ([i915#280])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_ctx_sseu@engines.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          [SKIP][182] ([i915#2575]) -> [SKIP][183] ([i915#4771])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          [SKIP][184] ([i915#4812]) -> [SKIP][185] ([i915#2575])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_exec_fence@submit3.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          [SKIP][186] ([i915#2575]) -> [SKIP][187] ([i915#3539] / [i915#4852]) +2 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          [SKIP][188] ([i915#2575]) -> [SKIP][189] ([i915#3539])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-set-default:
    - shard-dg2:          [SKIP][190] ([i915#3539] / [i915#4852]) -> [SKIP][191] ([i915#2575])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_exec_flush@basic-wb-set-default.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-set-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          [SKIP][192] ([fdo#109283] / [i915#2575]) -> [SKIP][193] ([fdo#109283] / [i915#5107])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-dg2:          [SKIP][194] ([i915#3281]) -> [SKIP][195] ([i915#2575])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-read-active.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-dg2:          [SKIP][196] ([i915#2575]) -> [SKIP][197] ([i915#3281]) +6 similar issues
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-mtlp:         [ABORT][198] ([i915#7392] / [i915#8131]) -> [TIMEOUT][199] ([i915#7392] / [i915#8628])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          [SKIP][200] ([i915#4860]) -> [SKIP][201] ([i915#2575])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-y.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          [SKIP][202] ([i915#2575]) -> [SKIP][203] ([i915#4860])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_fenced_exec_thrash@2-spare-fences.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-dg2:          [SKIP][204] ([i915#4077]) -> [SKIP][205] ([i915#2575]) +2 similar issues
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg2:          [SKIP][206] ([i915#2575]) -> [SKIP][207] ([i915#4083])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg2:          [SKIP][208] ([i915#4083]) -> [SKIP][209] ([i915#2575]) +2 similar issues
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_mmap_wc@write-read-distinct.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_pread@snoop:
    - shard-dg2:          [SKIP][210] ([i915#2575]) -> [SKIP][211] ([i915#3282]) +3 similar issues
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_pread@snoop.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_pread@snoop.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          [SKIP][212] ([i915#4270]) -> [SKIP][213] ([i915#2575]) +1 similar issue
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_pxp@display-protected-crc.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-dg2:          [SKIP][214] ([i915#2575]) -> [SKIP][215] ([i915#4270])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_pxp@verify-pxp-stale-buf-execution.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          [SKIP][216] ([i915#3282]) -> [SKIP][217] ([i915#2575])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_readwrite@beyond-eob.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
    - shard-dg2:          [SKIP][218] ([i915#2575] / [i915#5190]) -> [SKIP][219] ([i915#5190]) +1 similar issue
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html

  * igt@gem_tiled_wb:
    - shard-dg2:          [SKIP][220] ([i915#2575]) -> [SKIP][221] ([i915#4077]) +1 similar issue
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_tiled_wb.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_tiled_wb.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          [SKIP][222] ([i915#2575]) -> [SKIP][223] ([i915#4879])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_unfence_active_buffers.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          [SKIP][224] ([i915#3297]) -> [SKIP][225] ([i915#2575])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_userptr_blits@unsync-overlap.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          [SKIP][226] ([i915#2575]) -> [SKIP][227] ([i915#3297])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-dg2:          [SKIP][228] ([i915#2575]) -> [SKIP][229] ([fdo#109289])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gen7_exec_parse@basic-allowed.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-dg2:          [SKIP][230] ([i915#2856]) -> [SKIP][231] ([i915#2575])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gen9_exec_parse@bb-chained.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg2:          [SKIP][232] ([i915#2575]) -> [SKIP][233] ([i915#2856]) +1 similar issue
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gen9_exec_parse@bb-large.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gen9_exec_parse@bb-large.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [WARN][234] ([i915#7356]) -> [DMESG-WARN][235] ([i915#7061] / [i915#8617])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@fences:
    - shard-dg2:          [SKIP][236] ([i915#4077]) -> [SKIP][237] ([i915#5174]) +1 similar issue
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@i915_pm_rpm@fences.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@i915_pm_rpm@fences.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-dg1:          [SKIP][238] ([i915#1397]) -> [FAIL][239] ([i915#7940])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-13/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][240] ([i915#1397]) -> [SKIP][241] ([i915#5174])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-dg2:          [SKIP][242] ([i915#5174]) -> [SKIP][243] ([fdo#109506])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          [SKIP][244] ([i915#6621]) -> [SKIP][245] ([i915#2575])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@i915_pm_rps@basic-api.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          [SKIP][246] ([i915#2575]) -> [SKIP][247] ([i915#4212]) +2 similar issues
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][248] ([i915#2575]) -> [SKIP][249] ([i915#404])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-dg2:          [SKIP][250] ([fdo#111614]) -> [SKIP][251] ([fdo#109315]) +1 similar issue
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_fb@linear-32bpp-rotate-270.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-dg2:          [SKIP][252] ([fdo#109315]) -> [SKIP][253] ([fdo#111614])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-dg2:          [SKIP][254] ([i915#5190]) -> [SKIP][255] ([fdo#109315] / [i915#5190])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][256] ([fdo#109315] / [i915#5190]) -> [SKIP][257] ([i915#5190]) +1 similar issue
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-dg2:          [SKIP][258] ([i915#4538] / [i915#5190]) -> [SKIP][259] ([fdo#109315] / [i915#5190]) +2 similar issues
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg2:          [SKIP][260] ([fdo#109315] / [i915#5190]) -> [SKIP][261] ([i915#4538] / [i915#5190]) +2 similar issues
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          [SKIP][262] ([i915#2705]) -> [SKIP][263] ([fdo#109315])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_joiner@basic.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs:
    - shard-dg2:          [SKIP][264] ([i915#2575]) -> [SKIP][265] ([i915#3689] / [i915#5354]) +6 similar issues
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          [SKIP][266] ([i915#3689] / [i915#3886] / [i915#5354]) -> [SKIP][267] ([i915#2575]) +4 similar issues
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:
    - shard-dg2:          [SKIP][268] ([i915#3689] / [i915#5354]) -> [SKIP][269] ([i915#2575]) +5 similar issues
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:
    - shard-dg2:          [SKIP][270] ([i915#2575]) -> [SKIP][271] ([i915#5354]) +8 similar issues
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-dg2:          [SKIP][272] ([i915#2575]) -> [SKIP][273] ([i915#3689] / [i915#3886] / [i915#5354]) +3 similar issues
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_mc_ccs:
    - shard-dg2:          [SKIP][274] ([i915#5354]) -> [SKIP][275] ([i915#2575]) +4 similar issues
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_mc_ccs.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_mc_ccs.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-dg2:          [SKIP][276] ([i915#2575]) -> [SKIP][277] ([fdo#111827])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_chamelium_color@ctm-limited-range.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg2:          [SKIP][278] ([fdo#111827]) -> [SKIP][279] ([i915#2575])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_chamelium_color@ctm-max.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-dg2:          [SKIP][280] ([i915#2575]) -> [SKIP][281] ([i915#7828]) +3 similar issues
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg2:          [SKIP][282] ([i915#7828]) -> [SKIP][283] ([i915#2575]) +3 similar issues
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][284] ([i915#7118]) -> [SKIP][285] ([i915#2575])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          [SKIP][286] ([i915#2575]) -> [SKIP][287] ([i915#3359]) +1 similar issue
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          [SKIP][288] ([i915#3555]) -> [SKIP][289] ([i915#2575]) +1 similar issue
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][290] ([fdo#109274] / [i915#5354]) -> [SKIP][291] ([i915#2575]) +1 similar issue
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][292] ([i915#2575]) -> [SKIP][293] ([fdo#109274] / [i915#5354])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          [SKIP][294] ([i915#2575]) -> [SKIP][295] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [DMESG-FAIL][296] ([i915#2017] / [i915#5954]) -> [FAIL][297] ([i915#2346])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][298] ([fdo#109315]) -> [SKIP][299] ([i915#8812])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][300] ([i915#3955]) -> [SKIP][301] ([fdo#110189] / [i915#3955])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][302] ([fdo#110189] / [i915#3955]) -> [SKIP][303] ([i915#3955])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-dg2:          [SKIP][304] ([fdo#109274]) -> [SKIP][305] ([i915#2575]) +2 similar issues
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          [SKIP][306] ([i915#2575]) -> [SKIP][307] ([fdo#109274]) +2 similar issues
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          [SKIP][308] ([i915#8381]) -> [SKIP][309] ([i915#2575])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_flip@flip-vs-fences-interruptible.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][310] ([fdo#109315]) -> [FAIL][311] ([i915#6880])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          [SKIP][312] ([fdo#109315]) -> [SKIP][313] ([i915#5460])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][314] ([i915#3458]) -> [SKIP][315] ([fdo#109315]) +4 similar issues
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
    - shard-dg2:          [SKIP][316] ([i915#5354]) -> [SKIP][317] ([fdo#109315]) +13 similar issues
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-dg2:          [SKIP][318] ([fdo#109315]) -> [SKIP][319] ([i915#3458]) +7 similar issues
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][320] ([i915#5460]) -> [SKIP][321] ([fdo#109315])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][322] ([i915#8708]) -> [SKIP][323] ([fdo#109315]) +3 similar issues
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [SKIP][324] ([fdo#109315]) -> [SKIP][325] ([i915#5354]) +11 similar issues
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          [SKIP][326] ([fdo#109315]) -> [SKIP][327] ([i915#8708]) +6 similar issues
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][328] ([i915#4816]) -> [SKIP][329] ([i915#4070] / [i915#4816])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          [SKIP][330] ([i915#6301]) -> [SKIP][331] ([i915#2575])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_panel_fitting@atomic-fastset.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-dg2:          [SKIP][332] ([i915#658]) -> [SKIP][333] ([fdo#109315])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-dg2:          [SKIP][334] ([fdo#109315]) -> [SKIP][335] ([i915#658])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@primary_blt:
    - shard-dg2:          [SKIP][336] ([i915#1072]) -> [SKIP][337] ([fdo#109315]) +1 similar issue
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_psr@primary_blt.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_psr@primary_blt.html

  * igt@kms_psr@primary_page_flip:
    - shard-dg1:          [SKIP][338] ([i915#1072] / [i915#4078]) -> [SKIP][339] ([i915#1072])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-18/igt@kms_psr@primary_page_flip.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-14/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_blt:
    - shard-dg2:          [SKIP][340] ([fdo#109315]) -> [SKIP][341] ([i915#1072]) +2 similar issues
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_psr@sprite_blt.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_psr@sprite_blt.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][342] ([i915#4235] / [i915#5190]) -> [SKIP][343] ([i915#2575] / [i915#5190])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][344] ([i915#5190]) -> [SKIP][345] ([i915#2575] / [i915#5190]) +1 similar issue
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          [SKIP][346] ([i915#2575]) -> [SKIP][347] ([i915#4235])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-dg2:          [SKIP][348] ([i915#2575]) -> [SKIP][349] ([i915#3555]) +1 similar issue
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_scaling_modes@scaling-mode-full-aspect.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-mtlp:         [ABORT][350] ([i915#8521]) -> [TIMEOUT][351] ([i915#6950])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-8/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-4/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5775]: https://gitlab.freedesktop.org/drm/intel/issues/5775
  [i915#5892]: https://gitlab.freedesktop.org/drm/intel/issues/5892
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6767]: https://gitlab.freedesktop.org/drm/intel/issues/6767
  [i915#6786]: https://gitlab.freedesktop.org/drm/intel/issues/6786
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8131]: https://gitlab.freedesktop.org/drm/intel/issues/8131
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8295]: https://gitlab.freedesktop.org/drm/intel/issues/8295
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8521]: https://gitlab.freedesktop.org/drm/intel/issues/8521
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8628]: https://gitlab.freedesktop.org/drm/intel/issues/8628
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925


Build changes
-------------

  * Linux: CI_DRM_13463 -> Patchwork_121903v1

  CI-20190529: 20190529
  CI_DRM_13463: 20610a111d61d6945d578360942dc5c7bd828eb5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7412: 7412
  Patchwork_121903v1: 20610a111d61d6945d578360942dc5c7bd828eb5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/index.html

--===============6073792911437036803==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Fix potential null pointer deref in GuC &#39;steal id&#39; test</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/121903/">https://patchwork.freedesktop.org/series/121903/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13463_full -&gt; Patchwork_121903v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_121903v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_121903v1_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_121903v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-user:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@core_setmaster@master-drop-set-user.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@device_reset@unbind-cold-reset-rebind:<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7701">i915#7701</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_121903v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@drm_read@short-buffer-block.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@drm_read@short-buffer-block.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6786">i915#6786</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb6/igt@gem_ctx_persistence@engines-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-contexts:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-1/igt@gem_exec_await@wide-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_exec_await@wide-contexts.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5892">i915#5892</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-6/igt@gem_exec_capture@pi@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@gem_exec_capture@pi@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4475">i915#4475</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7765">i915#7765</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-6/igt@gem_exec_capture@pi@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@gem_exec_capture@pi@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_exec_reloc@basic-write-cpu-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_exec_schedule@preempt-self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +93 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_fence_thrash@bo-write-verify-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_lmem_evict@dontneed-evict-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5775">i915#5775</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#4936</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-1/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-snb4/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctxn.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8295">i915#8295</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-6/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_softpin@noreloc-s3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@gen3_render_tiledx_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gen7_exec_parse@chained-batch.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8691">i915#8691</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@i915_pm_rps@thresholds-idle@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-4/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-1/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-3/igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-3/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1623">i915#1623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-14/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb7/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +172 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_format_helper:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb6/igt@kms_selftest@drm_format_helper.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8661">i915#8661</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5465">i915#5465</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@perf@blocking-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@perf@blocking-parameterized.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@perf_pmu@busy-accuracy-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bad-flags:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@v3d/v3d_mmap@mmap-bad-flags.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-pad:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk5/igt@v3d/v3d_submit_csd@bad-pad.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@vc4/vc4_mmap@mmap-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@vc4/vc4_purgeable_bo@mark-purgeable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@core_hotunplug@unbind-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6767">i915#6767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk3/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4793">i915#4793</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk5/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_params@no-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_exec_params@no-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@i915_module_load@reload.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8489">i915#8489</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@smem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-17/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-12/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> +13 similar issues</p>
</li>
<li>
<p>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-5/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-8/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8248">i915#8248</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-b-planes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-2/igt@kms_plane@pixel-format@pipe-b-planes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1623">i915#1623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-6/igt@kms_plane@pixel-format@pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@perf@polling-parameterized.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@perf@polling-parameterized.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@device-submit-unordered:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-7/igt@syncobj_timeline@device-submit-unordered.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-7/igt@syncobj_timeline@device-submit-unordered.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">PASS</a> +79 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@drm_fdinfo@all-busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@drm_fdinfo@all-busy-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_create@create-ext-cpu-access-big.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8562">i915#8562</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-set-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_exec_flush@basic-wb-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-set-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-forked-all.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8131">i915#8131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8628">i915#8628</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_fenced_exec_thrash@2-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_fenced_exec_thrash@2-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_mmap_wc@write-cpu-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_mmap_wc@write-read-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_mmap_wc@write-read-distinct.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_wb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_tiled_wb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_tiled_wb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_unfence_active_buffers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_unfence_active_buffers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gen7_exec_parse@basic-allowed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@gen7_exec_parse@basic-allowed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7356">i915#7356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8617">i915#8617</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@i915_pm_rpm@fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@i915_pm_rpm@fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-13/igt@i915_pm_rpm@modeset-lpsp.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#5174</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/404">i915#404</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_big_joiner@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_big_joiner@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_ccs@pipe-d-missing-ccs-buffer-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_chamelium_color@ctm-limited-range.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_chamelium_color@ctm-limited-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_chamelium_color@ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5954">i915#5954</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-4/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8381">i915#8381</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5460">i915#5460</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_psr@primary_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_psr@primary_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg1-18/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg1-14/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-dg2-11/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-dg2-6/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13463/shard-mtlp-8/igt@sysfs_timeslice_duration@timeout@vecs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8521">i915#8521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121903v1/shard-mtlp-4/igt@sysfs_timeslice_duration@timeout@vecs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6950">i915#6950</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13463 -&gt; Patchwork_121903v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13463: 20610a111d61d6945d578360942dc5c7bd828eb5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7412: 7412<br />
  Patchwork_121903v1: 20610a111d61d6945d578360942dc5c7bd828eb5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6073792911437036803==--
