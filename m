Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C435727F255
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 21:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F06FB6E7FE;
	Wed, 30 Sep 2020 19:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35C3C6E0CA;
 Wed, 30 Sep 2020 19:07:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E1E9A47E4;
 Wed, 30 Sep 2020 19:07:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 30 Sep 2020 19:07:29 -0000
Message-ID: <160149284918.17415.9776832807314176696@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200930153016.105711-1-lucas.demarchi@intel.com>
In-Reply-To: <20200930153016.105711-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_don=27t_conflate_is=5Fdgfx_with_fake_lmem?=
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
Content-Type: multipart/mixed; boundary="===============1476475501=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1476475501==
Content-Type: multipart/alternative;
 boundary="===============8205806452123972883=="

--===============8205806452123972883==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: don't conflate is_dgfx with fake lmem
URL   : https://patchwork.freedesktop.org/series/82265/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9079_full -> Patchwork_18598_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18598_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2389]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-glk4/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-glk3/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#300])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#78])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl1/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl2/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#165])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl2/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-dp1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#165] / [i915#78])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl1/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-dp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][19] -> [DMESG-FAIL][20] ([fdo#108145] / [i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@semaphore-codependency:
    - shard-skl:          [DMESG-WARN][23] ([i915#1982]) -> [PASS][24] +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl2/igt@gem_exec_schedule@semaphore-codependency.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl7/igt@gem_exec_schedule@semaphore-codependency.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-skl:          [FAIL][25] ([i915#2521]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-apl:          [FAIL][27] ([i915#1635] / [i915#2521]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl8/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl3/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][29] ([i915#1635] / [i915#1982]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl7/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][31] ([i915#54]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][33] ([i915#2346]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-skl:          [FAIL][39] ([i915#49]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][41] ([i915#1188]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][47] ([i915#1542]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-glk5/igt@perf@polling-parameterized.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-glk4/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][49] ([i915#1515]) -> [FAIL][50] ([i915#1515])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][51] ([i915#1319] / [i915#1635] / [i915#1958]) -> [TIMEOUT][52] ([i915#1319] / [i915#1635])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][53] ([i915#1319] / [i915#1635] / [i915#1958]) -> [FAIL][54] ([fdo#110321] / [fdo#110336] / [i915#1635])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl4/igt@kms_content_protection@legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][55] ([i915#1319] / [i915#1635]) -> [TIMEOUT][56] ([i915#1319] / [i915#1635] / [i915#1958])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl8/igt@kms_content_protection@srm.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [DMESG-FAIL][58] ([i915#1982] / [i915#79])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2469]: https://gitlab.freedesktop.org/drm/intel/issues/2469
  [i915#2476]: https://gitlab.freedesktop.org/drm/intel/issues/2476
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 12)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9079 -> Patchwork_18598

  CI-20190529: 20190529
  CI_DRM_9079: ff48b6adb2bf89b3e3eb8cd41e36d173b57a6c79 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5794: eeccb2a17453f90ad92d1ab6f81ad7d344119d72 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18598: 39bec127a60d314738843aa1b4df9658b15d3fcf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/index.html

--===============8205806452123972883==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: don&#39;t conflate is_dgfx with fake lmem</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82265/">https://patchwork.freedesktop.org/series/82265/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9079_full -&gt; Patchwork_18598_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18598_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-glk4/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-glk3/igt@gem_exec_whisper@basic-queues-priority-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl1/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl2/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl2/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl1/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl2/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_schedule@semaphore-codependency:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl2/igt@gem_exec_schedule@semaphore-codependency.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl7/igt@gem_exec_schedule@semaphore-codependency.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl8/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl3/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl7/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-glk5/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-glk4/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#1515</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#1515</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl7/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl3/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl4/igt@kms_content_protection@legacy.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl7/igt@kms_content_protection@legacy.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110321">fdo#110321</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=110336">fdo#110336</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-apl8/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-apl3/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9079/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18598/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9079 -&gt; Patchwork_18598</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9079: ff48b6adb2bf89b3e3eb8cd41e36d173b57a6c79 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5794: eeccb2a17453f90ad92d1ab6f81ad7d344119d72 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18598: 39bec127a60d314738843aa1b4df9658b15d3fcf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8205806452123972883==--

--===============1476475501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1476475501==--
