Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2823FFE29
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 12:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615C16E0AB;
	Fri,  3 Sep 2021 10:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA2FB6E0AB;
 Fri,  3 Sep 2021 10:24:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E22A0A00CC;
 Fri,  3 Sep 2021 10:24:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0839808474938806556=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ayaz A Siddiqui" <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 Sep 2021 10:24:15 -0000
Message-ID: <163066465588.21413.3905727866525642010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210903092153.535736-1-ayaz.siddiqui@intel.com>
In-Reply-To: <20210903092153.535736-1-ayaz.siddiqui@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Initialize_unused_MOCS_entries_to_L3=5FWB?=
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

--===============0839808474938806556==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Initialize unused MOCS entries to L3_WB
URL   : https://patchwork.freedesktop.org/series/94315/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10549 -> Patchwork_20950
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/index.html

Known issues
------------

  Here are the changes found in Patchwork_20950 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][2] -> [INCOMPLETE][3] ([i915#2940])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10549/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][4] ([i915#3958])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#1436] / [i915#2722] / [i915#3428])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [DMESG-WARN][6] ([i915#3925]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10549/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958


Participating hosts (46 -> 38)
------------------------------

  Missing    (8): bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus fi-bsw-nick bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10549 -> Patchwork_20950

  CI-20190529: 20190529
  CI_DRM_10549: cd8e346a0b56ce66f94a9908c7a068bbee8f1829 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20950: e01543cc506e1d2393043b1a9d8816c343bd53c2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e01543cc506e drm/i915/gt: Initialize L3CC table in mocs init
effcee0badb7 drm/i915/gt: Initialize unused MOCS entries with device specific values
7e4b1d648a16 drm/i915/gt: Set BLIT_CCTL reg to un-cached
32be00b75838 drm/i915/gt: Set CMD_CCTL to UC for Gen12 Onward
a878ef44120d drm/i915/gt: Add support of mocs propagation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/index.html

--===============0839808474938806556==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Initialize unused MOCS entries to L3_WB</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94315/">https://patchwork.freedesktop.org/series/94315/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10549 -&gt; Patchwork_20950</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20950 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10549/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10549/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20950/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 38)</h2>
<p>Missing    (8): bat-adls-5 fi-hsw-4200u bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus fi-bsw-nick bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10549 -&gt; Patchwork_20950</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10549: cd8e346a0b56ce66f94a9908c7a068bbee8f1829 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20950: e01543cc506e1d2393043b1a9d8816c343bd53c2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e01543cc506e drm/i915/gt: Initialize L3CC table in mocs init<br />
effcee0badb7 drm/i915/gt: Initialize unused MOCS entries with device specific values<br />
7e4b1d648a16 drm/i915/gt: Set BLIT_CCTL reg to un-cached<br />
32be00b75838 drm/i915/gt: Set CMD_CCTL to UC for Gen12 Onward<br />
a878ef44120d drm/i915/gt: Add support of mocs propagation</p>

</body>
</html>

--===============0839808474938806556==--
