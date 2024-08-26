Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFBF95F7EB
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 19:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6002610E27C;
	Mon, 26 Aug 2024 17:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B2510E27B;
 Mon, 26 Aug 2024 17:23:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2890811128576360003=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Use_kmemdup?=
 =?utf-8?q?=5Farray_instead_of_kmemdup_for_multiple_allocation_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yu Jiaoliang" <yujiaoliang@vivo.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2024 17:23:31 -0000
Message-ID: <172469301149.784925.14447394997987569239@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240821024145.3775302-1-yujiaoliang@vivo.com>
In-Reply-To: <20240821024145.3775302-1-yujiaoliang@vivo.com>
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

--===============2890811128576360003==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Use kmemdup_array instead of kmemdup for multiple allocation (rev3)
URL   : https://patchwork.freedesktop.org/series/137538/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15293 -> Patchwork_137538v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_137538v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_137538v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-jsl-1 fi-snb-2520m fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_137538v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - bat-arls-1:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/bat-arls-1/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/bat-arls-1/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_137538v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4] ([i915#11621] / [i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [PASS][5] -> [DMESG-WARN][6] ([i915#11349])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-hdmi-a-2:
    - bat-arls-1:         [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/bat-arls-1/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-hdmi-a-2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/bat-arls-1/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-hdmi-a-2.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-WARN][10] ([i915#11621]) +70 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-adlp-6:         [INCOMPLETE][11] ([i915#9413]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/bat-adlp-6/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/bat-adlp-6/igt@i915_selftest@live@hangcheck.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15293 -> Patchwork_137538v3

  CI-20190529: 20190529
  CI_DRM_15293: ebf52522dc2395b7c809271ffdb908c9af876f4f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7991: e5cbe548dbd6ee44200a83745a605643a1a4c714 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137538v3: ebf52522dc2395b7c809271ffdb908c9af876f4f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/index.html

--===============2890811128576360003==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Use kmemdup_array instead of kmemdup for multiple allocation (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137538/">https://patchwork.freedesktop.org/series/137538/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15293 -&gt; Patchwork_137538v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_137538v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_137538v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-jsl-1 fi-snb-2520m fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_137538v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/bat-arls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/bat-arls-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137538v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/bat-arls-1/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/bat-arls-1/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-hdmi-a-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +70 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15293/bat-adlp-6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137538v3/bat-adlp-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15293 -&gt; Patchwork_137538v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15293: ebf52522dc2395b7c809271ffdb908c9af876f4f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7991: e5cbe548dbd6ee44200a83745a605643a1a4c714 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137538v3: ebf52522dc2395b7c809271ffdb908c9af876f4f @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2890811128576360003==--
