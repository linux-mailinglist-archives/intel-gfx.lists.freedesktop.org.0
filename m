Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2270B345AEC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 10:35:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D4F6E0CA;
	Tue, 23 Mar 2021 09:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B8A626E0CA;
 Tue, 23 Mar 2021 09:35:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5266A3ECB;
 Tue, 23 Mar 2021 09:35:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 23 Mar 2021 09:35:15 -0000
Message-ID: <161649211567.20051.16157886055356416053@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_add_gem/gt_TODO?=
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
Content-Type: multipart/mixed; boundary="===============0578867377=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0578867377==
Content-Type: multipart/alternative;
 boundary="===============7120608830878642261=="

--===============7120608830878642261==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: add gem/gt TODO
URL   : https://patchwork.freedesktop.org/series/88329/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9882 -> Patchwork_19837
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/index.html

Known issues
------------

  Here are the changes found in Patchwork_19837 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-tgl-y/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-tgl-y/igt@fbdev@read.html

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][3] ([fdo#109271]) +27 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][4] -> [TIMEOUT][5] ([i915#2502] / [i915#3145])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [PASS][6] -> [TIMEOUT][7] ([i915#3145])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [PASS][8] -> [DMESG-FAIL][9] ([i915#3047])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-glk-dsi/igt@i915_selftest@live@client.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-glk-dsi/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][10] -> [DMESG-FAIL][11] ([i915#2927])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][13] ([i915#1436])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][14] ([i915#1569] / [i915#192] / [i915#193] / [i915#194])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][15] ([i915#1602] / [i915#2029])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][16] ([i915#402]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][18] ([i915#2502] / [i915#3145]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][20] ([i915#1982] / [i915#3143]) -> [DMESG-WARN][21] ([i915#3143])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#3143]: https://gitlab.freedesktop.org/drm/intel/issues/3143
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (47 -> 43)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9882 -> Patchwork_19837

  CI-20190529: 20190529
  CI_DRM_9882: 34f82d5853a3c6467ccf71e055e3432d2b12ecb9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6040: 69b578b6ab0a36750f0d23c223a3487fc88fb6a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19837: e2befe20334528847daf40f225f7cc9e0343e9a8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e2befe203345 drm/doc: Add RFC section
2b8691372f19 drm/i915: add gem/gt TODO

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/index.html

--===============7120608830878642261==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: add gem/gt TODO</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88329/">https://patchwork.freedesktop.org/series/88329/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9882 -&gt; Patchwork_19837</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19837 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9882/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19837/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 43)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9882 -&gt; Patchwork_19837</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9882: 34f82d5853a3c6467ccf71e055e3432d2b12ecb9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6040: 69b578b6ab0a36750f0d23c223a3487fc88fb6a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19837: e2befe20334528847daf40f225f7cc9e0343e9a8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e2befe203345 drm/doc: Add RFC section<br />
2b8691372f19 drm/i915: add gem/gt TODO</p>

</body>
</html>

--===============7120608830878642261==--

--===============0578867377==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0578867377==--
