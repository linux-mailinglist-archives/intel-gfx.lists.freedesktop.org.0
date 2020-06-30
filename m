Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE2721005D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 01:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABA26E15E;
	Tue, 30 Jun 2020 23:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 644276E045;
 Tue, 30 Jun 2020 23:18:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C806A0BC6;
 Tue, 30 Jun 2020 23:18:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 30 Jun 2020 23:18:37 -0000
Message-ID: <159355911734.22701.12648334530668299443@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200630152724.3734-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200630152724.3734-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Skip_stale_object_handle_for_debugfs_per-file-stats?=
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

Series: drm/i915: Skip stale object handle for debugfs per-file-stats
URL   : https://patchwork.freedesktop.org/series/78948/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8678_full -> Patchwork_18046_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18046_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.00@execution@built-in-functions@gs-fract-dvec3 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@gs-fract-dvec3.html

  * spec@glsl-4.00@execution@built-in-functions@vs-op-mult-dmat4-dmat2x4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][2] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@vs-op-mult-dmat4-dmat2x4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8678_full and Patchwork_18046_full:

### New Piglit tests (5) ###

  * spec@glsl-4.00@execution@built-in-functions@fs-mod-dvec3-double:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@gs-fract-dvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3x4-dmat4x3:
    - Statuses : 1 crash(s)
    - Exec time: [63.21] s

  * spec@glsl-4.00@execution@built-in-functions@vs-op-div-double-dmat2x4:
    - Statuses : 1 crash(s)
    - Exec time: [8.08] s

  * spec@glsl-4.00@execution@built-in-functions@vs-op-mult-dmat4-dmat2x4:
    - Statuses : 1 crash(s)
    - Exec time: [24.79] s

  

Known issues
------------

  Here are the changes found in Patchwork_18046_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_nop@basic-parallel:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1635] / [i915#95]) +20 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-apl1/igt@gem_exec_nop@basic-parallel.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-apl2/igt@gem_exec_nop@basic-parallel.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-glk4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-negative:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#78])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl7/igt@kms_color@pipe-c-ctm-negative.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl2/igt@kms_color@pipe-c-ctm-negative.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [PASS][13] -> [TIMEOUT][14] ([i915#1958])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +13 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl7/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl3/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#648] / [i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][25] -> [DMESG-FAIL][26] ([i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl2/igt@kms_prime@basic-crc@second-to-first.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl2/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#456])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-wait-idle:
    - shard-tglb:         [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-tglb3/igt@kms_vblank@pipe-c-wait-idle.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-tglb1/igt@kms_vblank@pipe-c-wait-idle.html

  * igt@perf@blocking:
    - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#118] / [i915#95]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-glk3/igt@perf@blocking.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-glk7/igt@perf@blocking.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-iclb:         [INCOMPLETE][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-iclb1/igt@gem_exec_balancer@bonded-slice.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-iclb7/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-apl:          [DMESG-WARN][39] ([i915#1635] / [i915#95]) -> [PASS][40] +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-apl1/igt@i915_pm_rpm@modeset-non-lpsp.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-apl2/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][41] ([i915#198] / [i915#2110]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl10/igt@i915_selftest@mock@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl1/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl8/igt@kms_color@pipe-c-ctm-green-to-red.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl4/igt@kms_color@pipe-c-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#300]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][53] ([i915#46]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +9 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][61] ([CI#80] / [i915#69]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-glk:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-glk8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-glk1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][65] ([i915#69]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-iclb6/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][71] ([i915#173]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-iclb1/igt@kms_psr@no_drrs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-iclb7/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-iclb8/igt@kms_psr@psr2_primary_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-tglb:         [DMESG-WARN][75] ([i915#402]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-tglb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-tglb1/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][77] ([i915#1542]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-iclb6/igt@perf@polling-parameterized.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-iclb5/igt@perf@polling-parameterized.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][79] ([i915#1820]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  * igt@syncobj_wait@invalid-wait-bad-flags:
    - shard-kbl:          [DMESG-WARN][81] ([i915#93] / [i915#95]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl7/igt@syncobj_wait@invalid-wait-bad-flags.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl2/igt@syncobj_wait@invalid-wait-bad-flags.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - shard-snb:          [WARN][83] ([i915#2021]) -> [WARN][84] ([i915#2036])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-snb6/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-snb4/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][86] ([i915#93] / [i915#95])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-apl:          [SKIP][87] ([fdo#109271]) -> [SKIP][88] ([fdo#109271] / [i915#1635]) +9 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-apl:          [SKIP][89] ([fdo#109271] / [i915#1635]) -> [SKIP][90] ([fdo#109271]) +7 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-apl8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-apl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][91] ([i915#93] / [i915#95]) -> [DMESG-WARN][92] ([i915#180] / [i915#93] / [i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8678/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2021]: https://gitlab.freedesktop.org/drm/intel/issues/2021
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8678 -> Patchwork_18046

  CI-20190529: 20190529
  CI_DRM_8678: 7cafa8aeca728d8abd1bc9d31d2fca60757a00c4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18046: 285874eca3c1ebdce8e44eb5badf0f7bcd6a52e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18046/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
