Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C235C6712E9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 06:01:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FE210E680;
	Wed, 18 Jan 2023 05:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DC3B10E67E;
 Wed, 18 Jan 2023 05:01:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36849A8830;
 Wed, 18 Jan 2023 05:01:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3426992092843245413=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 18 Jan 2023 05:01:16 -0000
Message-ID: <167401807618.3606.3643194794548139324@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230117123856.2271720-1-jani.nikula@intel.com>
In-Reply-To: <20230117123856.2271720-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_remove_a_couple_of_superfluous_i915=5Fdrm=2Eh_includes?=
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

--===============3426992092843245413==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: remove a couple of superfluous i915_drm.h includes
URL   : https://patchwork.freedesktop.org/series/112931/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12592_full -> Patchwork_112931v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/index.html

Participating hosts (13 -> 11)
------------------------------

  Additional (1): shard-rkl0 
  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 

Known issues
------------

  Here are the changes found in Patchwork_112931v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk2/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2346])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][7] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#79])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  
#### Possible fixes ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - {shard-rkl}:        [SKIP][10] ([i915#3281]) -> [PASS][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - {shard-rkl}:        [FAIL][12] ([i915#7742]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_read@short-buffer-block:
    - {shard-rkl}:        [SKIP][14] ([i915#4098]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-5/igt@drm_read@short-buffer-block.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@drm_read@short-buffer-block.html

  * igt@fbdev@eof:
    - {shard-rkl}:        [SKIP][16] ([i915#2582]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-3/igt@fbdev@eof.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@fbdev@eof.html

  * igt@fbdev@info:
    - {shard-tglu}:       [SKIP][18] ([i915#2582]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@fbdev@info.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@fbdev@info.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][20] ([i915#7052]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-4/igt@gem_eio@suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-1/igt@gem_eio@suspend.html

  * igt@gem_pwrite@basic-self:
    - {shard-rkl}:        [SKIP][22] ([i915#3282]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-6/igt@gem_pwrite@basic-self.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-5/igt@gem_pwrite@basic-self.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - {shard-dg1}:        [FAIL][24] ([i915#3591]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][26] ([fdo#109308]) -> [PASS][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-5/igt@i915_pm_rpm@drm-resources-equal.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - {shard-rkl}:        [FAIL][28] ([fdo#103375]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - {shard-rkl}:        [SKIP][30] ([i915#1845] / [i915#4098]) -> [PASS][31] +26 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_fbcon_fbt@psr:
    - {shard-rkl}:        [SKIP][32] ([fdo#110189] / [i915#3955]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
    - {shard-tglu}:       [SKIP][34] ([i915#1849]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][36] ([i915#1849] / [i915#4098]) -> [PASS][37] +16 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@pixel-format@pipe-b-planes:
    - {shard-rkl}:        [SKIP][38] ([i915#1849]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-3/igt@kms_plane@pixel-format@pipe-b-planes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_plane@pixel-format@pipe-b-planes.html

  * igt@kms_psr@primary_render:
    - {shard-rkl}:        [SKIP][40] ([i915#1072]) -> [PASS][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-5/igt@kms_psr@primary_render.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_psr@primary_render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][42] ([i915#5461]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - {shard-tglu}:       [SKIP][44] ([fdo#109274]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  * igt@kms_vblank@pipe-d-query-busy:
    - {shard-tglu}:       [SKIP][46] ([i915#7651]) -> [PASS][47] +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@kms_vblank@pipe-d-query-busy.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@kms_vblank@pipe-d-query-busy.html

  * igt@perf@polling-small-buf:
    - {shard-tglu}:       [FAIL][48] ([i915#1722]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@perf@polling-small-buf.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@perf@polling-small-buf.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-glk:          [FAIL][50] ([i915#1731]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk8/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk5/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  * igt@testdisplay:
    - {shard-tglu}:       [SKIP][52] ([i915#1845] / [i915#7651]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@testdisplay.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@testdisplay.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12592 -> Patchwork_112931v1
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_12592: aa316f18737ff65f416f94aa98ed38d6a073582c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112931v1: aa316f18737ff65f416f94aa98ed38d6a073582c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/index.html

--===============3426992092843245413==
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
<tr><td><b>Series:</b></td><td>drm/i915: remove a couple of superfluous i915_drm.h includes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112931/">https://patchwork.freedesktop.org/series/112931/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12592_full -&gt; Patchwork_112931v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/index.html</p>
<h2>Participating hosts (13 -&gt; 11)</h2>
<p>Additional (1): shard-rkl0 <br />
  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112931v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk6/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-5/igt@drm_read@short-buffer-block.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@drm_read@short-buffer-block.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-3/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-4/igt@gem_eio@suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-1/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-6/igt@gem_pwrite@basic-self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-5/igt@gem_pwrite@basic-self.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-5/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-1/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-3/igt@kms_plane@pixel-format@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_plane@pixel-format@pipe-b-planes.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-5/igt@kms_psr@primary_render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_psr@primary_render.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-rkl-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461">i915#5461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-a:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-busy:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@kms_vblank@pipe-d-query-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@kms_vblank@pipe-d-query-busy.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-glk8/igt@sysfs_heartbeat_interval@mixed@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-glk5/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12592/shard-tglu-6/igt@testdisplay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112931v1/shard-tglu-1/igt@testdisplay.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12592 -&gt; Patchwork_112931v1</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12592: aa316f18737ff65f416f94aa98ed38d6a073582c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112931v1: aa316f18737ff65f416f94aa98ed38d6a073582c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3426992092843245413==--
