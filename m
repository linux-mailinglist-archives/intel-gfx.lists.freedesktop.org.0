Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E2C603781
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 03:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C5210EA1F;
	Wed, 19 Oct 2022 01:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12B1D10E26D;
 Wed, 19 Oct 2022 01:25:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A02AAA917;
 Wed, 19 Oct 2022 01:25:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6750968418021669444=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Wed, 19 Oct 2022 01:25:26 -0000
Message-ID: <166614272603.29709.1243207348546563091@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221018071630.3831-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221018071630.3831-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev7=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6750968418021669444==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev7)
URL   : https://patchwork.freedesktop.org/series/105879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12254_full -> Patchwork_105879v7_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_105879v7_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2] ([i915#5161])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglb:         NOTRUN -> [SKIP][3] ([i915#2527] / [i915#2856])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@workarounds:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][4] ([i915#7222])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@i915_selftest@live@workarounds.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#3743])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][7] ([i915#6095])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][8] ([i915#3689] / [i915#3886])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_content_protection@content_type_change:
    - shard-tglb:         NOTRUN -> [SKIP][9] ([i915#7118])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([i915#3555]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][12] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][13] ([i915#5176]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1.html

  
#### Possible fixes ####

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         [FAIL][14] ([i915#3743]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  
#### Warnings ####

  * igt@gem_pread@exhaustion:
    - shard-tglb:         [INCOMPLETE][16] ([i915#7244]) -> [WARN][17] ([i915#2658])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-tglb1/igt@gem_pread@exhaustion.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@gem_pread@exhaustion.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [INCOMPLETE][18] ([i915#7231] / [i915#7259]) -> [INCOMPLETE][19] ([i915#7259])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-apl3/igt@gem_workarounds@suspend-resume.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-apl6/igt@gem_workarounds@suspend-resume.html

  
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7222]: https://gitlab.freedesktop.org/drm/intel/issues/7222
  [i915#7231]: https://gitlab.freedesktop.org/drm/intel/issues/7231
  [i915#7244]: https://gitlab.freedesktop.org/drm/intel/issues/7244
  [i915#7259]: https://gitlab.freedesktop.org/drm/intel/issues/7259


Build changes
-------------

  * Linux: CI_DRM_12254 -> Patchwork_105879v7

  CI-20190529: 20190529
  CI_DRM_12254: 2e6cdde56f896add665edb8d2f6d3dfce8b1b3b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7018: 8312a2fe3f3287ba4ac4bc8d100de0734480f482 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v7: 2e6cdde56f896add665edb8d2f6d3dfce8b1b3b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/index.html

--===============6750968418021669444==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12254_full -&gt; Patchwork_105879v7_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v7_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@gen9_exec_parse@allowed-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7222">i915#7222</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_content_protection@content_type_change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-tglb1/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7244">i915#7244</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-tglb1/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12254/shard-apl3/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7231">i915#7231</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7259">i915#7259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v7/shard-apl6/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7259">i915#7259</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12254 -&gt; Patchwork_105879v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12254: 2e6cdde56f896add665edb8d2f6d3dfce8b1b3b6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7018: 8312a2fe3f3287ba4ac4bc8d100de0734480f482 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v7: 2e6cdde56f896add665edb8d2f6d3dfce8b1b3b6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6750968418021669444==--
