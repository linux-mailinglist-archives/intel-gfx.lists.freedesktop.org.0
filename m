Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288EA1EB609
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 08:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629AC89E5A;
	Tue,  2 Jun 2020 06:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10C7289E5A;
 Tue,  2 Jun 2020 06:57:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A78AA47E2;
 Tue,  2 Jun 2020 06:57:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 02 Jun 2020 06:57:11 -0000
Message-ID: <159108103101.21429.17979833983652384512@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601215510.18379-1-jani.nikula@intel.com>
In-Reply-To: <20200601215510.18379-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/params=3A_don=27t_exp?=
 =?utf-8?q?ose_inject=5Fprobe=5Ffailure_in_debugfs?=
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

Series: series starting with [CI,1/3] drm/i915/params: don't expose inject_probe_failure in debugfs
URL   : https://patchwork.freedesktop.org/series/77889/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8567_full -> Patchwork_17836_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17836_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-kbl7/igt@i915_suspend@forcewake.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-kbl1/igt@i915_suspend@forcewake.html
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#636] / [i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-skl1/igt@i915_suspend@forcewake.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-skl2/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-b-degamma:
    - shard-hsw:          [PASS][7] -> [INCOMPLETE][8] ([i915#1927] / [i915#61])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-hsw1/igt@kms_color@pipe-b-degamma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-hsw1/igt@kms_color@pipe-b-degamma.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#49])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-skl7/igt@kms_hdr@bpc-switch.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-tglb:         [INCOMPLETE][19] ([i915#750]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-tglb7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-tglb6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_draw_crc@fill-fb:
    - shard-kbl:          [FAIL][21] ([i915#52] / [i915#93] / [i915#95]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-kbl1/igt@kms_draw_crc@fill-fb.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-kbl2/igt@kms_draw_crc@fill-fb.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][23] ([i915#61]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][25] ([i915#180] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][29] ([i915#69]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][31] ([fdo#108145] / [i915#265]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-iclb5/igt@kms_psr@psr2_suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][35] ([i915#31]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-glk2/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-glk7/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][37] ([i915#1542]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-hsw6/igt@perf@blocking-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-hsw2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][39] ([i915#588]) -> [SKIP][40] ([i915#658])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][41] ([i915#1319] / [i915#1635]) -> [FAIL][42] ([fdo#110321] / [fdo#110336])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-apl6/igt@kms_content_protection@atomic-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][43] ([i915#1319]) -> [TIMEOUT][44] ([i915#1319] / [i915#1635])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-apl6/igt@kms_content_protection@legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-apl1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [DMESG-WARN][46] ([i915#180] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-apl:          [FAIL][47] ([i915#1525] / [i915#95]) -> [FAIL][48] ([i915#1525])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-apl1/igt@kms_fbcon_fbt@fbc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-apl2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][49] ([i915#608]) -> [SKIP][50] ([fdo#109642] / [fdo#111068])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8567/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/shard-iclb4/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8567 -> Patchwork_17836

  CI-20190529: 20190529
  CI_DRM_8567: d36c7a9807541df70739a5917cbbab42fdf66a29 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5690: bea881189520a9cccbb1c1cb454ac5b6fdaea40e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17836: 28eb95e6e065e155a6b0a5c8fb4c4bab9a19c411 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17836/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
