Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B80213109
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 03:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F6E6E8AE;
	Fri,  3 Jul 2020 01:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F4D76E8AE;
 Fri,  3 Jul 2020 01:37:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11078A47DA;
 Fri,  3 Jul 2020 01:37:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 03 Jul 2020 01:37:48 -0000
Message-ID: <159374026803.25593.11817247429354627001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702182450.6804-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200702182450.6804-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Enable_TPS3/4_on_all_pl?=
 =?utf-8?q?atforms_that_support_them?=
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

Series: series starting with [1/2] drm/i915: Enable TPS3/4 on all platforms that support them
URL   : https://patchwork.freedesktop.org/series/79060/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8698_full -> Patchwork_18072_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18072_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18072_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18072_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@reset:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl7/igt@i915_pm_rps@reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_18072_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@prime:
    - shard-tglb:         [PASS][2] -> [DMESG-WARN][3] ([i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-tglb6/igt@drm_import_export@prime.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-tglb8/igt@drm_import_export@prime.html

  * igt@gem_ctx_isolation@nonpriv-switch@vecs0:
    - shard-iclb:         [PASS][4] -> [DMESG-WARN][5] ([i915#1226]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-iclb5/igt@gem_ctx_isolation@nonpriv-switch@vecs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-iclb2/igt@gem_ctx_isolation@nonpriv-switch@vecs0.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2079])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-tglb5/igt@gem_exec_balancer@bonded-early.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-tglb1/igt@gem_exec_balancer@bonded-early.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-skl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982]) +11 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-skl10/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl8/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#93] / [i915#95]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-kbl3/igt@kms_color@pipe-a-ctm-0-75.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-kbl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#1149])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-tglb8/igt@kms_color@pipe-a-gamma.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-tglb5/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#72])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1635] / [i915#95]) +17 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#79])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-tglb:         [PASS][22] -> [DMESG-WARN][23] ([i915#1982])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#1188])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([fdo#108145] / [i915#265])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][28] -> [DMESG-WARN][29] ([i915#1982])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-iclb2/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([IGT#2])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-iclb5/igt@kms_sysfs_edid_timing.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-iclb2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [DMESG-WARN][36] ([i915#180]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [DMESG-WARN][38] ([i915#1635] / [i915#95]) -> [PASS][39] +18 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl8/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][40] ([i915#118] / [i915#95]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-snb:          [INCOMPLETE][42] ([i915#82]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-snb1/igt@gem_fenced_exec_thrash@too-many-fences.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-snb1/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][44] ([i915#118] / [i915#95]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-skl:          [DMESG-WARN][46] ([i915#1982]) -> [PASS][47] +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-skl8/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl6/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][48] ([i915#300]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge:
    - shard-glk:          [DMESG-WARN][50] ([i915#1982]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][52] ([i915#1982]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-kbl1/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-kbl2/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][54] ([i915#1928]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-kbl:          [DMESG-WARN][56] ([i915#93] / [i915#95]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-tglb:         [DMESG-WARN][58] ([i915#402]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][60] ([i915#1188]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:
    - shard-tglb:         [DMESG-WARN][62] ([i915#1982]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-tglb3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-tglb7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][64] ([fdo#109441]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][66] ([i915#31]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-kbl7/igt@kms_setmode@basic.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-query-busy-hang:
    - shard-apl:          [DMESG-WARN][68] ([i915#1982]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl8/igt@kms_vblank@pipe-c-query-busy-hang.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl6/igt@kms_vblank@pipe-c-query-busy-hang.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][70] ([i915#1542]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-iclb2/igt@perf@blocking-parameterized.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-iclb6/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][72] ([i915#2021]) -> [WARN][73] ([i915#2036])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-apl:          [SKIP][74] ([fdo#109271] / [fdo#111827]) -> [SKIP][75] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl3/igt@kms_chamelium@vga-hpd-with-enabled-mode.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl1/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-tglb:         [FAIL][76] ([i915#1149] / [i915#315]) -> [DMESG-FAIL][77] ([i915#1149] / [i915#402])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-tglb5/igt@kms_color@pipe-a-ctm-0-75.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-tglb7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][78] ([i915#1319] / [i915#2119]) -> [TIMEOUT][79] ([i915#1319] / [i915#1958] / [i915#2119])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-kbl2/igt@kms_content_protection@atomic-dpms.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-kbl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][80] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][81] ([i915#1319] / [i915#2119])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-kbl7/igt@kms_content_protection@srm.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-kbl1/igt@kms_content_protection@srm.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [DMESG-WARN][82] ([i915#1982]) -> [INCOMPLETE][83] ([i915#198])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-apl:          [SKIP][84] ([fdo#109271]) -> [SKIP][85] ([fdo#109271] / [i915#1635]) +6 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-apl:          [SKIP][86] ([fdo#109271] / [i915#1635]) -> [SKIP][87] ([fdo#109271]) +5 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-apl:          [DMESG-FAIL][88] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95]) -> [DMESG-FAIL][89] ([fdo#108145] / [i915#1635] / [i915#95])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][90], [FAIL][91], [FAIL][92]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][93] ([i915#1635] / [i915#2110])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl7/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-apl2/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-apl4/igt@runner@aborted.html
    - shard-tglb:         [FAIL][94] ([i915#2110]) -> [FAIL][95] ([i915#1764] / [i915#2110])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8698/shard-tglb2/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/shard-tglb3/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8698 -> Patchwork_18072

  CI-20190529: 20190529
  CI_DRM_8698: a5bde2bddb64dc774e9fc1444243b8f224a31df6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18072: 1ebdc2b628a91ef273b09fa246fc66b5cc4a2fee @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18072/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
