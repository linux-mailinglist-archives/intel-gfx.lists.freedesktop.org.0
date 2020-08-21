Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3331624D406
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 13:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1DB6EACD;
	Fri, 21 Aug 2020 11:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5CBC6EABA;
 Fri, 21 Aug 2020 11:33:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D193A0BD0;
 Fri, 21 Aug 2020 11:33:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joerg Roedel" <jroedel@suse.de>
Date: Fri, 21 Aug 2020 11:33:10 -0000
Message-ID: <159800959055.16198.86560153579433401@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200821085011.28878-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_mm=3A_Export_flush=5Fvm=5Farea=28?=
 =?utf-8?q?=29_to_sync_the_PTEs_upon_construction?=
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
Content-Type: multipart/mixed; boundary="===============0342711298=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0342711298==
Content-Type: multipart/alternative;
 boundary="===============2005803009750545876=="

--===============2005803009750545876==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] mm: Export flush_vm_area() to sync the PTEs upon construction
URL   : https://patchwork.freedesktop.org/series/80892/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8911_full -> Patchwork_18386_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18386_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-snb:          [PASS][1] -> [TIMEOUT][2] ([i915#1958]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-snb2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-snb4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk4/igt@gem_exec_whisper@basic-fds-forked-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk7/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][5] -> [DMESG-FAIL][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_flip@flip-vs-fences@a-edp1:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +13 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl8/igt@kms_flip@flip-vs-fences@a-edp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl5/igt@kms_flip@flip-vs-fences@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([i915#155])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [DMESG-FAIL][18] ([fdo#108145] / [i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk9/igt@kms_plane_cursor@pipe-a-primary-size-128.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk2/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109642] / [fdo#111068])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#1542]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-iclb2/igt@perf@blocking-parameterized.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-iclb2/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [DMESG-WARN][25] ([i915#118] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][27] ([i915#1982]) -> [PASS][28] +12 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl3/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl10/igt@i915_module_load@reload.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-iclb:         [DMESG-WARN][29] ([i915#1982]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-iclb7/igt@i915_query@query-topology-coherent-slice-mask.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-iclb3/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - shard-tglb:         [DMESG-WARN][31] ([i915#1982]) -> [PASS][32] +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-tglb5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-tglb1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
    - shard-skl:          [FAIL][33] ([i915#52] / [i915#54]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-hsw6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-vga1-hdmi-a1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-hsw1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][39] ([i915#2122]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [FAIL][43] ([i915#1188]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-apl4/igt@perf_pmu@module-unload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-apl2/igt@perf_pmu@module-unload.html

  * igt@prime_busy@after@vecs0:
    - shard-hsw:          [FAIL][49] ([i915#2258]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-hsw1/igt@prime_busy@after@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-hsw4/igt@prime_busy@after@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][51] ([i915#1930]) -> [TIMEOUT][52] ([i915#1958])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [TIMEOUT][53] ([i915#1958]) -> [INCOMPLETE][54] ([i915#1958])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk8/igt@gem_exec_reloc@basic-concurrent16.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk3/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_exec_schedule@preemptive-hang:
    - shard-snb:          [SKIP][55] ([fdo#109271]) -> [TIMEOUT][56] ([i915#1958]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-snb2/igt@gem_exec_schedule@preemptive-hang.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-snb4/igt@gem_exec_schedule@preemptive-hang.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][57] ([i915#1319]) -> [TIMEOUT][58] ([i915#1319] / [i915#1958])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-kbl1/igt@kms_content_protection@lic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-kbl4/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2258]: https://gitlab.freedesktop.org/drm/intel/issues/2258
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8911 -> Patchwork_18386

  CI-20190529: 20190529
  CI_DRM_8911: a1029718e0c12c304c20384a838b02c95f6262d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18386: 9e1d77a3e2faac6f5624fe505f2af1b80357ebf3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/index.html

--===============2005803009750545876==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] mm: Export flush_vm_area() to sync the PTEs upon construction</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80892/">https://patchwork.freedesktop.org/series/80892/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8911_full -&gt; Patchwork_18386_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18386_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-snb2/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-snb4/igt@gem_exec_suspend@basic-s3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk4/igt@gem_exec_whisper@basic-fds-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk7/igt@gem_exec_whisper@basic-fds-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl8/igt@kms_flip@flip-vs-fences@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl5/igt@kms_flip@flip-vs-fences@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk9/igt@kms_plane_cursor@pipe-a-primary-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk2/igt@kms_plane_cursor@pipe-a-primary-size-128.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-iclb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-iclb2/igt@perf@blocking-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-iclb2/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl3/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl10/igt@i915_module_load@reload.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-iclb7/igt@i915_query@query-topology-coherent-slice-mask.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-iclb3/igt@i915_query@query-topology-coherent-slice-mask.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-tglb5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-tglb1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/52">i915#52</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-hsw6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-hsw1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +3 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-apl4/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-apl2/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_busy@after@vecs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-hsw1/igt@prime_busy@after@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2258">i915#2258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-hsw4/igt@prime_busy@after@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-glk8/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-glk3/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preemptive-hang:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-snb2/igt@gem_exec_schedule@preemptive-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-snb4/igt@gem_exec_schedule@preemptive-hang.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8911/shard-kbl1/igt@kms_content_protection@lic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18386/shard-kbl4/igt@kms_content_protection@lic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8911 -&gt; Patchwork_18386</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8911: a1029718e0c12c304c20384a838b02c95f6262d5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18386: 9e1d77a3e2faac6f5624fe505f2af1b80357ebf3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2005803009750545876==--

--===============0342711298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0342711298==--
