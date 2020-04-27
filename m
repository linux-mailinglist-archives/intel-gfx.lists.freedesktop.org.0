Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9209F1B96CF
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 07:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4EC89E1B;
	Mon, 27 Apr 2020 05:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CD5889E1B;
 Mon, 27 Apr 2020 05:52:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04A12A0BC6;
 Mon, 27 Apr 2020 05:52:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexei Podtelezhnikov" <apodtele@gmail.com>
Date: Mon, 27 Apr 2020 05:52:31 -0000
Message-ID: <158796675198.30986.14610466281464608237@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427032232.4307-1-apodtele@gmail.com>
In-Reply-To: <20200427032232.4307-1-apodtele@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUENJ?=
 =?utf-8?q?_ID_review?=
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

Series: PCI ID review
URL   : https://patchwork.freedesktop.org/series/76515/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8370_full -> Patchwork_17471_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17471_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#151] / [i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl8/igt@i915_pm_rpm@system-suspend-execbuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([IGT#5])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-a-torture-move:
    - shard-hsw:          [PASS][5] -> [INCOMPLETE][6] ([i915#61])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-hsw6/igt@kms_cursor_legacy@pipe-a-torture-move.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-hsw4/igt@kms_cursor_legacy@pipe-a-torture-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#53] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-kbl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#53] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][21] ([fdo#109276]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][25] ([i915#129]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_color@pipe-a-ctm-green-to-red.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-skl9/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][27] ([i915#54]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][29] ([i915#57]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [FAIL][31] ([i915#49]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb8/igt@kms_psr@psr2_suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][41] ([i915#31]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-hsw4/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-hsw1/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-hsw6/igt@perf@blocking-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-hsw4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][45] ([i915#658]) -> [SKIP][46] ([i915#588])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [INCOMPLETE][47] ([CI#80]) -> [INCOMPLETE][48] ([CI#80] / [i915#155])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-kbl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [FAIL][49] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8370/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8370 -> Patchwork_17471

  CI-20190529: 20190529
  CI_DRM_8370: 1f3ffd7683d5457e14a1f879a8714a74b7b7faeb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17471: 5c94f00b8f0986a505c56dc8912a01c7ab2838db @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17471/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
