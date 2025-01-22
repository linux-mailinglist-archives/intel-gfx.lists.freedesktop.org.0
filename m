Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A896EA199EE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 21:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5BF10E012;
	Wed, 22 Jan 2025 20:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58DB210E012;
 Wed, 22 Jan 2025 20:38:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2198887667465759042=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_series_starting_with_=5B1?=
 =?utf-8?q?/3=5D_drm/i915/display=3A_Move_shutdown_sequences_under_display_d?=
 =?utf-8?q?river_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2025 20:38:41 -0000
Message-ID: <173757832135.3205378.16158807773510660316@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250122104049.388340-1-rodrigo.vivi@intel.com>
In-Reply-To: <20250122104049.388340-1-rodrigo.vivi@intel.com>
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

--===============2198887667465759042==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/display: Move shutdown sequences under display driver (rev2)
URL   : https://patchwork.freedesktop.org/series/143844/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16002 -> Patchwork_143844v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143844v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143844v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/index.html

Participating hosts (43 -> 43)
------------------------------

  Additional (1): fi-ivb-3770 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143844v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2] +2 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [ABORT][3] ([i915#13203]) -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/fi-pnv-d510/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/fi-pnv-d510/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_143844v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - bat-dg2-14:         [PASS][5] -> [ABORT][6] ([i915#13496])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-dg2-14/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-dg2-14/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][7] -> [FAIL][8] ([i915#13401])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][9] -> [FAIL][10] ([i915#13401])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][11] -> [FAIL][12] ([i915#13401])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-adlp-9:         [PASS][13] -> [ABORT][14] ([i915#9413]) +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-adlp-9/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-adlp-9/igt@i915_selftest@live.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-cfl-8109u:       [PASS][15] -> [DMESG-WARN][16] ([i915#13445])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-vga-1:
    - fi-ivb-3770:        NOTRUN -> [SKIP][17] +23 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-vga-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-adlp-6:         [ABORT][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-adlp-6/igt@i915_selftest@live.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@guc:
    - bat-adlp-6:         [ABORT][20] ([i915#13399]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-adlp-6/igt@i915_selftest@live@guc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-adlp-6/igt@i915_selftest@live@guc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#13445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13445
  [i915#13496]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13496
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_16002 -> Patchwork_143844v2

  CI-20190529: 20190529
  CI_DRM_16002: d577d9e67e5ac149fcd4442327210b831cddb308 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8206: 48d7780a026179e5de232142df3ac59fec6487ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143844v2: d577d9e67e5ac149fcd4442327210b831cddb308 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/index.html

--===============2198887667465759042==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/display: Move shutdown sequences under display driver (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143844/">https://patchwork.freedesktop.org/series/143844/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16002 -&gt; Patchwork_143844v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_143844v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_143844v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>Additional (1): fi-ivb-3770 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_143844v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203">i915#13203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143844v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-dg2-14/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-dg2-14/igt@i915_module_load@reload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13496">i915#13496</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13445">i915#13445</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-vga-1:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-vga-1.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-adlp-6/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16002/bat-adlp-6/igt@i915_selftest@live@guc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143844v2/bat-adlp-6/igt@i915_selftest@live@guc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16002 -&gt; Patchwork_143844v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16002: d577d9e67e5ac149fcd4442327210b831cddb308 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8206: 48d7780a026179e5de232142df3ac59fec6487ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143844v2: d577d9e67e5ac149fcd4442327210b831cddb308 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2198887667465759042==--
