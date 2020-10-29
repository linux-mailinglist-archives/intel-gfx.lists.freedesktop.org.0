Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D2F29DE10
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 01:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC9089F06;
	Thu, 29 Oct 2020 00:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2362289F06;
 Thu, 29 Oct 2020 00:49:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BB5BA47E9;
 Thu, 29 Oct 2020 00:49:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 29 Oct 2020 00:49:37 -0000
Message-ID: <160393257707.1422.8211584180542183027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Futher_cleanup_around_hpd_pins_and_port_identfiers_=28?=
 =?utf-8?q?rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============1987899156=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1987899156==
Content-Type: multipart/alternative;
 boundary="===============2124386869977107256=="

--===============2124386869977107256==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Futher cleanup around hpd pins and port identfiers (rev5)
URL   : https://patchwork.freedesktop.org/series/82411/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9214_full -> Patchwork_18801_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18801_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18801_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18801_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@create-clear:
    - shard-tglb:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb3/igt@gem_create@create-clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb6/igt@gem_create@create-clear.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb5/igt@gem_exec_whisper@basic-contexts-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb2/igt@gem_exec_whisper@basic-contexts-all.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9214_full and Patchwork_18801_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18801_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@empty-block:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-glk1/igt@drm_read@empty-block.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-glk8/igt@drm_read@empty-block.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#79])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-apl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-apl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-iclb:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-kbl2/igt@kms_flip_tiling@flip-y-tiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-kbl4/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +11 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl7/igt@kms_plane_cursor@pipe-c-primary-size-128.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl6/igt@kms_plane_cursor@pipe-c-primary-size-128.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109642] / [fdo#111068])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb7/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#1542])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-glk3/igt@perf@polling-parameterized.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-glk9/igt@perf@polling-parameterized.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [PASS][27] -> [INCOMPLETE][28] ([i915#409])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb3/igt@prime_vgem@sync@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb4/igt@prime_vgem@sync@rcs0.html

  * igt@prime_vgem@sync@vcs0:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#409])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb2/igt@prime_vgem@sync@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb1/igt@prime_vgem@sync@vcs0.html

  
#### Possible fixes ####

  * igt@api_intel_bb@blit-noreloc-purge-cache:
    - shard-hsw:          [FAIL][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-hsw4/igt@api_intel_bb@blit-noreloc-purge-cache.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-hsw7/igt@api_intel_bb@blit-noreloc-purge-cache.html

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [INCOMPLETE][33] ([i915#82]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-snb2/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@gem_exec_create@madvise:
    - shard-hsw:          [FAIL][35] ([i915#1888]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-hsw1/igt@gem_exec_create@madvise.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-hsw4/igt@gem_exec_create@madvise.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][37] ([i915#2190]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-snb:          [DMESG-FAIL][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][41] ([i915#636]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl8/igt@i915_suspend@forcewake.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl4/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge:
    - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
    - shard-hsw:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-hsw1/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-hsw1/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-right-edge:
    - shard-apl:          [DMESG-WARN][49] ([i915#1635] / [i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-apl1/igt@kms_cursor_edge_walk@pipe-c-128x128-right-edge.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-apl4/igt@kms_cursor_edge_walk@pipe-c-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][51] ([i915#2346]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][53] ([i915#2122]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl3/igt@kms_frontbuffer_tracking@psr-slowdraw.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl9/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-kbl:          [DMESG-WARN][59] ([i915#165] / [i915#78]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-kbl6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-kbl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-kbl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][65] ([i915#1542]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl1/igt@perf@polling-parameterized.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl10/igt@perf@polling-parameterized.html

  * igt@vgem_slow@nohang:
    - shard-hsw:          [INCOMPLETE][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-hsw1/igt@vgem_slow@nohang.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-hsw1/igt@vgem_slow@nohang.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [DMESG-WARN][69] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][70] ([i915#2411])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][71] ([i915#1602]) -> ([FAIL][72], [FAIL][73]) ([i915#1602] / [i915#409])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb8/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb1/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb1/igt@runner@aborted.html

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - shard-skl:          [DMESG-WARN][74] ([i915#1982]) -> [DMESG-FAIL][75] ([i915#1982])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl1/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9214 -> Patchwork_18801

  CI-20190529: 20190529
  CI_DRM_9214: c485050a56cf0edaed15b8297d5540bd0f4310b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18801: bd3fd9cc28ab22e429cf6eb3374feafd810cb2b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/index.html

--===============2124386869977107256==
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
<tr><td><b>Series:</b></td><td>drm/i915: Futher cleanup around hpd pins and port identfiers (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82411/">https://patchwork.freedesktop.org/series/82411/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9214_full -&gt; Patchwork_18801_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18801_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18801_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18801_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb3/igt@gem_create@create-clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb6/igt@gem_create@create-clear.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb5/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb2/igt@gem_exec_whisper@basic-contexts-all.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9214_full and Patchwork_18801_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18801_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-glk1/igt@drm_read@empty-block.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-glk8/igt@drm_read@empty-block.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-apl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-apl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-y-tiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-kbl2/igt@kms_flip_tiling@flip-y-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-kbl4/igt@kms_flip_tiling@flip-y-tiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-128:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl7/igt@kms_plane_cursor@pipe-c-primary-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl6/igt@kms_plane_cursor@pipe-c-primary-size-128.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb7/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-glk3/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-glk9/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb3/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb4/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@vcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb2/igt@prime_vgem@sync@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb1/igt@prime_vgem@sync@vcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-hsw4/igt@api_intel_bb@blit-noreloc-purge-cache.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-hsw7/igt@api_intel_bb@blit-noreloc-purge-cache.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-snb2/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@madvise:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-hsw1/igt@gem_exec_create@madvise.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-hsw4/igt@gem_exec_create@madvise.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctx0.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl8/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/636">i915#636</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl4/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-hsw1/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-hsw1/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-right-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-apl1/igt@kms_cursor_edge_walk@pipe-c-128x128-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-apl4/igt@kms_cursor_edge_walk@pipe-c-128x128-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-slowdraw:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl3/igt@kms_frontbuffer_tracking@psr-slowdraw.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl9/igt@kms_frontbuffer_tracking@psr-slowdraw.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-kbl6/igt@kms_plane_lowres@pipe-a-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-kbl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-kbl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl1/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_slow@nohang:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-hsw1/igt@vgem_slow@nohang.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-hsw1/igt@vgem_slow@nohang.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-tglb8/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-tglb1/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9214/shard-skl1/igt@sysfs_timeslice_duration@timeout@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18801/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9214 -&gt; Patchwork_18801</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9214: c485050a56cf0edaed15b8297d5540bd0f4310b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18801: bd3fd9cc28ab22e429cf6eb3374feafd810cb2b1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2124386869977107256==--

--===============1987899156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1987899156==--
