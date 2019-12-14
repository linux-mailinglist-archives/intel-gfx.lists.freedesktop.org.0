Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EF211F3D8
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 21:14:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B83D6E0C1;
	Sat, 14 Dec 2019 20:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDD676E0C1;
 Sat, 14 Dec 2019 20:14:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2D83A0087;
 Sat, 14 Dec 2019 20:14:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Sat, 14 Dec 2019 20:14:45 -0000
Message-ID: <157635448583.13804.13128019131476264652@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213154515.12121-1-vandita.kulkarni@intel.com>
In-Reply-To: <20191213154515.12121-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_WARN=5FON_condition_for_cursor_plane_ddb_allocatio?=
 =?utf-8?q?n?=
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

Series: drm/i915: Fix WARN_ON condition for cursor plane ddb allocation
URL   : https://patchwork.freedesktop.org/series/70893/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7563_full -> Patchwork_15753_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15753_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15753_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15753_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb1/igt@gem_ctx_persistence@rcs0-mixed-process.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@cmd-crossing-page}:
    - shard-tglb:         NOTRUN -> [SKIP][3] +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb2/igt@gen7_exec_parse@cmd-crossing-page.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * {igt@gen9_exec_parse@batch-without-end}:
    - shard-iclb:         NOTRUN -> [SKIP][6] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb3/igt@gen9_exec_parse@batch-without-end.html

  
Known issues
------------

  Here are the changes found in Patchwork_15753_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl7/igt@gem_eio@in-flight-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl10/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_capture@capture-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb1/igt@gem_exec_capture@capture-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb8/igt@gem_exec_capture@capture-bsd2.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111736])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb7/igt@gem_exec_create@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111593])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb3/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@pi-ringfull-blt:
    - shard-glk:          [PASS][15] -> [INCOMPLETE][16] ([i915#58] / [k.org#198133])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-glk7/igt@gem_exec_schedule@pi-ringfull-blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-glk3/igt@gem_exec_schedule@pi-ringfull-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#520])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][25] -> [DMESG-WARN][26] ([fdo#111870]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#747])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl10/igt@i915_selftest@mock_sanitycheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl6/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [PASS][31] -> [DMESG-WARN][32] ([i915#747])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-snb5/igt@i915_selftest@mock_sanitycheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-snb5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-hsw:          [PASS][33] -> [DMESG-WARN][34] ([IGT#6])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-hsw4/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#300])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#646])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#474] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#123] / [i915#667])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([fdo#103665] / [i915#648] / [i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#456] / [i915#460])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-skl:          [PASS][53] -> [DMESG-WARN][54] ([IGT#6])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl9/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl2/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [PASS][55] -> [INCOMPLETE][56] ([i915#61])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-hsw4/igt@perf@disabled-read-error.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-hsw5/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#112080]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][61] ([i915#461]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111735]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][65] ([i915#435]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb4/igt@gem_exec_nop@basic-parallel.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb7/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][73] ([i915#472]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb6/igt@gem_sync@basic-store-all.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [DMESG-WARN][75] ([fdo#111870]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-snb6/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][77] ([i915#454]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +6 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-kbl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
    - shard-skl:          [DMESG-WARN][81] ([i915#744]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-skl:          [FAIL][83] ([i915#54]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-tglb:         [INCOMPLETE][85] ([i915#667]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-kbl:          [INCOMPLETE][87] ([fdo#103665] / [i915#667]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [INCOMPLETE][91] ([i915#456] / [i915#460]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb4/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][93] ([fdo#108145]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][95] ([fdo#108145] / [i915#265]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-apl8/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][101] ([fdo#112080]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][103] ([fdo#109276]) -> [PASS][104] +17 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][105] ([fdo#111912] / [fdo#112080]) -> [SKIP][106] ([fdo#112080])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb5/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][107] ([i915#648] / [i915#667]) -> [INCOMPLETE][108] ([i915#648])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][109] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][110] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][111] ([i915#69]) -> ([FAIL][112], [FAIL][113]) ([i915#69] / [k.org#204565])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl10/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#744]: https://gitlab.freedesktop.org/drm/intel/issues/744
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7563 -> Patchwork_15753

  CI-20190529: 20190529
  CI_DRM_7563: aa81d2aa468b726e50faba4a455efae4c4be2a67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15753: b4f53bbbdfeb2d86f32d686d38f7ddf4dde4319c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15753/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
