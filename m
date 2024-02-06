Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B7784AFA4
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 09:09:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C79112A72;
	Tue,  6 Feb 2024 08:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1218112A72;
 Tue,  6 Feb 2024 08:09:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6276689947212999934=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Force_f?=
 =?utf-8?q?ull_modeset_for_eDP?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 06 Feb 2024 08:09:16 -0000
Message-ID: <170720695672.1040826.5583381134630365958@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240206070937.197986-1-mika.kahola@intel.com>
In-Reply-To: <20240206070937.197986-1-mika.kahola@intel.com>
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

--===============6276689947212999934==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Force full modeset for eDP
URL   : https://patchwork.freedesktop.org/series/129566/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14229 -> Patchwork_129566v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/index.html

Participating hosts (36 -> 37)
------------------------------

  Additional (2): bat-kbl-2 bat-jsl-1 
  Missing    (1): fi-apl-guc 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129566v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pm_backlight@basic-brightness:
    - {bat-arls-1}:       [SKIP][1] ([i915#10190]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@kms_pm_backlight@basic-brightness.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@kms_pm_backlight@basic-brightness.html

  
Known issues
------------

  Here are the changes found in Patchwork_129566v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][5] ([i915#9318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1849])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-1:          NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][8] ([fdo#109271]) +35 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-jsl-1:          NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][10] -> [ABORT][11] ([i915#7911])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][12] ([i915#4103]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-jsl-1:          NOTRUN -> [SKIP][13] ([i915#3555] / [i915#9886])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-1:          NOTRUN -> [SKIP][14] ([fdo#109285])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-1:          NOTRUN -> [SKIP][15] ([i915#3555])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-arls-1}:       [SKIP][16] ([i915#10076]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@core_hotunplug@unbind-rebind.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@info:
    - {bat-arls-1}:       [SKIP][18] ([i915#1849]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@fbdev@info.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@fbdev@info.html

  * igt@fbdev@write:
    - {bat-arls-1}:       [SKIP][20] ([i915#10191]) -> [PASS][21] +3 other tests pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@fbdev@write.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@fbdev@write.html

  * igt@i915_module_load@load:
    - {bat-arls-1}:       [DMESG-FAIL][22] ([i915#10189]) -> [PASS][23] +1 other test pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@i915_module_load@load.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_engines:
    - {bat-adls-6}:       [TIMEOUT][24] ([i915#10026]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-adls-6/igt@i915_selftest@live@gt_engines.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-adls-6/igt@i915_selftest@live@gt_engines.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - {bat-arls-1}:       [SKIP][26] ([i915#9980]) -> [PASS][27] +1 other test pass
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@vgem_basic@dmabuf-export:
    - {bat-arls-1}:       [SKIP][28] ([i915#10190]) -> [PASS][29] +77 other tests pass
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@vgem_basic@dmabuf-export.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@vgem_basic@dmabuf-export.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
  [i915#10076]: https://gitlab.freedesktop.org/drm/intel/issues/10076
  [i915#10189]: https://gitlab.freedesktop.org/drm/intel/issues/10189
  [i915#10190]: https://gitlab.freedesktop.org/drm/intel/issues/10190
  [i915#10191]: https://gitlab.freedesktop.org/drm/intel/issues/10191
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/intel/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9643]: https://gitlab.freedesktop.org/drm/intel/issues/9643
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886
  [i915#9980]: https://gitlab.freedesktop.org/drm/intel/issues/9980


Build changes
-------------

  * Linux: CI_DRM_14229 -> Patchwork_129566v1

  CI-20190529: 20190529
  CI_DRM_14229: 21d1e1f2882868cae0ec32774f910d5675afeca2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7704: 7704
  Patchwork_129566v1: 21d1e1f2882868cae0ec32774f910d5675afeca2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

589e1a5a67cc drm/i915/display: Force full modeset for eDP
583c5065b755 Revert "drm/i915/display: Skip C10 state verification in case of fastset"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/index.html

--===============6276689947212999934==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Force full modeset for eDP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129566/">https://patchwork.freedesktop.org/series/129566/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14229 -&gt; Patchwork_129566v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/index.html</p>
<h2>Participating hosts (36 -&gt; 37)</h2>
<p>Additional (2): bat-kbl-2 bat-jsl-1 <br />
  Missing    (1): fi-apl-guc </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129566v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pm_backlight@basic-brightness:<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10190">i915#10190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129566v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@core_hotunplug@unbind-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10076">i915#10076</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10191">i915#10191</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@fbdev@write.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@i915_module_load@load.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10189">i915#10189</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@i915_module_load@load.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-adls-6/igt@i915_selftest@live@gt_engines.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10026">i915#10026</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-adls-6/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9980">i915#9980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-export:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14229/bat-arls-1/igt@vgem_basic@dmabuf-export.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10190">i915#10190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129566v1/bat-arls-1/igt@vgem_basic@dmabuf-export.html">PASS</a> +77 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14229 -&gt; Patchwork_129566v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14229: 21d1e1f2882868cae0ec32774f910d5675afeca2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7704: 7704<br />
  Patchwork_129566v1: 21d1e1f2882868cae0ec32774f910d5675afeca2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>589e1a5a67cc drm/i915/display: Force full modeset for eDP<br />
583c5065b755 Revert "drm/i915/display: Skip C10 state verification in case of fastset"</p>

</body>
</html>

--===============6276689947212999934==--
