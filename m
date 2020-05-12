Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B41BC1CFF0E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 22:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 283C06E978;
	Tue, 12 May 2020 20:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 92F016E978;
 Tue, 12 May 2020 20:11:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B2B5A47E1;
 Tue, 12 May 2020 20:11:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 12 May 2020 20:11:49 -0000
Message-ID: <158931430956.18140.13239146883230183474@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_DP_vswing/preemph_fixes?=
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

Series: drm/i915: DP vswing/preemph fixes
URL   : https://patchwork.freedesktop.org/series/77198/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8470_full -> Patchwork_17635_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17635_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-kbl1/igt@i915_suspend@debugfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-apl4/igt@i915_suspend@fence-restore-untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#78])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][9] -> [SKIP][10] ([i915#668]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109642] / [fdo#111068])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_vgem@shrink:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#165])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-kbl1/igt@prime_vgem@shrink.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-kbl2/igt@prime_vgem@shrink.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][21] ([i915#1436] / [i915#716]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-apl2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@gt_pm:
    - shard-apl:          [INCOMPLETE][23] ([i915#1812]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-apl2/igt@i915_selftest@live@gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-apl7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-skl:          [FAIL][25] ([i915#54]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check@a-hdmi-a1}:
    - shard-glk:          [FAIL][31] ([i915#34]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-glk8/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][39] ([i915#31]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-kbl3/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-kbl6/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][41] ([i915#1542]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-hsw8/igt@perf@blocking-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-hsw2/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][43] ([i915#1319]) -> [FAIL][44] ([fdo#110321] / [fdo#110336] / [i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-apl6/igt@kms_content_protection@atomic-dpms.html
    - shard-kbl:          [TIMEOUT][45] ([i915#1319]) -> [FAIL][46] ([fdo#110321] / [fdo#110336] / [i915#93] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/shard-kbl3/igt@kms_content_protection@atomic-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/shard-kbl2/igt@kms_content_protection@atomic-dpms.html

  
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
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1812]: https://gitlab.freedesktop.org/drm/intel/issues/1812
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8470 -> Patchwork_17635

  CI-20190529: 20190529
  CI_DRM_8470: d2c5ae86eac811c49f2fe22c4fa02b6e6d31cd67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17635: 0c0676f7ff331d0f52650631d49993ff07b34aab @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
