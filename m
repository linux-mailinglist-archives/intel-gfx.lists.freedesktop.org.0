Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B85FCA18747
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 22:29:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4788B10E2D0;
	Tue, 21 Jan 2025 21:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9508F10E2D0;
 Tue, 21 Jan 2025 21:29:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0468013683561871052=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/cmtg=3A_Disable_?=
 =?utf-8?q?the_CMTG_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2025 21:29:38 -0000
Message-ID: <173749497860.2760265.1169233750767476035@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250121202806.76103-1-gustavo.sousa@intel.com>
In-Reply-To: <20250121202806.76103-1-gustavo.sousa@intel.com>
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

--===============0468013683561871052==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/cmtg: Disable the CMTG (rev7)
URL   : https://patchwork.freedesktop.org/series/142947/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15994 -> Patchwork_142947v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_142947v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_142947v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/index.html

Participating hosts (39 -> 39)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_142947v7:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-arlh-3:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-arlh-3/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-arlh-3/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-twl-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-twl-1/igt@i915_module_load@load.html
    - bat-adlp-6:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-adlp-6/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-adlp-6/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-twl-2/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-twl-2/igt@i915_module_load@load.html
    - bat-mtlp-8:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-mtlp-8/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-mtlp-8/igt@i915_module_load@load.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:
    - bat-rplp-1:         [PASS][11] -> [INCOMPLETE][12] +1 other test incomplete
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-rplp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-rplp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_142947v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][13] -> [FAIL][14] ([i915#13401])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-apl-1:          [PASS][15] -> [FAIL][16] ([i915#13401])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-apl-1/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-apl-1/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][17] -> [FAIL][18] ([i915#13401])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][19] -> [SKIP][20] ([i915#9197]) +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-adlp-9:         [INCOMPLETE][21] ([i915#9413]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-adlp-9/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-adlp-9/igt@i915_selftest@live.html

  
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15994 -> Patchwork_142947v7

  CI-20190529: 20190529
  CI_DRM_15994: 400d5a3912504bf740150101c9e5884eae2630ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8203: 3dce04be4ed4c0e729d80f70caff8ae8a869b5c0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142947v7: 400d5a3912504bf740150101c9e5884eae2630ea @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/index.html

--===============0468013683561871052==
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
<tr><td><b>Series:</b></td><td>drm/i915/cmtg: Disable the CMTG (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/142947/">https://patchwork.freedesktop.org/series/142947/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15994 -&gt; Patchwork_142947v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_142947v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_142947v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_142947v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-arlh-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-arlh-3/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-rplp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-rplp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_142947v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-apl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-apl-1/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-adlp-9/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15994 -&gt; Patchwork_142947v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15994: 400d5a3912504bf740150101c9e5884eae2630ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8203: 3dce04be4ed4c0e729d80f70caff8ae8a869b5c0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_142947v7: 400d5a3912504bf740150101c9e5884eae2630ea @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0468013683561871052==--
