Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A951EDC99
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 06:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A71B6E1EE;
	Thu,  4 Jun 2020 04:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DDB089A4B;
 Thu,  4 Jun 2020 04:57:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1768AA47EB;
 Thu,  4 Jun 2020 04:57:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.aiemd@gmail.com>
Date: Thu, 04 Jun 2020 04:57:59 -0000
Message-ID: <159124667906.14555.17005409538215385980@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603103223.10443-1-nirmoy.das@amd.com>
In-Reply-To: <20200603103223.10443-1-nirmoy.das@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/1=5D_drm/mm=3A_add_ig=5Ffrag_selfte?=
 =?utf-8?q?st?=
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

Series: series starting with [v2,1/1] drm/mm: add ig_frag selftest
URL   : https://patchwork.freedesktop.org/series/77964/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17856_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8579_full and Patchwork_17856_full:

### New IGT tests (1) ###

  * igt@drm_mm@all@frag:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.07] s

  

Known issues
------------

  Here are the changes found in Patchwork_17856_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_mmap_offset@basic-uaf:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#95]) +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl3/igt@gem_mmap_offset@basic-uaf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl1/igt@gem_mmap_offset@basic-uaf.html

  * igt@gem_mmap_offset@close-race:
    - shard-glk:          [PASS][5] -> [INCOMPLETE][6] ([i915#1927] / [i915#58] / [k.org#198133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk8/igt@gem_mmap_offset@close-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-glk4/igt@gem_mmap_offset@close-race.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb3/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-tglb2/igt@i915_module_load@reload.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk7/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-size-change:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-size-change.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-size-change.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1926])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-glk6/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl8/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-glk6/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#53])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@syncobj_wait@single-wait-all-signaled:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#93] / [i915#95]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-kbl2/igt@syncobj_wait@single-wait-all-signaled.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][41] ([i915#1930]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-skl:          [FAIL][43] ([i915#1930]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@gem_exec_reloc@basic-concurrent16.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl7/igt@gem_exec_reloc@basic-concurrent16.html

  * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
    - shard-snb:          [INCOMPLETE][45] ([i915#82]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [TIMEOUT][49] ([i915#1635]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-skl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl7/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-tglb:         [DMESG-WARN][53] ([i915#402]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_hdr@bpc-switch.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][57] ([i915#69]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-iclb5/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][67] ([i915#1542]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@perf@blocking-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-tglb1/igt@perf@blocking-parameterized.html

  * igt@vgem_basic@dmabuf-mmap:
    - shard-apl:          [DMESG-WARN][69] ([i915#95]) -> [PASS][70] +11 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@vgem_basic@dmabuf-mmap.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl7/igt@vgem_basic@dmabuf-mmap.html

  
#### Warnings ####

  * igt@gem_ctx_bad_destroy@invalid-pad:
    - shard-apl:          [TIMEOUT][71] ([i915#1635]) -> [DMESG-WARN][72] ([i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@gem_ctx_bad_destroy@invalid-pad.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl4/igt@gem_ctx_bad_destroy@invalid-pad.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][73] ([i915#1319] / [i915#1635]) -> [TIMEOUT][74] ([i915#1319])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][75] ([i915#1319]) -> [FAIL][76] ([fdo#110321] / [fdo#110336])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][77] ([fdo#110321]) -> [TIMEOUT][78] ([i915#1319] / [i915#1635])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_content_protection@srm.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - shard-apl:          [TIMEOUT][79] ([i915#1635] / [i915#1640]) -> [SKIP][80] ([fdo#109271])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl4/igt@kms_vblank@pipe-d-query-idle-hang.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/shard-apl4/igt@kms_vblank@pipe-d-query-idle-hang.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1640]: https://gitlab.freedesktop.org/drm/intel/issues/1640
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8579 -> Patchwork_17856

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17856: 3560e47537d1185a5d719e8abc8dc0eb5a4289d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17856/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
