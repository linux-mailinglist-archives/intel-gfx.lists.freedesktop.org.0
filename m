Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E17C1EEE8A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 01:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F516E7E6;
	Thu,  4 Jun 2020 23:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E56906E7E5;
 Thu,  4 Jun 2020 23:55:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2F74A47EA;
 Thu,  4 Jun 2020 23:55:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 04 Jun 2020 23:55:13 -0000
Message-ID: <159131491383.14554.14078846176039129280@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603211040.8190-1-imre.deak@intel.com>
In-Reply-To: <20200603211040.8190-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915/dp=5Fmst=3A_Fix_disab?=
 =?utf-8?q?ling_MST_on_a_port_=28rev4=29?=
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

Series: series starting with [v2,1/3] drm/i915/dp_mst: Fix disabling MST on a port (rev4)
URL   : https://patchwork.freedesktop.org/series/77969/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8585_full -> Patchwork_17876_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17876_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@basic:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#95]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl2/igt@gem_ctx_param@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-apl1/igt@gem_ctx_param@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-hsw:          [PASS][3] -> [INCOMPLETE][4] ([i915#61])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-hsw8/igt@gem_exec_nop@basic-series.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-hsw6/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk8/igt@gem_exec_whisper@basic-queues-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-glk8/igt@gem_exec_whisper@basic-queues-all.html

  * igt@i915_selftest@mock@requests:
    - shard-glk:          [PASS][7] -> [INCOMPLETE][8] ([i915#58] / [k.org#198133])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk1/igt@i915_selftest@mock@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-glk8/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-hsw:          [PASS][11] -> [DMESG-WARN][12] ([i915#128])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-hsw4/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-hsw5/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-c-plane-scaling:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl8/igt@kms_plane_scaling@pipe-c-plane-scaling.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl1/igt@kms_plane_scaling@pipe-c-plane-scaling.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-c:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-tglb6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-tglb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-c.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1542])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl6/igt@perf@blocking.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl9/igt@perf@blocking.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * {igt@gem_exec_schedule@implicit-boths@bcs0}:
    - shard-snb:          [INCOMPLETE][29] ([i915#82]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-snb4/igt@gem_exec_schedule@implicit-boths@bcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-snb1/igt@gem_exec_schedule@implicit-boths@bcs0.html

  * {igt@gem_exec_schedule@preempt@bcs0}:
    - shard-tglb:         [DMESG-WARN][31] ([i915#402]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-tglb8/igt@gem_exec_schedule@preempt@bcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-tglb2/igt@gem_exec_schedule@preempt@bcs0.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][33] ([i915#118] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-glk9/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][37] ([i915#93] / [i915#95]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl1/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl3/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [DMESG-FAIL][41] ([i915#54] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk5/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-hsw:          [DMESG-WARN][47] ([i915#128]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-hsw7/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-hsw1/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - shard-tglb:         [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-tglb7/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-tglb3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
    - shard-apl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-apl8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-kbl:          [TIMEOUT][53] -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1}:
    - shard-skl:          [FAIL][55] ([i915#1928]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * {igt@kms_getfb@getfb2-handle-protection}:
    - shard-apl:          [DMESG-WARN][57] ([i915#95]) -> [PASS][58] +20 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl7/igt@kms_getfb@getfb2-handle-protection.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-apl2/igt@kms_getfb@getfb2-handle-protection.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * {igt@perf_pmu@enable-race@vecs0}:
    - shard-glk:          [DMESG-WARN][65] ([i915#118] / [i915#95]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk7/igt@perf_pmu@enable-race@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-glk7/igt@perf_pmu@enable-race@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][67] ([i915#454]) -> [SKIP][68] ([i915#468])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-kbl:          [TIMEOUT][69] -> [SKIP][70] ([fdo#109271]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-kbl:          [INCOMPLETE][71] -> [SKIP][72] ([fdo#109271] / [fdo#111827])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][73] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][74] ([i915#1319] / [i915#1635])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][75] ([i915#1319] / [i915#1635]) -> [FAIL][76] ([fdo#110321] / [fdo#110336])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl1/igt@kms_content_protection@legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][77] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][78] ([fdo#110321] / [i915#95]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-apl4/igt@kms_content_protection@lic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [DMESG-FAIL][79] ([fdo#110321] / [i915#95]) -> [TIMEOUT][80] ([i915#1319])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-kbl2/igt@kms_content_protection@srm.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [INCOMPLETE][81] ([i915#58] / [k.org#198133]) -> [TIMEOUT][82] ([i915#1958])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [DMESG-WARN][83] ([i915#1982]) -> [DMESG-FAIL][84] ([fdo#108145] / [i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8585/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
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

  * Linux: CI_DRM_8585 -> Patchwork_17876

  CI-20190529: 20190529
  CI_DRM_8585: 3aef9a510cfe66ba71ed397e91c517402f7c26ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17876: 510b25246e2201dfbad5a4a34e0cec24f91db43e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17876/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
