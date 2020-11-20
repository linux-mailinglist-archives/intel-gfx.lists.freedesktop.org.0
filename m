Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 712702BB8F0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 23:24:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5574F6E936;
	Fri, 20 Nov 2020 22:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0871B6E936;
 Fri, 20 Nov 2020 22:23:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3835A7DFC;
 Fri, 20 Nov 2020 22:23:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 20 Nov 2020 22:23:55 -0000
Message-ID: <160591103596.16282.5032593449503594763@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201120160135.29702-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201120160135.29702-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Properly_flag_modesets_for_all_bigjoiner_pipes?=
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
Content-Type: multipart/mixed; boundary="===============0591120384=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0591120384==
Content-Type: multipart/alternative;
 boundary="===============2065882252832322134=="

--===============2065882252832322134==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Properly flag modesets for all bigjoiner pipes
URL   : https://patchwork.freedesktop.org/series/84118/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9373_full -> Patchwork_18952_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9373_full and Patchwork_18952_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 199 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18952_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][3] -> [WARN][4] ([i915#1519])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-hsw:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-hsw6/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-hsw6/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_dp_aux_dev:
    - shard-iclb:         [PASS][9] -> [DMESG-WARN][10] ([i915#262])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb4/igt@kms_dp_aux_dev.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb7/igt@kms_dp_aux_dev.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#1982]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-apl1/igt@kms_flip@basic-plain-flip@a-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-apl6/igt@kms_flip@basic-plain-flip@a-dp1.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-kbl4/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-kbl6/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][15] -> [DMESG-FAIL][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-kbl3/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl9/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982] / [i915#262])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb3/igt@perf_pmu@module-unload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb8/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@sync@rcs0:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#409])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb8/igt@prime_vgem@sync@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb7/igt@prime_vgem@sync@rcs0.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][31] ([i915#2190]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][33] ([i915#1982]) -> [PASS][34] +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl3/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl6/igt@i915_module_load@reload.html

  * {igt@kms_async_flips@test-time-stamp}:
    - shard-tglb:         [FAIL][35] ([i915#2597]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb7/igt@kms_async_flips@test-time-stamp.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][37] ([i915#54]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-apl:          [DMESG-WARN][39] ([i915#1635] / [i915#1982]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-apl7/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-apl7/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][41] ([i915#2346]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - shard-glk:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-glk1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-glk2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][45] ([i915#2122]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-iclb:         [INCOMPLETE][47] ([i915#1185] / [i915#123]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@crtc-id:
    - shard-kbl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-kbl6/igt@kms_vblank@crtc-id.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-kbl1/igt@kms_vblank@crtc-id.html

  * igt@kms_vblank@pipe-c-query-busy:
    - shard-hsw:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-hsw6/igt@kms_vblank@pipe-c-query-busy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-hsw4/igt@kms_vblank@pipe-c-query-busy.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][57] ([i915#198] / [i915#2405]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][59] ([i915#588]) -> [SKIP][60] ([i915#658])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [DMESG-FAIL][62] ([i915#1982]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@runner@aborted:
    - shard-iclb:         [FAIL][63] ([i915#2295]) -> [FAIL][64] ([i915#2295] / [i915#483])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb4/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb7/igt@runner@aborted.html
    - shard-tglb:         [FAIL][65] ([i915#2295]) -> ([FAIL][66], [FAIL][67]) ([i915#2295] / [i915#2426] / [i915#409])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb8/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb6/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb7/igt@runner@aborted.html
    - shard-skl:          [FAIL][68] ([i915#2295]) -> ([FAIL][69], [FAIL][70]) ([i915#2029] / [i915#2295])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl1/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl3/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9373 -> Patchwork_18952

  CI-20190529: 20190529
  CI_DRM_9373: 9cdf0261b50968252f7775f0de5d34ab8f8b4892 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5864: afc0e559615b791d229ba977f792d04de13a37f7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18952: 2bed746901215cc00701a79bd667dab8da3122b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/index.html

--===============2065882252832322134==
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
<tr><td><b>Series:</b></td><td>drm/i915: Properly flag modesets for all bigjoiner pipes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84118/">https://patchwork.freedesktop.org/series/84118/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9373_full -&gt; Patchwork_18952_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9373_full and Patchwork_18952_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 199 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18952_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-hsw6/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-hsw6/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb4/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb7/igt@kms_dp_aux_dev.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-apl1/igt@kms_flip@basic-plain-flip@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-apl6/igt@kms_flip@basic-plain-flip@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-kbl4/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-kbl6/igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-kbl3/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl9/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb3/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb8/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb8/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb7/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl3/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl6/igt@i915_module_load@reload.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@test-time-stamp}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb7/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb7/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-apl7/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-apl7/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-glk1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-glk2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@crtc-id:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-kbl6/igt@kms_vblank@crtc-id.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-kbl1/igt@kms_vblank@crtc-id.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-busy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-hsw6/igt@kms_vblank@pipe-c-query-busy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-hsw4/igt@kms_vblank@pipe-c-query-busy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-iclb4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-iclb7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-tglb8/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-tglb7/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/shard-skl1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18952/shard-skl4/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9373 -&gt; Patchwork_18952</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9373: 9cdf0261b50968252f7775f0de5d34ab8f8b4892 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5864: afc0e559615b791d229ba977f792d04de13a37f7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18952: 2bed746901215cc00701a79bd667dab8da3122b6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2065882252832322134==--

--===============0591120384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0591120384==--
