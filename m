Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F333A17202
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 18:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA2F610E462;
	Mon, 20 Jan 2025 17:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C22810E038;
 Mon, 20 Jan 2025 17:35:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0690781792015299699=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/selftests=3A_Cor?=
 =?utf-8?q?rect_frequency_handling_in_RPS_power_measurement_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sk Anirban" <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2025 17:35:20 -0000
Message-ID: <173739452023.2237262.1694032884117317712@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250113095912.356147-1-sk.anirban@intel.com>
In-Reply-To: <20250113095912.356147-1-sk.anirban@intel.com>
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

--===============0690781792015299699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Correct frequency handling in RPS power measurement (rev4)
URL   : https://patchwork.freedesktop.org/series/143213/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15984 -> Patchwork_143213v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143213v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143213v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/index.html

Participating hosts (41 -> 41)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143213v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@reset:
    - bat-twl-2:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-twl-2/igt@i915_selftest@live@reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_143213v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/fi-pnv-d510/igt@debugfs_test@basic-hwmon.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        NOTRUN -> [ABORT][3] ([i915#13169])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][4] -> [FAIL][5] ([i915#13401])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][6] -> [FAIL][7] ([i915#13401])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-twl-2:          NOTRUN -> [ABORT][8] ([i915#12435] / [i915#12919])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-twl-2/igt@i915_selftest@live.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][9] -> [SKIP][10] ([i915#9197]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][11] ([i915#13203]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/fi-pnv-d510/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][13] ([i915#12061]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-mtlp-8/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-mtlp-8/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15984 -> Patchwork_143213v4

  CI-20190529: 20190529
  CI_DRM_15984: 112cf3f777a01cf551c69d74d43f6c2732981706 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8199: 8df1895672949617992cddbc33c5d683865879e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143213v4: 112cf3f777a01cf551c69d74d43f6c2732981706 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/index.html

--===============0690781792015299699==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Correct frequency handling in RPS power measurement (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143213/">https://patchwork.freedesktop.org/series/143213/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15984 -&gt; Patchwork_143213v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_143213v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_143213v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_143213v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-twl-2/igt@i915_selftest@live@reset.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143213v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/fi-pnv-d510/igt@debugfs_test@basic-hwmon.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169">i915#13169</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-adls-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-adls-6/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203">i915#13203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15984/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143213v4/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15984 -&gt; Patchwork_143213v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15984: 112cf3f777a01cf551c69d74d43f6c2732981706 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8199: 8df1895672949617992cddbc33c5d683865879e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143213v4: 112cf3f777a01cf551c69d74d43f6c2732981706 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0690781792015299699==--
