Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6849246F906
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 03:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F91F88F93;
	Fri, 10 Dec 2021 02:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3579888F93;
 Fri, 10 Dec 2021 02:16:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32165A00A0;
 Fri, 10 Dec 2021 02:16:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6485751766308161925=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 10 Dec 2021 02:16:29 -0000
Message-ID: <163910258920.3444.6378008753515752922@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211209141817.16038-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211209141817.16038-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Use_I915=5FBO=5FALLOC=5FCONTIGUOUS_flag_for_DPT?=
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

--===============6485751766308161925==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Use I915_BO_ALLOC_CONTIGUOUS flag for DPT
URL   : https://patchwork.freedesktop.org/series/97806/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10984 -> Patchwork_21801
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21801 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21801, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/index.html

Participating hosts (44 -> 35)
------------------------------

  Additional (2): fi-kbl-soraka fi-tgl-u2 
  Missing    (11): fi-ilk-m540 bat-dg1-6 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 bat-jsl-2 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21801:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_21801 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][2] ([i915#4006])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-tgl-u2:          NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][6] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-u2:          NOTRUN -> [SKIP][7] ([i915#4103]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][8] ([fdo#109285])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][9] ([i915#3301])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][10] ([i915#2722] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-glk-dsi:         [DMESG-WARN][11] ([i915#2943]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html
    - fi-tgl-1115g4:      [FAIL][13] ([i915#1888]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [FAIL][15] ([i915#3239]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][17] ([i915#4269]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2943]: https://gitlab.freedesktop.org/drm/intel/issues/2943
  [i915#3239]: https://gitlab.freedesktop.org/drm/intel/issues/3239
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_10984 -> Patchwork_21801

  CI-20190529: 20190529
  CI_DRM_10984: d7b5243a6417de5fc244d7dc45109f6835aa7c88 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6304: ef0df2fbe5847fe5c4426b8a86a0b101588d0586 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21801: 5d85e4d8308a08c26a1e94d66b80a6f16223be4c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5d85e4d8308a drm/i915/dg2: Use I915_BO_ALLOC_CONTIGUOUS flag for DPT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/index.html

--===============6485751766308161925==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Use I915_BO_ALLOC_CONTIGUOUS flag for DPT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97806/">https://patchwork.freedesktop.org/series/97806/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10984 -&gt; Patchwork_21801</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21801 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21801, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/index.html</p>
<h2>Participating hosts (44 -&gt; 35)</h2>
<p>Additional (2): fi-kbl-soraka fi-tgl-u2 <br />
  Missing    (11): fi-ilk-m540 bat-dg1-6 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 bat-jsl-2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21801:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21801 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4006">i915#4006</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2943">i915#2943</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3239">i915#3239</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10984/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21801/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10984 -&gt; Patchwork_21801</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10984: d7b5243a6417de5fc244d7dc45109f6835aa7c88 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6304: ef0df2fbe5847fe5c4426b8a86a0b101588d0586 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21801: 5d85e4d8308a08c26a1e94d66b80a6f16223be4c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5d85e4d8308a drm/i915/dg2: Use I915_BO_ALLOC_CONTIGUOUS flag for DPT</p>

</body>
</html>

--===============6485751766308161925==--
