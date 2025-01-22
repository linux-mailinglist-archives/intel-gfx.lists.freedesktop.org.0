Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7C3A19804
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 18:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAA010E741;
	Wed, 22 Jan 2025 17:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5CDF10E19B;
 Wed, 22 Jan 2025 17:50:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2841513800914135886=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Add_HDMI_PLL_Algorithm_fo?=
 =?utf-8?q?r_SNPS/C10PHY_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2025 17:50:20 -0000
Message-ID: <173756822073.3153572.16272969157935084401@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
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

--===============2841513800914135886==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add HDMI PLL Algorithm for SNPS/C10PHY (rev5)
URL   : https://patchwork.freedesktop.org/series/135397/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16001 -> Patchwork_135397v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_135397v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_135397v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_135397v5:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-adlp-9:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-adlp-9/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-adlp-9/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_135397v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-apl-1/igt@dmabuf@all-tests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [PASS][6] -> [ABORT][7] ([i915#13203])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/fi-pnv-d510/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][8] -> [FAIL][9] ([i915#13401])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][10] -> [FAIL][11] ([i915#13401])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][12] -> [DMESG-FAIL][13] ([i915#12061] / [i915#12435])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@i915_selftest@live.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-adlp-9:         [PASS][14] -> [ABORT][15] ([i915#13399])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][16] -> [DMESG-FAIL][17] ([i915#12061])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][18] -> [SKIP][19] ([i915#9197]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-cfl-8109u:       [ABORT][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/fi-cfl-8109u/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-cfl-8109u/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-9:          [ABORT][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-9/igt@i915_pm_rpm@module-reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-9/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-dg2-13:         [SKIP][24] ([i915#5274]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-13/igt@kms_force_connector_basic@prune-stale-modes.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-13/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-9:          [SKIP][26] ([i915#5274]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-mtlp-6:         [SKIP][28] ([i915#5274] / [i915#9792]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-14:         [SKIP][30] ([i915#5274]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-11:         [SKIP][32] ([i915#5274]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-mtlp-8:         [SKIP][34] ([i915#5274]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-dg2-8:          [SKIP][36] ([i915#5274]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html
    - {bat-mtlp-9}:       [SKIP][38] ([i915#5274]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-9/igt@kms_force_connector_basic@prune-stale-modes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-9/igt@kms_force_connector_basic@prune-stale-modes.html
    - bat-arlh-3:         [SKIP][40] ([i915#12648]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12648]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12648
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9792]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792


Build changes
-------------

  * Linux: CI_DRM_16001 -> Patchwork_135397v5

  CI-20190529: 20190529
  CI_DRM_16001: 6834acba715b85cbecfeb660b9695806e98c9a0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8206: 48d7780a026179e5de232142df3ac59fec6487ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135397v5: 6834acba715b85cbecfeb660b9695806e98c9a0a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html

--===============2841513800914135886==
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
<tr><td><b>Series:</b></td><td>Add HDMI PLL Algorithm for SNPS/C10PHY (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135397/">https://patchwork.freedesktop.org/series/135397/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16001 -&gt; Patchwork_135397v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_135397v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_135397v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_135397v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135397v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203">i915#13203</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/fi-cfl-8109u/igt@i915_module_load@reload.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-9/igt@i915_pm_rpm@module-reload.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-9/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-13/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-13/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792">i915#9792</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-9/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-9/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12648">i915#12648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16001 -&gt; Patchwork_135397v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16001: 6834acba715b85cbecfeb660b9695806e98c9a0a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8206: 48d7780a026179e5de232142df3ac59fec6487ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135397v5: 6834acba715b85cbecfeb660b9695806e98c9a0a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2841513800914135886==--
