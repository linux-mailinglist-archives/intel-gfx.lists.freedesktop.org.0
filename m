Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 608821EDC93
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 06:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F8789FA0;
	Thu,  4 Jun 2020 04:50:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2A3D89FA0;
 Thu,  4 Jun 2020 04:50:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECE87A0019;
 Thu,  4 Jun 2020 04:50:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 04 Jun 2020 04:50:27 -0000
Message-ID: <159124622794.14555.11656156799755554915@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602151126.25626-1-jani.nikula@intel.com>
In-Reply-To: <20200602151126.25626-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/params=3A_fix_i915=2Ereset_module_param_type_=28rev2=29?=
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

Series: drm/i915/params: fix i915.reset module param type (rev2)
URL   : https://patchwork.freedesktop.org/series/77923/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17852_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17852_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-size-change:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-size-change.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-size-change.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][9] -> [DMESG-FAIL][10] ([i915#1925] / [i915#1926])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl5/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-glk8/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#49])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#53])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl3/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@prime_self_import@reimport-vs-gem_close-race:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#95]) +21 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl8/igt@prime_self_import@reimport-vs-gem_close-race.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-apl4/igt@prime_self_import@reimport-vs-gem_close-race.html

  * igt@syncobj_wait@single-wait-all-signaled:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#93] / [i915#95]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-kbl7/igt@syncobj_wait@single-wait-all-signaled.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][33] ([i915#1930]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_schedule@implicit-write-read@rcs0}:
    - shard-snb:          [INCOMPLETE][35] ([i915#82]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-snb2/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl7/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-apl8/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-tglb:         [DMESG-WARN][41] ([i915#402]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-apl:          [DMESG-WARN][43] ([i915#95]) -> [PASS][44] +25 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-apl3/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][45] ([i915#46]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][49] ([i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-c-planes:
    - shard-skl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +9 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl9/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl9/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-iclb4/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][57] ([fdo#109642] / [fdo#111068]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-iclb8/igt@kms_psr@psr2_dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][63] ([i915#1542]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@perf@blocking-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-tglb3/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-glk:          [TIMEOUT][65] ([i915#1958]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk5/igt@perf_pmu@rc6-runtime-pm.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-glk5/igt@perf_pmu@rc6-runtime-pm.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][67] ([i915#454]) -> [SKIP][68] ([i915#468])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][69] ([i915#1319]) -> [DMESG-FAIL][70] ([fdo#110321] / [i915#95])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl4/igt@kms_content_protection@atomic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-kbl2/igt@kms_content_protection@atomic.html
    - shard-apl:          [TIMEOUT][71] ([i915#1319] / [i915#1635]) -> [TIMEOUT][72] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl6/igt@kms_content_protection@atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][73] ([i915#1319]) -> [TIMEOUT][74] ([i915#1319] / [i915#1635])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-apl:          [DMESG-FAIL][75] ([i915#49] / [i915#95]) -> [FAIL][76] ([i915#49])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#93] / [i915#95]) -> [DMESG-WARN][78] ([i915#180] / [i915#93] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_vblank@pipe-d-query-idle-hang:
    - shard-glk:          [TIMEOUT][79] ([i915#1640] / [i915#1958]) -> [SKIP][80] ([fdo#109271])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/shard-glk5/igt@kms_vblank@pipe-d-query-idle-hang.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/shard-glk5/igt@kms_vblank@pipe-d-query-idle-hang.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1640]: https://gitlab.freedesktop.org/drm/intel/issues/1640
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8579 -> Patchwork_17852

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17852: 41ac3a8d0f0941f9f86f34672ec72bfa3aaa7e8c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17852/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
