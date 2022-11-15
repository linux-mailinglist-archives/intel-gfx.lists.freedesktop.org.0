Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B85F629DFF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 16:47:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3AB010E419;
	Tue, 15 Nov 2022 15:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E71810E416;
 Tue, 15 Nov 2022 15:47:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6780DA00CC;
 Tue, 15 Nov 2022 15:47:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7750208902557843211=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Himal Prasad Ghimiray" <himal.prasad.ghimiray@intel.com>
Date: Tue, 15 Nov 2022 15:47:27 -0000
Message-ID: <166852724741.16899.10590215579268783638@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
In-Reply-To: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/1=5D_drm/i915=3A_Export_LMEM_max_memory_?=
 =?utf-8?q?bandwidth_via_sysfs=2E?=
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

--===============7750208902557843211==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/1] drm/i915: Export LMEM max memory bandwidth via sysfs.
URL   : https://patchwork.freedesktop.org/series/110902/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12382 -> Patchwork_110902v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): bat-dg2-11 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110902v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_suspend@basic-s3-without-i915:
    - {bat-rpls-1}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_110902v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][3] -> [SKIP][4] ([fdo#109271]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][5] -> [INCOMPLETE][6] ([i915#6972] / [i915#7120])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-ilk-650:         [PASS][7] -> [DMESG-WARN][8] ([i915#164])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_flip@basic-plain-flip:
    - bat-dg1-6:          NOTRUN -> [SKIP][9] ([i915#4078])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-dg1-6/igt@kms_flip@basic-plain-flip.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - {bat-rpls-1}:       [SKIP][11] ([i915#2582]) -> [PASS][12] +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@fbdev@nullptr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@fbdev@nullptr.html

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][13] ([i915#2582]) -> [PASS][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-2/igt@fbdev@read.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-2}:       [DMESG-WARN][15] ([i915#6434]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@mman:
    - {bat-rpls-1}:       [TIMEOUT][17] ([i915#6794]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@i915_selftest@live@mman.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@slpc:
    - {bat-adln-1}:       [DMESG-FAIL][19] ([i915#6997]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-adln-1/igt@i915_selftest@live@slpc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-adln-1/igt@i915_selftest@live@slpc.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-rpls-1}:       [SKIP][21] ([i915#1849]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-rpls-1}:       [SKIP][23] ([fdo#109295] / [i915#1845] / [i915#3708]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#6972]: https://gitlab.freedesktop.org/drm/intel/issues/6972
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7120]: https://gitlab.freedesktop.org/drm/intel/issues/7120
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346


Build changes
-------------

  * Linux: CI_DRM_12382 -> Patchwork_110902v1

  CI-20190529: 20190529
  CI_DRM_12382: cb74864693414b221b3601572e75449558126e8b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7057: e2138d48c2c506816868c16cf3ba64f81bdead41 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110902v1: cb74864693414b221b3601572e75449558126e8b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4c29a7357cee drm/i915: Export LMEM max memory bandwidth via sysfs.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/index.html

--===============7750208902557843211==
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
<tr><td><b>Series:</b></td><td>series starting with [1/1] drm/i915: Export LMEM max memory bandwidth via sysfs.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110902/">https://patchwork.freedesktop.org/series/110902/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12382 -&gt; Patchwork_110902v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): bat-dg2-11 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110902v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110902v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6972">i915#6972</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7120">i915#7120</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/fi-ilk-650/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-dg1-6/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@fbdev@nullptr.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-adln-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110902v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12382 -&gt; Patchwork_110902v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12382: cb74864693414b221b3601572e75449558126e8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7057: e2138d48c2c506816868c16cf3ba64f81bdead41 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110902v1: cb74864693414b221b3601572e75449558126e8b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4c29a7357cee drm/i915: Export LMEM max memory bandwidth via sysfs.</p>

</body>
</html>

--===============7750208902557843211==--
