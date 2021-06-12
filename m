Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7333A4D1D
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Jun 2021 08:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94806E0D1;
	Sat, 12 Jun 2021 06:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78E4C6E0C8;
 Sat, 12 Jun 2021 06:27:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70A80A8830;
 Sat, 12 Jun 2021 06:27:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 12 Jun 2021 06:27:49 -0000
Message-ID: <162347926942.27967.2381861435777870204@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210612053531.1870920-1-lucas.demarchi@intel.com>
In-Reply-To: <20210612053531.1870920-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/xelpd=3A_break_feature_inheritance?=
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
Content-Type: multipart/mixed; boundary="===============0394600488=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0394600488==
Content-Type: multipart/alternative;
 boundary="===============7673367807681811828=="

--===============7673367807681811828==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/xelpd: break feature inheritance
URL   : https://patchwork.freedesktop.org/series/91422/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10214 -> Patchwork_20352
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/index.html

Known issues
------------

  Here are the changes found in Patchwork_20352 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][1] ([i915#2782] / [i915#2940] / [i915#3462]) -> [DMESG-FAIL][2] ([i915#3462])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][3] ([i915#3363]) -> [FAIL][4] ([i915#2426] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-cfl-8700k/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-cfl-8700k/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][5] ([i915#3462]) -> [FAIL][6] ([i915#1602] / [i915#2029])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-bdw-5557u/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][7] ([i915#1436] / [i915#3363]) -> [FAIL][8] ([i915#1436] / [i915#2426] / [i915#3363])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-kbl-guc/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][9] ([i915#3363] / [i915#3462]) -> [FAIL][10] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-cml-u2/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-cml-u2/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][11] ([i915#3363] / [i915#3462]) -> [FAIL][12] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-cml-s/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10214 -> Patchwork_20352

  CI-20190529: 20190529
  CI_DRM_10214: 2bba812cf661cf2ffa2874a30d4a2c8fcb3937cc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6104: f8f81bd3752f3126a47d9dbba2d0ab29f7c17a19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20352: 1d29f900b190af8631473b80ba724478045d44a9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1d29f900b190 drm/i915/xelpd: break feature inheritance

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/index.html

--===============7673367807681811828==
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
<tr><td><b>Series:</b></td><td>drm/i915/xelpd: break feature inheritance</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91422/">https://patchwork.freedesktop.org/series/91422/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10214 -&gt; Patchwork_20352</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20352 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10214/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20352/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10214 -&gt; Patchwork_20352</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10214: 2bba812cf661cf2ffa2874a30d4a2c8fcb3937cc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6104: f8f81bd3752f3126a47d9dbba2d0ab29f7c17a19 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20352: 1d29f900b190af8631473b80ba724478045d44a9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1d29f900b190 drm/i915/xelpd: break feature inheritance</p>

</body>
</html>

--===============7673367807681811828==--

--===============0394600488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0394600488==--
