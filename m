Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7481E80B5
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 16:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAB46E920;
	Fri, 29 May 2020 14:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 828706E91F;
 Fri, 29 May 2020 14:44:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BDDFA0003;
 Fri, 29 May 2020 14:44:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 14:44:40 -0000
Message-ID: <159076348047.3333.17502481193268400488@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529085809.23691-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529085809.23691-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_a_few_asserts_aroun?=
 =?utf-8?q?d_handling_of_i915=5Frequest=5Fis=5Factive=28=29_=28rev4=29?=
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

Series: series starting with [1/2] drm/i915: Add a few asserts around handling of i915_request_is_active() (rev4)
URL   : https://patchwork.freedesktop.org/series/77781/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8553_full -> Patchwork_17816_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17816_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17816_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17816_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_lease@page_flip_implicit_plane:
    - shard-skl:          [PASS][1] -> [TIMEOUT][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl1/igt@kms_lease@page_flip_implicit_plane.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl5/igt@kms_lease@page_flip_implicit_plane.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][3] ([i915#454]) -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl1/igt@i915_pm_dc@dc6-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-skl:          [SKIP][5] ([fdo#109271]) -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17816_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl6/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#54] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][11] -> [DMESG-FAIL][12] ([i915#1926])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-skl:          [PASS][13] -> [TIMEOUT][14] ([i915#123])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109642] / [fdo#111068])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [INCOMPLETE][27] ([i915#1959]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-kbl6/igt@gem_softpin@noreloc-s3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html

  * {igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-c}:
    - shard-kbl:          [DMESG-WARN][31] ([i915#165] / [i915#180]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-c.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-kbl7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-c.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [INCOMPLETE][33] ([i915#1185]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-iclb3/igt@kms_fbcon_fbt@psr-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-iclb2/igt@kms_fbcon_fbt@psr-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank@b-edp1}:
    - shard-skl:          [FAIL][35] ([i915#79]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][37] ([i915#1188]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
    - shard-kbl:          [INCOMPLETE][45] ([i915#155]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@mi-rpc:
    - shard-hsw:          [INCOMPLETE][47] ([i915#61]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-hsw5/igt@perf@mi-rpc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-hsw1/igt@perf@mi-rpc.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][49] ([i915#1542]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-hsw6/igt@perf@polling-parameterized.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-hsw4/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][51] ([fdo#110321] / [fdo#110336]) -> [FAIL][52] ([fdo#110321] / [fdo#110336] / [i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-apl6/igt@kms_content_protection@atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][53] ([i915#1319]) -> [FAIL][54] ([fdo#110321] / [i915#95])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-apl7/igt@kms_content_protection@lic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-apl4/igt@kms_content_protection@lic.html
    - shard-kbl:          [TIMEOUT][55] ([i915#1319]) -> [FAIL][56] ([fdo#110321] / [i915#93] / [i915#95])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-kbl7/igt@kms_content_protection@lic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-kbl2/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][57] ([i915#1319] / [i915#1635]) -> [FAIL][58] ([fdo#110321])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-apl8/igt@kms_content_protection@srm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-FAIL][59] ([i915#1925] / [i915#1926]) -> [DMESG-WARN][60] ([i915#1926])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1959]: https://gitlab.freedesktop.org/drm/intel/issues/1959
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8553 -> Patchwork_17816

  CI-20190529: 20190529
  CI_DRM_8553: 9f1b8b4fcb466dc714b1f825fd93e3bbd29c7de6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5683: 757b6e72d546fd2dbc3801a73796d67b0854021b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17816: 8d7f23d402092041673d05543408cfb36eaa118e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17816/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
