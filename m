Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E25167EF263
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 13:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C4B010E757;
	Fri, 17 Nov 2023 12:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 01B6A10E751;
 Fri, 17 Nov 2023 12:11:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE30BAADD8;
 Fri, 17 Nov 2023 12:11:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5700267538131268490=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Fri, 17 Nov 2023 12:11:18 -0000
Message-ID: <170022307896.7876.14567778414841962110@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231116150225.204233-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20231116150225.204233-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/display=3A_Separate_xe_and?=
 =?utf-8?q?_i915_common_dpt_code_into_own_file_=28rev3=29?=
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

--===============5700267538131268490==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/display: Separate xe and i915 common dpt code into own file (rev3)
URL   : https://patchwork.freedesktop.org/series/126538/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13886 -> Patchwork_126538v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126538v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126538v3, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126538v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@guc:
    - fi-kbl-soraka:      NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/fi-kbl-soraka/igt@i915_selftest@live@guc.html

  * igt@kms_addfb_basic@unused-offsets:
    - fi-kbl-soraka:      [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/fi-kbl-soraka/igt@kms_addfb_basic@unused-offsets.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/fi-kbl-soraka/igt@kms_addfb_basic@unused-offsets.html

  
Known issues
------------

  Here are the changes found in Patchwork_126538v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][4] -> [INCOMPLETE][5] ([i915#9275])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-hsw-4770:        [PASS][6] -> [INCOMPLETE][7] ([i915#9307])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][8] -> [TIMEOUT][9] ([i915#6794] / [i915#7392])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/bat-rpls-1/igt@i915_selftest@live@mman.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][10] -> [WARN][11] ([i915#8747])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][12] -> [FAIL][13] ([fdo#103375])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][14] ([i915#1845] / [i915#9197])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - fi-kbl-soraka:      [ABORT][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/fi-kbl-soraka/igt@i915_selftest@live@perf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/fi-kbl-soraka/igt@i915_selftest@live@perf.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9307]: https://gitlab.freedesktop.org/drm/intel/issues/9307


Build changes
-------------

  * Linux: CI_DRM_13886 -> Patchwork_126538v3

  CI-20190529: 20190529
  CI_DRM_13886: 45d2bdcd2fa1951ee118f231fef7c802b0163939 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7592: 7a525cfbc2a9a1dac2ae4e1d180a31d95b374c3d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126538v3: 45d2bdcd2fa1951ee118f231fef7c802b0163939 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9b93f8723c76 drm/i915/display: In intel_framebuffer_init switch to use intel_bo_to_drm_bo
191f80b8c226 drm/i915/display: in skl_surf_address check for dpt-vma
ca2ce8f761b8 drm/i915/display: Separate xe and i915 common dpt code into own file

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/index.html

--===============5700267538131268490==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/display: Separate xe and i915 common dpt code into own file (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126538/">https://patchwork.freedesktop.org/series/126538/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13886 -&gt; Patchwork_126538v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126538v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126538v3, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126538v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/fi-kbl-soraka/igt@i915_selftest@live@guc.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/fi-kbl-soraka/igt@kms_addfb_basic@unused-offsets.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/fi-kbl-soraka/igt@kms_addfb_basic@unused-offsets.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126538v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9307">i915#9307</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13886/fi-kbl-soraka/igt@i915_selftest@live@perf.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v3/fi-kbl-soraka/igt@i915_selftest@live@perf.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13886 -&gt; Patchwork_126538v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13886: 45d2bdcd2fa1951ee118f231fef7c802b0163939 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7592: 7a525cfbc2a9a1dac2ae4e1d180a31d95b374c3d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126538v3: 45d2bdcd2fa1951ee118f231fef7c802b0163939 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9b93f8723c76 drm/i915/display: In intel_framebuffer_init switch to use intel_bo_to_drm_bo<br />
191f80b8c226 drm/i915/display: in skl_surf_address check for dpt-vma<br />
ca2ce8f761b8 drm/i915/display: Separate xe and i915 common dpt code into own file</p>

</body>
</html>

--===============5700267538131268490==--
