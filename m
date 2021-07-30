Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2199F3DC013
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 22:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08276E3C6;
	Fri, 30 Jul 2021 20:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B9276E3C6;
 Fri, 30 Jul 2021 20:59:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 223F9AA01E;
 Fri, 30 Jul 2021 20:59:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2932061402843093553=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jul 2021 20:59:38 -0000
Message-ID: <162767877811.583.2966715998614411861@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Enable_GuC_based_power_management_features_?=
 =?utf-8?b?KHJldjQp?=
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

--===============2932061402843093553==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc/slpc: Enable GuC based power management features (rev4)
URL   : https://patchwork.freedesktop.org/series/93026/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10427 -> Patchwork_20752
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/index.html

Known issues
------------

  Here are the changes found in Patchwork_20752 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cml-u2:          [PASS][1] -> [DMESG-FAIL][2] ([i915#2291] / [i915#541])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][3] ([i915#1888]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@workarounds:
    - fi-tgl-u2:          [DMESG-WARN][5] ([i915#2867]) -> [PASS][6] +16 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-u2/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/fi-tgl-u2/igt@i915_selftest@live@workarounds.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (37 -> 32)
------------------------------

  Missing    (5): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10427 -> Patchwork_20752

  CI-20190529: 20190529
  CI_DRM_10427: e5efc20bce6b7996df9bdc720796f8713a45701a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20752: e5ab6462774d28ec4e86d0e98622a505c52946f6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e5ab6462774d drm/i915/guc/rc: Setup and enable GuCRC feature
26c4fefbf08d drm/i915/guc/slpc: Add SLPC selftest
54f6ba8db318 drm/i915/guc/slpc: Sysfs hooks for SLPC
530c47730a0d drm/i915/guc/slpc: Cache platform frequency limits
dc3e37f84481 drm/i915/guc/slpc: Enable ARAT timer interrupt
3a2e114f13ff drm/i915/guc/slpc: Add debugfs for SLPC info
ceb4ed85d8f8 drm/i915/guc/slpc: Add get max/min freq hooks
e691b626bcee drm/i915/guc/slpc: Add methods to set min/max frequency
131306f42919 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable
de4219f71486 drm/i915/guc/slpc: Enable SLPC and add related H2G events
5440b25b17a1 drm/i915/guc/slpc: Allocate, initialize and release SLPC
c69d7f1dd232 drm/i915/guc/slpc: Adding SLPC communication interfaces
0f547d696791 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
8fae42887a4e drm/i915/guc/slpc: Initial definitions for SLPC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/index.html

--===============2932061402843093553==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc/slpc: Enable GuC based power management features (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93026/">https://patchwork.freedesktop.org/series/93026/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10427 -&gt; Patchwork_20752</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20752 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20752/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">PASS</a> +16 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 32)</h2>
<p>Missing    (5): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10427 -&gt; Patchwork_20752</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10427: e5efc20bce6b7996df9bdc720796f8713a45701a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20752: e5ab6462774d28ec4e86d0e98622a505c52946f6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e5ab6462774d drm/i915/guc/rc: Setup and enable GuCRC feature<br />
26c4fefbf08d drm/i915/guc/slpc: Add SLPC selftest<br />
54f6ba8db318 drm/i915/guc/slpc: Sysfs hooks for SLPC<br />
530c47730a0d drm/i915/guc/slpc: Cache platform frequency limits<br />
dc3e37f84481 drm/i915/guc/slpc: Enable ARAT timer interrupt<br />
3a2e114f13ff drm/i915/guc/slpc: Add debugfs for SLPC info<br />
ceb4ed85d8f8 drm/i915/guc/slpc: Add get max/min freq hooks<br />
e691b626bcee drm/i915/guc/slpc: Add methods to set min/max frequency<br />
131306f42919 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable<br />
de4219f71486 drm/i915/guc/slpc: Enable SLPC and add related H2G events<br />
5440b25b17a1 drm/i915/guc/slpc: Allocate, initialize and release SLPC<br />
c69d7f1dd232 drm/i915/guc/slpc: Adding SLPC communication interfaces<br />
0f547d696791 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled<br />
8fae42887a4e drm/i915/guc/slpc: Initial definitions for SLPC</p>

</body>
</html>

--===============2932061402843093553==--
