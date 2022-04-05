Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E33A4F45A1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 00:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADFA10E569;
	Tue,  5 Apr 2022 22:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E38D110E569;
 Tue,  5 Apr 2022 22:52:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFE2DA363D;
 Tue,  5 Apr 2022 22:52:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5167599183914100124=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 05 Apr 2022 22:52:08 -0000
Message-ID: <164919912889.24158.7492162552821037027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Add_MMIO_range_restrictions_=28rev2=29?=
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

--===============5167599183914100124==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Add MMIO range restrictions (rev2)
URL   : https://patchwork.freedesktop.org/series/102168/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11458 -> Patchwork_22787
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22787 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22787, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/index.html

Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-hsw-4770 fi-bsw-cyan fi-bdw-samus fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22787:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-tgl-u2:          [PASS][1] -> [DMESG-WARN][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-u2/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-u2/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-rkl-11600:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-guc:         [PASS][5] -> [DMESG-WARN][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-adl-ddr5:        [PASS][7] -> [DMESG-WARN][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-adl-ddr5/igt@gem_exec_suspend@basic-s3@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-adl-ddr5/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-tgl-1115g4:      [PASS][9] -> [DMESG-WARN][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-rkl-guc:         [PASS][11] -> [SKIP][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-adl-ddr5:        [PASS][13] -> [SKIP][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-1115g4:      [PASS][15] -> [SKIP][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html
    - fi-tgl-u2:          [PASS][17] -> [SKIP][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-rte:
    - {fi-tgl-dsi}:       [PASS][19] -> [SKIP][20] +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html

  
Known issues
------------

  Here are the changes found in Patchwork_22787 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic@modeset:
    - fi-tgl-u2:          [PASS][21] -> [DMESG-WARN][22] ([i915#402])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-u2/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-u2/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5134]: https://gitlab.freedesktop.org/drm/intel/issues/5134


Build changes
-------------

  * Linux: CI_DRM_11458 -> Patchwork_22787

  CI-20190529: 20190529
  CI_DRM_11458: 7b4967c734a7c99ff69154d062a071181021e49d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6410: cc359d5d2d3fc8be50340ba0379bacaf5c37bc5f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22787: 8f8a6288aa4ad079aff7424e2ce230b8db77c79d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8f8a6288aa4a drm/i915/dmc: Add MMIO range restrictions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/index.html

--===============5167599183914100124==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Add MMIO range restrictions (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102168/">https://patchwork.freedesktop.org/series/102168/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11458 -&gt; Patchwork_22787</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22787 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22787, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/index.html</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-hsw-4770 fi-bsw-cyan fi-bdw-samus fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22787:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-u2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-u2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-rkl-guc/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-adl-ddr5/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-adl-ddr5/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-rkl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-adl-ddr5/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-u2/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-dsi/igt@i915_pm_rpm@basic-rte.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22787 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_busy@basic@modeset:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11458/fi-tgl-u2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22787/fi-tgl-u2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11458 -&gt; Patchwork_22787</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11458: 7b4967c734a7c99ff69154d062a071181021e49d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6410: cc359d5d2d3fc8be50340ba0379bacaf5c37bc5f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22787: 8f8a6288aa4ad079aff7424e2ce230b8db77c79d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8f8a6288aa4a drm/i915/dmc: Add MMIO range restrictions</p>

</body>
</html>

--===============5167599183914100124==--
