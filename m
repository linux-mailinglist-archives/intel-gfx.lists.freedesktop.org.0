Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E2A12AD35
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 16:29:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8588389C14;
	Thu, 26 Dec 2019 15:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B3C189C07;
 Thu, 26 Dec 2019 15:29:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 311A7A0119;
 Thu, 26 Dec 2019 15:29:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Dec 2019 15:29:31 -0000
Message-ID: <157737417117.14824.2315291794533399203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223211008.2371613-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191223211008.2371613-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Flush_other_retirees_inside_intel=5Fgt=5Fretire=5Fr?=
 =?utf-8?b?ZXF1ZXN0cygp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Flush other retirees inside intel_gt_retire_requests()
URL   : https://patchwork.freedesktop.org/series/71333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7630_full -> Patchwork_15904_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15904_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb3/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [PASS][3] -> [FAIL][4] ([i915#232])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-snb7/igt@gem_eio@unwedge-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-snb4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111736])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb3/igt@gem_exec_await@wide-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb6/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#463]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#520])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472] / [i915#707])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb9/igt@gem_sync@basic-many-each.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb8/igt@gem_sync@basic-many-each.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#198])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl10/igt@i915_selftest@mock_requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl5/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#109])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl8/igt@kms_color@pipe-a-ctm-negative.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl6/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#52] / [i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl6/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#456] / [i915#460] / [i915#474])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#456] / [i915#460]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#53])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][47] -> [DMESG-WARN][48] ([i915#402])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb3/igt@kms_psr@psr2_suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb1/igt@kms_psr@psr2_suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-kbl7/igt@gem_ctx_isolation@bcs0-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-kbl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][51] ([i915#679]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl6/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111735]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb3/igt@gem_ctx_shared@q-smoketest-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb2/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][55] ([i915#469]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111593]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb3/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][59] ([i915#435]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb6/igt@gem_exec_nop@basic-sequential.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb2/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][61] ([i915#470]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb9/igt@gem_exec_parallel@contexts.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb4/igt@gem_exec_parallel@contexts.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][63] ([i915#454]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][65] ([i915#109]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [FAIL][67] ([i915#54]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][69] -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][71] ([i915#79]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][73] ([i915#79]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][75] ([i915#49]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][81] ([fdo#111912] / [fdo#112080]) -> [SKIP][82] ([fdo#112080])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb5/igt@gem_ctx_isolation@vcs2-none.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][83] ([i915#454]) -> [SKIP][84] ([i915#468])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7630 -> Patchwork_15904

  CI-20190529: 20190529
  CI_DRM_7630: 28a2aa0ebf1520ea8a0dd89299f7ceea80dfd96f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15904: 2b0d3ef83ecb2836ee9d264a1fa9ebcd4c68649b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15904/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
