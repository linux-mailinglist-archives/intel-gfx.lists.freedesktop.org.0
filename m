Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C943DB1A3
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 05:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D556E219;
	Fri, 30 Jul 2021 03:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 981E788DD0;
 Fri, 30 Jul 2021 03:01:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91CACAA3D8;
 Fri, 30 Jul 2021 03:01:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Fri, 30 Jul 2021 03:01:23 -0000
Message-ID: <162761408357.583.5616743899095033413@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210730020107.31415-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210730020107.31415-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Enable_GuC_based_power_management_features_?=
 =?utf-8?b?KHJldjMp?=
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
Content-Type: multipart/mixed; boundary="===============1366400885=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1366400885==
Content-Type: multipart/alternative;
 boundary="===============5041720144370879802=="

--===============5041720144370879802==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc/slpc: Enable GuC based power management features (rev3)
URL   : https://patchwork.freedesktop.org/series/93026/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10421 -> Patchwork_20747
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/index.html

Known issues
------------

  Here are the changes found in Patchwork_20747 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][2] ([i915#1888]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10421/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][4] ([i915#2782] / [i915#2940]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10421/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940


Participating hosts (39 -> 33)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10421 -> Patchwork_20747

  CI-20190529: 20190529
  CI_DRM_10421: a83353d64dcabdf80621473d180466b68a13e118 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6158: bb1c96b29234f86cd71d9cbd019aafada9097f24 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20747: 9392f48d015e72c9ed88f46ac4e60cc3b5be895b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9392f48d015e drm/i915/guc/rc: Setup and enable GuCRC feature
83f5699ada4c drm/i915/guc/slpc: Add SLPC selftest
afa82138da4b drm/i915/guc/slpc: Sysfs hooks for SLPC
fb5c6103202c drm/i915/guc/slpc: Cache platform frequency limits
4748e68935eb drm/i915/guc/slpc: Enable ARAT timer interrupt
7af039df9a62 drm/i915/guc/slpc: Add debugfs for SLPC info
9a634e03fda4 drm/i915/guc/slpc: Add get max/min freq hooks
5af7bb7f329e drm/i915/guc/slpc: Add methods to set min/max frequency
21e429061d72 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable
6828f376f921 drm/i915/guc/slpc: Enable SLPC and add related H2G events
301af1616f27 drm/i915/guc/slpc: Allocate, initialize and release SLPC
8f0084d87343 drm/i915/guc/slpc: Adding SLPC communication interfaces
3462b10667b7 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
987807ad0545 drm/i915/guc/slpc: Initial definitions for SLPC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/index.html

--===============5041720144370879802==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc/slpc: Enable GuC based power management features (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93026/">https://patchwork.freedesktop.org/series/93026/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10421 -&gt; Patchwork_20747</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20747 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_basic@query-info:<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10421/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10421/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20747/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10421 -&gt; Patchwork_20747</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10421: a83353d64dcabdf80621473d180466b68a13e118 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6158: bb1c96b29234f86cd71d9cbd019aafada9097f24 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20747: 9392f48d015e72c9ed88f46ac4e60cc3b5be895b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9392f48d015e drm/i915/guc/rc: Setup and enable GuCRC feature<br />
83f5699ada4c drm/i915/guc/slpc: Add SLPC selftest<br />
afa82138da4b drm/i915/guc/slpc: Sysfs hooks for SLPC<br />
fb5c6103202c drm/i915/guc/slpc: Cache platform frequency limits<br />
4748e68935eb drm/i915/guc/slpc: Enable ARAT timer interrupt<br />
7af039df9a62 drm/i915/guc/slpc: Add debugfs for SLPC info<br />
9a634e03fda4 drm/i915/guc/slpc: Add get max/min freq hooks<br />
5af7bb7f329e drm/i915/guc/slpc: Add methods to set min/max frequency<br />
21e429061d72 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable<br />
6828f376f921 drm/i915/guc/slpc: Enable SLPC and add related H2G events<br />
301af1616f27 drm/i915/guc/slpc: Allocate, initialize and release SLPC<br />
8f0084d87343 drm/i915/guc/slpc: Adding SLPC communication interfaces<br />
3462b10667b7 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled<br />
987807ad0545 drm/i915/guc/slpc: Initial definitions for SLPC</p>

</body>
</html>

--===============5041720144370879802==--

--===============1366400885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1366400885==--
