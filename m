Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 847CF5FD57A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 09:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 590E410E1C5;
	Thu, 13 Oct 2022 07:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EB0510E1C5;
 Thu, 13 Oct 2022 07:18:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84B17A66C9;
 Thu, 13 Oct 2022 07:18:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8847353249436589043=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 13 Oct 2022 07:18:13 -0000
Message-ID: <166564549351.20368.17479144221065365653@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221013063834.162985-1-suraj.kandpal@intel.com>
In-Reply-To: <20221013063834.162985-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_YCbCr420_for_VDSC_=28rev4=29?=
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

--===============8847353249436589043==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable YCbCr420 for VDSC (rev4)
URL   : https://patchwork.freedesktop.org/series/108824/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12239 -> Patchwork_108824v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108824v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108824v4, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/index.html

Participating hosts (43 -> 43)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (1): fi-ctg-p8600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108824v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hugepages:
    - fi-apl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/fi-apl-guc/igt@i915_selftest@live@hugepages.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-apl-guc/igt@i915_selftest@live@hugepages.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][3] ([i915#4312]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/fi-kbl-8809g/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-tgl-dsi/igt@runner@aborted.html
    - {bat-rplp-1}:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/bat-rplp-1/igt@runner@aborted.html
    - {fi-tgl-mst}:       [FAIL][7] ([i915#4312]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/fi-tgl-mst/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-tgl-mst/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_108824v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][9] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-apl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][10] ([i915#5334]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][12] ([i915#4983] / [i915#5828]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/bat-rpls-2/igt@i915_selftest@live@reset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6471]: https://gitlab.freedesktop.org/drm/intel/issues/6471
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7031]: https://gitlab.freedesktop.org/drm/intel/issues/7031
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7102]: https://gitlab.freedesktop.org/drm/intel/issues/7102


Build changes
-------------

  * Linux: CI_DRM_12239 -> Patchwork_108824v4

  CI-20190529: 20190529
  CI_DRM_12239: c8ba40d43d6d1c9e457ebe91543a04a9e85b29f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108824v4: c8ba40d43d6d1c9e457ebe91543a04a9e85b29f8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

53756e6dd3bd drm/i915: Fill in native_420 field
201f01d82548 drm/i915: Enable YCbCr420 for VDSC
79926d9f696b drm/i915: Adding the new registers for DSC
a7c5ddd6252d drm/i915/dp: Check if DSC supports the given output_format

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/index.html

--===============8847353249436589043==
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
<tr><td><b>Series:</b></td><td>Enable YCbCr420 for VDSC (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108824/">https://patchwork.freedesktop.org/series/108824/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12239 -&gt; Patchwork_108824v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108824v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_108824v4, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (1): fi-ctg-p8600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108824v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hugepages:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/fi-apl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-apl-guc/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-rplp-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/bat-rplp-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/fi-tgl-mst/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-tgl-mst/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108824v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12239/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5828">i915#5828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108824v4/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12239 -&gt; Patchwork_108824v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12239: c8ba40d43d6d1c9e457ebe91543a04a9e85b29f8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108824v4: c8ba40d43d6d1c9e457ebe91543a04a9e85b29f8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>53756e6dd3bd drm/i915: Fill in native_420 field<br />
201f01d82548 drm/i915: Enable YCbCr420 for VDSC<br />
79926d9f696b drm/i915: Adding the new registers for DSC<br />
a7c5ddd6252d drm/i915/dp: Check if DSC supports the given output_format</p>

</body>
</html>

--===============8847353249436589043==--
