Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B935E3D67CA
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 21:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385C56ECE7;
	Mon, 26 Jul 2021 19:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E1AC6ECE7;
 Mon, 26 Jul 2021 19:59:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E581A73C7;
 Mon, 26 Jul 2021 19:59:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Mon, 26 Jul 2021 19:59:15 -0000
Message-ID: <162732955531.2613.14674076527280058693@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Enable_GuC_based_power_management_features?=
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
Content-Type: multipart/mixed; boundary="===============1093397905=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1093397905==
Content-Type: multipart/alternative;
 boundary="===============3897270380882564324=="

--===============3897270380882564324==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc/slpc: Enable GuC based power management features
URL   : https://patchwork.freedesktop.org/series/93026/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10396 -> Patchwork_20707
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10396 and Patchwork_20707:

### New IGT tests (1) ###

  * igt@i915_selftest@live@slpc:
    - Statuses : 29 pass(s)
    - Exec time: [0.39, 3.71] s

  

Known issues
------------

  Here are the changes found in Patchwork_20707 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2] ([i915#155])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10396/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
    - fi-tgl-1115g4:      [PASS][3] -> [FAIL][4] ([i915#1888])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10396/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][5] ([i915#1602] / [i915#2029])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [DMESG-FAIL][6] ([i915#165]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10396/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10396 -> Patchwork_20707

  CI-20190529: 20190529
  CI_DRM_10396: a119adff94c9db72f198ddde3dbb0a3e51c56618 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6151: c3170c2d3744521b8351a4b9c579792bc9a5f835 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20707: bd5302518b8ef97301b61ce78b2cdd2da440b6da @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bd5302518b8e drm/i915/guc/rc: Setup and enable GUCRC feature
025f555a3e2e drm/i915/guc/slpc: Add SLPC selftest
8ed3bd759132 drm/i915/guc/slpc: Sysfs hooks for SLPC
edec3303a3f8 drm/i915/guc/slpc: Cache platform frequency limits
98238144dd09 drm/i915/guc/slpc: Enable ARAT timer interrupt
8772da814cc8 drm/i915/guc/slpc: Add debugfs for SLPC info
9fda8c1773ef drm/i915/guc/slpc: Add get max/min freq hooks
ab9599b22ee7 drm/i915/guc/slpc: Add methods to set min/max frequency
c60c975349d2 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable
b263a074ec5f drm/i915/guc/slpc: Enable SLPC and add related H2G events
dfa70375b4e0 drm/i915/guc/slpc: Allocate, initialize and release SLPC
c60f3b51410d drm/i915/guc/slpc: Adding SLPC communication interfaces
9f75f622e733 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
b1eed2ee0dd1 drm/i915/guc/slpc: Initial definitions for SLPC
e739b51dc573 drm/i915/guc: SQUASHED PATCH - DO NOT REVIEW

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/index.html

--===============3897270380882564324==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc/slpc: Enable GuC based power management features</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93026/">https://patchwork.freedesktop.org/series/93026/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10396 -&gt; Patchwork_20707</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10396 and Patchwork_20707:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>Statuses : 29 pass(s)</li>
<li>Exec time: [0.39, 3.71] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20707 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10396/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10396/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@hdmi-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10396/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20707/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10396 -&gt; Patchwork_20707</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10396: a119adff94c9db72f198ddde3dbb0a3e51c56618 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6151: c3170c2d3744521b8351a4b9c579792bc9a5f835 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20707: bd5302518b8ef97301b61ce78b2cdd2da440b6da @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bd5302518b8e drm/i915/guc/rc: Setup and enable GUCRC feature<br />
025f555a3e2e drm/i915/guc/slpc: Add SLPC selftest<br />
8ed3bd759132 drm/i915/guc/slpc: Sysfs hooks for SLPC<br />
edec3303a3f8 drm/i915/guc/slpc: Cache platform frequency limits<br />
98238144dd09 drm/i915/guc/slpc: Enable ARAT timer interrupt<br />
8772da814cc8 drm/i915/guc/slpc: Add debugfs for SLPC info<br />
9fda8c1773ef drm/i915/guc/slpc: Add get max/min freq hooks<br />
ab9599b22ee7 drm/i915/guc/slpc: Add methods to set min/max frequency<br />
c60c975349d2 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable<br />
b263a074ec5f drm/i915/guc/slpc: Enable SLPC and add related H2G events<br />
dfa70375b4e0 drm/i915/guc/slpc: Allocate, initialize and release SLPC<br />
c60f3b51410d drm/i915/guc/slpc: Adding SLPC communication interfaces<br />
9f75f622e733 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled<br />
b1eed2ee0dd1 drm/i915/guc/slpc: Initial definitions for SLPC<br />
e739b51dc573 drm/i915/guc: SQUASHED PATCH - DO NOT REVIEW</p>

</body>
</html>

--===============3897270380882564324==--

--===============1093397905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1093397905==--
