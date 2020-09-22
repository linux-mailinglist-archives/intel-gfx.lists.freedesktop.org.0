Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 929162746F7
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 18:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F456E8BD;
	Tue, 22 Sep 2020 16:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 349F76E8CD;
 Tue, 22 Sep 2020 16:49:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18772A008A;
 Tue, 22 Sep 2020 16:49:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Tue, 22 Sep 2020 16:49:22 -0000
Message-ID: <160079336207.13391.18282774593334039257@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200922134426.9840-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_mipi_dsi_cmd_mode_=28rev13=29?=
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
Content-Type: multipart/mixed; boundary="===============0093763099=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0093763099==
Content-Type: multipart/alternative;
 boundary="===============7493554548820231748=="

--===============7493554548820231748==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for mipi dsi cmd mode (rev13)
URL   : https://patchwork.freedesktop.org/series/69290/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9034_full -> Patchwork_18545_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18545_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2389])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-glk1/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-glk5/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4] ([i915#1958])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl1/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#79])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-vga1:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#82])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-snb2/igt@kms_flip@flip-vs-suspend@b-vga1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-snb1/igt@kms_flip@flip-vs-suspend@b-vga1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#49])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [DMESG-FAIL][22] ([fdo#108145] / [i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@syncobj-timeline-wait:
    - shard-skl:          [DMESG-WARN][25] ([i915#1982]) -> [PASS][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl5/igt@gem_exec_fence@syncobj-timeline-wait.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl10/igt@gem_exec_fence@syncobj-timeline-wait.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][27] ([i915#2190]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@i915_suspend@debugfs-reader:
    - shard-snb:          [DMESG-WARN][29] ([i915#42]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-snb1/igt@i915_suspend@debugfs-reader.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-snb4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-skl:          [FAIL][31] ([i915#2122]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [DMESG-WARN][33] ([i915#1982]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][35] ([i915#1188]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][39] ([fdo#109642] / [fdo#111068]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][45] ([i915#1319] / [i915#1635] / [i915#1958]) -> [FAIL][46] ([fdo#110321] / [fdo#110336] / [i915#1635])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][47] ([fdo#109349]) -> [DMESG-WARN][48] ([i915#1226])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [DMESG-FAIL][50] ([i915#1982] / [i915#79])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9034 -> Patchwork_18545

  CI-20190529: 20190529
  CI_DRM_9034: 6348adbb00184ce4f166e3260583f09aa381c7e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18545: 8f61cd262902944cc8a261360bb1fdc2d84a5d57 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/index.html

--===============7493554548820231748==
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
<tr><td><b>Series:</b></td><td>Add support for mipi dsi cmd mode (rev13)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/69290/">https://patchwork.freedesktop.org/series/69290/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9034_full -&gt; Patchwork_18545_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18545_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-glk1/igt@gem_exec_reloc@basic-many-active@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-glk5/igt@gem_exec_reloc@basic-many-active@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl1/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl5/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-kbl6/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-kbl2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-snb2/igt@kms_flip@flip-vs-suspend@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-snb1/igt@kms_flip@flip-vs-suspend@b-vga1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-wait:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl5/igt@gem_exec_fence@syncobj-timeline-wait.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl10/igt@gem_exec_fence@syncobj-timeline-wait.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-snb1/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/42">i915#42</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-snb4/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb5/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-apl7/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-apl3/igt@kms_content_protection@atomic-dpms.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110321">fdo#110321</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=110336">fdo#110336</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9034/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18545/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9034 -&gt; Patchwork_18545</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9034: 6348adbb00184ce4f166e3260583f09aa381c7e3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18545: 8f61cd262902944cc8a261360bb1fdc2d84a5d57 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7493554548820231748==--

--===============0093763099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0093763099==--
