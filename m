Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C011B34A9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 03:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2CD6E1F5;
	Wed, 22 Apr 2020 01:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D62846E19B;
 Wed, 22 Apr 2020 01:49:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAD10A363B;
 Wed, 22 Apr 2020 01:49:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Apr 2020 01:49:47 -0000
Message-ID: <158752018780.5179.2797437406319028163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421171351.19575-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200421171351.19575-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Unroll_the_CS_frequency_loop?=
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

Series: drm/i915/selftests: Unroll the CS frequency loop
URL   : https://patchwork.freedesktop.org/series/76277/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8345_full -> Patchwork_17410_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17410_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@reset:
    - shard-snb:          [PASS][1] -> [FAIL][2] ([i915#1763])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-snb1/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-snb4/igt@i915_selftest@live@reset.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#1119] / [i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-kbl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-kbl2/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#1119] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-apl8/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-apl1/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#128])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-tglb3/igt@kms_cursor_legacy@pipe-d-torture-move.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-tglb3/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#52] / [i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-skl1/igt@kms_hdr@bpc-switch.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#31])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-skl2/igt@kms_setmode@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-skl3/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-kbl1/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-kbl6/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][27] ([fdo#109276]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_selftest@live@gt_pm:
    - shard-iclb:         [DMESG-FAIL][29] ([i915#1754]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-iclb7/igt@i915_selftest@live@gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-iclb8/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][31] ([i915#1531] / [i915#1658]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-tglb5/igt@i915_selftest@live@requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-tglb1/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-hsw:          [INCOMPLETE][33] ([i915#61]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][35] ([fdo#109349]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][45] ([i915#1542]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-hsw1/igt@perf@blocking-parameterized.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-hsw7/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][47] ([i915#588]) -> [SKIP][48] ([i915#658])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][49] ([i915#1515]) -> [WARN][50] ([i915#1515])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][51] ([i915#608]) -> [SKIP][52] ([fdo#109642] / [fdo#111068])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8345/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/shard-iclb1/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#1754]: https://gitlab.freedesktop.org/drm/intel/issues/1754
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8345 -> Patchwork_17410

  CI-20190529: 20190529
  CI_DRM_8345: e1fa8774e58e663bec8257f678c2f8fd17088292 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17410: af32ad6faab4c6f97462063bafa87e3daa4026e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17410/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
