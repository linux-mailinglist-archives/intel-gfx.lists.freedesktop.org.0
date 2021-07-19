Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171C83CEF88
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 01:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2666789CA4;
	Mon, 19 Jul 2021 23:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD54C89C69;
 Mon, 19 Jul 2021 23:01:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D653FAA916;
 Mon, 19 Jul 2021 23:01:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Mon, 19 Jul 2021 23:01:21 -0000
Message-ID: <162673568185.8478.15170903331662887628@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210719221352.3498-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210719221352.3498-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/step=3A_Add_macro_mag?=
 =?utf-8?q?ic_for_handling_steps?=
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
Content-Type: multipart/mixed; boundary="===============0706655051=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0706655051==
Content-Type: multipart/alternative;
 boundary="===============8998803841524385464=="

--===============8998803841524385464==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/step: Add macro magic for handling steps
URL   : https://patchwork.freedesktop.org/series/92735/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10354 -> Patchwork_20649
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/index.html

Known issues
------------

  Here are the changes found in Patchwork_20649 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([i915#2291])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10354/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-icl-y/igt@i915_selftest@live@gt_pm.html

  * igt@runner@aborted:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][5] ([i915#1814] / [i915#3363])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-kbl-7500u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][6] ([i915#1888]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10354/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718


Participating hosts (38 -> 35)
------------------------------

  Additional (1): fi-kbl-7500u 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10354 -> Patchwork_20649

  CI-20190529: 20190529
  CI_DRM_10354: 5b085adbd699d92f00f191551e35ed14dab681f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20649: e9092fbd9b753c01c1bfdd0d86dea376cbff4c32 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e9092fbd9b75 drm/i915/dmc: Change intel_get_stepping_info()
29663fa4daa2 drm/i915/step: Add macro magic for handling steps

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/index.html

--===============8998803841524385464==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/step: Add macro magic for handling steps</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92735/">https://patchwork.freedesktop.org/series/92735/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10354 -&gt; Patchwork_20649</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20649 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10354/fi-icl-y/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-icl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10354/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20649/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (1): fi-kbl-7500u <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10354 -&gt; Patchwork_20649</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10354: 5b085adbd699d92f00f191551e35ed14dab681f4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20649: e9092fbd9b753c01c1bfdd0d86dea376cbff4c32 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e9092fbd9b75 drm/i915/dmc: Change intel_get_stepping_info()<br />
29663fa4daa2 drm/i915/step: Add macro magic for handling steps</p>

</body>
</html>

--===============8998803841524385464==--

--===============0706655051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0706655051==--
