Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A07A943265F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 20:31:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370556EA64;
	Mon, 18 Oct 2021 18:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB2BC6E0EF;
 Mon, 18 Oct 2021 18:31:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5363AA0ED;
 Mon, 18 Oct 2021 18:31:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6118573927185172470=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 18:31:22 -0000
Message-ID: <163458188285.27086.13546776604988836279@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211018094154.1407705-1-imre.deak@intel.com>
In-Reply-To: <20211018094154.1407705-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Fix_link_parameter_use_in_lack_of_a_valid_DPCD_=28r?=
 =?utf-8?q?ev2=29?=
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

--===============6118573927185172470==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Fix link parameter use in lack of a valid DPCD (rev2)
URL   : https://patchwork.freedesktop.org/series/95948/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10753 -> Patchwork_21374
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/index.html

Known issues
------------

  Here are the changes found in Patchwork_21374 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][4] ([i915#3921]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-bsw-cyan bat-dg1-6 


Build changes
-------------

  * Linux: CI_DRM_10753 -> Patchwork_21374

  CI-20190529: 20190529
  CI_DRM_10753: 57c1bcf63565db8d65783364c632a04a44bbd616 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6254: 51792e987da03ba2a6faf5857c12f1d173c87def @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21374: d94f0647dd7812e0f536f8199860568c6a0d2cf9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d94f0647dd78 drm/i915/dp: Sanitize link common rate array lookups
f2bd5e3e941b drm/i915/dp: Sanitize sink rate DPCD register values
66b542816538 drm/i915/dp: Ensure sink/link max lane count values are always valid
ef437e0c551b drm/i915/dp: Ensure max link params are always valid
4de2ca096081 drm/i915/dp: Ensure sink rate values are always valid
8f1a6421dfe5 drm/i915/dp: Skip the HW readout of DPCD on disabled encoders

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/index.html

--===============6118573927185172470==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Fix link parameter use in lack of a valid DPCD (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95948/">https://patchwork.freedesktop.org/series/95948/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10753 -&gt; Patchwork_21374</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21374 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21374/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-bsw-cyan bat-dg1-6 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10753 -&gt; Patchwork_21374</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10753: 57c1bcf63565db8d65783364c632a04a44bbd616 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6254: 51792e987da03ba2a6faf5857c12f1d173c87def @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21374: d94f0647dd7812e0f536f8199860568c6a0d2cf9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d94f0647dd78 drm/i915/dp: Sanitize link common rate array lookups<br />
f2bd5e3e941b drm/i915/dp: Sanitize sink rate DPCD register values<br />
66b542816538 drm/i915/dp: Ensure sink/link max lane count values are always valid<br />
ef437e0c551b drm/i915/dp: Ensure max link params are always valid<br />
4de2ca096081 drm/i915/dp: Ensure sink rate values are always valid<br />
8f1a6421dfe5 drm/i915/dp: Skip the HW readout of DPCD on disabled encoders</p>

</body>
</html>

--===============6118573927185172470==--
