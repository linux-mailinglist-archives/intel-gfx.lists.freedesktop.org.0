Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF501E5062
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 23:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1C16E101;
	Wed, 27 May 2020 21:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A89026E0F9;
 Wed, 27 May 2020 21:20:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97A88A47EB;
 Wed, 27 May 2020 21:20:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 27 May 2020 21:20:04 -0000
Message-ID: <159061440459.342.11554596329442681052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527151235.25663-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200527151235.25663-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Remove_local_entries_from_GGTT_on_suspend_=28rev3?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gt: Remove local entries from GGTT on suspend (rev3)
URL   : https://patchwork.freedesktop.org/series/77708/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8544_full -> Patchwork_17795_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17795_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17795_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17795_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-glk:          NOTRUN -> [TIMEOUT][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-glk9/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_17795_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][2] -> [FAIL][3] ([i915#1528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-skl3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-hsw:          [PASS][4] -> [INCOMPLETE][5] ([i915#151] / [i915#61])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-hsw2/igt@i915_pm_rpm@system-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-hsw7/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109349])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][8] -> [SKIP][9] ([i915#668]) +6 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#1188])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-hsw:          [PASS][12] -> [INCOMPLETE][13] ([i915#61]) +15 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-hsw7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-hsw1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([fdo#108145] / [i915#265]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109441]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][18] -> [FAIL][19] ([i915#31])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-apl2/igt@kms_setmode@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-hsw:          [PASS][20] -> [INCOMPLETE][21] ([i915#146] / [i915#61])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-hsw2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-hsw2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [INCOMPLETE][22] ([i915#155]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-kbl6/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][24] ([i915#180]) -> [PASS][25] +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-kbl7/igt@i915_suspend@forcewake.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-kbl4/igt@i915_suspend@forcewake.html
    - shard-skl:          [INCOMPLETE][26] ([i915#636] / [i915#69]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl5/igt@i915_suspend@forcewake.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-skl10/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [FAIL][28] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-snb:          [INCOMPLETE][30] ([i915#82]) -> [PASS][31] +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][32] ([i915#180]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][34] ([i915#79]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][36] ([i915#1188]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - shard-skl:          [FAIL][38] ([i915#53]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
    - shard-skl:          [FAIL][40] ([i915#1036]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl10/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-skl6/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][42] ([fdo#108145] / [i915#265]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][44] ([fdo#109642] / [fdo#111068]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][46] ([fdo#109441]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][48] ([i915#1542]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-hsw7/igt@perf@blocking-parameterized.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-hsw1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][50] ([i915#658]) -> [SKIP][51] ([i915#588])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-WARN][52] ([i915#1926]) -> [DMESG-FAIL][53] ([i915#1925])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/shard-glk9/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8544 -> Patchwork_17795

  CI-20190529: 20190529
  CI_DRM_8544: c6c0a18e985d7a3fd4451e0e786e6522371ea9ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17795: 3c30dfc380bfcf268228645cf7cc68f9734067f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17795/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
