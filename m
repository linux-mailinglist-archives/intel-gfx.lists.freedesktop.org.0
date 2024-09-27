Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B43DB988CCE
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 01:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F384C10ED34;
	Fri, 27 Sep 2024 23:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E09A910ED34;
 Fri, 27 Sep 2024 23:04:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8685411495773728770=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/selftests=3A_Imple?=
 =?utf-8?q?ment_frequency_logging_for_energy_reading_validation?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: sk.anirban@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 23:04:37 -0000
Message-ID: <172747827791.1113417.6521854691713974774@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240927191428.1534933-1-sk.anirban@intel.com>
In-Reply-To: <20240927191428.1534933-1-sk.anirban@intel.com>
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

--===============8685411495773728770==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Implement frequency logging for energy reading validation
URL   : https://patchwork.freedesktop.org/series/139235/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15453 -> Patchwork_139235v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139235v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139235v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139235v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_139235v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][3] -> [ABORT][4] ([i915#12216]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-8/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-11:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-11/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-dg2-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         NOTRUN -> [DMESG-WARN][7] ([i915#11349])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arls-1:         [DMESG-WARN][8] ([i915#10341] / [i915#12133]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-1/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-1/igt@i915_selftest@live.html
    - bat-mtlp-6:         [DMESG-WARN][10] ([i915#10341]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-6/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-mtlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-1:         [DMESG-WARN][12] ([i915#11349]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html
    - bat-mtlp-6:         [DMESG-WARN][14] ([i915#11349]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-2:         [ABORT][16] ([i915#12061]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-2/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-2/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - bat-arls-5:         [DMESG-WARN][18] ([i915#11637]) -> [DMESG-WARN][19] ([i915#11637] / [i915#1982])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-5/igt@i915_module_load@reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-5/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - bat-arls-2:         [ABORT][20] ([i915#12061] / [i915#12133]) -> [DMESG-WARN][21] ([i915#10341] / [i915#12133])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-2/igt@i915_selftest@live.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-2/igt@i915_selftest@live.html

  
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_15453 -> Patchwork_139235v1

  CI-20190529: 20190529
  CI_DRM_15453: 1522f131505272ed86f58e937f2481e4e3e144c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8036: 5aa244179b574e949a07ab1c7494033081735718 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_139235v1: 1522f131505272ed86f58e937f2481e4e3e144c1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/index.html

--===============8685411495773728770==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Implement frequency logging for energy reading validation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139235/">https://patchwork.freedesktop.org/series/139235/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15453 -&gt; Patchwork_139235v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139235v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139235v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139235v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139235v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) +1 other test abort</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-dg2-11/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-6/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-mtlp-6/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-2/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139235v1/bat-arls-2/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15453 -&gt; Patchwork_139235v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15453: 1522f131505272ed86f58e937f2481e4e3e144c1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8036: 5aa244179b574e949a07ab1c7494033081735718 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_139235v1: 1522f131505272ed86f58e937f2481e4e3e144c1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8685411495773728770==--
