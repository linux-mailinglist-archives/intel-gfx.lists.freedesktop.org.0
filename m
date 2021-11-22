Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D8B4588C1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 06:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E356E7D2;
	Mon, 22 Nov 2021 05:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D76D26E7D1;
 Mon, 22 Nov 2021 05:08:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC9E9AA917;
 Mon, 22 Nov 2021 05:08:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2390824770224314801=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Mon, 22 Nov 2021 05:08:42 -0000
Message-ID: <163755772279.5697.3270869562958757730@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211122042730.3743330-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20211122042730.3743330-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Trybot_-_run_CI_with_PXP_and_MEI=5FPXP_enabled?=
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

--===============2390824770224314801==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Trybot - run CI with PXP and MEI_PXP enabled
URL   : https://patchwork.freedesktop.org/series/97145/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10909 -> Patchwork_21649
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21649 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21649, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/index.html

Participating hosts (40 -> 31)
------------------------------

  Missing    (9): bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-icl-u2 bat-adlp-6 bat-adlp-4 fi-kbl-guc bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21649:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - fi-snb-2600:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10909/fi-snb-2600/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-snb-2600/igt@i915_selftest@live@mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_21649 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-samus:       [PASS][3] -> [INCOMPLETE][4] ([i915#2539])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10909/fi-bdw-samus/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-bdw-samus/igt@gem_exec_suspend@basic-s3.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][5] ([i915#1602] / [i915#2426] / [i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-bdw-5557u/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][6] ([i915#2426] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-snb-2600/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [INCOMPLETE][7] ([i915#146]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10909/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2539]: https://gitlab.freedesktop.org/drm/intel/issues/2539
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Build changes
-------------

  * Linux: CI_DRM_10909 -> Patchwork_21649

  CI-20190529: 20190529
  CI_DRM_10909: 53d1bbf96a00ffdda479653e10627875a16c0c2d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6285: 2e0355faad5c2e81cd6705b76e529ce526c7c9bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21649: 9e85a4069894478d2fca4d8fa3344c21380c6308 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9e85a4069894 drm/i915/pxp: Trybot - run CI with PXP and MEI_PXP enabled

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/index.html

--===============2390824770224314801==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Trybot - run CI with PXP and MEI_PXP enabled</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97145/">https://patchwork.freedesktop.org/series/97145/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10909 -&gt; Patchwork_21649</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21649 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21649, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/index.html</p>
<h2>Participating hosts (40 -&gt; 31)</h2>
<p>Missing    (9): bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-icl-u2 bat-adlp-6 bat-adlp-4 fi-kbl-guc bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21649:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@mman:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10909/fi-snb-2600/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-snb-2600/igt@i915_selftest@live@mman.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21649 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bdw-samus:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10909/fi-bdw-samus/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-bdw-samus/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10909/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21649/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10909 -&gt; Patchwork_21649</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10909: 53d1bbf96a00ffdda479653e10627875a16c0c2d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6285: 2e0355faad5c2e81cd6705b76e529ce526c7c9bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21649: 9e85a4069894478d2fca4d8fa3344c21380c6308 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9e85a4069894 drm/i915/pxp: Trybot - run CI with PXP and MEI_PXP enabled</p>

</body>
</html>

--===============2390824770224314801==--
