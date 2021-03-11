Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BF4338126
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 00:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AAF96F385;
	Thu, 11 Mar 2021 23:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FE706E090;
 Thu, 11 Mar 2021 23:14:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 794E0A47E8;
 Thu, 11 Mar 2021 23:14:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 11 Mar 2021 23:14:50 -0000
Message-ID: <161550449047.28797.4596937941629440842@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_Alder_Lake-P?=
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
Content-Type: multipart/mixed; boundary="===============1622070230=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1622070230==
Content-Type: multipart/alternative;
 boundary="===============3909583693717655658=="

--===============3909583693717655658==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Alder Lake-P
URL   : https://patchwork.freedesktop.org/series/87897/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9851 -> Patchwork_19786
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19786 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19786, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19786:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  * igt@runner@aborted:
    - fi-cml-u2:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-cml-u2/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-tgl-u2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19786 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][6] -> [TIMEOUT][7] ([i915#3145])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  
#### Possible fixes ####

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][8] ([i915#2502] / [i915#3145]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][10] ([i915#3145]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [FAIL][12] ([i915#3177]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-bsw-nick/igt@gem_wait@busy@all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-bsw-nick/igt@gem_wait@busy@all.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][14] ([i915#142] / [i915#2405]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][16] ([i915#1814]) -> [FAIL][17] ([i915#1569] / [k.org#202973])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-icl-u2/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-icl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [k.org#202973]: https://bugzilla.kernel.org/show_bug.cgi?id=202973


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9851 -> Patchwork_19786

  CI-20190529: 20190529
  CI_DRM_9851: 3c654b84957a19021def19bba396189409f197ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6030: e11e4bfb91fec9af71c3909996c66e5666270e07 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19786: ff4d1fd19abda93fafaec66c226bd41895c64fff @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ff4d1fd19abd drm/i915/display/adl_p: Implement PSR changes
8e8789fb3382 drm/i915/perf: Enable OA formats for ADL_P
5f5ddd87a7d9 drm/i915/display/adl_p: Remove CCS support
80727a5175f3 drm/i915/display/adl_p: Implement Wa_22011320316
338170857dd4 drm/i915/adl_p: Implement Wa_22011091694
7ae8fa32c79f drm/i915/adl_p: Update memory bandwidth parameters
0f2911a4def4 drm/i915/adlp: Add PIPE_MISC2 programming
a967b8f0d577 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner
f6779a65ec33 drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner
f3adcffb1aee drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner
24fddb894143 drm/i915/adl_p: Add PLL Support
4b31b97ab781 drm/i915/adl_p: Enable/disable loadgen sharing
b304533d0f55 drm/i915/adl_p: Define and use ADL-P specific DP translation tables
229748b64190 drm/i915/adlp: Define GuC/HuC for Alderlake_P
eaa274e708a8 drm/i915/adl_p: Add initial ADL_P Workarounds
bed8e7bb8774 drm/i915/adl_p: Tx escape clock with DSI
b7078c173757 drm/i915/adl_p: MBUS programming
33b7d6985cbf drm/i915: Move intel_modeset_all_pipes()
ece44a3951a4 drm/i915: Introduce MBUS relative dbuf offsets
d9c40cc5183b drm/i915/adl_p: Add ddb allocation support
7f6b13959baf drm/i915/adl_p: Don't config MBUS and DBUF during display initialization
76d78f0a89b0 drm/i915/adl_p: Enable modular fia
d3d588966024 drm/i915/adl_p: Implement TC sequences
1cc279b9a9ae drm/i915/adl_p: Handle TC cold
72da71eda198 drm/i915/display/tc: Rename safe_mode functions ownership
b88ec5ff4cf4 drm/i915/adl_p: Add cdclk support for ADL-P
53cbbdc4ce2b drm/i915/adl_p: Setup ports/phys
a31a27c201e3 drm/i915/adl_p: Load DMC
c8feb3de6d2f drm/i915/adl_p: Extend PLANE_WM bits for blocks & lines
e5d780a7e2c8 drm/i915/adl_p: Add dedicated SAGV watermarks
9a60ab0c7f6f drm/i915/adl_p: Add PCH support
3ca777b82d4f drm/i915/adl_p: ADL_P device info enabling
7c90acb36f4d drm/i915/adl_p: Add PCI Devices IDs
1a36ab332c53 drm/i915/xelpd: Add VRR guardband for VRR CTL
e545fc603067 drm/i915/xelpd: Add rc_qp_table for rcparams calculation
e1dce68d97ed drm/i915/xelpd: Calculate VDSC RC parameters
c9b04c68d8a0 drm/i915: Get slice height before computing rc params
ffeca9d43e30 drm/i915/xelpd: Support DP1.4 compression BPPs
c06f1cfdb54c drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
40c5437f3499 drm/i915/xelpd: Add Wa_14011503030
e280eb022d6d drm/i915/xelpd: Required bandwidth increases when VT-d is active
da736ae5f9ac drm/i915/xelpd: Increase maximum watermark lines to 255
206a1379e251 drm/i915/xelpd: Handle LPSP for XE_LPD
bc80bcbca1c1 drm/i915/xelpd: Add XE_LPD power wells
d770b6b8cd28 drm/i915/xelpd: Handle new location of outputs D and E
19b0bb00151b drm/i915/xelpd: Support 128k plane stride
a34d69c7ec8d drm/i915/xelpd: Define plane capabilities
3e432180467c drm/i915/xelpd: Enhanced pipe underrun reporting
2fd845823954 drm/i915/xelpd: Handle proper AUX interrupt bits
0afe26e7a99d drm/i915/xelpd: add XE_LPD display characteristics
a0318588a6b7 drm/i915/display: Simplify GLK display version tests
dd05f3125c5b drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in i915_irq.c
92d30df5de1c drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in intel_pm.c
4d46d9bc5a06 drm/i915/display: Eliminate most usage of INTEL_GEN()
8e54a5e601c5 drm/i915: Add DISPLAY_VER()
545bd02e1c9a drm/i915/display: Convert gen5/gen6 tests to IS_IRONLAKE/IS_SANDYBRIDGE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/index.html

--===============3909583693717655658==
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
<tr><td><b>Series:</b></td><td>Introduce Alder Lake-P</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87897/">https://patchwork.freedesktop.org/series/87897/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9851 -&gt; Patchwork_19786</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19786 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19786, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19786:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-cml-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19786 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9851/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19786/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202973">k.org#202973</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9851 -&gt; Patchwork_19786</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9851: 3c654b84957a19021def19bba396189409f197ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6030: e11e4bfb91fec9af71c3909996c66e5666270e07 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19786: ff4d1fd19abda93fafaec66c226bd41895c64fff @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ff4d1fd19abd drm/i915/display/adl_p: Implement PSR changes<br />
8e8789fb3382 drm/i915/perf: Enable OA formats for ADL_P<br />
5f5ddd87a7d9 drm/i915/display/adl_p: Remove CCS support<br />
80727a5175f3 drm/i915/display/adl_p: Implement Wa_22011320316<br />
338170857dd4 drm/i915/adl_p: Implement Wa_22011091694<br />
7ae8fa32c79f drm/i915/adl_p: Update memory bandwidth parameters<br />
0f2911a4def4 drm/i915/adlp: Add PIPE_MISC2 programming<br />
a967b8f0d577 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner<br />
f6779a65ec33 drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner<br />
f3adcffb1aee drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner<br />
24fddb894143 drm/i915/adl_p: Add PLL Support<br />
4b31b97ab781 drm/i915/adl_p: Enable/disable loadgen sharing<br />
b304533d0f55 drm/i915/adl_p: Define and use ADL-P specific DP translation tables<br />
229748b64190 drm/i915/adlp: Define GuC/HuC for Alderlake_P<br />
eaa274e708a8 drm/i915/adl_p: Add initial ADL_P Workarounds<br />
bed8e7bb8774 drm/i915/adl_p: Tx escape clock with DSI<br />
b7078c173757 drm/i915/adl_p: MBUS programming<br />
33b7d6985cbf drm/i915: Move intel_modeset_all_pipes()<br />
ece44a3951a4 drm/i915: Introduce MBUS relative dbuf offsets<br />
d9c40cc5183b drm/i915/adl_p: Add ddb allocation support<br />
7f6b13959baf drm/i915/adl_p: Don't config MBUS and DBUF during display initialization<br />
76d78f0a89b0 drm/i915/adl_p: Enable modular fia<br />
d3d588966024 drm/i915/adl_p: Implement TC sequences<br />
1cc279b9a9ae drm/i915/adl_p: Handle TC cold<br />
72da71eda198 drm/i915/display/tc: Rename safe_mode functions ownership<br />
b88ec5ff4cf4 drm/i915/adl_p: Add cdclk support for ADL-P<br />
53cbbdc4ce2b drm/i915/adl_p: Setup ports/phys<br />
a31a27c201e3 drm/i915/adl_p: Load DMC<br />
c8feb3de6d2f drm/i915/adl_p: Extend PLANE_WM bits for blocks &amp; lines<br />
e5d780a7e2c8 drm/i915/adl_p: Add dedicated SAGV watermarks<br />
9a60ab0c7f6f drm/i915/adl_p: Add PCH support<br />
3ca777b82d4f drm/i915/adl_p: ADL_P device info enabling<br />
7c90acb36f4d drm/i915/adl_p: Add PCI Devices IDs<br />
1a36ab332c53 drm/i915/xelpd: Add VRR guardband for VRR CTL<br />
e545fc603067 drm/i915/xelpd: Add rc_qp_table for rcparams calculation<br />
e1dce68d97ed drm/i915/xelpd: Calculate VDSC RC parameters<br />
c9b04c68d8a0 drm/i915: Get slice height before computing rc params<br />
ffeca9d43e30 drm/i915/xelpd: Support DP1.4 compression BPPs<br />
c06f1cfdb54c drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp<br />
40c5437f3499 drm/i915/xelpd: Add Wa_14011503030<br />
e280eb022d6d drm/i915/xelpd: Required bandwidth increases when VT-d is active<br />
da736ae5f9ac drm/i915/xelpd: Increase maximum watermark lines to 255<br />
206a1379e251 drm/i915/xelpd: Handle LPSP for XE_LPD<br />
bc80bcbca1c1 drm/i915/xelpd: Add XE_LPD power wells<br />
d770b6b8cd28 drm/i915/xelpd: Handle new location of outputs D and E<br />
19b0bb00151b drm/i915/xelpd: Support 128k plane stride<br />
a34d69c7ec8d drm/i915/xelpd: Define plane capabilities<br />
3e432180467c drm/i915/xelpd: Enhanced pipe underrun reporting<br />
2fd845823954 drm/i915/xelpd: Handle proper AUX interrupt bits<br />
0afe26e7a99d drm/i915/xelpd: add XE_LPD display characteristics<br />
a0318588a6b7 drm/i915/display: Simplify GLK display version tests<br />
dd05f3125c5b drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in i915_irq.c<br />
92d30df5de1c drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in intel_pm.c<br />
4d46d9bc5a06 drm/i915/display: Eliminate most usage of INTEL_GEN()<br />
8e54a5e601c5 drm/i915: Add DISPLAY_VER()<br />
545bd02e1c9a drm/i915/display: Convert gen5/gen6 tests to IS_IRONLAKE/IS_SANDYBRIDGE</p>

</body>
</html>

--===============3909583693717655658==--

--===============1622070230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1622070230==--
