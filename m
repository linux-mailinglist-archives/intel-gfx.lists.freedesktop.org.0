Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A299894800D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 19:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4CE10E25F;
	Mon,  5 Aug 2024 17:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6573410E25E;
 Mon,  5 Aug 2024 17:09:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2813584194976830537=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Explicitly_cast?=
 =?utf-8?q?_divisor_and_use_div=5Fu64=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thorsten Blum" <thorsten.blum@toblux.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Aug 2024 17:09:56 -0000
Message-ID: <172287779640.540980.3849134016111654409@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240802160323.46518-2-thorsten.blum@toblux.com>
In-Reply-To: <20240802160323.46518-2-thorsten.blum@toblux.com>
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

--===============2813584194976830537==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Explicitly cast divisor and use div_u64()
URL   : https://patchwork.freedesktop.org/series/136893/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15181 -> Patchwork_136893v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/index.html

Participating hosts (40 -> 40)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_136893v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][3] +30 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][4] ([i915#9500]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15181/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15181 -> Patchwork_136893v1

  CI-20190529: 20190529
  CI_DRM_15181: 9e05740a01c348338498296b934a7652efff6aef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7956: dc7e77d1a8643f50832c38b4c8f8ddb598c0cf48 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_136893v1: 9e05740a01c348338498296b934a7652efff6aef @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/index.html

--===============2813584194976830537==
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
<tr><td><b>Series:</b></td><td>drm/i915: Explicitly cast divisor and use div_u64()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136893/">https://patchwork.freedesktop.org/series/136893/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15181 -&gt; Patchwork_136893v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/index.html</p>
<h2>Participating hosts (40 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136893v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15181/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136893v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15181 -&gt; Patchwork_136893v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15181: 9e05740a01c348338498296b934a7652efff6aef @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7956: dc7e77d1a8643f50832c38b4c8f8ddb598c0cf48 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_136893v1: 9e05740a01c348338498296b934a7652efff6aef @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2813584194976830537==--
