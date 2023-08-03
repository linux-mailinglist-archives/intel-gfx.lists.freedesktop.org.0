Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C1976ECFD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 16:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D0D10E610;
	Thu,  3 Aug 2023 14:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BA8210E60C;
 Thu,  3 Aug 2023 14:44:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14AECA0BA8;
 Thu,  3 Aug 2023 14:44:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0974309433829789076=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tseng, William" <william.tseng@intel.com>
Date: Thu, 03 Aug 2023 14:44:57 -0000
Message-ID: <169107389707.5269.6318324522347330256@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230802101541.10045-1-william.tseng@intel.com>
In-Reply-To: <20230802101541.10045-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/xelpd=3A_Calculate_first=5Fline=5Fbpg=5Foffset_for_DSC_1?=
 =?utf-8?b?LjEgKHJldjMp?=
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

--===============0974309433829789076==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/xelpd: Calculate first_line_bpg_offset for DSC 1.1 (rev3)
URL   : https://patchwork.freedesktop.org/series/121882/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13469 -> Patchwork_121882v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_121882v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#7940]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html
    - bat-adlp-9:         [PASS][3] -> [FAIL][4] ([i915#7940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-rkl-11600:       [PASS][5] -> [FAIL][6] ([i915#7940])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][7] -> [ABORT][8] ([i915#7911] / [i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-guc:         [PASS][9] -> [DMESG-FAIL][10] ([i915#5334])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-6:         [PASS][11] -> [DMESG-FAIL][12] ([i915#8497])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-mtlp-6/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][13] ([i915#6367])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][14] ([i915#1845] / [i915#5354]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [ABORT][15] ([i915#8434] / [i915#8442] / [i915#8668])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [FAIL][16] ([i915#7940]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-7567u:       [FAIL][18] ([i915#7940]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][20] ([i915#5334] / [i915#7872]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [DMESG-FAIL][22] ([i915#7059]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [TIMEOUT][24] ([i915#6794] / [i915#7392]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-rpls-2/igt@i915_selftest@live@mman.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [DMESG-FAIL][26] ([i915#8497]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-8:         [DMESG-WARN][28] ([i915#6367]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-mtlp-8/igt@i915_selftest@live@slpc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         [WARN][30] ([i915#8747]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - {bat-dg2-13}:       [DMESG-WARN][32] ([Intel XE#485]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [DMESG-WARN][34] ([i915#4423]) -> [ABORT][35] ([i915#4423])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-adlp-11/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-cfl-8700k:       [FAIL][36] ([i915#7691]) -> [FAIL][37] ([i915#7940])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rplp-1:         [ABORT][38] ([i915#8442] / [i915#8668] / [i915#8712]) -> [SKIP][39] ([i915#1072])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#485]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/485
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8712]: https://gitlab.freedesktop.org/drm/intel/issues/8712
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747


Build changes
-------------

  * Linux: CI_DRM_13469 -> Patchwork_121882v3

  CI-20190529: 20190529
  CI_DRM_13469: c9688b127361ba2cf524e4a3bf19b598654b4308 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7412: 7412
  Patchwork_121882v3: c9688b127361ba2cf524e4a3bf19b598654b4308 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7387a634595c drm/i915/xelpd: Calculate first_line_bpg_offset for DSC 1.1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/index.html

--===============0974309433829789076==
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
<tr><td><b>Series:</b></td><td>drm/i915/xelpd: Calculate first_line_bpg_offset for DSC 1.1 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/121882/">https://patchwork.freedesktop.org/series/121882/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13469 -&gt; Patchwork_121882v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_121882v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/485">Intel XE#485</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7691">i915#7691</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13469/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8712">i915#8712</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121882v3/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13469 -&gt; Patchwork_121882v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13469: c9688b127361ba2cf524e4a3bf19b598654b4308 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7412: 7412<br />
  Patchwork_121882v3: c9688b127361ba2cf524e4a3bf19b598654b4308 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7387a634595c drm/i915/xelpd: Calculate first_line_bpg_offset for DSC 1.1</p>

</body>
</html>

--===============0974309433829789076==--
