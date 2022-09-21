Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 278835BF9E7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 10:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13C210E8DC;
	Wed, 21 Sep 2022 08:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 516E510E8D8;
 Wed, 21 Sep 2022 08:55:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48F8FA7DFB;
 Wed, 21 Sep 2022 08:55:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4281851105892321432=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Wed, 21 Sep 2022 08:55:27 -0000
Message-ID: <166375052725.11601.12584322031085910371@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220921070945.27764-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20220921070945.27764-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev3=29?=
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

--===============4281851105892321432==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev3)
URL   : https://patchwork.freedesktop.org/series/105879/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12163 -> Patchwork_105879v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105879v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105879v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/index.html

Participating hosts (42 -> 40)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (3): fi-hsw-4770 fi-rkl-11600 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105879v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-ilk-650/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-blb-e6850/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-pnv-d510/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-snb-2520m:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-snb-2520m/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-snb-2520m/igt@i915_module_load@load.html
    - fi-hsw-g3258:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-hsw-g3258/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-hsw-g3258/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-ivb-3770/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-ivb-3770/igt@i915_module_load@load.html
    - fi-snb-2600:        [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-snb-2600/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-snb-2600/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gem_migrate:
    - bat-dg1-5:          [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-dg1-5/igt@i915_selftest@live@gem_migrate.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-dg1-5/igt@i915_selftest@live@gem_migrate.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_migrate:
    - {bat-dg2-8}:        [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-dg2-8/igt@i915_selftest@live@gem_migrate.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-dg2-8/igt@i915_selftest@live@gem_migrate.html
    - {bat-dg2-9}:        [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-dg2-9/igt@i915_selftest@live@gem_migrate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-dg2-9/igt@i915_selftest@live@gem_migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_105879v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-skl-6700k2:      [PASS][21] -> [FAIL][22] ([i915#5032])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-skl-6700k2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-skl-6700k2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][23] ([i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@load:
    - fi-elk-e7500:       [PASS][24] -> [INCOMPLETE][25] ([i915#6836])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-elk-e7500/igt@i915_module_load@load.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-elk-e7500/igt@i915_module_load@load.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-tgl-u2:          NOTRUN -> [SKIP][26] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-tgl-u2:          NOTRUN -> [SKIP][27] ([i915#4103])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][28] ([fdo#109285])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-tgl-u2:          NOTRUN -> [SKIP][29] ([i915#3555])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@runner@aborted:
    - fi-ivb-3770:        NOTRUN -> [FAIL][30] ([i915#4312] / [i915#6219])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][31] ([i915#4312] / [i915#6836])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-elk-e7500/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][32] ([i915#4312])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][33] ([i915#4312] / [i915#4991])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-ilk-650/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][34] ([i915#2403] / [i915#4312])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-blb-e6850/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][35] ([i915#4312])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-dg1-5/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][36] ([i915#2403] / [i915#4312])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-pnv-d510/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][37] ([i915#4312])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-snb-2520m/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][38] ([i915#4312] / [i915#6246])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][39] ([i915#2867]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][41] ([i915#4983] / [i915#5828]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-rpls-1/igt@i915_selftest@live@reset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-rpls-1/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6836]: https://gitlab.freedesktop.org/drm/intel/issues/6836


Build changes
-------------

  * Linux: CI_DRM_12163 -> Patchwork_105879v3

  CI-20190529: 20190529
  CI_DRM_12163: 8a052348946d9ec1b368ddcc1d3db5f2fc486f75 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6659: 1becf700a737a7a98555a0cfbe8566355377afb2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v3: 8a052348946d9ec1b368ddcc1d3db5f2fc486f75 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bfa82522715e drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
9be69aec5a6b drm/i915/vm_bind: Skip vma_lookup for persistent vmas
43ec58a56ea6 drm/i915/vm_bind: userptr dma-resv changes
fa391ae135ab drm/i915/vm_bind: Handle persistent vmas in execbuf3
ca7e10c22b47 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
76c0a2dc950a drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
7a078b2c65a3 drm/i915/vm_bind: Abstract out common execbuf functions
59f16bc4df63 drm/i915/vm_bind: Add out fence support
8dc247ec22e0 drm/i915/vm_bind: Handle persistent vmas
c0e5a22deac3 drm/i915/vm_bind: Support for VM private BOs
e60dcd038470 drm/i915/vm_bind: Implement bind and unbind of object
be9b4b742db7 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
720b5cbfeaad drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
b8b76a29b94b drm/i915/vm_bind: Expose vm lookup function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/index.html

--===============4281851105892321432==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12163 -&gt; Patchwork_105879v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105879v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_105879v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Additional (1): fi-tgl-u2 <br />
  Missing    (3): fi-hsw-4770 fi-rkl-11600 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105879v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-ilk-650/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-blb-e6850/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-pnv-d510/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-snb-2520m/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-snb-2520m/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-hsw-g3258/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-hsw-g3258/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-ivb-3770/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-snb-2600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-snb-2600/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-dg1-5/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-dg1-5/igt@i915_selftest@live@gem_migrate.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-dg2-8/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-dg2-8/igt@i915_selftest@live@gem_migrate.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-dg2-9/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-dg2-9/igt@i915_selftest@live@gem_migrate.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-skl-6700k2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-elk-e7500/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6836">i915#6836</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6836">i915#6836</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12163/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5828">i915#5828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v3/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12163 -&gt; Patchwork_105879v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12163: 8a052348946d9ec1b368ddcc1d3db5f2fc486f75 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6659: 1becf700a737a7a98555a0cfbe8566355377afb2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v3: 8a052348946d9ec1b368ddcc1d3db5f2fc486f75 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bfa82522715e drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode<br />
9be69aec5a6b drm/i915/vm_bind: Skip vma_lookup for persistent vmas<br />
43ec58a56ea6 drm/i915/vm_bind: userptr dma-resv changes<br />
fa391ae135ab drm/i915/vm_bind: Handle persistent vmas in execbuf3<br />
ca7e10c22b47 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()<br />
76c0a2dc950a drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl<br />
7a078b2c65a3 drm/i915/vm_bind: Abstract out common execbuf functions<br />
59f16bc4df63 drm/i915/vm_bind: Add out fence support<br />
8dc247ec22e0 drm/i915/vm_bind: Handle persistent vmas<br />
c0e5a22deac3 drm/i915/vm_bind: Support for VM private BOs<br />
e60dcd038470 drm/i915/vm_bind: Implement bind and unbind of object<br />
be9b4b742db7 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()<br />
720b5cbfeaad drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()<br />
b8b76a29b94b drm/i915/vm_bind: Expose vm lookup function</p>

</body>
</html>

--===============4281851105892321432==--
