Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 724108CA12B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 19:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D111510E42E;
	Mon, 20 May 2024 17:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53F710E42E;
 Mon, 20 May 2024 17:19:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6176846158560176129=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Bump_max_TMDS_b?=
 =?utf-8?q?itrate_to_6_Gbps_on_ADL/DG2+_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2024 17:19:20 -0000
Message-ID: <171622556092.2160912.8074843239870094615@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
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

--===============6176846158560176129==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Bump max TMDS bitrate to 6 Gbps on ADL/DG2+ (rev2)
URL   : https://patchwork.freedesktop.org/series/133716/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14785 -> Patchwork_133716v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_133716v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_133716v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/index.html

Participating hosts (41 -> 41)
------------------------------

  Additional (2): fi-kbl-8809g fi-bsw-n3050 
  Missing    (2): bat-kbl-2 bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133716v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@active:
    - fi-rkl-11600:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/fi-rkl-11600/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-rkl-11600/igt@i915_selftest@live@active.html

  
Known issues
------------

  Here are the changes found in Patchwork_133716v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [PASS][5] -> [FAIL][6] ([i915#10378])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][7] +19 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-9:          [PASS][8] -> [ABORT][9] ([i915#9840])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/bat-dg2-9/igt@i915_selftest@live@hangcheck.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][10] +30 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-dg2-8:          [DMESG-WARN][11] ([i915#10014]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-8/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/bat-dg2-8/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-arls-2:         [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-arls-2/igt@i915_selftest@live@gt_timelines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/bat-arls-2/igt@i915_selftest@live@gt_timelines.html

  
  [i915#10014]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9840


Build changes
-------------

  * Linux: CI_DRM_14785 -> Patchwork_133716v2

  CI-20190529: 20190529
  CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133716v2: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/index.html

--===============6176846158560176129==
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
<tr><td><b>Series:</b></td><td>drm/i915: Bump max TMDS bitrate to 6 Gbps on ADL/DG2+ (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133716/">https://patchwork.freedesktop.org/series/133716/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14785 -&gt; Patchwork_133716v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_133716v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_133716v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>Additional (2): fi-kbl-8809g fi-bsw-n3050 <br />
  Missing    (2): bat-kbl-2 bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_133716v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@active:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/fi-rkl-11600/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-rkl-11600/igt@i915_selftest@live@active.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133716v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9840">i915#9840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10014">i915#10014</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/bat-dg2-8/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/bat-arls-2/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133716v2/bat-arls-2/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14785 -&gt; Patchwork_133716v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133716v2: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6176846158560176129==--
