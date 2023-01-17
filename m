Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C181F66DF63
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 14:51:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1512810E521;
	Tue, 17 Jan 2023 13:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A099410E521;
 Tue, 17 Jan 2023 13:51:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B319AADD4;
 Tue, 17 Jan 2023 13:51:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4860130210665067195=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Date: Tue, 17 Jan 2023 13:51:49 -0000
Message-ID: <167396350960.21231.14851881155111362717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_new_CDCLK_step_for_RPL-U_=28rev5=29?=
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

--===============4860130210665067195==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add new CDCLK step for RPL-U (rev5)
URL   : https://patchwork.freedesktop.org/series/111472/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12589 -> Patchwork_111472v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/index.html

Participating hosts (44 -> 42)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (3): fi-kbl-soraka fi-rkl-11600 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_111472v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg1-5:          [PASS][1] -> [DMESG-FAIL][2] ([i915#4983])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12589/bat-dg1-5/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/bat-dg1-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][3] ([i915#6298])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][4] ([fdo#109271]) +26 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - bat-dg1-5:          NOTRUN -> [FAIL][5] ([i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/bat-dg1-5/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][6] ([i915#7229]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12589/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-11}:       [INCOMPLETE][8] ([i915#7609]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12589/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - {bat-adln-1}:       [INCOMPLETE][10] ([i915#7884]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12589/bat-adln-1/igt@i915_selftest@live@gt_mocs.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/bat-adln-1/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7884]: https://gitlab.freedesktop.org/drm/intel/issues/7884


Build changes
-------------

  * Linux: CI_DRM_12589 -> Patchwork_111472v5

  CI-20190529: 20190529
  CI_DRM_12589: a29e440e749278f57cf6cb90d4e915016df200fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111472v5: a29e440e749278f57cf6cb90d4e915016df200fd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

af0bcd906bfc drm/i915/display: Add 480 MHz CDCLK steps for RPL-U
f325ff4f9951 drm/i915: Add RPL-U sub platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/index.html

--===============4860130210665067195==
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
<tr><td><b>Series:</b></td><td>Add new CDCLK step for RPL-U (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111472/">https://patchwork.freedesktop.org/series/111472/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12589 -&gt; Patchwork_111472v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (3): fi-kbl-soraka fi-rkl-11600 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111472v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12589/bat-dg1-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/bat-dg1-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12589/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12589/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12589/bat-adln-1/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7884">i915#7884</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111472v5/bat-adln-1/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12589 -&gt; Patchwork_111472v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12589: a29e440e749278f57cf6cb90d4e915016df200fd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111472v5: a29e440e749278f57cf6cb90d4e915016df200fd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>af0bcd906bfc drm/i915/display: Add 480 MHz CDCLK steps for RPL-U<br />
f325ff4f9951 drm/i915: Add RPL-U sub platform</p>

</body>
</html>

--===============4860130210665067195==--
