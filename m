Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A9F87BD55
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 14:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596A910EA38;
	Thu, 14 Mar 2024 13:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7700310F92A;
 Thu, 14 Mar 2024 13:09:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4114820322434497917=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Fix_VMA_UAF_on_?=
 =?utf-8?q?destroy_against_deactivate_race_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 13:09:54 -0000
Message-ID: <171042179448.754222.8148673452318385932@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240305143747.335367-5-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240305143747.335367-5-janusz.krzysztofik@linux.intel.com>
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

--===============4114820322434497917==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix VMA UAF on destroy against deactivate race (rev8)
URL   : https://patchwork.freedesktop.org/series/129026/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14430 -> Patchwork_129026v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/index.html

Participating hosts (39 -> 37)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (3): bat-mtlp-8 bat-kbl-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129026v8 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-jsl-1/boot.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][3] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-kbl-8809g/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-cfl-8109u:       [FAIL][4] ([i915#8293]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/fi-cfl-8109u/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][8] -> [ABORT][9] ([i915#7911])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [PASS][10] -> [DMESG-WARN][11] ([i915#5591])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@objects:
    - bat-dg2-11:         [PASS][12] -> [ABORT][13] ([i915#10366])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-dg2-11/igt@i915_selftest@live@objects.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-dg2-11/igt@i915_selftest@live@objects.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][14] +11 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [FAIL][15] ([i915#10378]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [WARN][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-dg2-8:          [ABORT][19] ([i915#10366]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14430 -> Patchwork_129026v8

  CI-20190529: 20190529
  CI_DRM_14430: 9bedef916cef04bba9e98430c1c1de637219a573 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7761: 67af6998a7e0467a7a0718cbbfe05a9fd383206f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129026v8: 9bedef916cef04bba9e98430c1c1de637219a573 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4bb7f9f9a754 Revert "drm/i915: Wait for active retire before i915_active_fini()"
dbaf48f1bc40 drm/i915: Remove extra multi-gt pm-references
4d66ed116260 drm/i915/vma: Fix UAF on destroy against retire race

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/index.html

--===============4114820322434497917==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix VMA UAF on destroy against deactivate race (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129026/">https://patchwork.freedesktop.org/series/129026/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14430 -&gt; Patchwork_129026v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (3): bat-mtlp-8 bat-kbl-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129026v8 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-kbl-8809g/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-dg2-11/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-dg2-11/igt@i915_selftest@live@objects.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14430/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129026v8/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14430 -&gt; Patchwork_129026v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14430: 9bedef916cef04bba9e98430c1c1de637219a573 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7761: 67af6998a7e0467a7a0718cbbfe05a9fd383206f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129026v8: 9bedef916cef04bba9e98430c1c1de637219a573 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4bb7f9f9a754 Revert "drm/i915: Wait for active retire before i915_active_fini()"<br />
dbaf48f1bc40 drm/i915: Remove extra multi-gt pm-references<br />
4d66ed116260 drm/i915/vma: Fix UAF on destroy against retire race</p>

</body>
</html>

--===============4114820322434497917==--
