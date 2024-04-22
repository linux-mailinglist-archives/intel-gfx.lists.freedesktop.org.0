Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E088AD34A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 19:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA75F10E6FC;
	Mon, 22 Apr 2024 17:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489AE10EC0B;
 Mon, 22 Apr 2024 17:28:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6265204499439059094=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Force_CCS_mode_to_the_maxim?=
 =?utf-8?q?um?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Apr 2024 17:28:32 -0000
Message-ID: <171380691229.1571015.2091700643087630770@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240422162731.7046-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240422162731.7046-1-andi.shyti@linux.intel.com>
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

--===============6265204499439059094==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Force CCS mode to the maximum
URL   : https://patchwork.freedesktop.org/series/132721/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14626 -> Patchwork_132721v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/index.html

Participating hosts (35 -> 34)
------------------------------

  Additional (3): fi-cfl-8109u bat-jsl-1 fi-elk-e7500 
  Missing    (4): fi-kbl-7567u fi-bsw-n3050 bat-mtlp-6 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_132721v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][1] ([i915#9318])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
    - bat-jsl-1:          NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@active:
    - fi-cfl-guc:         [PASS][6] -> [DMESG-FAIL][7] ([i915#10606])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-cfl-guc/igt@i915_selftest@live@active.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-cfl-guc/igt@i915_selftest@live@active.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][8] ([i915#4103]) +1 other test skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-jsl-1:          NOTRUN -> [SKIP][9] ([i915#3555] / [i915#9886])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-1:          NOTRUN -> [SKIP][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][11] +11 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-elk-e7500:       NOTRUN -> [SKIP][12] +24 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-1:          NOTRUN -> [SKIP][13] ([i915#3555])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-apl-guc:         [DMESG-WARN][14] ([i915#10875] / [i915#180] / [i915#8585]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [DMESG-WARN][16] ([i915#10636] / [i915#180] / [i915#1982] / [i915#8585]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@i915_module_load@reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@reset:
    - fi-apl-guc:         [DMESG-WARN][18] ([i915#10636]) -> [PASS][19] +36 other tests pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@i915_selftest@live@reset.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@i915_selftest@live@reset.html

  * igt@kms_addfb_basic@addfb25-4-tiled:
    - fi-apl-guc:         [DMESG-WARN][20] -> [PASS][21] +41 other tests pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_addfb_basic@addfb25-4-tiled.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_addfb_basic@addfb25-4-tiled.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - fi-apl-guc:         [DMESG-WARN][22] ([i915#10875] / [i915#180]) -> [PASS][23] +4 other tests pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-apl-guc:         [DMESG-WARN][24] ([i915#180] / [i915#1982]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:
    - fi-apl-guc:         [DMESG-WARN][26] ([i915#180]) -> [PASS][27] +22 other tests pass
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - fi-apl-guc:         [DMESG-WARN][28] ([i915#180] / [i915#8585]) -> [PASS][29] +7 other tests pass
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435
  [i915#10606]: https://gitlab.freedesktop.org/drm/intel/issues/10606
  [i915#10636]: https://gitlab.freedesktop.org/drm/intel/issues/10636
  [i915#10875]: https://gitlab.freedesktop.org/drm/intel/issues/10875
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#9157]: https://gitlab.freedesktop.org/drm/intel/issues/9157
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14626 -> Patchwork_132721v1

  CI-20190529: 20190529
  CI_DRM_14626: a53d157b0bd321e30804e935e010d77fc575b033 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7815: d5d516bfdf77898e934b4c7ed947a43711cfb226 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132721v1: a53d157b0bd321e30804e935e010d77fc575b033 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/index.html

--===============6265204499439059094==
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
<tr><td><b>Series:</b></td><td>Force CCS mode to the maximum</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132721/">https://patchwork.freedesktop.org/series/132721/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14626 -&gt; Patchwork_132721v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Additional (3): fi-cfl-8109u bat-jsl-1 fi-elk-e7500 <br />
  Missing    (4): fi-kbl-7567u fi-bsw-n3050 bat-mtlp-6 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132721v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-cfl-guc/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-cfl-guc/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10606">i915#10606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10636">i915#10636</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@i915_selftest@live@reset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10636">i915#10636</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@i915_selftest@live@reset.html">PASS</a> +36 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-4-tiled:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_addfb_basic@addfb25-4-tiled.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS</a> +41 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">PASS</a> +22 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14626/fi-apl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132721v1/fi-apl-guc/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14626 -&gt; Patchwork_132721v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14626: a53d157b0bd321e30804e935e010d77fc575b033 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7815: d5d516bfdf77898e934b4c7ed947a43711cfb226 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132721v1: a53d157b0bd321e30804e935e010d77fc575b033 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6265204499439059094==--
