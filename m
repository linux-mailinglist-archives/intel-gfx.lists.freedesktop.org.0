Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 336324029A2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 15:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7340989831;
	Tue,  7 Sep 2021 13:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A63889811;
 Tue,  7 Sep 2021 13:21:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63631A7DFC;
 Tue,  7 Sep 2021 13:21:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9084401691611344870=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zenghui Yu" <yuzenghui@huawei.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 13:21:48 -0000
Message-ID: <163102090840.24493.14655464472753943668@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906033541.862-1-yuzenghui@huawei.com>
In-Reply-To: <20210906033541.862-1-yuzenghui@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Free_the_returned_object_of_acpi=5Fevaluate=5Fdsm=28?=
 =?utf-8?q?=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============9084401691611344870==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Free the returned object of acpi_evaluate_dsm()
URL   : https://patchwork.freedesktop.org/series/94433/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10557 -> Patchwork_20975
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/index.html

Known issues
------------

  Here are the changes found in Patchwork_20975 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][2] ([fdo#109271]) +26 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][4] -> [DMESG-WARN][5] ([i915#3958])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#533])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][8] ([i915#3921]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (47 -> 40)
------------------------------

  Additional (1): fi-kbl-x1275 
  Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10557 -> Patchwork_20975

  CI-20190529: 20190529
  CI_DRM_10557: e8f764006582e44658833c07aef79c8c4b1a0758 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6198: 0f17f38c3e5e2139e59f1458c149bb7a93c88bbf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20975: e54c87ec84527be1f57184df7ab45c97ab0e92e7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e54c87ec8452 drm/i915: Free the returned object of acpi_evaluate_dsm()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/index.html

--===============9084401691611344870==
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
<tr><td><b>Series:</b></td><td>drm/i915: Free the returned object of acpi_evaluate_dsm()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94433/">https://patchwork.freedesktop.org/series/94433/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10557 -&gt; Patchwork_20975</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20975 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20975/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-x1275 <br />
  Missing    (8): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10557 -&gt; Patchwork_20975</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10557: e8f764006582e44658833c07aef79c8c4b1a0758 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6198: 0f17f38c3e5e2139e59f1458c149bb7a93c88bbf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20975: e54c87ec84527be1f57184df7ab45c97ab0e92e7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e54c87ec8452 drm/i915: Free the returned object of acpi_evaluate_dsm()</p>

</body>
</html>

--===============9084401691611344870==--
