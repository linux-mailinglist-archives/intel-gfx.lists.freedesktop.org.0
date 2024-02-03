Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC5C847DB3
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Feb 2024 01:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670B110F1E0;
	Sat,  3 Feb 2024 00:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E79A10F1E0;
 Sat,  3 Feb 2024 00:19:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2144736263650871942=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_=28stolen=29_me?=
 =?utf-8?q?mory_region_related_fixes_=28rev11=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 03 Feb 2024 00:19:16 -0000
Message-ID: <170691955645.953177.14007616621200845092@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
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

--===============2144736263650871942==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: (stolen) memory region related fixes (rev11)
URL   : https://patchwork.freedesktop.org/series/127721/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14213 -> Patchwork_127721v11
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127721v11:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - {bat-arls-1}:       [SKIP][1] ([i915#10190]) -> [SKIP][2] +23 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  
Known issues
------------

  Here are the changes found in Patchwork_127721v11 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-arls-1}:       [SKIP][3] ([i915#10076]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@load:
    - {bat-arls-1}:       [DMESG-FAIL][5] ([i915#10189]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@i915_module_load@load.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - {bat-arls-1}:       [SKIP][7] ([i915#9980]) -> [PASS][8] +1 other test pass
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@vgem_basic@dmabuf-export:
    - {bat-arls-1}:       [SKIP][9] ([i915#10190]) -> [PASS][10] +69 other tests pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@vgem_basic@dmabuf-export.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@vgem_basic@dmabuf-export.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10076]: https://gitlab.freedesktop.org/drm/intel/issues/10076
  [i915#10189]: https://gitlab.freedesktop.org/drm/intel/issues/10189
  [i915#10190]: https://gitlab.freedesktop.org/drm/intel/issues/10190
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9643]: https://gitlab.freedesktop.org/drm/intel/issues/9643
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9980]: https://gitlab.freedesktop.org/drm/intel/issues/9980


Build changes
-------------

  * Linux: CI_DRM_14213 -> Patchwork_127721v11

  CI-20190529: 20190529
  CI_DRM_14213: 40994da55437acf620a48af39b0d8545e1595c42 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127721v11: 40994da55437acf620a48af39b0d8545e1595c42 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c95bb44ee953 drm/i915: Annotate more of the BIOS fb takeover failure paths
614c96bff908 drm/i915: Try to relocate the BIOS fb to the start of ggtt
39f87572a2f7 drm/i915: Tweak BIOS fb reuse check
17c78c16583d drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects
a35e1f5910a6 drm/i915: Simplify intel_initial_plane_config() calling convention
c4544c3be79f drm/i915: Split the smem and lmem plane readout apart
1bf02e478833 drm/i915: s/phys_base/dma_addr/
5b1020fc4b56 drm/i915: Fix MTL initial plane readout
982e05ed0cb3 drm/i915: Fix region start during initial plane readout
fe8c77690095 drm/i915: Fix PTE decode during initial plane readout
8c55acda7c63 drm/i915: Rename the DSM/GSM registers
36991aeedb77 drm/i915: Disable the "binder"
f03fd6fc42b7 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
c6a1f8172b74 drm/i915: Remove ad-hoc lmem/stolen debugs
512967377509 drm/i915: Print memory region info during probe
b365a82e29eb drm/i915: Use struct resource for memory region IO as well

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/index.html

--===============2144736263650871942==
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
<tr><td><b>Series:</b></td><td>drm/i915: (stolen) memory region related fixes (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127721/">https://patchwork.freedesktop.org/series/127721/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14213 -&gt; Patchwork_127721v11</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127721v11:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10190">i915#10190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127721v11 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@core_hotunplug@unbind-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10076">i915#10076</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@i915_module_load@load.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10189">i915#10189</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@i915_module_load@load.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9980">i915#9980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-export:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14213/bat-arls-1/igt@vgem_basic@dmabuf-export.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10190">i915#10190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v11/bat-arls-1/igt@vgem_basic@dmabuf-export.html">PASS</a> +69 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14213 -&gt; Patchwork_127721v11</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14213: 40994da55437acf620a48af39b0d8545e1595c42 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7702: bf075a74ece1956fc0e554291591b9da3eab54cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127721v11: 40994da55437acf620a48af39b0d8545e1595c42 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c95bb44ee953 drm/i915: Annotate more of the BIOS fb takeover failure paths<br />
614c96bff908 drm/i915: Try to relocate the BIOS fb to the start of ggtt<br />
39f87572a2f7 drm/i915: Tweak BIOS fb reuse check<br />
17c78c16583d drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects<br />
a35e1f5910a6 drm/i915: Simplify intel_initial_plane_config() calling convention<br />
c4544c3be79f drm/i915: Split the smem and lmem plane readout apart<br />
1bf02e478833 drm/i915: s/phys_base/dma_addr/<br />
5b1020fc4b56 drm/i915: Fix MTL initial plane readout<br />
982e05ed0cb3 drm/i915: Fix region start during initial plane readout<br />
fe8c77690095 drm/i915: Fix PTE decode during initial plane readout<br />
8c55acda7c63 drm/i915: Rename the DSM/GSM registers<br />
36991aeedb77 drm/i915: Disable the "binder"<br />
f03fd6fc42b7 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access<br />
c6a1f8172b74 drm/i915: Remove ad-hoc lmem/stolen debugs<br />
512967377509 drm/i915: Print memory region info during probe<br />
b365a82e29eb drm/i915: Use struct resource for memory region IO as well</p>

</body>
</html>

--===============2144736263650871942==--
