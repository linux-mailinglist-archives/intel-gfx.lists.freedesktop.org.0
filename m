Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2175511A071
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 02:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2282F6EA32;
	Wed, 11 Dec 2019 01:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 135DB6EA2E;
 Wed, 11 Dec 2019 01:24:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09F4AA01BB;
 Wed, 11 Dec 2019 01:24:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 11 Dec 2019 01:24:39 -0000
Message-ID: <157602747901.30690.6076276970615085417@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1575974743.git.jani.nikula@intel.com>
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_enable_DSC_=28rev7=29?=
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

Series: drm/i915/dsi: enable DSC (rev7)
URL   : https://patchwork.freedesktop.org/series/69540/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7532_full -> Patchwork_15665_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15665_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb5/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_exec_parallel@vcs1-contexts:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb4/igt@gem_exec_parallel@vcs1-contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb5/igt@gem_exec_parallel@vcs1-contexts.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-snb:          [PASS][5] -> [DMESG-WARN][6] ([i915#478])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb6/igt@gem_exec_reloc@basic-gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-snb7/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb2/igt@gem_exec_schedule@preempt-queue-blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb6/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([fdo#103665]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][13] -> [TIMEOUT][14] ([i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-glk:          [PASS][15] -> [TIMEOUT][16] ([i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-glk8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-glk7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][19] -> [DMESG-WARN][20] ([fdo#111870])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb7/igt@gem_userptr_blits@sync-unmap-cycles.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22] ([i915#747])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb1/igt@i915_selftest@mock_sanitycheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-snb6/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#112347] / [i915#667])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#456] / [i915#460])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#456] / [i915#460] / [i915#474])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-iclb:         [PASS][31] -> [INCOMPLETE][32] ([i915#123] / [i915#140])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#123])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl9/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][41] -> [DMESG-WARN][42] ([i915#402])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb4/igt@kms_psr@psr2_suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb3/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#69])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [INCOMPLETE][47] ([i915#456]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb1/igt@gem_ctx_isolation@vcs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb4/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd1:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd1.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111735]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][53] ([i915#470]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb1/igt@gem_exec_parallel@contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb4/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-kbl:          [DMESG-WARN][55] ([i915#716]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl7/igt@gem_exec_parse_blt@allowed-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-kbl3/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111677]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb6/igt@gem_exec_schedule@preempt-queue-vebox.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb3/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb7/igt@gem_exec_store@cachelines-vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb4/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb6/igt@gem_userptr_blits@sync-unmap-after-close.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-snb7/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [DMESG-WARN][65] ([i915#747]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-kbl2/igt@i915_selftest@mock_sanitycheck.html
    - shard-skl:          [DMESG-WARN][67] ([i915#747]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-tglb:         [DMESG-FAIL][69] ([i915#402]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +6 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-apl:          [DMESG-WARN][75] -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][79] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][81] ([i915#49]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [INCOMPLETE][83] ([i915#123] / [i915#667]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][87] ([i915#140] / [i915#246]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb6/igt@kms_plane@pixel-format-pipe-a-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-iclb5/igt@kms_plane@pixel-format-pipe-a-planes.html
    - shard-kbl:          [INCOMPLETE][89] ([fdo#103665]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][91] ([i915#460]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb9/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][93] ([fdo#111912] / [fdo#112080]) -> [SKIP][94] ([fdo#112080])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb4/igt@gem_ctx_isolation@vcs2-none.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][95] ([i915#444]) -> [DMESG-FAIL][96] ([i915#436])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb1/igt@gem_eio@kms.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-snb7/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][97] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][98] ([fdo#112347] / [i915#648] / [i915#667])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl1/igt@kms_plane@pixel-format-pipe-a-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][99] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][100] ([fdo#112347] / [i915#648] / [i915#667])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@runner@aborted:
    - shard-snb:          [FAIL][101] ([i915#436]) -> ([FAIL][102], [FAIL][103]) ([fdo#111249] / [i915#436] / [k.org#204565])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb1/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-snb6/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/shard-snb7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#111249]: https://bugs.freedesktop.org/show_bug.cgi?id=111249
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#246]: https://gitlab.freedesktop.org/drm/intel/issues/246
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7532 -> Patchwork_15665

  CI-20190529: 20190529
  CI_DRM_7532: 2004c1c9d9669c6722274d5cf62f8f2b00720d57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15665: 83f777bd3452f8a3e5a13239d0a3fcd66487ee6c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15665/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
