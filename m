Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD2F6BA1AD
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 22:59:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B87010E2CD;
	Tue, 14 Mar 2023 21:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 638E110E2CC;
 Tue, 14 Mar 2023 21:59:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D018AA3D8;
 Tue, 14 Mar 2023 21:59:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8666778115800064058=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 14 Mar 2023 21:59:07 -0000
Message-ID: <167883114735.26414.4487550483171128819@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230208040911.12590-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230208040911.12590-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Add_plane_SIZE=5FHINTS_property_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8666778115800064058==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Add plane SIZE_HINTS property (rev3)
URL   : https://patchwork.freedesktop.org/series/113758/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12853_full -> Patchwork_113758v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (8 -> 9)
------------------------------

  Additional (1): shard-rkl0 

Known issues
------------

  Here are the changes found in Patchwork_113758v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-glk8/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-glk2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][5] -> [DMESG-FAIL][6] ([i915#5334])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271]) +34 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-snb4/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2346])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2346])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@idle@rcs0:
    - {shard-rkl}:        [FAIL][12] ([i915#7742]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html

  * igt@dumb_buffer@create-clear:
    - {shard-tglu}:       [INCOMPLETE][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-4/igt@dumb_buffer@create-clear.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-5/igt@dumb_buffer@create-clear.html

  * igt@fbdev@pan:
    - {shard-rkl}:        [SKIP][16] ([i915#2582]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@fbdev@pan.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@fbdev@pan.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - {shard-rkl}:        [FAIL][18] ([i915#2842]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - {shard-rkl}:        [SKIP][20] ([i915#3281]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-noreloc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-scanout@vcs0:
    - {shard-tglu}:       [SKIP][22] ([i915#3639]) -> [PASS][23] +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-9/igt@gem_exec_reloc@basic-scanout@vcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-4/igt@gem_exec_reloc@basic-scanout@vcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][24] ([i915#4936]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [ABORT][26] ([i915#5161]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_mmap_wc@set-cache-level:
    - {shard-rkl}:        [SKIP][28] ([i915#1850]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_workarounds@suspend-resume-fd:
    - {shard-rkl}:        [FAIL][30] ([fdo#103375]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@gem_workarounds@suspend-resume-fd.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@batch-zero-length:
    - {shard-rkl}:        [SKIP][32] ([i915#2527]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@gen9_exec_parse@batch-zero-length.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - {shard-dg1}:        [FAIL][34] ([i915#3591]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-tglu}:       [SKIP][36] ([i915#3547]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-9/igt@i915_pm_rpm@drm-resources-equal.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-4/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-tglu}:       [SKIP][38] ([i915#1397]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-6/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-8/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-dg1}:        [SKIP][40] ([i915#1397]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_atomic@atomic_plane_damage:
    - {shard-rkl}:        [SKIP][42] ([i915#4098]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@kms_atomic@atomic_plane_damage.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_atomic@plane-overlay-legacy:
    - {shard-rkl}:        [SKIP][44] ([i915#1845] / [i915#4098]) -> [PASS][45] +29 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@kms_atomic@plane-overlay-legacy.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_atomic@plane-overlay-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {shard-tglu}:       [SKIP][46] ([i915#1845]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-4/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][48] ([i915#2122]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - {shard-tglu}:       [SKIP][50] ([i915#1849]) -> [PASS][51] +6 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - {shard-rkl}:        [SKIP][52] ([i915#1849] / [i915#4098]) -> [PASS][53] +20 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - {shard-tglu}:       [SKIP][54] ([i915#1849] / [i915#3558]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-8/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_properties@plane-properties-atomic:
    - {shard-rkl}:        [SKIP][56] ([i915#1849]) -> [PASS][57] +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr@sprite_mmap_gtt:
    - {shard-rkl}:        [SKIP][58] ([i915#1072]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-5/igt@kms_psr@sprite_mmap_gtt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html

  * igt@kms_universal_plane@universal-plane-pipe-c-sanity:
    - {shard-tglu}:       [SKIP][60] ([fdo#109274]) -> [PASS][61] +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-9/igt@kms_universal_plane@universal-plane-pipe-c-sanity.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-4/igt@kms_universal_plane@universal-plane-pipe-c-sanity.html

  * igt@kms_vblank@pipe-d-wait-busy:
    - {shard-tglu}:       [SKIP][62] ([i915#1845] / [i915#7651]) -> [PASS][63] +21 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-6/igt@kms_vblank@pipe-d-wait-busy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-8/igt@kms_vblank@pipe-d-wait-busy.html

  * igt@perf@gen12-mi-rpc:
    - {shard-rkl}:        [SKIP][64] ([fdo#109289]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-5/igt@perf@gen12-mi-rpc.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@perf@gen12-mi-rpc.html

  * igt@prime_vgem@coherency-gtt:
    - {shard-rkl}:        [SKIP][66] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#8150]: https://gitlab.freedesktop.org/drm/intel/issues/8150
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8154]: https://gitlab.freedesktop.org/drm/intel/issues/8154
  [i915#8273]: https://gitlab.freedesktop.org/drm/intel/issues/8273
  [i915#8282]: https://gitlab.freedesktop.org/drm/intel/issues/8282


Build changes
-------------

  * Linux: CI_DRM_12853 -> Patchwork_113758v3

  CI-20190529: 20190529
  CI_DRM_12853: 7cfe22e6f72f5328dded16b38e215ff290e8d7f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7192: 18beb515ff127e64302a491ed321125b5116aa23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113758v3: 7cfe22e6f72f5328dded16b38e215ff290e8d7f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/index.html

--===============8666778115800064058==
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
<tr><td><b>Series:</b></td><td>drm: Add plane SIZE_HINTS property (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113758/">https://patchwork.freedesktop.org/series/113758/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12853_full -&gt; Patchwork_113758v3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (8 -&gt; 9)</h2>
<p>Additional (1): shard-rkl0 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113758v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-glk8/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-glk2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-snb4/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-clear:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-4/igt@dumb_buffer@create-clear.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-5/igt@dumb_buffer@create-clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@fbdev@pan.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@fbdev@pan.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-noreloc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-9/igt@gem_exec_reloc@basic-scanout@vcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3639">i915#3639</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-4/igt@gem_exec_reloc@basic-scanout@vcs0.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#4936</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1850">i915#1850</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@gem_workarounds@suspend-resume-fd.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-2/igt@gem_workarounds@suspend-resume-fd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-9/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3547">i915#3547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-4/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-8/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@kms_atomic@atomic_plane_damage.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-overlay-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@kms_atomic@plane-overlay-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_atomic@plane-overlay-legacy.html">PASS</a> +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-4/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">PASS</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-8/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-5/igt@kms_psr@sprite_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-c-sanity:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-9/igt@kms_universal_plane@universal-plane-pipe-c-sanity.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-4/igt@kms_universal_plane@universal-plane-pipe-c-sanity.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-busy:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-tglu-6/igt@kms_vblank@pipe-d-wait-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-tglu-8/igt@kms_vblank@pipe-d-wait-busy.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-5/igt@perf@gen12-mi-rpc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-6/igt@perf@gen12-mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12853/shard-rkl-3/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v3/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12853 -&gt; Patchwork_113758v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12853: 7cfe22e6f72f5328dded16b38e215ff290e8d7f8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7192: 18beb515ff127e64302a491ed321125b5116aa23 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113758v3: 7cfe22e6f72f5328dded16b38e215ff290e8d7f8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8666778115800064058==--
