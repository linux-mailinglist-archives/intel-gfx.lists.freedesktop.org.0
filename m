Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8691E40251F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 10:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13DC189D1D;
	Tue,  7 Sep 2021 08:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C047589D1D;
 Tue,  7 Sep 2021 08:28:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B83EDAADCF;
 Tue,  7 Sep 2021 08:28:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2639178954367816404=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 08:28:23 -0000
Message-ID: <163100330372.24492.14614382223431333574@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210907072549.2962226-1-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgcmVm?=
 =?utf-8?q?actor_display_struct?=
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

--===============2639178954367816404==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: refactor display struct
URL   : https://patchwork.freedesktop.org/series/94413/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10555 -> Patchwork_20972
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/index.html

Known issues
------------

  Here are the changes found in Patchwork_20972 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][3] ([i915#3958])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-rkl-guc:         [INCOMPLETE][4] ([i915#4034]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10555/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10555/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][8] ([i915#3921]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10555/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][10] ([fdo#109271]) -> [FAIL][11] ([i915#579])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10555/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#3057]: https://gitlab.freedesktop.org/drm/intel/issues/3057
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#4034]: https://gitlab.freedesktop.org/drm/intel/issues/4034
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-tgl-y 


Build changes
-------------

  * Linux: CI_DRM_10555 -> Patchwork_20972

  CI-20190529: 20190529
  CI_DRM_10555: f922237c0f7e4d8f98bdc7a3d6fc4ae4bfd5e3e0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20972: 7773cefe49b1d79074164381427fd19b7d10e2c3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7773cefe49b1 drm/i915/display: move pps/backlight mutexes into display
af49c401bbaa drm/i915/display: move workqueues to display struct
d51c54a76b1c drm/i915/display: move fdi_rx_config into display struct
78d513b8e7f4 drm/i915/display: move dpll struct into display
cc5ba8e76b3a drm/i915/display: move a bunch of platform misc regs to display
4205bb4cb2ac drm/intel/display: move atomic related things to display
bc5e519534b7 drm/i915/display: move delay and pch values to display struct
03a98bbdc906 drm/i915/display: move fb_tracking to display struct
5ed9b4591952 drm/i915/display: move fbdev info to display struct
d9b07b132b95 drm/i915/display: move overlay into display struct
ef7e716d5ec3 drm/i915/display: move hotplug struct to display struct
adaf555cdd95 drm/i915/display: move HDCP related items into display struct
cbb25f490c34 drm/i915/display: move audio related members into display struct
5172cf469738 drm/i915/display: move properties into display struct
1a85a7c162f2 drm/i915/display: move pipe/plane mappings to display struct
cc85ebb38f7a drm/i915/display: move fbc into display struct
0e0a6ffa4329 drm/i915/display: move drrs into display struct
e4f81d31c1d5 drm/i915/drrs: just use some local vars to simplify drrs code
25c356adc849 drm/i915/display: move pps_mmio_base to display struct
35bbd187afd0 drm/i915/display: move mipi_mmio_base to display struct
d8649e4e0a68 drm/i915/display: move intel_dmc into display struct
5040a27ce12a drm/i915/display: move gmbus into display struct
e3baf407701c drm/i915: move more pll/clocks into display struct.
675cb420d0d5 drm/i915/display: move cdclk info into display
191aa552f294 drm/i915: move display funcs into a display struct. (v3)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/index.html

--===============2639178954367816404==
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
<tr><td><b>Series:</b></td><td>refactor display struct</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94413/">https://patchwork.freedesktop.org/series/94413/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10555 -&gt; Patchwork_20972</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20972 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10555/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4034">i915#4034</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10555/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10555/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10555/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20972/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-tgl-y </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10555 -&gt; Patchwork_20972</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10555: f922237c0f7e4d8f98bdc7a3d6fc4ae4bfd5e3e0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20972: 7773cefe49b1d79074164381427fd19b7d10e2c3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7773cefe49b1 drm/i915/display: move pps/backlight mutexes into display<br />
af49c401bbaa drm/i915/display: move workqueues to display struct<br />
d51c54a76b1c drm/i915/display: move fdi_rx_config into display struct<br />
78d513b8e7f4 drm/i915/display: move dpll struct into display<br />
cc5ba8e76b3a drm/i915/display: move a bunch of platform misc regs to display<br />
4205bb4cb2ac drm/intel/display: move atomic related things to display<br />
bc5e519534b7 drm/i915/display: move delay and pch values to display struct<br />
03a98bbdc906 drm/i915/display: move fb_tracking to display struct<br />
5ed9b4591952 drm/i915/display: move fbdev info to display struct<br />
d9b07b132b95 drm/i915/display: move overlay into display struct<br />
ef7e716d5ec3 drm/i915/display: move hotplug struct to display struct<br />
adaf555cdd95 drm/i915/display: move HDCP related items into display struct<br />
cbb25f490c34 drm/i915/display: move audio related members into display struct<br />
5172cf469738 drm/i915/display: move properties into display struct<br />
1a85a7c162f2 drm/i915/display: move pipe/plane mappings to display struct<br />
cc85ebb38f7a drm/i915/display: move fbc into display struct<br />
0e0a6ffa4329 drm/i915/display: move drrs into display struct<br />
e4f81d31c1d5 drm/i915/drrs: just use some local vars to simplify drrs code<br />
25c356adc849 drm/i915/display: move pps_mmio_base to display struct<br />
35bbd187afd0 drm/i915/display: move mipi_mmio_base to display struct<br />
d8649e4e0a68 drm/i915/display: move intel_dmc into display struct<br />
5040a27ce12a drm/i915/display: move gmbus into display struct<br />
e3baf407701c drm/i915: move more pll/clocks into display struct.<br />
675cb420d0d5 drm/i915/display: move cdclk info into display<br />
191aa552f294 drm/i915: move display funcs into a display struct. (v3)</p>

</body>
</html>

--===============2639178954367816404==--
