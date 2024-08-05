Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA613947B35
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 14:47:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E441910E1D3;
	Mon,  5 Aug 2024 12:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F60310E1D3;
 Mon,  5 Aug 2024 12:47:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6489280675125792750=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Implement_Dbuf_?=
 =?utf-8?q?overlap_detection_feature_starting_from_LNL?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Aug 2024 12:47:07 -0000
Message-ID: <172286202731.540085.5989349165362747926@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240805120031.1265-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240805120031.1265-1-stanislav.lisovskiy@intel.com>
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

--===============6489280675125792750==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Implement Dbuf overlap detection feature starting from LNL
URL   : https://patchwork.freedesktop.org/series/136884/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15179 -> Patchwork_136884v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/index.html

Participating hosts (40 -> 37)
------------------------------

  Additional (1): fi-elk-e7500 
  Missing    (4): bat-mtlp-8 fi-kbl-8809g fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_136884v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-elk-e7500:       NOTRUN -> [SKIP][1] +24 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - bat-arls-2:         [DMESG-FAIL][2] ([i915#10341]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-2/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-2:         [SKIP][4] ([i915#11623]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-2/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-1:         [DMESG-WARN][6] ([i915#11349] / [i915#11378]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@ring_submission:
    - bat-arls-2:         [DMESG-FAIL][8] ([i915#10262]) -> [PASS][9] +36 other tests pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-2/igt@i915_selftest@live@ring_submission.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-2/igt@i915_selftest@live@ring_submission.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@verify-random:
    - bat-arls-2:         [SKIP][10] ([i915#9643]) -> [SKIP][11] ([i915#10213]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-2/igt@gem_lmem_swapping@verify-random.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-2/igt@gem_lmem_swapping@verify-random.html

  
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378
  [i915#11623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11623
  [i915#9643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9643


Build changes
-------------

  * Linux: CI_DRM_15179 -> Patchwork_136884v1

  CI-20190529: 20190529
  CI_DRM_15179: a0d88000f0e2352047f037e14fc7f9d1a66a6e2b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7955: e12a8eebdc4bc7e073f2bfad88dc627006ac5771 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_136884v1: a0d88000f0e2352047f037e14fc7f9d1a66a6e2b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/index.html

--===============6489280675125792750==
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
<tr><td><b>Series:</b></td><td>drm/i915: Implement Dbuf overlap detection feature starting from LNL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136884/">https://patchwork.freedesktop.org/series/136884/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15179 -&gt; Patchwork_136884v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Additional (1): fi-elk-e7500 <br />
  Missing    (4): bat-mtlp-8 fi-kbl-8809g fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136884v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-2/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11623">i915#11623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-2/igt@i915_selftest@live@ring_submission.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-2/igt@i915_selftest@live@ring_submission.html">PASS</a> +36 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_lmem_swapping@verify-random:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15179/bat-arls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9643">i915#9643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v1/bat-arls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15179 -&gt; Patchwork_136884v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15179: a0d88000f0e2352047f037e14fc7f9d1a66a6e2b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7955: e12a8eebdc4bc7e073f2bfad88dc627006ac5771 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_136884v1: a0d88000f0e2352047f037e14fc7f9d1a66a6e2b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6489280675125792750==--
