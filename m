Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3590A8D3FEF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 22:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA4610E118;
	Wed, 29 May 2024 20:59:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0C310E118;
 Wed, 29 May 2024 20:59:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1988827268255172610=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Link_off_between_frames_for?=
 =?utf-8?q?_edp_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2024 20:59:19 -0000
Message-ID: <171701635982.2235474.5103657928373941039@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240529200742.1694401-1-animesh.manna@intel.com>
In-Reply-To: <20240529200742.1694401-1-animesh.manna@intel.com>
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

--===============1988827268255172610==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Link off between frames for edp (rev7)
URL   : https://patchwork.freedesktop.org/series/130650/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14849 -> Patchwork_130650v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/index.html

Participating hosts (42 -> 40)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (3): bat-atsm-1 bat-jsl-1 fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_130650v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][3] +10 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [FAIL][4] ([i915#10378]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14849/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_module_load@load:
    - bat-dg2-8:          [DMESG-WARN][6] ([i915#10014]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14849/bat-dg2-8/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/bat-dg2-8/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10014]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#11199]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11199
  [i915#11217]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11217
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14849 -> Patchwork_130650v7

  CI-20190529: 20190529
  CI_DRM_14849: 55d6179b96e0390025f2ba101c03b94b50cab7a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7873: b9bcded9123ac56ce05748de6c4870fb49451b87 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130650v7: 55d6179b96e0390025f2ba101c03b94b50cab7a1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/index.html

--===============1988827268255172610==
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
<tr><td><b>Series:</b></td><td>Link off between frames for edp (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130650/">https://patchwork.freedesktop.org/series/130650/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14849 -&gt; Patchwork_130650v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (3): bat-atsm-1 bat-jsl-1 fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130650v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14849/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14849/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014">i915#10014</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130650v7/bat-dg2-8/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14849 -&gt; Patchwork_130650v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14849: 55d6179b96e0390025f2ba101c03b94b50cab7a1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7873: b9bcded9123ac56ce05748de6c4870fb49451b87 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130650v7: 55d6179b96e0390025f2ba101c03b94b50cab7a1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1988827268255172610==--
