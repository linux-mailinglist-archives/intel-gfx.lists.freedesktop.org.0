Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8E27780DB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 20:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC4E10E50A;
	Thu, 10 Aug 2023 18:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD56310E50A;
 Thu, 10 Aug 2023 18:56:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4CD9A0093;
 Thu, 10 Aug 2023 18:56:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7783006388058375798=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 10 Aug 2023 18:56:21 -0000
Message-ID: <169169378163.4957.16911217143991713832@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230810130319.3708392-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230810130319.3708392-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRFND?=
 =?utf-8?q?_misc_fixes_=28rev7=29?=
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

--===============7783006388058375798==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DSC misc fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/117662/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13500 -> Patchwork_117662v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/index.html

Participating hosts (42 -> 41)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_117662v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-11:        NOTRUN -> [SKIP][1] ([i915#7456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-adlp-11/igt@debugfs_test@basic-hwmon.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-2:         NOTRUN -> [ABORT][2] ([i915#6687] / [i915#7978] / [i915#8668])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-11:        NOTRUN -> [SKIP][3] ([i915#3282])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-adlp-11/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [PASS][4] -> [FAIL][5] ([i915#7940])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][6] ([i915#6367])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@kms_busy@basic@flip:
    - bat-adlp-11:        NOTRUN -> [ABORT][7] ([i915#4423])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-adlp-11/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-11:         NOTRUN -> [SKIP][8] ([i915#7828])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][9] -> [ABORT][10] ([i915#8442] / [i915#8668])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-bsw-nick:        NOTRUN -> [SKIP][11] ([fdo#109271]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][12] ([i915#4423]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-adlp-11/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-1115g4:      [FAIL][14] ([i915#7940]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [FAIL][16] ([i915#7940]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][18] ([i915#7911] / [i915#7913]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg2-11:         [INCOMPLETE][20] ([i915#7609] / [i915#7913]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@migrate:
    - bat-atsm-1:         [DMESG-FAIL][22] ([i915#7699] / [i915#7913]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-atsm-1/igt@i915_selftest@live@migrate.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-atsm-1/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [ABORT][24] ([i915#4983] / [i915#7913]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-rpls-2/igt@i915_selftest@live@requests.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-rpls-2/igt@i915_selftest@live@requests.html
    - bat-mtlp-6:         [DMESG-FAIL][26] ([i915#8497]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13500 -> Patchwork_117662v7

  CI-20190529: 20190529
  CI_DRM_13500: 4be6c76008410cf6ada52b25cb4bc4280bc3a3ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7426: 67e7470eb79ca386087775d0b1b51c164abbf9c8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117662v7: 4be6c76008410cf6ada52b25cb4bc4280bc3a3ee @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8985a84b00b6 drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
0bf4fcea4d27 drm/i915/dp: Check if force_dsc_output_format is possible
67c415d8d862 drm/i915/dp: Check src/sink compressed bpp limit for edp
443e975e998e drm/i915/dp: Get optimal link config to have best compressed bpp
008e3cad7cfd drm/i915/dp: Separate out function to get compressed bpp with joiner
c143bb27f8cc drm/i915/dp: Add DSC BPC/BPP constraints while selecting pipe bpp with DSC
a6053e4e1ca1 drm/i915/dp: Separate out functions for edp/DP for computing DSC bpp
5a2c08d792a1 drm/i915/dp: Rename helper to get DSC max pipe_bpp
74a84235d8fa drm/i915/dp: Avoid left shift of DSC output bpp by 4
90d626e8b8d0 drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also
b5de45a01e30 drm/i915/dp: Add functions to get min/max src input bpc with DSC
e0c3cd912b7e drm/i915/dp: Avoid forcing DSC BPC for MST case
c839624d0cd9 drm/display/dp: Fix the DP DSC Receiver cap size
20f20c34fe63 drm/i915/dp: Remove extra logs for printing DSC info
7fdf3bb931c6 drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck
88a80b198226 drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp
4776350a4c89 drm/i915/dp: Use consistent name for link bpp and compressed bpp
068092f382ed drm/i915/dp_mst: Use output_format to get the final link bpp
82285c064d7d drm/i915/dp: Move compressed bpp check with 420 format inside the helper
249212705d7c drm/i915/dp: Consider output_format while computing dsc bpp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/index.html

--===============7783006388058375798==
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
<tr><td><b>Series:</b></td><td>DSC misc fixes (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117662/">https://patchwork.freedesktop.org/series/117662/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13500 -&gt; Patchwork_117662v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/index.html</p>
<h2>Participating hosts (42 -&gt; 41)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117662v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-adlp-11/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-adlp-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-adlp-11/igt@kms_busy@basic@flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-adlp-11/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-tgl-1115g4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-atsm-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-atsm-1/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13500/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v7/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13500 -&gt; Patchwork_117662v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13500: 4be6c76008410cf6ada52b25cb4bc4280bc3a3ee @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7426: 67e7470eb79ca386087775d0b1b51c164abbf9c8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117662v7: 4be6c76008410cf6ada52b25cb4bc4280bc3a3ee @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8985a84b00b6 drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info<br />
0bf4fcea4d27 drm/i915/dp: Check if force_dsc_output_format is possible<br />
67c415d8d862 drm/i915/dp: Check src/sink compressed bpp limit for edp<br />
443e975e998e drm/i915/dp: Get optimal link config to have best compressed bpp<br />
008e3cad7cfd drm/i915/dp: Separate out function to get compressed bpp with joiner<br />
c143bb27f8cc drm/i915/dp: Add DSC BPC/BPP constraints while selecting pipe bpp with DSC<br />
a6053e4e1ca1 drm/i915/dp: Separate out functions for edp/DP for computing DSC bpp<br />
5a2c08d792a1 drm/i915/dp: Rename helper to get DSC max pipe_bpp<br />
74a84235d8fa drm/i915/dp: Avoid left shift of DSC output bpp by 4<br />
90d626e8b8d0 drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also<br />
b5de45a01e30 drm/i915/dp: Add functions to get min/max src input bpc with DSC<br />
e0c3cd912b7e drm/i915/dp: Avoid forcing DSC BPC for MST case<br />
c839624d0cd9 drm/display/dp: Fix the DP DSC Receiver cap size<br />
20f20c34fe63 drm/i915/dp: Remove extra logs for printing DSC info<br />
7fdf3bb931c6 drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck<br />
88a80b198226 drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp<br />
4776350a4c89 drm/i915/dp: Use consistent name for link bpp and compressed bpp<br />
068092f382ed drm/i915/dp_mst: Use output_format to get the final link bpp<br />
82285c064d7d drm/i915/dp: Move compressed bpp check with 420 format inside the helper<br />
249212705d7c drm/i915/dp: Consider output_format while computing dsc bpp</p>

</body>
</html>

--===============7783006388058375798==--
