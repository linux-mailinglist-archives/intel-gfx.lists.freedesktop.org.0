Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 002401B4A69
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 18:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517756EA36;
	Wed, 22 Apr 2020 16:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6B4F6EA32;
 Wed, 22 Apr 2020 16:26:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFD82A0019;
 Wed, 22 Apr 2020 16:26:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: bhanuprakash.modem@intel.com
Date: Wed, 22 Apr 2020 16:26:13 -0000
Message-ID: <158757277369.5178.2867217614990485996@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422110733.28635-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200422110733.28635-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/3=5D_drm/dp=3A_DRM_DP_helper_for_re?=
 =?utf-8?q?ading_Ignore_MSA_from_DPCD?=
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

Series: series starting with [v5,1/3] drm/dp: DRM DP helper for reading Ignore MSA from DPCD
URL   : https://patchwork.freedesktop.org/series/76328/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8348_full -> Patchwork_17419_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17419_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [PASS][1] -> [WARN][2] ([i915#1519])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#54])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([IGT#5])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#52] / [i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#49])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [FAIL][17] ([i915#1292] / [i915#93] / [i915#95]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-kbl3/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][19] ([fdo#109276]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [INCOMPLETE][21] ([i915#1580]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb5/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-iclb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-skl:          [FAIL][23] ([i915#52] / [i915#54]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-edp1}:
    - shard-skl:          [FAIL][25] ([i915#79]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][31] ([i915#1188]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl3/igt@kms_hdr@bpc-switch.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][37] ([i915#31] / [i915#93] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl6/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-kbl2/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][39] ([i915#1542]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-hsw6/igt@perf@blocking-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-hsw4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-snb:          [INCOMPLETE][41] ([i915#82]) -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-snb6/igt@i915_pm_rpm@cursor-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/shard-snb2/igt@i915_pm_rpm@cursor-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1292]: https://gitlab.freedesktop.org/drm/intel/issues/1292
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8348 -> Patchwork_17419

  CI-20190529: 20190529
  CI_DRM_8348: 71482e0c1b4ce12ad43e790a0c03d671caf1eb54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17419: 6790cbe6f7e682d16b9a620be8130d6a2b5ace89 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
