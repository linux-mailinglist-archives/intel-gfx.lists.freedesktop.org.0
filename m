Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC9D643B25
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 03:04:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FBD10E2F0;
	Tue,  6 Dec 2022 02:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 41CB010E2F0;
 Tue,  6 Dec 2022 02:04:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A171AA917;
 Tue,  6 Dec 2022 02:04:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5774190487354574224=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Tue, 06 Dec 2022 02:04:02 -0000
Message-ID: <167029224206.3370.18165132585189548644@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv9=2C1/1=5D_drm/i915/pxp=3A_Promote_pxp_su?=
 =?utf-8?q?bsystem_to_top-level_of_i915?=
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

--===============5774190487354574224==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v9,1/1] drm/i915/pxp: Promote pxp subsystem to top-level of i915
URL   : https://patchwork.freedesktop.org/series/111650/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12471 -> Patchwork_111650v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/index.html

Participating hosts (44 -> 29)
------------------------------

  Missing    (15): fi-kbl-soraka fi-rkl-11600 bat-kbl-2 bat-adls-5 fi-tgl-dsi bat-dg1-5 fi-bsw-n3050 bat-dg2-8 bat-adlp-9 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-jsl-3 bat-dg2-11 fi-bsw-nick 

Known issues
------------

  Here are the changes found in Patchwork_111650v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-FAIL][2] ([i915#5334])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12471/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][3] ([i915#2867]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12471/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-adl-ddr5:        [DMESG-WARN][5] ([i915#5591]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12471/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591


Build changes
-------------

  * Linux: CI_DRM_12471 -> Patchwork_111650v1

  CI-20190529: 20190529
  CI_DRM_12471: 7f8dc69dce0e934751fe31c01a6b6baa0c65bf23 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7083: c001793d5f22deb01918b6ba52af829794582df1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111650v1: 7f8dc69dce0e934751fe31c01a6b6baa0c65bf23 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f6c8c50321e3 drm/i915/pxp: Promote pxp subsystem to top-level of i915

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/index.html

--===============5774190487354574224==
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
<tr><td><b>Series:</b></td><td>series starting with [v9,1/1] drm/i915/pxp: Promote pxp subsystem to top-level of i915</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111650/">https://patchwork.freedesktop.org/series/111650/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12471 -&gt; Patchwork_111650v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/index.html</p>
<h2>Participating hosts (44 -&gt; 29)</h2>
<p>Missing    (15): fi-kbl-soraka fi-rkl-11600 bat-kbl-2 bat-adls-5 fi-tgl-dsi bat-dg1-5 fi-bsw-n3050 bat-dg2-8 bat-adlp-9 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-jsl-3 bat-dg2-11 fi-bsw-nick </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111650v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12471/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12471/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12471/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111650v1/fi-adl-ddr5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12471 -&gt; Patchwork_111650v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12471: 7f8dc69dce0e934751fe31c01a6b6baa0c65bf23 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7083: c001793d5f22deb01918b6ba52af829794582df1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111650v1: 7f8dc69dce0e934751fe31c01a6b6baa0c65bf23 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f6c8c50321e3 drm/i915/pxp: Promote pxp subsystem to top-level of i915</p>

</body>
</html>

--===============5774190487354574224==--
