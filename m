Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9AB402133
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 23:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA8789C49;
	Mon,  6 Sep 2021 21:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFD9589C33;
 Mon,  6 Sep 2021 21:57:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E698DA00CC;
 Mon,  6 Sep 2021 21:57:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7587832368245047791=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 Sep 2021 21:57:37 -0000
Message-ID: <163096545791.30430.16932796063423091706@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906213904.27918-1-uma.shankar@intel.com>
In-Reply-To: <20210906213904.27918-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_Support_for_Plane_Color_Lut_and_CSC_features_=28rev2=29?=
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

--===============7587832368245047791==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add Support for Plane Color Lut and CSC features (rev2)
URL   : https://patchwork.freedesktop.org/series/90825/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10553 -> Patchwork_20969
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/index.html

Known issues
------------

  Here are the changes found in Patchwork_20969 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +18 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][2] -> [DMESG-WARN][3] ([i915#3925])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][4] -> [INCOMPLETE][5] ([i915#3921])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][6] ([i915#1602] / [i915#2029])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-bdw-5557u/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][7] ([i915#1602])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6600u:       [INCOMPLETE][8] ([i915#198]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10553 -> Patchwork_20969

  CI-20190529: 20190529
  CI_DRM_10553: 47b2bd2caa7b29b5741ff2521206657853b85165 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20969: 7336f11261352439ed686c7ea33cfb1d1a167788 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7336f1126135 drm/i915/xelpd: Enable plane gamma
f8a38f97382c drm/i915/xelpd: Program Plane Gamma Registers
e8c016461e9a drm/i915/xelpd: Add register definitions for Plane Gamma
757106bc29dd drm/i915/xelpd: Define and Initialize Plane Gamma Lut range
a3fc5412d19d drm: Add Plane Gamma Lut property
ec7dd2be1f37 drm: Add Plane Gamma Mode property
c80670d0ba61 drm/i915/xelpd: Enable Plane CSC
5c841e35f0e7 drm/i915/xelpd: Define Plane CSC Registers
cccf197af1b9 drm: Add helper to attach Plane ctm property
9a0a55da5520 drm: Add Plane CTM property
7b01dd73b025 drm/i915/xelpd: Load plane color luts from atomic flip
a66cbbe88e63 drm/i915/xelpd: Initialize plane color features
d64e7e814400 drm/i915/xelpd: Add plane color check to glk_plane_color_ctl
853f0116ea83 drm/i915/xelpd: Program Plane Degamma Registers
790f94f18205 drm/i915/xelpd: Add color capabilities of SDR planes
3a31d402f88a drm/i915/xelpd: Enable plane color features
df616ff808c3 drm/i915/xelpd: Add register definitions for Plane Degamma
d92433346e40 drm/i915/xelpd: Define Degamma Lut range struct for HDR planes
e54bf9c1c858 drm: Add Plane Degamma Lut property
39feb4a85cab drm: Add Plane Degamma Mode property
1e2ce83e3017 drm: Add Enhanced Gamma and color lut range attributes
0bd5f1aa34e1 drm: RFC for Plane Color Hardware Pipeline

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/index.html

--===============7587832368245047791==
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
<tr><td><b>Series:</b></td><td>Add Support for Plane Color Lut and CSC features (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90825/">https://patchwork.freedesktop.org/series/90825/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10553 -&gt; Patchwork_20969</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20969 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20969/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10553 -&gt; Patchwork_20969</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10553: 47b2bd2caa7b29b5741ff2521206657853b85165 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20969: 7336f11261352439ed686c7ea33cfb1d1a167788 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7336f1126135 drm/i915/xelpd: Enable plane gamma<br />
f8a38f97382c drm/i915/xelpd: Program Plane Gamma Registers<br />
e8c016461e9a drm/i915/xelpd: Add register definitions for Plane Gamma<br />
757106bc29dd drm/i915/xelpd: Define and Initialize Plane Gamma Lut range<br />
a3fc5412d19d drm: Add Plane Gamma Lut property<br />
ec7dd2be1f37 drm: Add Plane Gamma Mode property<br />
c80670d0ba61 drm/i915/xelpd: Enable Plane CSC<br />
5c841e35f0e7 drm/i915/xelpd: Define Plane CSC Registers<br />
cccf197af1b9 drm: Add helper to attach Plane ctm property<br />
9a0a55da5520 drm: Add Plane CTM property<br />
7b01dd73b025 drm/i915/xelpd: Load plane color luts from atomic flip<br />
a66cbbe88e63 drm/i915/xelpd: Initialize plane color features<br />
d64e7e814400 drm/i915/xelpd: Add plane color check to glk_plane_color_ctl<br />
853f0116ea83 drm/i915/xelpd: Program Plane Degamma Registers<br />
790f94f18205 drm/i915/xelpd: Add color capabilities of SDR planes<br />
3a31d402f88a drm/i915/xelpd: Enable plane color features<br />
df616ff808c3 drm/i915/xelpd: Add register definitions for Plane Degamma<br />
d92433346e40 drm/i915/xelpd: Define Degamma Lut range struct for HDR planes<br />
e54bf9c1c858 drm: Add Plane Degamma Lut property<br />
39feb4a85cab drm: Add Plane Degamma Mode property<br />
1e2ce83e3017 drm: Add Enhanced Gamma and color lut range attributes<br />
0bd5f1aa34e1 drm: RFC for Plane Color Hardware Pipeline</p>

</body>
</html>

--===============7587832368245047791==--
