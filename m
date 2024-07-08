Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D4D92A9D5
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 21:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBA610E094;
	Mon,  8 Jul 2024 19:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5810B10E381;
 Mon,  8 Jul 2024 19:31:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9173870700799494577=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_i915/perf=3A_Remove_code_to?=
 =?utf-8?q?_update_PWR=5FCLK=5FSTATE_for_gen12_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Jul 2024 19:31:31 -0000
Message-ID: <172046709135.67618.8809663769878357650@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240629005643.3050678-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20240629005643.3050678-1-umesh.nerlige.ramappa@intel.com>
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

--===============9173870700799494577==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915/perf: Remove code to update PWR_CLK_STATE for gen12 (rev3)
URL   : https://patchwork.freedesktop.org/series/135549/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15045 -> Patchwork_135549v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/index.html

Participating hosts (41 -> 38)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (4): bat-kbl-2 bat-dg2-11 fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_135549v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][3] +30 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-arls-1:         [SKIP][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-arls-1/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-arls-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@objects:
    - bat-arls-1:         [DMESG-FAIL][6] ([i915#10262]) -> [PASS][7] +36 other tests pass
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-arls-1/igt@i915_selftest@live@objects.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-arls-1/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@requests:
    - {bat-apl-1}:        [DMESG-WARN][8] ([i915#11328]) -> [PASS][9] +78 other tests pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-apl-1/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-apl-1/igt@i915_selftest@live@requests.html

  * igt@kms_busy@basic@flip:
    - {bat-apl-1}:        [DMESG-WARN][10] ([i915#180] / [i915#1982]) -> [PASS][11] +1 other test pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-apl-1/igt@kms_busy@basic@flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-apl-1/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-apl-1}:        [DMESG-WARN][12] ([i915#10062] / [i915#180]) -> [PASS][13] +1 other test pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - {bat-apl-1}:        [DMESG-WARN][14] ([i915#180]) -> [PASS][15] +34 other tests pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10062]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10062
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#11328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_15045 -> Patchwork_135549v3

  CI-20190529: 20190529
  CI_DRM_15045: 1b010bec39a554cbbd0b51cbf49142e2f218013d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7919: 2c50c98273c55882bdc209fed77d0e40b24431f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135549v3: 1b010bec39a554cbbd0b51cbf49142e2f218013d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/index.html

--===============9173870700799494577==
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
<tr><td><b>Series:</b></td><td>i915/perf: Remove code to update PWR_CLK_STATE for gen12 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135549/">https://patchwork.freedesktop.org/series/135549/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15045 -&gt; Patchwork_135549v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (4): bat-kbl-2 bat-dg2-11 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135549v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-arls-1/igt@i915_pm_rpm@module-reload.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-arls-1/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-arls-1/igt@i915_selftest@live@objects.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-arls-1/igt@i915_selftest@live@objects.html">PASS</a> +36 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-apl-1/igt@i915_selftest@live@requests.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328">i915#11328</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-apl-1/igt@i915_selftest@live@requests.html">PASS</a> +78 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-apl-1/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-apl-1/igt@kms_busy@basic@flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10062">i915#10062</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15045/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135549v3/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">PASS</a> +34 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15045 -&gt; Patchwork_135549v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15045: 1b010bec39a554cbbd0b51cbf49142e2f218013d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7919: 2c50c98273c55882bdc209fed77d0e40b24431f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135549v3: 1b010bec39a554cbbd0b51cbf49142e2f218013d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============9173870700799494577==--
