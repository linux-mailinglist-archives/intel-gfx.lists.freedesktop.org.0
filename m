Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC193688948
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 22:53:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C00B10E651;
	Thu,  2 Feb 2023 21:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38EB410E65F;
 Thu,  2 Feb 2023 21:53:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3255AA03D2;
 Thu,  2 Feb 2023 21:53:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4438980284688033814=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 02 Feb 2023 21:53:53 -0000
Message-ID: <167537483317.11116.11937114014221378637@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1675370801.git.jani.nikula@intel.com>
In-Reply-To: <cover.1675370801.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_allocate_dmc_struct_dynamically?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4438980284688033814==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: allocate dmc struct dynamically
URL   : https://patchwork.freedesktop.org/series/113622/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12686 -> Patchwork_113622v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_113622v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_113622v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/index.html

Participating hosts (26 -> 25)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113622v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-dg1-6:          [PASS][1] -> [SKIP][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-dg1-6/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-dg1-6/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-5:          [PASS][3] -> [SKIP][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-dg1-5/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@dmabuf@all-tests@dma_fence:
    - {bat-adln-1}:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - {bat-adln-1}:       [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {bat-adlm-1}:       [PASS][9] -> [SKIP][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-jsl-1}:        [PASS][11] -> [SKIP][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-rpls-1}:       [PASS][13] -> [SKIP][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-adlp-9}:       [PASS][15] -> [SKIP][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - {bat-rplp-1}:       [PASS][17] -> [SKIP][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html
    - {bat-jsl-3}:        [PASS][19] -> [SKIP][20] +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-jsl-3/igt@i915_pm_rpm@basic-rte.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-jsl-3/igt@i915_pm_rpm@basic-rte.html
    - {bat-rpls-2}:       [PASS][21] -> [SKIP][22] +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-rpls-2/igt@i915_pm_rpm@basic-rte.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-rpls-2/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-adlp-6}:       [PASS][23] -> [SKIP][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
    - {bat-dg1-7}:        [PASS][25] -> [SKIP][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - {bat-adln-1}:       [PASS][27] -> [SKIP][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adln-1/igt@i915_pm_rpm@module-reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adln-1/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_113622v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [PASS][29] -> [SKIP][30] ([fdo#109271]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-skl-6600u:       [PASS][31] -> [SKIP][32] ([fdo#109271]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-glk-j4005:       [PASS][33] -> [SKIP][34] ([fdo#109271]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [PASS][35] -> [SKIP][36] ([fdo#109271]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-apl-guc:         [PASS][37] -> [SKIP][38] ([fdo#109271]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-7567u:       [PASS][39] -> [SKIP][40] ([fdo#109271]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7714]: https://gitlab.freedesktop.org/drm/intel/issues/7714


Build changes
-------------

  * Linux: CI_DRM_12686 -> Patchwork_113622v1

  CI-20190529: 20190529
  CI_DRM_12686: 0b50be56bb4863e926efa2d89754d654fad828b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7144: cda71bf809b981a646270963d6b1ccee4fd4643b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113622v1: 0b50be56bb4863e926efa2d89754d654fad828b9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5b50147904e5 drm/i915/dmc: allocate dmc structure dynamically
276afb42bb4e drm/i915/dmc: drop "ucode" from function names
a3261fbce807 drm/i915/power: move dc state members to struct i915_power_domains

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/index.html

--===============4438980284688033814==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: allocate dmc struct dynamically</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113622/">https://patchwork.freedesktop.org/series/113622/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12686 -&gt; Patchwork_113622v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_113622v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_113622v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/index.html</p>
<h2>Participating hosts (26 -&gt; 25)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113622v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-dg1-6/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-dg1-6/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adlm-1/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-rpls-1/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-jsl-3/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-jsl-3/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-rpls-2/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-rpls-2/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/bat-adln-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/bat-adln-1/igt@i915_pm_rpm@module-reload.html">SKIP</a> +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113622v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-glk-j4005/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12686/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113622v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12686 -&gt; Patchwork_113622v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12686: 0b50be56bb4863e926efa2d89754d654fad828b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7144: cda71bf809b981a646270963d6b1ccee4fd4643b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113622v1: 0b50be56bb4863e926efa2d89754d654fad828b9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5b50147904e5 drm/i915/dmc: allocate dmc structure dynamically<br />
276afb42bb4e drm/i915/dmc: drop "ucode" from function names<br />
a3261fbce807 drm/i915/power: move dc state members to struct i915_power_domains</p>

</body>
</html>

--===============4438980284688033814==--
