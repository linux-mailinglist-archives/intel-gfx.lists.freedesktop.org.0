Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A76DA2646F9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 15:28:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3644F6E92C;
	Thu, 10 Sep 2020 13:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CCEA6E92B;
 Thu, 10 Sep 2020 13:28:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 64734A47DB;
 Thu, 10 Sep 2020 13:28:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Thu, 10 Sep 2020 13:28:51 -0000
Message-ID: <159974453138.26636.15236251560517768833@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200910121153.6749-1-uma.shankar@intel.com>
In-Reply-To: <20200910121153.6749-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Add_a_vblank_wait_for_FBC_activation_within_sa?=
 =?utf-8?q?me_frame?=
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
Content-Type: multipart/mixed; boundary="===============0223089412=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0223089412==
Content-Type: multipart/alternative;
 boundary="===============9107090060463655461=="

--===============9107090060463655461==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Add a vblank wait for FBC activation within same frame
URL   : https://patchwork.freedesktop.org/series/81550/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8994 -> Patchwork_18470
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/index.html

Known issues
------------

  Here are the changes found in Patchwork_18470 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-7500u:       [PASS][1] -> [INCOMPLETE][2] ([i915#2439])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [PASS][3] -> [INCOMPLETE][4] ([i915#2439])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        [PASS][5] -> [INCOMPLETE][6] ([i915#2439])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-apl-guc:         [PASS][7] -> [INCOMPLETE][8] ([i915#1635] / [i915#2439])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-apl-guc/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-apl-guc/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [PASS][9] -> [INCOMPLETE][10] ([i915#2439])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-bsw-kefka:       [PASS][11] -> [INCOMPLETE][12] ([i915#2439])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-byt-j1900:       [PASS][15] -> [INCOMPLETE][16] ([i915#2440])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-byt-j1900/igt@i915_selftest@live@gem_execbuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-byt-j1900/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [PASS][17] -> [INCOMPLETE][18] ([i915#2440])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-r:           [INCOMPLETE][19] ([i915#2439]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - {fi-ehl-1}:         [INCOMPLETE][21] ([CI#80] / [i915#2439]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-kbl-soraka:      [INCOMPLETE][23] ([i915#2439]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-soraka/igt@gem_exec_parallel@engines@contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-soraka/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-gdg-551:         [INCOMPLETE][25] ([i915#172] / [i915#2439]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-gdg-551/igt@gem_tiled_fence_blits@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-gdg-551/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-bsw-nick:        [INCOMPLETE][27] ([i915#2439]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2600:        [INCOMPLETE][29] ([i915#2439] / [i915#82]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_execbuf:
    - fi-elk-e7500:       [INCOMPLETE][31] ([i915#2440] / [i915#66]) -> [INCOMPLETE][32] ([i915#2439] / [i915#66])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][33] ([i915#2398] / [i915#2439]) -> [FAIL][34] ([i915#1186] / [i915#2439])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-6600u/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-skl-6600u/igt@runner@aborted.html
    - fi-skl-lmem:        [FAIL][35] ([i915#2398] / [i915#2439]) -> [FAIL][36] ([i915#1186] / [i915#2439])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-lmem/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-skl-lmem/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][37] ([i915#1635] / [i915#2398] / [i915#2439] / [i915#337]) -> [FAIL][38] ([i915#1186] / [i915#1635] / [i915#2439])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-apl-guc/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           [FAIL][39] ([i915#1186] / [i915#2439]) -> [FAIL][40] ([i915#2398] / [i915#2439])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-r/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][41] ([i915#2398] / [i915#2439]) -> [FAIL][42] ([i915#1436] / [i915#1784] / [i915#2439])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-soraka/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][43] ([i915#2398] / [i915#2439]) -> [FAIL][44] ([i915#1186] / [i915#2439])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-7500u/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-7500u/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][45] ([i915#1186] / [i915#2082] / [i915#2439]) -> [FAIL][46] ([i915#1186] / [i915#2439])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cml-u2/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-cml-u2/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][47] ([i915#1186] / [i915#2082] / [i915#2439]) -> [FAIL][48] ([i915#1186] / [i915#2439])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cml-s/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2440]: https://gitlab.freedesktop.org/drm/intel/issues/2440
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (43 -> 38)
------------------------------

  Additional (1): fi-bxt-dsi 
  Missing    (6): fi-hsw-4200u fi-tgl-u2 fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8994 -> Patchwork_18470

  CI-20190529: 20190529
  CI_DRM_8994: a68dfd41a60420d306dcc452c6c8ee2fb7c97b21 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5780: 9c5dfeb0338d7f98ad998663a595eab71ea887f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18470: 067462b512bc48205abfceeb53566379547aa4ba @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

067462b512bc drm/i915/display: Add a vblank wait for FBC activation within same frame

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/index.html

--===============9107090060463655461==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Add a vblank wait for FBC activation within same frame</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81550/">https://patchwork.freedesktop.org/series/81550/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8994 -&gt; Patchwork_18470</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18470 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-6600u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-skl-6600u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-lmem/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-skl-lmem/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-apl-guc/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-apl-guc/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-ilk-650/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-ilk-650/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-byt-j1900/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-byt-j1900/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2440">i915#2440</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2440">i915#2440</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-r/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-r/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-ehl-1/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-ehl-1/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-soraka/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-soraka/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-gdg-551/igt@gem_tiled_fence_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-gdg-551/igt@gem_tiled_fence_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2440">i915#2440</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/66">i915#66</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/66">i915#66</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-lmem/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-skl-lmem/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18470/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Additional (1): fi-bxt-dsi <br />
  Missing    (6): fi-hsw-4200u fi-tgl-u2 fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8994 -&gt; Patchwork_18470</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8994: a68dfd41a60420d306dcc452c6c8ee2fb7c97b21 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5780: 9c5dfeb0338d7f98ad998663a595eab71ea887f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18470: 067462b512bc48205abfceeb53566379547aa4ba @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>067462b512bc drm/i915/display: Add a vblank wait for FBC activation within same frame</p>

</body>
</html>

--===============9107090060463655461==--

--===============0223089412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0223089412==--
