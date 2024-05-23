Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 370238CDB1B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 21:48:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3252E10EEFE;
	Thu, 23 May 2024 19:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6562910EF62;
 Thu, 23 May 2024 19:48:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4395685293134633763=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_intel=5Fcolor?=
 =?utf-8?q?=5Fcheck=28=29_cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2024 19:48:00 -0000
Message-ID: <171649368041.2170280.13515844856843346596@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
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

--===============4395685293134633763==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: intel_color_check() cleanup
URL   : https://patchwork.freedesktop.org/series/133985/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14813 -> Patchwork_133985v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/index.html

Participating hosts (43 -> 42)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (2): bat-jsl-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_133985v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_module_load@load:
    - bat-arls-3:         [PASS][3] -> [ABORT][4] ([i915#11041])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-arls-3/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/bat-arls-3/igt@i915_module_load@load.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][5] +30 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [FAIL][6] ([i915#10378]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][8] ([i915#10594]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp6:
    - {bat-mtlp-9}:       [DMESG-FAIL][10] ([i915#11009]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@c-dp6.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@c-dp6.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp6:
    - {bat-mtlp-9}:       [FAIL][12] ([i915#6121]) -> [PASS][13] +4 other tests pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#11041]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11041
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14813 -> Patchwork_133985v1

  CI-20190529: 20190529
  CI_DRM_14813: 1385623a20ad940dab90bfaa4bc01fe599506e09 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7870: ad1cea5f9b4ce0f4a036cbda2da3d8979fb1ce15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133985v1: 1385623a20ad940dab90bfaa4bc01fe599506e09 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/index.html

--===============4395685293134633763==
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
<tr><td><b>Series:</b></td><td>drm/i915: intel_color_check() cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133985/">https://patchwork.freedesktop.org/series/133985/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14813 -&gt; Patchwork_133985v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (2): bat-jsl-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133985v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/fi-kbl-8809g/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-arls-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/bat-arls-3/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11041">i915#11041</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@c-dp6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@c-dp6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14813/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133985v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14813 -&gt; Patchwork_133985v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14813: 1385623a20ad940dab90bfaa4bc01fe599506e09 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7870: ad1cea5f9b4ce0f4a036cbda2da3d8979fb1ce15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133985v1: 1385623a20ad940dab90bfaa4bc01fe599506e09 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4395685293134633763==--
