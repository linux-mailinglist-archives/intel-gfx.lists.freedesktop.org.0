Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB607A1497E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 07:07:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0949910E11C;
	Fri, 17 Jan 2025 06:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0C310E11C;
 Fri, 17 Jan 2025 06:07:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3960640256543644102=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_Check_Scaler_and_DSC_Pref?=
 =?utf-8?q?ill_Latency_Against_Vblank_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2025 06:07:56 -0000
Message-ID: <173709407663.588872.11934721298285548551@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============3960640256543644102==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Check Scaler and DSC Prefill Latency Against Vblank (rev4)
URL   : https://patchwork.freedesktop.org/series/143160/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15968 -> Patchwork_143160v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/index.html

Participating hosts (42 -> 41)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_143160v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-pnv-d510/igt@debugfs_test@basic-hwmon.html

  * igt@debugfs_test@read_all_entries:
    - fi-cfl-8109u:       [PASS][2] -> [ABORT][3] ([i915#13525])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7567u:       [PASS][4] -> [ABORT][5] ([i915#13525])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][6] -> [ABORT][7] ([i915#13525])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][8] -> [ABORT][9] ([i915#13525])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - bat-dg2-11:         [PASS][10] -> [ABORT][11] ([i915#13525])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-dg2-11/igt@debugfs_test@read_all_entries.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-dg2-11/igt@debugfs_test@read_all_entries.html
    - bat-dg2-8:          [PASS][12] -> [ABORT][13] ([i915#13525])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-dg2-8/igt@debugfs_test@read_all_entries.html
    - bat-adlp-9:         [PASS][14] -> [ABORT][15] ([i915#13525])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-adlp-9/igt@debugfs_test@read_all_entries.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-adlp-9/igt@debugfs_test@read_all_entries.html
    - bat-rpls-4:         [PASS][16] -> [ABORT][17] ([i915#13525])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-rpls-4/igt@debugfs_test@read_all_entries.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-rpls-4/igt@debugfs_test@read_all_entries.html
    - bat-apl-1:          [PASS][18] -> [ABORT][19] ([i915#13525])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-apl-1/igt@debugfs_test@read_all_entries.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-apl-1/igt@debugfs_test@read_all_entries.html
    - bat-arls-5:         [PASS][20] -> [ABORT][21] ([i915#13525])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-arls-5/igt@debugfs_test@read_all_entries.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-arls-5/igt@debugfs_test@read_all_entries.html
    - bat-dg2-13:         [PASS][22] -> [ABORT][23] ([i915#13525])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-dg2-13/igt@debugfs_test@read_all_entries.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-dg2-13/igt@debugfs_test@read_all_entries.html
    - bat-dg2-9:          [PASS][24] -> [ABORT][25] ([i915#13525])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-dg2-9/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-dg2-9/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        NOTRUN -> [ABORT][26] ([i915#13169])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][27] -> [DMESG-FAIL][28] ([i915#12061]) +1 other test dmesg-fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2:
    - fi-glk-j4005:       [PASS][29] -> [FAIL][30] ([i915#13524]) +3 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-glk-j4005/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-glk-j4005/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][31] ([i915#13203]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-pnv-d510/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - fi-glk-j4005:       [INCOMPLETE][33] ([i915#12445]) -> [PASS][34] +1 other test pass
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-glk-j4005/igt@i915_selftest@live.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-glk-j4005/igt@i915_selftest@live.html
    - bat-adlp-11:        [INCOMPLETE][35] ([i915#12445]) -> [PASS][36] +1 other test pass
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-adlp-11/igt@i915_selftest@live.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-adlp-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-9}:       [DMESG-FAIL][37] ([i915#12061]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13524
  [i915#13525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525


Build changes
-------------

  * Linux: CI_DRM_15968 -> Patchwork_143160v4

  CI-20190529: 20190529
  CI_DRM_15968: 94cf137e747640246cf996a17ca3cebdbd7cbdde @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8195: 8195
  Patchwork_143160v4: 94cf137e747640246cf996a17ca3cebdbd7cbdde @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/index.html

--===============3960640256543644102==
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
<tr><td><b>Series:</b></td><td>Check Scaler and DSC Prefill Latency Against Vblank (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143160/">https://patchwork.freedesktop.org/series/143160/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15968 -&gt; Patchwork_143160v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/index.html</p>
<h2>Participating hosts (42 -&gt; 41)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143160v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-pnv-d510/igt@debugfs_test@basic-hwmon.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-dg2-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-dg2-11/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-dg2-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-dg2-8/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-adlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-adlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-rpls-4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-rpls-4/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-apl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-apl-1/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-arls-5/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-arls-5/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-dg2-13/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-dg2-13/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-dg2-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-dg2-9/igt@debugfs_test@read_all_entries.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13525">i915#13525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169">i915#13169</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-glk-j4005/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-glk-j4005/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13524">i915#13524</a>) +3 other tests fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203">i915#13203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/fi-glk-j4005/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/fi-glk-j4005/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-adlp-11/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-adlp-11/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15968/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143160v4/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15968 -&gt; Patchwork_143160v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15968: 94cf137e747640246cf996a17ca3cebdbd7cbdde @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8195: 8195<br />
  Patchwork_143160v4: 94cf137e747640246cf996a17ca3cebdbd7cbdde @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3960640256543644102==--
