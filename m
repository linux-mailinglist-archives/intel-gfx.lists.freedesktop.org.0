Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8C2122187
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 02:30:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70796E92B;
	Tue, 17 Dec 2019 01:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E96B18902B;
 Tue, 17 Dec 2019 01:30:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D514DA47DB;
 Tue, 17 Dec 2019 01:30:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Dec 2019 01:30:32 -0000
Message-ID: <157654623284.21846.13355803121477806647@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216122603.2598155-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191216122603.2598155-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Apply_lmem_size_restriction_to_get=5Fpages?=
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

Series: drm/i915/gem: Apply lmem size restriction to get_pages
URL   : https://patchwork.freedesktop.org/series/70981/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7574_full -> Patchwork_15791_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15791_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@gem_ctx_persistence@vcs1-cleanup.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-iclb8/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_exec_basic@readonly-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@gem_exec_basic@readonly-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-iclb8/igt@gem_exec_basic@readonly-vcs1.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111593])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb9/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [PASS][9] -> [TIMEOUT][10] ([i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [PASS][13] -> [DMESG-WARN][14] ([fdo#111870]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#747])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl6/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#44]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw8/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-hsw5/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - shard-hsw:          [PASS][23] -> [DMESG-FAIL][24] ([i915#44] / [i915#70])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw8/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-hsw5/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([IGT#5])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#667])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#79])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-glk:          [PASS][31] -> [DMESG-FAIL][32] ([i915#118] / [i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#648] / [i915#667])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#456] / [i915#460])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([fdo#111842] / [i915#608])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb2/igt@kms_psr2_su@frontbuffer.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109276]) +6 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][49] ([fdo#111735]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@hibernate:
    - shard-tglb:         [INCOMPLETE][51] ([i915#456]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb8/igt@gem_eio@hibernate.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb2/igt@gem_eio@hibernate.html

  * igt@gem_exec_capture@capture-bsd2:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb6/igt@gem_exec_capture@capture-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-iclb1/igt@gem_exec_capture@capture-bsd2.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@gem_exec_schedule@independent-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-iclb6/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [TIMEOUT][57] ([i915#530]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-glk9/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [DMESG-WARN][61] ([fdo#111870]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb7/igt@gem_userptr_blits@dmabuf-unsync.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-snb1/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-hsw:          [DMESG-WARN][63] ([IGT#6]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-hsw7/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-apl:          [DMESG-WARN][65] ([IGT#6]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][67] ([i915#49]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][69] ([i915#474] / [i915#667]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][71] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][73] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][79] ([fdo#112080]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][81] ([i915#832]) -> [FAIL][82] ([i915#818])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][83] ([i915#39]) -> [FAIL][84] ([i915#413])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb5/igt@i915_pm_rps@waitboost.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/shard-tglb9/igt@i915_pm_rps@waitboost.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7574 -> Patchwork_15791

  CI-20190529: 20190529
  CI_DRM_7574: 950244ca586c6f0efe243bf8c505c01ea5e579fa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15791: 43f358759f4dc73346270d900f9004b54e59a48b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15791/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
