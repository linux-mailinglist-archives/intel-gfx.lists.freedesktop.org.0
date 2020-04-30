Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD1F1C0B05
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:40:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AD86EA51;
	Thu, 30 Apr 2020 23:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 439616EA51;
 Thu, 30 Apr 2020 23:40:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D566A011A;
 Thu, 30 Apr 2020 23:40:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 30 Apr 2020 23:40:55 -0000
Message-ID: <158829005522.31920.1546264453642008143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_Revert_=22drm/i915/tgl=3A_Include_r?=
 =?utf-8?q?o_parts_of_l3_to_invalidate=22?=
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

Series: series starting with [1/9] Revert "drm/i915/tgl: Include ro parts of l3 to invalidate"
URL   : https://patchwork.freedesktop.org/series/76777/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8401_full -> Patchwork_17529_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17529_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-kbl6/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-kbl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#96])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1036])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl6/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-skl3/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#899])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109642] / [fdo#111068])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb2/igt@kms_psr@psr2_basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-a-query-idle-hang:
    - shard-snb:          [PASS][23] -> [SKIP][24] ([fdo#109271]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-snb1/igt@kms_vblank@pipe-a-query-idle-hang.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-snb4/igt@kms_vblank@pipe-a-query-idle-hang.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][25] ([i915#716]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][27] ([i915#454]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-edp1}:
    - shard-skl:          [FAIL][31] ([i915#79]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-glk:          [TIMEOUT][39] ([i915#1813]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-glk6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-glk4/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][41] ([i915#454]) -> [SKIP][42] ([i915#468])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1813]: https://gitlab.freedesktop.org/drm/intel/issues/1813
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8401 -> Patchwork_17529

  CI-20190529: 20190529
  CI_DRM_8401: 41fac0e3809be301af095c66e717eb9843b80212 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5617: 807b26292a3f21057ef7865a4028d22c512590df @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17529: 987ed1f2f5ee6841ef96e02808b35fd17dc72028 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
