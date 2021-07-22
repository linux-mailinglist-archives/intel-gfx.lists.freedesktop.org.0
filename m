Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1463D1AC8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 02:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C066EC6A;
	Thu, 22 Jul 2021 00:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3E366EC5A;
 Thu, 22 Jul 2021 00:37:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED7DEA8832;
 Thu, 22 Jul 2021 00:37:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 22 Jul 2021 00:37:05 -0000
Message-ID: <162691422594.30342.10311093380255645644@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721223043.834562-1-matthew.d.roper@intel.com>
In-Reply-To: <20210721223043.834562-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ0kg?=
 =?utf-8?q?pass_for_reviewed_Xe=5FHP_SDV_and_DG2_patches?=
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
Content-Type: multipart/mixed; boundary="===============0777386389=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0777386389==
Content-Type: multipart/alternative;
 boundary="===============5104263533996010434=="

--===============5104263533996010434==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: CI pass for reviewed Xe_HP SDV and DG2 patches
URL   : https://patchwork.freedesktop.org/series/92853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10367 -> Patchwork_20673
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/index.html

Known issues
------------

  Here are the changes found in Patchwork_20673 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][2] ([i915#1602] / [i915#2029])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-tgl-1115g4}:    [FAIL][3] ([i915#1888]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [INCOMPLETE][5] ([i915#2782] / [i915#794]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][7] ([i915#1372]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (38 -> 35)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10367 -> Patchwork_20673

  CI-20190529: 20190529
  CI_DRM_10367: 598494d0149b67545593dfb1b5fa60278907749e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20673: 7704c9aa289a8f387a4ac8a18707cedb6f4ad6fa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7704c9aa289a drm/i915/dg2: DG2 has fixed memory bandwidth
358ea009b220 drm/i915/dg2: Don't read DRAM info
adb51870fc17 drm/i915/dg2: Don't program BW_BUDDY registers
4d664ff3d52d drm/i915/dg2: Add dbuf programming
f8744c6d424a drm/i915/dg2: Setup display outputs
ca6cdb06bc87 drm/i915/dg2: Don't wait for AUX power well enable ACKs
85a603e64280 drm/i915/dg2: Skip shared DPLL handling
ee4554dd0f46 drm/i915/dg2: Add cdclk table and reference clock
bf4e9f961c54 drm/i915/dg2: Add fake PCH
0f78529c87f9 drm/i915/xehp: New engine context offsets
66471aa168d2 drm/i915/xehp: Handle new device context ID format
748de8c99157 drm/i915/selftests: Allow for larger engine counts
54b16faca000 drm/i915/gen12: Use fuse info to enable SFC
2024f48f8303 drm/i915/xehp: VDBOX/VEBOX fusing registers are enable-based
2e778d91bf0c drm/i915: Fork DG1 interrupt handler
af8335fc25c0 drm/i915/dg2: add DG2 platform info
35b61c43f3e6 drm/i915/xehpsdv: add initial XeHP SDV definitions
3c0d66813984 drm/i915: Add XE_HP initial definitions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/index.html

--===============5104263533996010434==
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
<tr><td><b>Series:</b></td><td>CI pass for reviewed Xe_HP SDV and DG2 patches</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92853/">https://patchwork.freedesktop.org/series/92853/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10367 -&gt; Patchwork_20673</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20673 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10367 -&gt; Patchwork_20673</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10367: 598494d0149b67545593dfb1b5fa60278907749e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20673: 7704c9aa289a8f387a4ac8a18707cedb6f4ad6fa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7704c9aa289a drm/i915/dg2: DG2 has fixed memory bandwidth<br />
358ea009b220 drm/i915/dg2: Don't read DRAM info<br />
adb51870fc17 drm/i915/dg2: Don't program BW_BUDDY registers<br />
4d664ff3d52d drm/i915/dg2: Add dbuf programming<br />
f8744c6d424a drm/i915/dg2: Setup display outputs<br />
ca6cdb06bc87 drm/i915/dg2: Don't wait for AUX power well enable ACKs<br />
85a603e64280 drm/i915/dg2: Skip shared DPLL handling<br />
ee4554dd0f46 drm/i915/dg2: Add cdclk table and reference clock<br />
bf4e9f961c54 drm/i915/dg2: Add fake PCH<br />
0f78529c87f9 drm/i915/xehp: New engine context offsets<br />
66471aa168d2 drm/i915/xehp: Handle new device context ID format<br />
748de8c99157 drm/i915/selftests: Allow for larger engine counts<br />
54b16faca000 drm/i915/gen12: Use fuse info to enable SFC<br />
2024f48f8303 drm/i915/xehp: VDBOX/VEBOX fusing registers are enable-based<br />
2e778d91bf0c drm/i915: Fork DG1 interrupt handler<br />
af8335fc25c0 drm/i915/dg2: add DG2 platform info<br />
35b61c43f3e6 drm/i915/xehpsdv: add initial XeHP SDV definitions<br />
3c0d66813984 drm/i915: Add XE_HP initial definitions</p>

</body>
</html>

--===============5104263533996010434==--

--===============0777386389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0777386389==--
