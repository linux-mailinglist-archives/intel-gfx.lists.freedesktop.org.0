Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 106A0A27701
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 17:20:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A8010E6AE;
	Tue,  4 Feb 2025 16:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DEB10E360;
 Tue,  4 Feb 2025 16:20:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2767255645009883387=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Enable_Aux_based_Nits_bri?=
 =?utf-8?q?ghtness_control_for_eDP_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Feb 2025 16:20:07 -0000
Message-ID: <173868600706.958797.15559215254186328112@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250204125009.2609726-1-suraj.kandpal@intel.com>
In-Reply-To: <20250204125009.2609726-1-suraj.kandpal@intel.com>
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

--===============2767255645009883387==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Aux based Nits brightness control for eDP (rev2)
URL   : https://patchwork.freedesktop.org/series/143909/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16063 -> Patchwork_143909v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143909v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143909v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-bsw-n3050 fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143909v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_143909v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [PASS][7] -> [ABORT][8] ([i915#13465]) +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live:
    - bat-twl-1:          NOTRUN -> [ABORT][9] ([i915#12919] / [i915#13503])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-twl-1:          [PASS][10] -> [ABORT][11] ([i915#12919])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - bat-dg2-13:         [PASS][12] -> [FAIL][13] ([i915#13590])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][14] -> [SKIP][15] ([i915#9197]) +2 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - {bat-mtlp-9}:       [DMESG-FAIL][18] ([i915#12061]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13465
  [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
  [i915#13590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13590
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16063 -> Patchwork_143909v2

  CI-20190529: 20190529
  CI_DRM_16063: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8223: ccfe042787b082c06402ff9af257f8338b8edd5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143909v2: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/index.html

--===============2767255645009883387==
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
<tr><td><b>Series:</b></td><td>Enable Aux based Nits brightness control for eDP (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143909/">https://patchwork.freedesktop.org/series/143909/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16063 -&gt; Patchwork_143909v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_143909v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_143909v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-bsw-n3050 fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_143909v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-adls-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html">FAIL</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143909v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13465">i915#13465</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503">i915#13503</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13590">i915#13590</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143909v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16063 -&gt; Patchwork_143909v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16063: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8223: ccfe042787b082c06402ff9af257f8338b8edd5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143909v2: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2767255645009883387==--
