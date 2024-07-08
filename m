Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 799C4929E8B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 10:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1418910E2E4;
	Mon,  8 Jul 2024 08:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B6B210E2E4;
 Mon,  8 Jul 2024 08:57:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1734942746300790841=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Introduce_drm_sharpening_pr?=
 =?utf-8?q?operty_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Jul 2024 08:57:24 -0000
Message-ID: <172042904417.49182.14616254221135951141@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240708080917.257857-1-nemesa.garg@intel.com>
In-Reply-To: <20240708080917.257857-1-nemesa.garg@intel.com>
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

--===============1734942746300790841==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce drm sharpening property (rev4)
URL   : https://patchwork.freedesktop.org/series/129888/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15038 -> Patchwork_129888v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/index.html

Participating hosts (39 -> 36)
------------------------------

  Additional (2): fi-cfl-8109u fi-pnv-d510 
  Missing    (5): bat-dg1-7 bat-kbl-2 bat-atsm-1 bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_129888v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] +32 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][3] ([i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:
    - bat-dg2-8:          [PASS][4] -> [FAIL][5] ([i915#11379])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15038/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][6] +11 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-8:          [DMESG-FAIL][7] ([i915#9500]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15038/bat-dg2-8/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/bat-dg2-8/igt@i915_selftest@live@hangcheck.html

  
  [i915#11379]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15038 -> Patchwork_129888v4

  CI-20190529: 20190529
  CI_DRM_15038: 70f1d41b827fa9d1275748e655912f991635f595 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7918: aab1a4b6a9b7855fe6e38ea3b3987a1399ee5816 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129888v4: 70f1d41b827fa9d1275748e655912f991635f595 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/index.html

--===============1734942746300790841==
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
<tr><td><b>Series:</b></td><td>Introduce drm sharpening property (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129888/">https://patchwork.freedesktop.org/series/129888/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15038 -&gt; Patchwork_129888v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Additional (2): fi-cfl-8109u fi-pnv-d510 <br />
  Missing    (5): bat-dg1-7 bat-kbl-2 bat-atsm-1 bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129888v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15038/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379">i915#11379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15038/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129888v4/bat-dg2-8/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15038 -&gt; Patchwork_129888v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15038: 70f1d41b827fa9d1275748e655912f991635f595 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7918: aab1a4b6a9b7855fe6e38ea3b3987a1399ee5816 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129888v4: 70f1d41b827fa9d1275748e655912f991635f595 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1734942746300790841==--
