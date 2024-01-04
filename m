Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D0882495A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 21:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C426210E523;
	Thu,  4 Jan 2024 20:03:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B78410E521;
 Thu,  4 Jan 2024 20:03:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7630522179590488993=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5Bv3?=
 =?utf-8?q?=2C1/2=5D_drm/i915=3A_Disable_DSB_in_Xe_KMD?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 04 Jan 2024 20:03:07 -0000
Message-ID: <170439858743.22406.6580923763221647275@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104160557.48496-1-jose.souza@intel.com>
In-Reply-To: <20240104160557.48496-1-jose.souza@intel.com>
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

--===============7630522179590488993==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/2] drm/i915: Disable DSB in Xe KMD
URL   : https://patchwork.freedesktop.org/series/128212/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14080 -> Patchwork_128212v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (2): bat-rpls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_128212v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +15 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_engines:
    - {bat-adls-6}:       [TIMEOUT][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/bat-adls-6/igt@i915_selftest@live@gt_engines.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/bat-adls-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][4] ([i915#9500]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {bat-adls-6}:       [WARN][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/bat-adls-6/igt@i915_suspend@basic-s2idle-without-i915.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/bat-adls-6/igt@i915_suspend@basic-s2idle-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500


Build changes
-------------

  * Linux: CI_DRM_14080 -> Patchwork_128212v1

  CI-20190529: 20190529
  CI_DRM_14080: d7426b5fc261046501ca418fe0e69ad1d6ba59be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7656: 149297384db8cab03928c12b37ae1bb61089bdad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128212v1: d7426b5fc261046501ca418fe0e69ad1d6ba59be @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

790edcbed063 drm/xe: Fix definition of intel_wakeref_t
c3d65f9a0929 drm/i915: Disable DSB in Xe KMD

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/index.html

--===============7630522179590488993==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/2] drm/i915: Disable DSB in Xe KMD</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128212/">https://patchwork.freedesktop.org/series/128212/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14080 -&gt; Patchwork_128212v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128212v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@random-engines:<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/bat-adls-6/igt@i915_selftest@live@gt_engines.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/bat-adls-6/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/bat-adls-6/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128212v1/bat-adls-6/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14080 -&gt; Patchwork_128212v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14080: d7426b5fc261046501ca418fe0e69ad1d6ba59be @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7656: 149297384db8cab03928c12b37ae1bb61089bdad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128212v1: d7426b5fc261046501ca418fe0e69ad1d6ba59be @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>790edcbed063 drm/xe: Fix definition of intel_wakeref_t<br />
c3d65f9a0929 drm/i915: Disable DSB in Xe KMD</p>

</body>
</html>

--===============7630522179590488993==--
