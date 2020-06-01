Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D35921EB1A5
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 00:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A1E89B65;
	Mon,  1 Jun 2020 22:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 492E489B29;
 Mon,  1 Jun 2020 22:22:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 428E4A363B;
 Mon,  1 Jun 2020 22:22:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 22:22:58 -0000
Message-ID: <159105017823.14890.4044105011287589585@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200601140355.20243-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200601140355.20243-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Trim_the_ironlake+_irq_handler_=28rev2=29?=
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

Series: drm/i915: Trim the ironlake+ irq handler (rev2)
URL   : https://patchwork.freedesktop.org/series/77871/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8565_full -> Patchwork_17832_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17832_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_draw_crc@fill-fb:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl8/igt@kms_draw_crc@fill-fb.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl2/igt@kms_draw_crc@fill-fb.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#1188]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([fdo#108145] / [i915#265]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109642] / [fdo#111068])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-iclb5/igt@kms_psr@psr2_primary_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][15] ([i915#1930]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-skl:          [FAIL][17] ([i915#1930]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-skl8/igt@gem_exec_reloc@basic-concurrent16.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-skl10/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [FAIL][19] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-glk6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:
    - shard-glk:          [INCOMPLETE][21] ([i915#1927] / [i915#58] / [k.org#198133]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][23] ([i915#72]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][25] ([fdo#109349]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][29] ([i915#198]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1}:
    - shard-glk:          [FAIL][31] ([i915#1928]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - shard-hsw:          [DMESG-WARN][35] ([i915#1927]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-hsw2/igt@kms_plane_cursor@pipe-b-primary-size-256.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-hsw4/igt@kms_plane_cursor@pipe-b-primary-size-256.html

  * igt@kms_prop_blob@blob-prop-lifetime:
    - shard-apl:          [TIMEOUT][37] ([i915#1635]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl6/igt@kms_prop_blob@blob-prop-lifetime.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl2/igt@kms_prop_blob@blob-prop-lifetime.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-iclb4/igt@kms_psr@psr2_suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][41] ([i915#1542]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-iclb3/igt@perf@blocking-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-iclb3/igt@perf@blocking-parameterized.html

  * {igt@perf_pmu@faulting-read@uc}:
    - shard-apl:          [DMESG-WARN][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl6/igt@perf_pmu@faulting-read@uc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl2/igt@perf_pmu@faulting-read@uc.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][45] ([i915#468]) -> [FAIL][46] ([i915#454])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-apl:          [TIMEOUT][47] ([i915#1635]) -> [SKIP][48] ([fdo#109271] / [fdo#111827])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl6/igt@kms_color_chamelium@pipe-a-degamma.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl2/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][49] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][50] ([i915#1319])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl6/igt@kms_content_protection@atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][51] ([i915#1319]) -> [FAIL][52] ([fdo#110321] / [fdo#110336])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl6/igt@kms_content_protection@legacy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-apl:          [TIMEOUT][53] ([i915#1635]) -> [SKIP][54] ([fdo#109271]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][55] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][56] ([fdo#108145] / [i915#265])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8565/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8565 -> Patchwork_17832

  CI-20190529: 20190529
  CI_DRM_8565: 267bdbf5f8ba7c0931eb6c11a3b9eb893b10fead @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5689: 587cbed206689abbad60689d4a32bf9caf0cc124 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17832: b61fdbb8c3873e10973bd087a9811566cbb289e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17832/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
