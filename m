Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AB63B9AAF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 04:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64756EC82;
	Fri,  2 Jul 2021 02:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 846516EC82;
 Fri,  2 Jul 2021 02:23:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E477A882E;
 Fri,  2 Jul 2021 02:23:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 02 Jul 2021 02:23:54 -0000
Message-ID: <162519263449.22031.2144284873832952227@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
In-Reply-To: <20210701202427.1547543-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQmVn?=
 =?utf-8?q?in_enabling_Xe=5FHP_SDV_and_DG2_platforms?=
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
Content-Type: multipart/mixed; boundary="===============0867278466=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0867278466==
Content-Type: multipart/alternative;
 boundary="===============9134943028200844535=="

--===============9134943028200844535==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Begin enabling Xe_HP SDV and DG2 platforms
URL   : https://patchwork.freedesktop.org/series/92135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10301 -> Patchwork_20518
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/index.html

Known issues
------------

  Here are the changes found in Patchwork_20518 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [PASS][3] -> [INCOMPLETE][4] ([i915#155])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][5] ([i915#2782] / [i915#2940]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [INCOMPLETE][7] ([i915#2782] / [i915#2940]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940


Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan fi-cml-s fi-ilk-650 


Build changes
-------------

  * Linux: CI_DRM_10301 -> Patchwork_20518

  CI-20190529: 20190529
  CI_DRM_10301: 3d3ff5917ce204b783f4847c14e8839fde358a3a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20518: 133ddb5ea323de062e5fbe46bd3798f33ae0f437 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

133ddb5ea323 drm/i915/dg2: Configure PCON in DP pre-enable path
fde12e824f05 drm/i915/dg2: Update to bigjoiner path
ba4968e55d28 drm/i915/display/dsc: Set BPP in the kernel
edfb2d6e0ea6 drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable
9e2db54a273c drm/i915/dg2: Add DG2 to the PSR2 defeature list
6bbd5a823a50 drm/i915/dg2: Update lane disable power state during PSR
3b3857d8d39d drm/i915/dg2: Wait for SNPS PHY calibration during display init
3d1b5babd51e drm/i915/dg2: Classify DG2 PHY types
c32649b18330 drm/i915/dg2: Update modeset sequences
c6953118f038 drm/i915/dg2: Add vswing programming for SNPS phys
53a063c8f301 drm/i915/dg2: Add MPLLB programming for HDMI
c9166bb312a8 drm/i915/dg2: Add MPLLB programming for SNPS PHY
9474127ed4be drm/i915/dg2: DG2 has fixed memory bandwidth
ba19ca3a61d3 drm/i915/dg2: Don't read DRAM info
0a348ed50a66 drm/i915/dg2: Don't program BW_BUDDY registers
32e45599e864 drm/i915/dg2: Add dbuf programming
4412055dac14 drm/i915/dg2: Setup display outputs
98e804dd9e17 drm/i915/dg2: Don't wait for AUX power well enable ACKs
97a61600ba6e drm/i915/dg2: Skip shared DPLL handling
28764cd2c9ae drm/i915/dg2: Add cdclk table and reference clock
2eecc2959819 drm/i915/dg2: Add fake PCH
76612645f39d drm/i915/dg2: Define MOCS table for DG2
4da0b4be71af drm/i915/dg2: Report INSTDONE_GEOM values in error state
8f4f5f5be899 drm/i915/dg2: Maintain backward-compatible nested batch behavior
b4672468008b drm/i915/dg2: Add new LRI reg offsets
18222398e843 drm/i915/dg2: Add SQIDI steering
361dc98d37a9 drm/i915/dg2: Update LNCF steering ranges
85fa4b39b442 drm/i915/dg2: Add forcewake table
3716a646ee5d drm/i915/dg2: DG2 uses the same sseu limits as XeHP SDV
7841e2ad91bd drm/i915/dg2: add DG2 platform info
694b8e11d8f3 drm/i915/xehpsdv: Read correct RP_STATE_CAP register
01476822d53d drm/i915/xehpsdv: factor out function to read RP_STATE_CAP
4aad6e79cab0 drm/i915/xehpsdv: Define MOCS table for XeHP SDV
6b890b15a53c drm/i915/xehpsdv: Define steering tables
e3ff7b0ad237 drm/i915/xehpsdv: Add compute DSS type
39a55b65b031 drm/i915/xehpsdv: Add maximum sseu limits
58cddebf678c drm/i915/xehp: Changes to ss/eu definitions
717f4e93c77c drm/i915/xehpsdv: add initial XeHP SDV definitions
b5f0a7fb4bd7 drm/i915/xehp: Loop over all gslices for INSTDONE processing
fa143e9788fb drm/i915/xehp: handle new steering options
c88fc01c6c90 drm/i915/xehp: New engine context offsets
6ffc374c0e68 drm/i915/xehp: Handle new device context ID format
20d2cc13bee1 drm/i915/xehp: Define multicast register ranges
1172112c84c7 drm/i915/xehp: Xe_HP forcewake support
16294d658a13 drm/i915/xehp: Extra media engines - Part 3 (reset)
feeddd16cf72 drm/i915/xehp: Extra media engines - Part 2 (interrupts)
d3e12edbacc3 drm/i915/xehp: Extra media engines - Part 1 (engine definitions)
9d74c6dfe137 drm/i915/selftests: Allow for larger engine counts
36e86d116247 drm/i915/gen12: Use fuse info to enable SFC
f085b19fbe3a drm/i915/xehp: VDBOX/VEBOX fusing registers are enable-based
be574a1b4ce4 drm/i915: Fork DG1 interrupt handler
204773918d46 drm/i915: Add XE_HP initial definitions
23da9848b630 drm/i915: Add "release id" version

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/index.html

--===============9134943028200844535==
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
<tr><td><b>Series:</b></td><td>Begin enabling Xe_HP SDV and DG2 platforms</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92135/">https://patchwork.freedesktop.org/series/92135/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10301 -&gt; Patchwork_20518</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20518 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10301/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20518/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan fi-cml-s fi-ilk-650 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10301 -&gt; Patchwork_20518</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10301: 3d3ff5917ce204b783f4847c14e8839fde358a3a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20518: 133ddb5ea323de062e5fbe46bd3798f33ae0f437 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>133ddb5ea323 drm/i915/dg2: Configure PCON in DP pre-enable path<br />
fde12e824f05 drm/i915/dg2: Update to bigjoiner path<br />
ba4968e55d28 drm/i915/display/dsc: Set BPP in the kernel<br />
edfb2d6e0ea6 drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable<br />
9e2db54a273c drm/i915/dg2: Add DG2 to the PSR2 defeature list<br />
6bbd5a823a50 drm/i915/dg2: Update lane disable power state during PSR<br />
3b3857d8d39d drm/i915/dg2: Wait for SNPS PHY calibration during display init<br />
3d1b5babd51e drm/i915/dg2: Classify DG2 PHY types<br />
c32649b18330 drm/i915/dg2: Update modeset sequences<br />
c6953118f038 drm/i915/dg2: Add vswing programming for SNPS phys<br />
53a063c8f301 drm/i915/dg2: Add MPLLB programming for HDMI<br />
c9166bb312a8 drm/i915/dg2: Add MPLLB programming for SNPS PHY<br />
9474127ed4be drm/i915/dg2: DG2 has fixed memory bandwidth<br />
ba19ca3a61d3 drm/i915/dg2: Don't read DRAM info<br />
0a348ed50a66 drm/i915/dg2: Don't program BW_BUDDY registers<br />
32e45599e864 drm/i915/dg2: Add dbuf programming<br />
4412055dac14 drm/i915/dg2: Setup display outputs<br />
98e804dd9e17 drm/i915/dg2: Don't wait for AUX power well enable ACKs<br />
97a61600ba6e drm/i915/dg2: Skip shared DPLL handling<br />
28764cd2c9ae drm/i915/dg2: Add cdclk table and reference clock<br />
2eecc2959819 drm/i915/dg2: Add fake PCH<br />
76612645f39d drm/i915/dg2: Define MOCS table for DG2<br />
4da0b4be71af drm/i915/dg2: Report INSTDONE_GEOM values in error state<br />
8f4f5f5be899 drm/i915/dg2: Maintain backward-compatible nested batch behavior<br />
b4672468008b drm/i915/dg2: Add new LRI reg offsets<br />
18222398e843 drm/i915/dg2: Add SQIDI steering<br />
361dc98d37a9 drm/i915/dg2: Update LNCF steering ranges<br />
85fa4b39b442 drm/i915/dg2: Add forcewake table<br />
3716a646ee5d drm/i915/dg2: DG2 uses the same sseu limits as XeHP SDV<br />
7841e2ad91bd drm/i915/dg2: add DG2 platform info<br />
694b8e11d8f3 drm/i915/xehpsdv: Read correct RP_STATE_CAP register<br />
01476822d53d drm/i915/xehpsdv: factor out function to read RP_STATE_CAP<br />
4aad6e79cab0 drm/i915/xehpsdv: Define MOCS table for XeHP SDV<br />
6b890b15a53c drm/i915/xehpsdv: Define steering tables<br />
e3ff7b0ad237 drm/i915/xehpsdv: Add compute DSS type<br />
39a55b65b031 drm/i915/xehpsdv: Add maximum sseu limits<br />
58cddebf678c drm/i915/xehp: Changes to ss/eu definitions<br />
717f4e93c77c drm/i915/xehpsdv: add initial XeHP SDV definitions<br />
b5f0a7fb4bd7 drm/i915/xehp: Loop over all gslices for INSTDONE processing<br />
fa143e9788fb drm/i915/xehp: handle new steering options<br />
c88fc01c6c90 drm/i915/xehp: New engine context offsets<br />
6ffc374c0e68 drm/i915/xehp: Handle new device context ID format<br />
20d2cc13bee1 drm/i915/xehp: Define multicast register ranges<br />
1172112c84c7 drm/i915/xehp: Xe_HP forcewake support<br />
16294d658a13 drm/i915/xehp: Extra media engines - Part 3 (reset)<br />
feeddd16cf72 drm/i915/xehp: Extra media engines - Part 2 (interrupts)<br />
d3e12edbacc3 drm/i915/xehp: Extra media engines - Part 1 (engine definitions)<br />
9d74c6dfe137 drm/i915/selftests: Allow for larger engine counts<br />
36e86d116247 drm/i915/gen12: Use fuse info to enable SFC<br />
f085b19fbe3a drm/i915/xehp: VDBOX/VEBOX fusing registers are enable-based<br />
be574a1b4ce4 drm/i915: Fork DG1 interrupt handler<br />
204773918d46 drm/i915: Add XE_HP initial definitions<br />
23da9848b630 drm/i915: Add "release id" version</p>

</body>
</html>

--===============9134943028200844535==--

--===============0867278466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0867278466==--
