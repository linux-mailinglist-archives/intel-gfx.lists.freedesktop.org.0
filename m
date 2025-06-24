Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53626AE6262
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 12:27:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 533AF10E064;
	Tue, 24 Jun 2025 10:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EFF310E064;
 Tue, 24 Jun 2025 10:27:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8667771459736436827=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/display/dp=3A_Use_sta?=
 =?utf-8?q?tic_values_for_min=5Fhblank?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jun 2025 10:27:22 -0000
Message-ID: <175076084224.104590.12654509834217871554@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250624-min_hblank-v1-1-5c100e4a8b05@intel.com>
In-Reply-To: <20250624-min_hblank-v1-1-5c100e4a8b05@intel.com>
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

--===============8667771459736436827==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/display/dp: Use static values for min_hblank
URL   : https://patchwork.freedesktop.org/series/150681/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16747 -> Patchwork_150681v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_150681v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_150681v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): bat-arlh-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_150681v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-arls-5:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-arls-5/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-arls-5/igt@i915_selftest@live@gt_mocs.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [DMESG-FAIL][3] ([i915#12061]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-arls-5/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-arls-5/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_150681v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][5] -> [INCOMPLETE][6] ([i915#12904]) +1 other test incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-apl-1/igt@dmabuf@all-tests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live@active:
    - fi-bsw-nick:        [PASS][7] -> [DMESG-FAIL][8] ([i915#14421]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-bsw-nick/igt@i915_selftest@live@active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-bsw-nick/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-WARN][10] ([i915#13735]) +67 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061]) +1 other test dmesg-fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-dg2-9:          [PASS][13] -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-7567u:       [PASS][15] -> [DMESG-WARN][16] ([i915#13735] / [i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][17] -> [DMESG-WARN][18] ([i915#13735] / [i915#13890] / [i915#180]) +52 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][19] ([i915#12061]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-mtlp-8/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-adlp-9:         [ABORT][21] ([i915#14365]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-adlp-9/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-adlp-9/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][23] ([i915#12061]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [DMESG-WARN][25] ([i915#13736]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13736]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#14421]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14421
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180


Build changes
-------------

  * Linux: CI_DRM_16747 -> Patchwork_150681v1

  CI-20190529: 20190529
  CI_DRM_16747: da56936fad6f5e1d5f0cef8b50277bfb071eefe7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8422: 9b9c9136b17a2ed0680fb9589d51446c03698b37 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_150681v1: da56936fad6f5e1d5f0cef8b50277bfb071eefe7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/index.html

--===============8667771459736436827==
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
<tr><td><b>Series:</b></td><td>drm/display/dp: Use static values for min_hblank</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/150681/">https://patchwork.freedesktop.org/series/150681/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16747 -&gt; Patchwork_150681v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_150681v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_150681v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Missing    (2): bat-arlh-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_150681v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-arls-5/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-arls-5/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-arls-5/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-arls-5/igt@i915_selftest@live.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_150681v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-bsw-nick/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-bsw-nick/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14421">i915#14421</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) +67 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +52 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-adlp-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16747/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736">i915#13736</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150681v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16747 -&gt; Patchwork_150681v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16747: da56936fad6f5e1d5f0cef8b50277bfb071eefe7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8422: 9b9c9136b17a2ed0680fb9589d51446c03698b37 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_150681v1: da56936fad6f5e1d5f0cef8b50277bfb071eefe7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8667771459736436827==--
