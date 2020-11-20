Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 759F32BA257
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 07:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75FF56E86E;
	Fri, 20 Nov 2020 06:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36CDB6E86C;
 Fri, 20 Nov 2020 06:30:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D31BA363B;
 Fri, 20 Nov 2020 06:30:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 20 Nov 2020 06:30:39 -0000
Message-ID: <160585383915.16282.6224866824347196005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201119232615.23231-1-manasi.d.navare@intel.com>
In-Reply-To: <20201119232615.23231-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Do_not_call_hsw=5Fset=5Fframe=5Fstart=5Fdelay_for_dsi_?=
 =?utf-8?b?KHJldjMp?=
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
Content-Type: multipart/mixed; boundary="===============0408329484=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0408329484==
Content-Type: multipart/alternative;
 boundary="===============0318275041691466477=="

--===============0318275041691466477==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Do not call hsw_set_frame_start_delay for dsi (rev3)
URL   : https://patchwork.freedesktop.org/series/84039/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9364_full -> Patchwork_18947_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9364_full and Patchwork_18947_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 175 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18947_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][1] -> [SKIP][2] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl8/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2598])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@nonexisting-fb-interruptible@a-dp1:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1635] / [i915#1982]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-apl1/igt@kms_flip@nonexisting-fb-interruptible@a-dp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-apl6/igt@kms_flip@nonexisting-fb-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#2122])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-iclb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-iclb1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-iclb7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-iclb:         [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-iclb8/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-iclb6/igt@core_hotunplug@unbind-rebind.html

  * igt@drm_mm@all@color_evict_range:
    - shard-skl:          [INCOMPLETE][23] ([i915#198] / [i915#2485]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl10/igt@drm_mm@all@color_evict_range.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl10/igt@drm_mm@all@color_evict_range.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][25] ([i915#2521]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-kbl3/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-kbl:          [DMESG-WARN][27] ([i915#1982]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-kbl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-kbl3/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][29] ([i915#54]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-tglb:         [FAIL][31] ([i915#2346]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][33] ([i915#2122]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][35] ([i915#2598]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-apl:          [DMESG-WARN][37] ([i915#1635] / [i915#1982]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl3/igt@kms_hdr@bpc-switch.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-glk:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-glk5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-glk9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@perf_pmu@invalid-init:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl2/igt@perf_pmu@invalid-init.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl9/igt@perf_pmu@invalid-init.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglb:         [INCOMPLETE][47] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411] / [i915#456]) -> [DMESG-WARN][48] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-tglb1/igt@gem_workarounds@suspend-resume-fd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-tglb8/igt@gem_workarounds@suspend-resume-fd.html
    - shard-apl:          [DMESG-WARN][49] ([i915#1635] / [i915#2635]) -> [INCOMPLETE][50] ([i915#1635] / [i915#2405] / [i915#2635])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-apl3/igt@gem_workarounds@suspend-resume-fd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][51] ([i915#1319] / [i915#1635]) -> [FAIL][52] ([fdo#110321] / [i915#1635])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-apl1/igt@kms_content_protection@srm.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-apl6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [FAIL][54] ([i915#2346])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][55] ([i915#1226]) -> [SKIP][56] ([fdo#109349])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [DMESG-FAIL][57] ([i915#1982]) -> [DMESG-WARN][58] ([i915#1982])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][59], [FAIL][60]) ([i915#2295]) -> [FAIL][61] ([i915#2295] / [i915#483])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-kbl7/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-kbl7/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][62], [FAIL][63]) ([i915#2295]) -> ([FAIL][64], [FAIL][65]) ([i915#2295] / [i915#483])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-iclb2/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-iclb4/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-iclb5/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-iclb5/igt@runner@aborted.html
    - shard-skl:          [FAIL][66] ([i915#2295] / [i915#483]) -> [FAIL][67] ([i915#2295])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-skl7/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2485]: https://gitlab.freedesktop.org/drm/intel/issues/2485
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9364 -> Patchwork_18947

  CI-20190529: 20190529
  CI_DRM_9364: c7321011fe308f5bc466293213b01e5a86d6ff52 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5861: 71f45998b2819b2d473277d91fc3c63eef5c4a99 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18947: 28877dbcd9bac04f3ebdb8fffbf22fa33418c179 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/index.html

--===============0318275041691466477==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Do not call hsw_set_frame_start_de=
lay for dsi (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84039/">https://patchwork.freedesktop.org/series/84039/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18947/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18947/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9364_full -&gt; Patchwork_18947_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9364_full and Patchwork_18=
947_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 175 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18947_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18947/shard-skl8/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18947/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-apl1/igt@kms_flip@nonexisting-fb-interruptible@a-dp1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18947/shard-apl6/igt@kms_flip@nonexisting-fb-interruptible@a-dp1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18947/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-in=
dfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18947/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-p=
rimscrn-spr-indfb-draw-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-=
skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18947/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/sha=
rd-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-iclb1/igt@kms_universal_plane@universal-plane-gen9-featu=
res-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18947/shard-iclb7/igt@kms_universal_plane@universal-plan=
e-gen9-features-pipe-a.html">DMESG-WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-iclb8/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18947/shard-iclb6/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_mm@all@color_evict_range:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl10/igt@drm_mm@all@color_evict_range.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#1=
98</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2485">i=
915#2485</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18947/shard-skl10/igt@drm_mm@all@color_evict_range.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-kbl3/igt@kms_async_flips@async-flip-with-page-flip-event=
s.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18947/shard-kbl6/igt@kms_async_flips@async-flip-with-page-f=
lip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-kbl4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">=
i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18947/shard-kbl3/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18947/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.htm=
l">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">=
i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18947/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@a=
b-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18947/shard-glk5/igt@kms_flip@2x-plain-flip=
-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18947/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-in=
dfb-draw-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-apl2/igt@kms_frontbuffer=
_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">PASS</a> +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl3/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-sk=
l7/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-glk5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18947/shard-glk9/igt@kms_plane_alpha_blend@pipe-a-cons=
tant-alpha-min.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18947/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl2/igt@perf_pmu@invalid-init.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947=
/shard-skl9/igt@perf_pmu@invalid-init.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9364/shard-tglb1/igt@gem_workarounds@suspend-resume-fd.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i=
915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1887">i915#1887</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/456">i915#456</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18947/shard-tglb8/igt@gem_workarounds@suspend-=
resume-fd.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/1887">i915#1887</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9364/shard-apl3/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i9=
15#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/26=
35">i915#2635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18947/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/16=
35">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2405">i915#2405</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2635">i915#2635</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-apl1/igt@kms_content_protection@srm.html">TIMEOUT</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#=
1635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18947/shard-apl6/igt@kms_content_protection@srm.html">FAIL</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110321">fdo#110321</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18947/shard-skl9/igt@kms_cursor_legacy@flip-vs-cur=
sor-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18947/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-edp1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18947/shard-skl2/igt@kms_flip@plain-flip-fb-recre=
ate-interruptible@a-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18947/shard-kbl4/igt@runner@aborted.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</=
a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9364/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9364/shard-iclb4/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18947/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-ic=
lb5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9364/shard-skl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18947/shard-skl=
2/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9364 -&gt; Patchwork_18947</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9364: c7321011fe308f5bc466293213b01e5a86d6ff52 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5861: 71f45998b2819b2d473277d91fc3c63eef5c4a99 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18947: 28877dbcd9bac04f3ebdb8fffbf22fa33418c179 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0318275041691466477==--

--===============0408329484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0408329484==--
