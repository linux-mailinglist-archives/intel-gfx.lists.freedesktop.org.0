Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D557B5FEEB5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 15:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A3E10EAEA;
	Fri, 14 Oct 2022 13:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5E1610EAEB;
 Fri, 14 Oct 2022 13:34:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E761A8830;
 Fri, 14 Oct 2022 13:34:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8028644038724732365=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Fri, 14 Oct 2022 13:34:04 -0000
Message-ID: <166575444461.26451.14046530491134753138@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221014124740.774835-1-mika.kahola@intel.com>
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_C10_and_C20_phy_support?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8028644038724732365==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Add C10 and C20 phy support
URL   : https://patchwork.freedesktop.org/series/109714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12242 -> Patchwork_109714v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Additional (3): fi-tgl-u2 bat-atsm-1 fi-pnv-d510 
  Missing    (4): fi-ilk-m540 fi-kbl-x1275 bat-jsl-1 fi-hsw-4200u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109714v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][1] ([i915#4983]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-rpls-1/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3:
    - {bat-dg2-11}:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_109714v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-tgl-u2:          NOTRUN -> [SKIP][6] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-tgl-u2:          NOTRUN -> [SKIP][7] ([i915#4103])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][8] ([fdo#109285])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][9] ([fdo#109271]) +43 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-tgl-u2:          NOTRUN -> [SKIP][10] ([i915#3555])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - {bat-dg2-11}:       [DMESG-WARN][11] ([i915#6816]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-dg2-11/igt@gem_exec_suspend@basic-s0@lmem0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-dg2-11/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [DMESG-WARN][13] ([i915#5537]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-rpls-2/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - {bat-rplp-1}:       [DMESG-WARN][15] ([i915#7077]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - {fi-tgl-mst}:       [DMESG-WARN][17] ([i915#5537]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/fi-tgl-mst/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-mst/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][19] ([i915#4983]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-rpls-2/igt@i915_selftest@live@reset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][21] ([i915#6298]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3:
    - {bat-dg2-11}:       [FAIL][23] ([i915#6818]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6596]: https://gitlab.freedesktop.org/drm/intel/issues/6596
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7030]: https://gitlab.freedesktop.org/drm/intel/issues/7030
  [i915#7031]: https://gitlab.freedesktop.org/drm/intel/issues/7031
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077


Build changes
-------------

  * Linux: CI_DRM_12242 -> Patchwork_109714v1

  CI-20190529: 20190529
  CI_DRM_12242: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109714v1: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4741dedba5a6 drm/i915/mtl: Pin assignment for TypeC
070326bc736c drm/i915/mtl: Power up TCSS
ec5f05446388 drm/i915/mtl: Define mask for DDI AUX interrupts
0fa5ddba0476 drm/i915/mtl: MTL PICA hotplug detection
6002f2998c09 drm/i915/mtl: Enable TC ports
8fb8d0dbc7dd drm/i915/mtl: Readout Thunderbolt HW state
ccc1e99a8db7 drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll
87fbab473255 drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA
ef5c683f4906 drm/i915/mtl: Add voltage swing sequence for C20
2fa0f5d8252a drm/i915/mtl: C20 HDMI state calculations
7d3092617045 drm/i915/mtl: C20 port clock calculation
3d61a66bad51 drm/i915/mtl: C20 HW readout
a6ad0b3e3093 drm/i915/mtl: C20 PLL programming
61e3d9be3776 drm/i915/mtl: Add support for PM DEMAND
9a45e057d8eb drm/i915/mtl: Add vswing programming for C10 phys
6c1ccfaefb87 drm/i915/mtl: Add C10 phy programming for HDMI
f36ddc622f42 drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
8688dd8ab069 drm/i915/mtl: Create separate reg file for PICA registers
de70a43fc944 drm/i915/mtl: Add DP rates
b8b3034990a8 drm/i915/mtl: Initial DDI port setup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/index.html

--===============8028644038724732365==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Add C10 and C20 phy support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109714/">https://patchwork.freedesktop.org/series/109714/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12242 -&gt; Patchwork_109714v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Additional (3): fi-tgl-u2 bat-atsm-1 fi-pnv-d510 <br />
  Missing    (4): fi-ilk-m540 fi-kbl-x1275 bat-jsl-1 fi-hsw-4200u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109714v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109714v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-dg2-11/igt@gem_exec_suspend@basic-s0@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6816">i915#6816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-dg2-11/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/fi-tgl-mst/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5537">i915#5537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-tgl-mst/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6818">i915#6818</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109714v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12242 -&gt; Patchwork_109714v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12242: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109714v1: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4741dedba5a6 drm/i915/mtl: Pin assignment for TypeC<br />
070326bc736c drm/i915/mtl: Power up TCSS<br />
ec5f05446388 drm/i915/mtl: Define mask for DDI AUX interrupts<br />
0fa5ddba0476 drm/i915/mtl: MTL PICA hotplug detection<br />
6002f2998c09 drm/i915/mtl: Enable TC ports<br />
8fb8d0dbc7dd drm/i915/mtl: Readout Thunderbolt HW state<br />
ccc1e99a8db7 drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll<br />
87fbab473255 drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA<br />
ef5c683f4906 drm/i915/mtl: Add voltage swing sequence for C20<br />
2fa0f5d8252a drm/i915/mtl: C20 HDMI state calculations<br />
7d3092617045 drm/i915/mtl: C20 port clock calculation<br />
3d61a66bad51 drm/i915/mtl: C20 HW readout<br />
a6ad0b3e3093 drm/i915/mtl: C20 PLL programming<br />
61e3d9be3776 drm/i915/mtl: Add support for PM DEMAND<br />
9a45e057d8eb drm/i915/mtl: Add vswing programming for C10 phys<br />
6c1ccfaefb87 drm/i915/mtl: Add C10 phy programming for HDMI<br />
f36ddc622f42 drm/i915/mtl: Add Support for C10 PHY message bus and pll programming<br />
8688dd8ab069 drm/i915/mtl: Create separate reg file for PICA registers<br />
de70a43fc944 drm/i915/mtl: Add DP rates<br />
b8b3034990a8 drm/i915/mtl: Initial DDI port setup</p>

</body>
</html>

--===============8028644038724732365==--
