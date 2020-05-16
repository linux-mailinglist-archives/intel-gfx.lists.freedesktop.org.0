Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DB91D5ECD
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 06:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22B36ECF7;
	Sat, 16 May 2020 04:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8B366E105;
 Sat, 16 May 2020 04:38:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E151FA47E0;
 Sat, 16 May 2020 04:38:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 16 May 2020 04:38:21 -0000
Message-ID: <158960390189.12900.2452141545045027222@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200515200031.12034-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200515200031.12034-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Retry_faulthandlers_on_ENOSPC?=
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

Series: drm/i915/gem: Retry faulthandlers on ENOSPC
URL   : https://patchwork.freedesktop.org/series/77314/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8491_full -> Patchwork_17676_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17676_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#183])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl4/igt@gem_tiled_swapping@non-threaded.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-kbl1/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#151] / [i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl6/igt@i915_pm_rpm@system-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-skl3/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1795] / [i915#656])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl2/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-skl1/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-tglb:         [FAIL][19] ([i915#1172]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-tglb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-tglb:         [FAIL][21] -> [PASS][22] +18 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-tglb:         [FAIL][23] ([i915#1149]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb7/igt@kms_color@pipe-d-ctm-max.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-tglb2/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [FAIL][25] ([i915#54]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-kbl:          [DMESG-WARN][27] ([i915#128]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl4/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-kbl6/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * {igt@kms_flip@flip-vs-suspend@b-dp1}:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-kbl4/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate@c-edp1}:
    - shard-skl:          [FAIL][31] ([i915#1883]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [SKIP][33] ([i915#668]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb6/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-tglb2/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][37] ([fdo#109642] / [fdo#111068]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][41] ([i915#1542]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-iclb7/igt@perf@blocking-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-iclb4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][43] ([i915#468]) -> [SKIP][44] ([i915#668])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-snb:          [INCOMPLETE][45] ([i915#82]) -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-snb6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-snb4/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][47] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][48] ([i915#1319]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][49] ([i915#1319]) -> [FAIL][50] ([fdo#110321])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-apl2/igt@kms_content_protection@lic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-apl2/igt@kms_content_protection@lic.html

  * igt@kms_psr2_su@page_flip:
    - shard-tglb:         [SKIP][51] ([i915#668]) -> [FAIL][52] ([i915#608])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/shard-tglb1/igt@kms_psr2_su@page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/shard-tglb7/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8491 -> Patchwork_17676

  CI-20190529: 20190529
  CI_DRM_8491: 45b04894467fea442ac135a64318220fbf42cae5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5656: 3996584aa3fad5dd7a52cb90bb3cda87f645addf @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17676: 77fa47e76075fd4596dafd66b518ebe8a642d2c7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
