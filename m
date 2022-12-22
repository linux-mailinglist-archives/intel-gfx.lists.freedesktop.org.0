Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B996540E6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 13:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A1A10E0C6;
	Thu, 22 Dec 2022 12:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2E1410E0C6;
 Thu, 22 Dec 2022 12:17:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBFDCA00E6;
 Thu, 22 Dec 2022 12:17:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0420476932972598792=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Paulo Miguel Almeida" <paulo.miguel.almeida.rodenas@gmail.com>
Date: Thu, 22 Dec 2022 12:17:56 -0000
Message-ID: <167171147694.14838.4581352502011767450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <Y6Eu2604cqtryP4g@mail.google.com>
In-Reply-To: <Y6Eu2604cqtryP4g@mail.google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5/gvt=3A_Replace_one-element_array_with_flexible-array_member?=
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

--===============0420476932972598792==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/gvt: Replace one-element array with flexible-array member
URL   : https://patchwork.freedesktop.org/series/112150/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12521 -> Patchwork_112150v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/index.html

Participating hosts (46 -> 43)
------------------------------

  Missing    (3): fi-hsw-4770 fi-rkl-11600 bat-atsm-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112150v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-dg2-oem1}:     [DMESG-WARN][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-dg2-oem1/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-dg2-oem1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@migrate:
    - {bat-dg2-11}:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_112150v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][5] -> [FAIL][6] ([i915#7229])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8] ([i915#5334])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][9] -> [DMESG-FAIL][10] ([i915#7699])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-adlp-4/igt@i915_selftest@live@migrate.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][11] ([i915#4983]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-rpls-2/igt@i915_selftest@live@reset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][13] ([i915#6367]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-rpls-1/igt@i915_selftest@live@slpc.html
    - {bat-adln-1}:       [DMESG-FAIL][15] ([i915#6997]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-adln-1/igt@i915_selftest@live@slpc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-adln-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699


Build changes
-------------

  * Linux: CI_DRM_12521 -> Patchwork_112150v1

  CI-20190529: 20190529
  CI_DRM_12521: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7101: bd33b4c060eb6b2e24c5784b2aa817ae5840f84f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112150v1: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

551d43e34edc i915/gvt: Replace one-element array with flexible-array member

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/index.html

--===============0420476932972598792==
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
<tr><td><b>Series:</b></td><td>i915/gvt: Replace one-element array with flexible-array member</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112150/">https://patchwork.freedesktop.org/series/112150/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12521 -&gt; Patchwork_112150v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/index.html</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Missing    (3): fi-hsw-4770 fi-rkl-11600 bat-atsm-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112150v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-dg2-oem1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-dg2-oem1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-dg2-oem1/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112150v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-adlp-4/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112150v1/bat-adln-1/igt@i915_selftest@live@slpc.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12521 -&gt; Patchwork_112150v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12521: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7101: bd33b4c060eb6b2e24c5784b2aa817ae5840f84f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112150v1: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>551d43e34edc i915/gvt: Replace one-element array with flexible-array member</p>

</body>
</html>

--===============0420476932972598792==--
