Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DFB87382A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 14:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A71D10F716;
	Wed,  6 Mar 2024 13:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD2C10F716;
 Wed,  6 Mar 2024 13:54:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4011349037153849380=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_TTM_unlockable_restartable_?=
 =?utf-8?q?LRU_list_iteration_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 13:54:32 -0000
Message-ID: <170973327270.561286.7248903728165310864@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306070125.27071-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20240306070125.27071-1-thomas.hellstrom@linux.intel.com>
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

--===============4011349037153849380==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: TTM unlockable restartable LRU list iteration (rev4)
URL   : https://patchwork.freedesktop.org/series/130001/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14396 -> Patchwork_130001v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/index.html

Participating hosts (40 -> 37)
------------------------------

  Missing    (3): fi-glk-j4005 bat-arls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_130001v4 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14396/fi-bsw-n3050/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/fi-bsw-n3050/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-apl-guc:         [FAIL][3] ([i915#8293]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14396/fi-apl-guc/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@guc:
    - bat-dg2-9:          [PASS][6] -> [ABORT][7] ([i915#10366])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14396/bat-dg2-9/igt@i915_selftest@live@guc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/bat-dg2-9/igt@i915_selftest@live@guc.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][8] ([fdo#109271]) +17 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-dg2-14:         [PASS][9] -> [ABORT][10] ([i915#10367])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14396/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10367]: https://gitlab.freedesktop.org/drm/intel/issues/10367
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14396 -> Patchwork_130001v4

  CI-20190529: 20190529
  CI_DRM_14396: 6e50187af603728329f9d3c3a53ad162d7eda9a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7747: 7747
  Patchwork_130001v4: 6e50187af603728329f9d3c3a53ad162d7eda9a4 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

933850f9ee4a drm/ttm: Allow continued swapout after -ENOSPC falure
20d15d72aa20 drm/ttm, drm/amdgpu, drm/xe: Consider hitch moves within bulk sublist moves
f2cf742e2b0a drm/ttm: Use LRU hitches
38a250850c63 drm/ttm: Allow TTM LRU list nodes of different types

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/index.html

--===============4011349037153849380==
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
<tr><td><b>Series:</b></td><td>TTM unlockable restartable LRU list iteration (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130001/">https://patchwork.freedesktop.org/series/130001/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14396 -&gt; Patchwork_130001v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): fi-glk-j4005 bat-arls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130001v4 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14396/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14396/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/fi-apl-guc/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14396/bat-dg2-9/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/bat-dg2-9/igt@i915_selftest@live@guc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14396/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130001v4/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10367">i915#10367</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14396 -&gt; Patchwork_130001v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14396: 6e50187af603728329f9d3c3a53ad162d7eda9a4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7747: 7747<br />
  Patchwork_130001v4: 6e50187af603728329f9d3c3a53ad162d7eda9a4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>933850f9ee4a drm/ttm: Allow continued swapout after -ENOSPC falure<br />
20d15d72aa20 drm/ttm, drm/amdgpu, drm/xe: Consider hitch moves within bulk sublist moves<br />
f2cf742e2b0a drm/ttm: Use LRU hitches<br />
38a250850c63 drm/ttm: Allow TTM LRU list nodes of different types</p>

</body>
</html>

--===============4011349037153849380==--
