Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448B784A9B0
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 23:58:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50F8C112665;
	Mon,  5 Feb 2024 22:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0F011265C;
 Mon,  5 Feb 2024 22:58:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1364124306547065469=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_=28stolen=29_me?=
 =?utf-8?q?mory_region_related_fixes_=28rev12=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Feb 2024 22:58:25 -0000
Message-ID: <170717390590.1024297.13536748486038501343@5338d5abeb45>
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

--===============1364124306547065469==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: (stolen) memory region related fixes (rev12)
URL   : https://patchwork.freedesktop.org/series/127721/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14227 -> Patchwork_127721v12
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/index.html

Participating hosts (36 -> 38)
------------------------------

  Additional (2): bat-kbl-2 fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127721v12:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-wait@ccs0:
    - {bat-arls-1}:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@gem_exec_fence@basic-wait@ccs0.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - {bat-arls-1}:       [SKIP][2] ([i915#10190]) -> [SKIP][3] +23 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  
Known issues
------------

  Here are the changes found in Patchwork_127721v12 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][4] -> [FAIL][5] ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/fi-apl-guc/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1849])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][7] ([fdo#109271]) +28 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][8] ([fdo#109271]) +35 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-6:         NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-6:         NOTRUN -> [SKIP][10] ([i915#6621])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@i915_pm_rps@basic-api.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-6:         NOTRUN -> [SKIP][11] ([fdo#109285] / [i915#9792])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-6:         NOTRUN -> [SKIP][12] ([i915#5274] / [i915#9792])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-mtlp-6:         NOTRUN -> [SKIP][13] ([i915#4342] / [i915#5354] / [i915#9792])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][14] ([i915#9792]) +6 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-mtlp-6:         NOTRUN -> [SKIP][15] ([i915#5354] / [i915#9792])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][16] ([i915#3555] / [i915#8809] / [i915#9792])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-mtlp-6:         NOTRUN -> [SKIP][17] ([i915#3708] / [i915#9792])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-6:         NOTRUN -> [SKIP][18] ([i915#3708] / [i915#4077]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-mtlp-6:         NOTRUN -> [SKIP][19] ([i915#3708]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-arls-1}:       [SKIP][20] ([i915#10076]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@core_hotunplug@unbind-rebind.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@load:
    - {bat-arls-1}:       [DMESG-FAIL][22] ([i915#10189]) -> [PASS][23] +1 other test pass
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@i915_module_load@load.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@i915_module_load@load.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - {bat-arls-1}:       [SKIP][24] ([i915#9980]) -> [PASS][25] +1 other test pass
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@vgem_basic@dmabuf-export:
    - {bat-arls-1}:       [SKIP][26] ([i915#10190]) -> [PASS][27] +69 other tests pass
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@vgem_basic@dmabuf-export.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@vgem_basic@dmabuf-export.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
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
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9643]: https://gitlab.freedesktop.org/drm/intel/issues/9643
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792
  [i915#9980]: https://gitlab.freedesktop.org/drm/intel/issues/9980


Build changes
-------------

  * Linux: CI_DRM_14227 -> Patchwork_127721v12

  CI-20190529: 20190529
  CI_DRM_14227: b71b753a5041cf8869006840c7577c3bac01d1cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7703: c58c5fb6aa1cb7d3627a15e364816a7a2add9edc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127721v12: b71b753a5041cf8869006840c7577c3bac01d1cd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8c5acee668b2 drm/i915: Annotate more of the BIOS fb takeover failure paths
35dcb305dfb0 drm/i915: Try to relocate the BIOS fb to the start of ggtt
8a587505d9b3 drm/i915: Tweak BIOS fb reuse check
ac0e62d355f9 drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects
32701310f898 drm/i915: Simplify intel_initial_plane_config() calling convention
0eb2f63b50cc drm/i915: Split the smem and lmem plane readout apart
2de0fc09f49c drm/i915: s/phys_base/dma_addr/
e73bf6d0cc62 drm/i915: Fix MTL initial plane readout
56b4d1a9a993 drm/i915: Fix region start during initial plane readout
e81f33249c37 drm/i915: Fix PTE decode during initial plane readout
3ded3c5d3613 drm/i915: Rename the DSM/GSM registers
051a29e104f0 drm/i915: Disable the "binder"
2602a86b7d86 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
4f659d2c7d9c drm/i915: Remove ad-hoc lmem/stolen debugs
187e879b8f88 drm/i915: Print memory region info during probe
74acb474545e drm/i915: Use struct resource for memory region IO as well

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/index.html

--===============1364124306547065469==
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
<tr><td><b>Series:</b></td><td>drm/i915: (stolen) memory region related fixes (rev12)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127721/">https://patchwork.freedesktop.org/series/127721/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14227 -&gt; Patchwork_127721v12</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/index.html</p>
<h2>Participating hosts (36 -&gt; 38)</h2>
<p>Additional (2): bat-kbl-2 fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127721v12:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fence@basic-wait@ccs0:</p>
<ul>
<li>{bat-arls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@gem_exec_fence@basic-wait@ccs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10190">i915#10190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127721v12 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-mtlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@core_hotunplug@unbind-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10076">i915#10076</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@i915_module_load@load.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10189">i915#10189</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@i915_module_load@load.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9980">i915#9980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-export:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/bat-arls-1/igt@vgem_basic@dmabuf-export.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10190">i915#10190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v12/bat-arls-1/igt@vgem_basic@dmabuf-export.html">PASS</a> +69 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14227 -&gt; Patchwork_127721v12</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14227: b71b753a5041cf8869006840c7577c3bac01d1cd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7703: c58c5fb6aa1cb7d3627a15e364816a7a2add9edc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127721v12: b71b753a5041cf8869006840c7577c3bac01d1cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8c5acee668b2 drm/i915: Annotate more of the BIOS fb takeover failure paths<br />
35dcb305dfb0 drm/i915: Try to relocate the BIOS fb to the start of ggtt<br />
8a587505d9b3 drm/i915: Tweak BIOS fb reuse check<br />
ac0e62d355f9 drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects<br />
32701310f898 drm/i915: Simplify intel_initial_plane_config() calling convention<br />
0eb2f63b50cc drm/i915: Split the smem and lmem plane readout apart<br />
2de0fc09f49c drm/i915: s/phys_base/dma_addr/<br />
e73bf6d0cc62 drm/i915: Fix MTL initial plane readout<br />
56b4d1a9a993 drm/i915: Fix region start during initial plane readout<br />
e81f33249c37 drm/i915: Fix PTE decode during initial plane readout<br />
3ded3c5d3613 drm/i915: Rename the DSM/GSM registers<br />
051a29e104f0 drm/i915: Disable the "binder"<br />
2602a86b7d86 drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access<br />
4f659d2c7d9c drm/i915: Remove ad-hoc lmem/stolen debugs<br />
187e879b8f88 drm/i915: Print memory region info during probe<br />
74acb474545e drm/i915: Use struct resource for memory region IO as well</p>

</body>
</html>

--===============1364124306547065469==--
