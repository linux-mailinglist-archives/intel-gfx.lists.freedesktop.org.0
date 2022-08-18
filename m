Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DABFB5983CE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 15:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B9A98B3E;
	Thu, 18 Aug 2022 13:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AFFAD573C;
 Thu, 18 Aug 2022 13:11:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F08FEA00E8;
 Thu, 18 Aug 2022 13:11:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3260894438312510266=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 18 Aug 2022 13:11:30 -0000
Message-ID: <166082829095.16681.6258441826496693739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220817124516.284456-1-jani.nikula@intel.com>
In-Reply-To: <20220817124516.284456-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/dsc/mtl=3A_Update_the_DSC_?=
 =?utf-8?q?minor_version_=28rev2=29?=
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

--===============3260894438312510266==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/dsc/mtl: Update the DSC minor version (rev2)
URL   : https://patchwork.freedesktop.org/series/107366/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11997 -> Patchwork_107366v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/index.html

Participating hosts (33 -> 31)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (3): bat-rpls-2 fi-icl-u2 fi-tgl-dsi 

Known issues
------------

  Here are the changes found in Patchwork_107366v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          NOTRUN -> [DMESG-FAIL][1] ([i915#4494] / [i915#4957])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][2] ([i915#6011])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][3] ([i915#6219])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [INCOMPLETE][4] ([i915#4418]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11997/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][6] ([i915#4957]) -> [DMESG-FAIL][7] ([i915#4494] / [i915#4957])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11997/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219


Build changes
-------------

  * Linux: CI_DRM_11997 -> Patchwork_107366v2

  CI-20190529: 20190529
  CI_DRM_11997: ce38effc5cd7cb2af612fd8946149275e3c1f919 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6630: b5e2222c9a988015bdf237e6ebb9f5b6d87ac7e1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107366v2: ce38effc5cd7cb2af612fd8946149275e3c1f919 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

90b42ac9ce9f drm/i915/dsc/mtl: Enable alternate ICH method
e1dc5d511811 drm/i915/dsc/mtl: Update the DSC minor version

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/index.html

--===============3260894438312510266==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/dsc/mtl: Update the DSC minor version (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107366/">https://patchwork.freedesktop.org/series/107366/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11997 -&gt; Patchwork_107366v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/index.html</p>
<h2>Participating hosts (33 -&gt; 31)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (3): bat-rpls-2 fi-icl-u2 fi-tgl-dsi </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107366v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6011">i915#6011</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11997/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11997/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107366v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11997 -&gt; Patchwork_107366v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11997: ce38effc5cd7cb2af612fd8946149275e3c1f919 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6630: b5e2222c9a988015bdf237e6ebb9f5b6d87ac7e1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107366v2: ce38effc5cd7cb2af612fd8946149275e3c1f919 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>90b42ac9ce9f drm/i915/dsc/mtl: Enable alternate ICH method<br />
e1dc5d511811 drm/i915/dsc/mtl: Update the DSC minor version</p>

</body>
</html>

--===============3260894438312510266==--
