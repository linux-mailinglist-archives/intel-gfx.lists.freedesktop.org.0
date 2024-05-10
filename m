Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9808C2259
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 12:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 429D210E85E;
	Fri, 10 May 2024 10:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0751410E85E;
 Fri, 10 May 2024 10:40:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6239768263259673878=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Documentation/i915=3A_remov?=
 =?utf-8?q?e_kernel-doc_for_DMC_wakelocks?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2024 10:40:51 -0000
Message-ID: <171533765103.2056296.13686177126110763454@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240510090502.667556-1-luciano.coelho@intel.com>
In-Reply-To: <20240510090502.667556-1-luciano.coelho@intel.com>
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

--===============6239768263259673878==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Documentation/i915: remove kernel-doc for DMC wakelocks
URL   : https://patchwork.freedesktop.org/series/133435/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14746 -> Patchwork_133435v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (3): bat-dg1-7 bat-dg2-11 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_133435v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][3] +30 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-atsm-1:         [FAIL][4] ([i915#10378]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html

  
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14746 -> Patchwork_133435v1

  CI-20190529: 20190529
  CI_DRM_14746: 0c99ca6cc719cf585be5945a455b68b66313b427 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7846: 4a5fd4e7cb2798636f6464e2bd61399f3242b322 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133435v1: 0c99ca6cc719cf585be5945a455b68b66313b427 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/index.html

--===============6239768263259673878==
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
<tr><td><b>Series:</b></td><td>Documentation/i915: remove kernel-doc for DMC wakelocks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133435/">https://patchwork.freedesktop.org/series/133435/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14746 -&gt; Patchwork_133435v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (3): bat-dg1-7 bat-dg2-11 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133435v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/bat-atsm-1/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14746 -&gt; Patchwork_133435v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14746: 0c99ca6cc719cf585be5945a455b68b66313b427 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7846: 4a5fd4e7cb2798636f6464e2bd61399f3242b322 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133435v1: 0c99ca6cc719cf585be5945a455b68b66313b427 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6239768263259673878==--
