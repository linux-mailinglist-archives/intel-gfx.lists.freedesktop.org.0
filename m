Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B23D902645
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:06:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288FF10E1BE;
	Mon, 10 Jun 2024 16:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A237010E1BE;
 Mon, 10 Jun 2024 16:06:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5161277949529761981=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_add_missing_MODULE?=
 =?utf-8?q?=5FDESCRIPTION=28=29_macros?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeff Johnson" <quic_jjohnson@quicinc.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2024 16:06:38 -0000
Message-ID: <171803559865.32193.17540259198607373749@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240609-md-drivers-gpu-drm-v1-1-89e9a316d513@quicinc.com>
In-Reply-To: <20240609-md-drivers-gpu-drm-v1-1-89e9a316d513@quicinc.com>
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

--===============5161277949529761981==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: add missing MODULE_DESCRIPTION() macros
URL   : https://patchwork.freedesktop.org/series/134680/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14912 -> Patchwork_134680v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/index.html

Participating hosts (33 -> 32)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (2): bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_134680v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hangcheck:
    - {bat-mtlp-9}:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pm_rpm@basic-rte:
    - {bat-mtlp-9}:       [PASS][3] -> [CRASH][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html

  
Known issues
------------

  Here are the changes found in Patchwork_134680v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][7] +30 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-mtlp-9}:       [DMESG-WARN][8] ([i915#11009]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - {bat-mtlp-9}:       [SKIP][10] ([i915#10580]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp6:
    - {bat-mtlp-9}:       [DMESG-FAIL][12] ([i915#11009]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp7:
    - {bat-mtlp-9}:       [FAIL][14] ([i915#6121]) -> [PASS][15] +6 other tests pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#11320]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11320
  [i915#11327]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11327
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14912 -> Patchwork_134680v1

  CI-20190529: 20190529
  CI_DRM_14912: 3d66fb77a4da62a4282f60ddaab2bc5fabfe2fec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134680v1: 3d66fb77a4da62a4282f60ddaab2bc5fabfe2fec @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/index.html

--===============5161277949529761981==
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
<tr><td><b>Series:</b></td><td>drm: add missing MODULE_DESCRIPTION() macros</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134680/">https://patchwork.freedesktop.org/series/134680/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14912 -&gt; Patchwork_134680v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/index.html</p>
<h2>Participating hosts (33 -&gt; 32)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (2): bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_134680v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_pm_rpm@basic-rte.html">CRASH</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134680v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580">i915#10580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14912/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134680v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14912 -&gt; Patchwork_134680v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14912: 3d66fb77a4da62a4282f60ddaab2bc5fabfe2fec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134680v1: 3d66fb77a4da62a4282f60ddaab2bc5fabfe2fec @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5161277949529761981==--
