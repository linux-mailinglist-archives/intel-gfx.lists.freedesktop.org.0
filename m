Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1821274A2
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 05:31:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3446EBCC;
	Fri, 20 Dec 2019 04:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B528F6EBCA;
 Fri, 20 Dec 2019 04:31:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A53AAA0019;
 Fri, 20 Dec 2019 04:31:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Fri, 20 Dec 2019 04:31:16 -0000
Message-ID: <157681627665.9213.12065943716091426996@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218151350.19579-1-animesh.manna@intel.com>
In-Reply-To: <20191218151350.19579-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRFAg?=
 =?utf-8?q?Phy_compliance_auto_test?=
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

Series: DP Phy compliance auto test
URL   : https://patchwork.freedesktop.org/series/71121/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7599_full -> Patchwork_15828_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15828_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15828_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15828_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_shared@exec-shared-gtt-render:
    - shard-apl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl6/igt@gem_ctx_shared@exec-shared-gtt-render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-apl2/igt@gem_ctx_shared@exec-shared-gtt-render.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7599_full and Patchwork_15828_full:

### New Piglit tests (6) ###

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 1:
    - Statuses : 1 fail(s)
    - Exec time: [12.78] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 3:
    - Statuses : 1 fail(s)
    - Exec time: [12.75] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 4:
    - Statuses : 1 fail(s)
    - Exec time: [12.71] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 7:
    - Statuses : 1 fail(s)
    - Exec time: [12.69] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2_array3-position-double_dmat2x4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@sgis_generate_mipmap@gen-teximage:
    - Statuses : 1 fail(s)
    - Exec time: [4.53] s

  

Known issues
------------

  Here are the changes found in Patchwork_15828_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111736])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb4/igt@gem_exec_parallel@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb4/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#707])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#456] / [i915#460]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb5/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#34])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl4/igt@kms_flip@plain-flip-fb-recreate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl6/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#766])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#435] / [i915#667])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-iclb:         [PASS][27] -> [INCOMPLETE][28] ([i915#123] / [i915#140])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][29] -> [INCOMPLETE][30] ([fdo#103665])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +7 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-tglb:         [INCOMPLETE][37] ([i915#456]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb1/igt@gem_ctx_isolation@vecs0-s3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb5/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][39] ([fdo#108838] / [i915#435]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@gem_exec_create@forked.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb2/igt@gem_exec_create@forked.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][41] ([i915#530]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-snb:          [TIMEOUT][43] ([i915#530]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-skl:          [TIMEOUT][45] ([fdo#111732]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl2/igt@gem_pipe_control_store_loop@reused-buffer.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl3/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][49] ([i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl10/igt@gem_softpin@noreloc-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][51] ([i915#470] / [i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@gem_sync@basic-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb4/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][53] ([i915#435] / [i915#472]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@gem_sync@basic-store-each.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb4/igt@gem_sync@basic-store-each.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][55] ([i915#716]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][57] ([i915#447]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-hsw:          [DMESG-WARN][63] ([IGT#6]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-hsw7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-skl:          [INCOMPLETE][65] -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][67] ([i915#49]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][69] ([i915#474] / [i915#667]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][71] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-tglb:         [INCOMPLETE][73] ([i915#456] / [i915#460]) -> [PASS][74] +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][75] ([i915#648] / [i915#667]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][77] ([fdo#111912] / [fdo#112080]) -> [SKIP][78] ([fdo#112080])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb4/igt@gem_ctx_isolation@vcs2-none.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][79] ([fdo#112080]) -> [SKIP][80] ([fdo#111912] / [fdo#112080])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb3/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][81] ([fdo#112021]) -> [SKIP][82] ([fdo#112016] / [fdo#112021])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb3/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [INCOMPLETE][83] ([i915#474] / [i915#667]) -> [FAIL][84] ([i915#49])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][85] ([i915#648]) -> [INCOMPLETE][86] ([i915#648] / [i915#667])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [INCOMPLETE][87] ([i915#456] / [i915#460]) -> [DMESG-WARN][88] ([i915#402])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb2/igt@kms_psr@psr2_suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/shard-tglb2/igt@kms_psr@psr2_suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7599 -> Patchwork_15828

  CI-20190529: 20190529
  CI_DRM_7599: 03dfaf2e5f39b632d0187544f3c988b8596f11b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15828: c81ef6762f122c61a6d7c3dbda225430fdb7db7b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
