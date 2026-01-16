Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6491ED38920
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 23:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14C310E27F;
	Fri, 16 Jan 2026 22:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE7410E27F;
 Fri, 16 Jan 2026 22:18:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6863071002883797673=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/selftests=3A_Def?=
 =?utf-8?q?er_signalling_the_request_fence_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Niemiec" <krzysztof.niemiec@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jan 2026 22:18:23 -0000
Message-ID: <176860190369.163695.7180068291137729077@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260116193354.80806-2-krzysztof.niemiec@intel.com>
In-Reply-To: <20260116193354.80806-2-krzysztof.niemiec@intel.com>
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

--===============6863071002883797673==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Defer signalling the request fence (rev5)
URL   : https://patchwork.freedesktop.org/series/156505/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17836 -> Patchwork_156505v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_156505v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_156505v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_156505v5:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2] +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-hsw-4770/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-hsw-4770/igt@i915_selftest@live.html
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4] +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-ivb-3770/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-ivb-3770/igt@i915_selftest@live.html
    - fi-elk-e7500:       [PASS][5] -> [DMESG-FAIL][6] +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-elk-e7500/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-elk-e7500/igt@i915_selftest@live.html
    - fi-pnv-d510:        [PASS][7] -> [DMESG-FAIL][8] +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-pnv-d510/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-pnv-d510/igt@i915_selftest@live.html
    - fi-kbl-x1275:       [PASS][9] -> [DMESG-FAIL][10] +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-kbl-x1275/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-kbl-x1275/igt@i915_selftest@live.html
    - fi-kbl-8809g:       [PASS][11] -> [DMESG-FAIL][12] +1 other test dmesg-fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-kbl-8809g/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-kbl-8809g/igt@i915_selftest@live.html
    - fi-ilk-650:         [PASS][13] -> [DMESG-FAIL][14] +1 other test dmesg-fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-ilk-650/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-ilk-650/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-kbl-2:          [PASS][15] -> [DMESG-FAIL][16] +1 other test dmesg-fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-kbl-2/igt@i915_selftest@live@active.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-kbl-2/igt@i915_selftest@live@active.html

  
Known issues
------------

  Here are the changes found in Patchwork_156505v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][17] -> [DMESG-FAIL][18] ([i915#12061]) +1 other test dmesg-fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-mtlp-8/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-jsl-1:          [PASS][19] -> [DMESG-FAIL][20] ([i915#15281]) +1 other test dmesg-fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-jsl-1/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-jsl-1/igt@i915_selftest@live.html
    - fi-bsw-n3050:       [PASS][21] -> [DMESG-FAIL][22] ([i915#14808]) +1 other test dmesg-fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-bsw-n3050/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-bsw-n3050/igt@i915_selftest@live.html
    - fi-cfl-guc:         [PASS][23] -> [DMESG-FAIL][24] ([i915#14808]) +1 other test dmesg-fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-cfl-guc/igt@i915_selftest@live.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-cfl-guc/igt@i915_selftest@live.html
    - bat-adlp-6:         [PASS][25] -> [DMESG-WARN][26] ([i915#14872]) +1 other test dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-adlp-6/igt@i915_selftest@live.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - fi-cfl-8700k:       [PASS][27] -> [DMESG-FAIL][28] ([i915#14808]) +1 other test dmesg-fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-cfl-8700k/igt@i915_selftest@live@active.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-cfl-8700k/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][29] -> [DMESG-FAIL][30] ([i915#12061]) +1 other test dmesg-fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][31] ([i915#12061]) -> [PASS][32] +1 other test pass
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_pm_rpm@basic-rte:
    - bat-rpls-4:         [DMESG-WARN][33] ([i915#13400]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#14808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808
  [i915#14872]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14872
  [i915#15281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15281


Build changes
-------------

  * Linux: CI_DRM_17836 -> Patchwork_156505v5

  CI-20190529: 20190529
  CI_DRM_17836: 0f3aa82816dce3da347333a317ea112d16e5d237 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8704: 8704
  Patchwork_156505v5: 0f3aa82816dce3da347333a317ea112d16e5d237 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/index.html

--===============6863071002883797673==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Defer signalling the request fence (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/156505/">https://patchwork.freedesktop.org/series/156505/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17836 -&gt; Patchwork_156505v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_156505v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_156505v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_156505v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-hsw-4770/igt@i915_selftest@live.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-ivb-3770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-ivb-3770/igt@i915_selftest@live.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-elk-e7500/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-elk-e7500/igt@i915_selftest@live.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-pnv-d510/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-pnv-d510/igt@i915_selftest@live.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-kbl-x1275/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-kbl-x1275/igt@i915_selftest@live.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-kbl-8809g/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-kbl-8809g/igt@i915_selftest@live.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-ilk-650/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-ilk-650/igt@i915_selftest@live.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-kbl-2/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-kbl-2/igt@i915_selftest@live@active.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_156505v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15281">i915#15281</a>) +1 other test dmesg-fail</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-bsw-n3050/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-bsw-n3050/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a>) +1 other test dmesg-fail</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-cfl-guc/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-cfl-guc/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a>) +1 other test dmesg-fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-adlp-6/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14872">i915#14872</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/fi-cfl-8700k/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/fi-cfl-8700k/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-rte:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17836/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156505v5/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17836 -&gt; Patchwork_156505v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17836: 0f3aa82816dce3da347333a317ea112d16e5d237 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8704: 8704<br />
  Patchwork_156505v5: 0f3aa82816dce3da347333a317ea112d16e5d237 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6863071002883797673==--
