Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF792A5321
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 21:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4210F6E8F1;
	Tue,  3 Nov 2020 20:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8133F6E8F1;
 Tue,  3 Nov 2020 20:57:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 798F9A47E9;
 Tue,  3 Nov 2020 20:57:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Tue, 03 Nov 2020 20:57:30 -0000
Message-ID: <160443705047.25740.14772331485044450759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103134651.165527-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201103134651.165527-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Implement_W/A_22010492432_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0035210861=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0035210861==
Content-Type: multipart/alternative;
 boundary="===============1748273916538294177=="

--===============1748273916538294177==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ehl: Implement W/A 22010492432 (rev2)
URL   : https://patchwork.freedesktop.org/series/83135/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9253_full -> Patchwork_18840_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18840_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18840_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18840_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb5/igt@gem_exec_create@forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@gem_exec_create@forked.html

  
#### Warnings ####

  * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
    - shard-tglb:         [DMESG-WARN][3] ([i915#2411]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9253_full and Patchwork_18840_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 175 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18840_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl10/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl1/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-snb7/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-snb7/igt@gem_eio@kms.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][11] -> [SKIP][12] ([i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-snb:          [PASS][13] -> [INCOMPLETE][14] ([i915#82])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-snb6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-snb2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1436] / [i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl9/igt@gen9_exec_parse@allowed-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl8/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-kbl1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-kbl4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#300])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1635] / [i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-apl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
    - shard-iclb:         [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#198])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-iclb:         [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb5/igt@core_hotunplug@hotrebind-lateclose.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb8/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@drm_read@invalid-buffer:
    - shard-glk:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-glk2/igt@drm_read@invalid-buffer.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-glk2/igt@drm_read@invalid-buffer.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][41] ([i915#658]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb4/igt@feature_discovery@psr2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_schedule@deep@vecs0:
    - shard-skl:          [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl3/igt@gem_exec_schedule@deep@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl4/igt@gem_exec_schedule@deep@vecs0.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][45] ([i915#2521]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * {igt@kms_async_flips@test-time-stamp}:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-apl8/igt@kms_async_flips@test-time-stamp.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-apl7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-kbl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-kbl7/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-kbl1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][51] ([i915#54]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][53] ([i915#2346]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][63] ([i915#1542]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl6/igt@perf@polling-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [INCOMPLETE][65] ([i915#2411] / [i915#456] / [i915#750]) -> [DMESG-WARN][66] ([i915#2411])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb8/igt@i915_pm_rpm@system-suspend-execbuf.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-tglb:         [DMESG-WARN][67] ([i915#2411]) -> [DMESG-WARN][68] ([i915#1436] / [i915#2411])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][69] ([i915#1982]) -> [DMESG-FAIL][70] ([i915#1982])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][71] ([i915#2122]) -> [DMESG-WARN][72] ([i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][73] ([i915#2439]) -> ([FAIL][74], [FAIL][75], [FAIL][76]) ([i915#2248] / [i915#2439])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb7/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb1/igt@runner@aborted.html
    - shard-skl:          [FAIL][77] ([i915#1436] / [i915#483]) -> ([FAIL][78], [FAIL][79], [FAIL][80]) ([i915#1436] / [i915#1611] / [i915#2029])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl7/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl6/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2248]: https://gitlab.freedesktop.org/drm/intel/issues/2248
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9253 -> Patchwork_18840

  CI-20190529: 20190529
  CI_DRM_9253: a8c030d641dc0961d180b866ab6e5e9032dcbdf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18840: 003c5f8bf5bd155956d52b3f05de0e745a7d5d7c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/index.html

--===============1748273916538294177==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/ehl: Implement W/A 22010492432 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83135/">https://patchwork.freedesktop.org/series/83135/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9253_full -&gt; Patchwork_18840_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18840_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18840_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18840_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_create@forked:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb5/igt@gem_exec_create@forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@gem_exec_create@forked.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9253_full and Patchwork_18840_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 175 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18840_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl10/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl1/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-snb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-snb7/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-snb6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-snb2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl9/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-kbl1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-kbl4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-apl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb5/igt@core_hotunplug@hotrebind-lateclose.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb8/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_read@invalid-buffer:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-glk2/igt@drm_read@invalid-buffer.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-glk2/igt@drm_read@invalid-buffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb4/igt@feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl3/igt@gem_exec_schedule@deep@vecs0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl4/igt@gem_exec_schedule@deep@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@test-time-stamp}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-apl8/igt@kms_async_flips@test-time-stamp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-apl7/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-kbl7/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-kbl1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl6/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl1/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb8/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/750">i915#750</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-tglb7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-tglb1/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2248">i915#2248</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9253/shard-skl7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18840/shard-skl8/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9253 -&gt; Patchwork_18840</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9253: a8c030d641dc0961d180b866ab6e5e9032dcbdf4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18840: 003c5f8bf5bd155956d52b3f05de0e745a7d5d7c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1748273916538294177==--

--===============0035210861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0035210861==--
