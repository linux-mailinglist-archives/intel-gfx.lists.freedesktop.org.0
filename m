Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3336021A755
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 20:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC3C6EAD3;
	Thu,  9 Jul 2020 18:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 610486EAD6;
 Thu,  9 Jul 2020 18:52:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B4F5A0099;
 Thu,  9 Jul 2020 18:52:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 09 Jul 2020 18:52:39 -0000
Message-ID: <159432075936.31093.4193492903055653623@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709145845.18118-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200709145845.18118-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_WARN_if_max_vswing/pre-emphasis_violates_the_DP_spec?=
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

Series: drm/i915: WARN if max vswing/pre-emphasis violates the DP spec
URL   : https://patchwork.freedesktop.org/series/79299/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8719_full -> Patchwork_18123_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18123_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][1] -> [FAIL][2] ([i915#2079])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-kbl4/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl7/igt@gem_exec_params@invalid-fence-in.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-kbl2/igt@gem_exec_params@invalid-fence-in.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#1930])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk3/igt@gem_exec_reloc@basic-concurrent0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@i915_selftest@mock@requests:
    - shard-apl:          [PASS][7] -> [INCOMPLETE][8] ([i915#1635] / [i915#2110])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl3/igt@i915_selftest@mock@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl3/igt@i915_selftest@mock@requests.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#129])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl1/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl4/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +20 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2122]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-glk2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2122])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-tglb6/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#198]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl5/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2122])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl2/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl3/igt@kms_plane@plane-panning-bottom-right-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl1/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-kbl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-query-busy-hang:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl3/igt@kms_vblank@pipe-a-query-busy-hang.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-kbl2/igt@kms_vblank@pipe-a-query-busy-hang.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#1542])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-iclb7/igt@perf@blocking-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-iclb6/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][39] -> [FAIL][40] ([i915#1820])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][41] ([i915#198] / [i915#2110]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl8/igt@i915_selftest@mock@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl8/igt@i915_selftest@mock@requests.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - shard-apl:          [DMESG-WARN][43] ([i915#1635] / [i915#95]) -> [PASS][44] +19 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl8/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl6/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][45] ([i915#118] / [i915#95]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl2/igt@kms_color@pipe-b-ctm-negative.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          [TIMEOUT][49] ([i915#1958] / [i915#2119]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge:
    - shard-glk:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-glk5/igt@kms_cursor_edge_walk@pipe-b-128x128-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-skl:          [FAIL][55] ([i915#49]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [SKIP][57] ([i915#668]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][63] ([i915#1958] / [i915#2119]) -> [FAIL][64] ([i915#1930])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-apl:          [SKIP][65] ([fdo#109271]) -> [SKIP][66] ([fdo#109271] / [i915#1635]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl2/igt@gem_render_copy@linear-to-vebox-y-tiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl1/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [i915#1635] / [i915#1937]) -> [SKIP][68] ([fdo#109271] / [i915#1937])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-apl:          [SKIP][69] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][70] ([fdo#109271] / [fdo#111827])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack:
    - shard-apl:          [SKIP][71] ([fdo#109271] / [i915#1635]) -> [SKIP][72] ([fdo#109271]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [DMESG-FAIL][73] ([fdo#108145] / [i915#1982]) -> [FAIL][74] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][75], [FAIL][76]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][77] ([i915#1635] / [i915#2110])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl2/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8719/shard-apl4/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/shard-apl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8719 -> Patchwork_18123

  CI-20190529: 20190529
  CI_DRM_8719: 6ca80d83ae657da395ab20034f0f66209b456127 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18123: ffeee036b039b8b38e6b65ab32253edec35dd9bb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18123/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
