Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8018A1B5E28
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 16:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA9E6E860;
	Thu, 23 Apr 2020 14:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B71E56E859;
 Thu, 23 Apr 2020 14:45:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D940A0099;
 Thu, 23 Apr 2020 14:45:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Apr 2020 14:45:03 -0000
Message-ID: <158765310361.26749.14823340924297641580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423115315.26825-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200423115315.26825-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Carefully_order_virtual=5Fsubmission=5Ftasklet?=
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

Series: drm/i915/gt: Carefully order virtual_submission_tasklet
URL   : https://patchwork.freedesktop.org/series/76391/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8352_full -> Patchwork_17438_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17438_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4] ([i915#155])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][5] -> [FAIL][6] ([i915#57])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#128])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-kbl2/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-kbl4/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#52] / [i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180] / [i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-panning-top-left-pipe-b-planes:
    - shard-snb:          [PASS][15] -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-snb6/igt@kms_plane@plane-panning-top-left-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-snb2/igt@kms_plane@plane-panning-top-left-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109642] / [fdo#111068])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-iclb5/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-apl1/igt@gem_eio@in-flight-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-apl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][27] ([fdo#109276]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][29] ([i915#151] / [i915#69]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-kbl1/igt@i915_suspend@sysfs-reader.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-kbl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-apl:          [FAIL][33] ([i915#54] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][35] ([i915#52] / [i915#54]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-iclb5/igt@kms_psr@psr2_primary_blt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@suspend:
    - shard-skl:          [INCOMPLETE][41] ([i915#198]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-skl3/igt@kms_psr@suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-skl7/igt@kms_psr@suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][43] ([i915#31]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-apl7/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-apl8/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][45] ([i915#31]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-kbl3/igt@kms_setmode@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-kbl2/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][47] ([i915#1542]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8352/shard-iclb4/igt@perf@polling-parameterized.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/shard-iclb8/igt@perf@polling-parameterized.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8352 -> Patchwork_17438

  CI-20190529: 20190529
  CI_DRM_8352: 248cbab28d58c203de956df1db4cdeb53ea97a89 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5608: e7bcaf1dd251d454706c7cd64282f531aec50183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17438: 4812e04a3c548da03f59f871c14cbdf490c83a10 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17438/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
