Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF14B502736
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 11:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED1D10E891;
	Fri, 15 Apr 2022 09:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F059510E87E;
 Fri, 15 Apr 2022 09:11:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED8BCA0096;
 Fri, 15 Apr 2022 09:11:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3660663467032980521=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 15 Apr 2022 09:11:34 -0000
Message-ID: <165001389493.6516.7200960254683996606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220414210657.1785773-1-imre.deak@intel.com>
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2Cv2=2C01/18=5D_drm/i915=3A_Move_per-pl?=
 =?utf-8?q?atform_power_well_hooks_to_intel=5Fdisplay=5Fpower=5Fwell=2Ec_?=
 =?utf-8?b?KHJldjIp?=
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

--===============3660663467032980521==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,v2,01/18] drm/i915: Move per-platform power well hooks to intel_display_power_well.c (rev2)
URL   : https://patchwork.freedesktop.org/series/102719/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11504 -> Patchwork_102719v2
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_102719v2 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102719v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/index.html

Participating hosts (47 -> 44)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (4): bat-rpls-1 fi-bsw-cyan fi-bdw-samus fi-tgl-u2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102719v2:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][1] ([i915#2722]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/fi-kbl-8809g/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/fi-kbl-8809g/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {bat-adlm-1}:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/bat-adlm-1/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - {bat-dg2-8}:        [DMESG-WARN][4] ([i915#5193]) -> [DMESG-WARN][5] +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {bat-dg2-9}:        [DMESG-WARN][6] ([i915#5193]) -> [DMESG-WARN][7] +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_102719v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [PASS][8] -> [INCOMPLETE][9] ([i915#5127])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][10] ([i915#4785]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][12] ([i915#3921]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][14] ([i915#3576]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5329]: https://gitlab.freedesktop.org/drm/intel/issues/5329


Build changes
-------------

  * Linux: CI_DRM_11504 -> Patchwork_102719v2

  CI-20190529: 20190529
  CI_DRM_11504: 64c052dc4fd1f39ef083b217434f140ed0feca5e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102719v2: 64c052dc4fd1f39ef083b217434f140ed0feca5e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fda1ed6e3aeb drm/i915: Remove the XELPD specific AUX and DDI power domains
07a447393b6f drm/i915: Remove duplicate DDI/AUX power domain mappings
0a58f10cc730 drm/i915: Remove the ICL specific TBT power domains
d5066e6cd62a drm/i915: Remove the aliasing of power domain enum values
21fd986a4dcf drm/i915: Sanitize the port -> DDI/AUX power domain mapping for each platform
b95eac8c6156 drm/i915: Sanitize the ADL-S power well definition
8f7b1de654e2 drm/i915: Simplify the DG1 power well descriptors
72ec8ac4067d drm/i915: Allow platforms to share power well descriptors
59ffc4b34d13 drm/i915: Simplify power well definitions by adding power well instances
042b1e2f086d drm/i915: Convert the u64 power well domains mask to a bitmap
3767837a9bc7 drm/i915: Convert the power well descriptor domain mask to an array of domains
76a12e6576f1 drm/i915: Sanitize the power well names
e02a794c1a9c drm/i915: Rename the power domain names to end with pipes/ports
cac3baef54ce drm/i915: Move the HSW power well flags to a common bitfield
b857512a4116 drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield
aaacf15efff5 drm/i915: Move the power domain->well mappings to intel_display_power_map.c
f9a4f2960d4e drm/i915: Unexport the for_each_power_well() macros
4d5c4c3b6475 drm/i915: Move per-platform power well hooks to intel_display_power_well.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/index.html

--===============3660663467032980521==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,v2,01/18] drm/i915: Move per-platform power well hooks to intel_display_power_well.c (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102719/">https://patchwork.freedesktop.org/series/102719/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11504 -&gt; Patchwork_102719v2</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_102719v2 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102719v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/index.html</p>
<h2>Participating hosts (47 -&gt; 44)</h2>
<p>Additional (1): bat-adlm-1 <br />
  Missing    (4): bat-rpls-1 fi-bsw-cyan fi-bdw-samus fi-tgl-u2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102719v2:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/bat-adlm-1/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5193">i915#5193</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/bat-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5193">i915#5193</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102719v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11504/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102719v2/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11504 -&gt; Patchwork_102719v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11504: 64c052dc4fd1f39ef083b217434f140ed0feca5e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102719v2: 64c052dc4fd1f39ef083b217434f140ed0feca5e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fda1ed6e3aeb drm/i915: Remove the XELPD specific AUX and DDI power domains<br />
07a447393b6f drm/i915: Remove duplicate DDI/AUX power domain mappings<br />
0a58f10cc730 drm/i915: Remove the ICL specific TBT power domains<br />
d5066e6cd62a drm/i915: Remove the aliasing of power domain enum values<br />
21fd986a4dcf drm/i915: Sanitize the port -&gt; DDI/AUX power domain mapping for each platform<br />
b95eac8c6156 drm/i915: Sanitize the ADL-S power well definition<br />
8f7b1de654e2 drm/i915: Simplify the DG1 power well descriptors<br />
72ec8ac4067d drm/i915: Allow platforms to share power well descriptors<br />
59ffc4b34d13 drm/i915: Simplify power well definitions by adding power well instances<br />
042b1e2f086d drm/i915: Convert the u64 power well domains mask to a bitmap<br />
3767837a9bc7 drm/i915: Convert the power well descriptor domain mask to an array of domains<br />
76a12e6576f1 drm/i915: Sanitize the power well names<br />
e02a794c1a9c drm/i915: Rename the power domain names to end with pipes/ports<br />
cac3baef54ce drm/i915: Move the HSW power well flags to a common bitfield<br />
b857512a4116 drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield<br />
aaacf15efff5 drm/i915: Move the power domain-&gt;well mappings to intel_display_power_map.c<br />
f9a4f2960d4e drm/i915: Unexport the for_each_power_well() macros<br />
4d5c4c3b6475 drm/i915: Move per-platform power well hooks to intel_display_power_well.c</p>

</body>
</html>

--===============3660663467032980521==--
