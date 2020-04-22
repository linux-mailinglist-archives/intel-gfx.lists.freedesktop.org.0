Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CAF1B4B50
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 19:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E656E1F2;
	Wed, 22 Apr 2020 17:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C2C06E0E6;
 Wed, 22 Apr 2020 17:08:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55429A47E6;
 Wed, 22 Apr 2020 17:08:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Wed, 22 Apr 2020 17:08:17 -0000
Message-ID: <158757529732.5179.4973013105840112714@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422123037.25414-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20200422123037.25414-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQXBw?=
 =?utf-8?q?ly_Wa=5F1406680159_as_a_clk=5Fgating_workaround?=
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

Series: Apply Wa_1406680159 as a clk_gating workaround
URL   : https://patchwork.freedesktop.org/series/76334/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8348_full -> Patchwork_17420_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17420_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2] ([i915#42])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-snb4/igt@gem_softpin@noreloc-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-snb5/igt@gem_softpin@noreloc-s3.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-hsw:          [PASS][5] -> [INCOMPLETE][6] ([i915#61])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-hsw8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-hsw7/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#54] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-snb:          [PASS][13] -> [SKIP][14] ([fdo#109271]) +34 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-snb4/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-snb1/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#128])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-tglb8/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-tglb2/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@perf@short-reads:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#51])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl1/igt@perf@short-reads.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-skl8/igt@perf@short-reads.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [FAIL][23] ([i915#1292] / [i915#93] / [i915#95]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [INCOMPLETE][25] ([i915#1580]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb5/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-iclb1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-skl:          [FAIL][27] ([i915#52] / [i915#54]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-edp1}:
    - shard-skl:          [FAIL][29] ([i915#79]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl3/igt@kms_hdr@bpc-switch.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][39] ([i915#1542]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-hsw6/igt@perf@blocking-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-hsw4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-snb:          [SKIP][41] ([fdo#109271] / [fdo#111827]) -> [SKIP][42] ([fdo#109271]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-snb4/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-snb1/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [INCOMPLETE][44] ([i915#155])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1292]: https://gitlab.freedesktop.org/drm/intel/issues/1292
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5604 -> IGTPW_4238
  * Linux: CI_DRM_8348 -> Patchwork_17420

  CI-20190529: 20190529
  CI_DRM_8348: 71482e0c1b4ce12ad43e790a0c03d671caf1eb54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4238: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4238/index.html
  IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17420: 678cbd8d33b743b7312a20652f15e8c368cbb917 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17420/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
