Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7413431186
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 09:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49EE6E97D;
	Mon, 18 Oct 2021 07:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89D156E09F;
 Mon, 18 Oct 2021 07:43:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82744A7525;
 Mon, 18 Oct 2021 07:43:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1654383534208472045=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 07:43:48 -0000
Message-ID: <163454302852.27089.10318676224669785484@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
In-Reply-To: <20211018065207.30587-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_MIPI_DSI_video_mode_on_ADLP?=
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

--===============1654383534208472045==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable MIPI DSI video mode on ADLP
URL   : https://patchwork.freedesktop.org/series/95928/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10750 -> Patchwork_21364
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/index.html

Known issues
------------

  Here are the changes found in Patchwork_21364 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [PASS][3] -> [FAIL][4] ([i915#1888])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-kbl-soraka/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-cfl-8109u:       [PASS][7] -> [FAIL][8] ([i915#4165]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_flip@basic-plain-flip@c-dp2:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#295]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-n3050:       [DMESG-FAIL][11] ([i915#2927] / [i915#3428]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html

  
#### Warnings ####

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - fi-cfl-8109u:       [FAIL][13] ([i915#4165]) -> [DMESG-WARN][14] ([i915#295])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): bat-dg1-6 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan fi-kbl-7500u 


Build changes
-------------

  * Linux: CI_DRM_10750 -> Patchwork_21364

  CI-20190529: 20190529
  CI_DRM_10750: 7df3fd87528d6d245e5101cc32518ac649aeea98 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6251: 01b6be842d74fb86f3226acb4ddcb85231f4b161 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21364: ee4291972bfaccbc5346c168de21b715aeae867f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ee4291972bfa drm/i915/dsi: Ungate clock before enabling the phy
8aa18dc8fe29 drm/i915/dsi/xelpd: Disable DC states in Video mode
b325a854f9bc drm/i915/dsi/xelpd: Add DSI transcoder support
fded35f39772 drm/i915/dsi/xelpd: Fix the bit mask for wakeup GB

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/index.html

--===============1654383534208472045==
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
<tr><td><b>Series:</b></td><td>Enable MIPI DSI video mode on ADLP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95928/">https://patchwork.freedesktop.org/series/95928/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10750 -&gt; Patchwork_21364</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21364 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@late_gt_pm:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@basic-plain-flip@c-dp1:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10750/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21364/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): bat-dg1-6 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan fi-kbl-7500u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10750 -&gt; Patchwork_21364</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10750: 7df3fd87528d6d245e5101cc32518ac649aeea98 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6251: 01b6be842d74fb86f3226acb4ddcb85231f4b161 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21364: ee4291972bfaccbc5346c168de21b715aeae867f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ee4291972bfa drm/i915/dsi: Ungate clock before enabling the phy<br />
8aa18dc8fe29 drm/i915/dsi/xelpd: Disable DC states in Video mode<br />
b325a854f9bc drm/i915/dsi/xelpd: Add DSI transcoder support<br />
fded35f39772 drm/i915/dsi/xelpd: Fix the bit mask for wakeup GB</p>

</body>
</html>

--===============1654383534208472045==--
