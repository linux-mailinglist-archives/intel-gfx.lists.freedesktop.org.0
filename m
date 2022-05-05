Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D999751CC5D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 00:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD94310FC0D;
	Thu,  5 May 2022 22:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D09310FC0D;
 Thu,  5 May 2022 22:58:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A37AA01BB;
 Thu,  5 May 2022 22:58:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1687287141837141639=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 05 May 2022 22:58:17 -0000
Message-ID: <165179149759.7657.16218190513757016859@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220505213812.3979301-1-matthew.d.roper@intel.com>
In-Reply-To: <20220505213812.3979301-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Introduce_Ponte_Vecchio_=28rev2=29?=
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

--===============1687287141837141639==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Introduce Ponte Vecchio (rev2)
URL   : https://patchwork.freedesktop.org/series/103443/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11612 -> Patchwork_103443v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_103443v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103443v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/index.html

Participating hosts (41 -> 40)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (2): fi-rkl-11600 fi-bsw-cyan 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103443v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-each:
    - fi-hsw-g3258:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-hsw-g3258/igt@gem_sync@basic-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-hsw-g3258/igt@gem_sync@basic-each.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-kbl-soraka:      [SKIP][3] ([fdo#109271] / [fdo#111827]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-kbl-soraka/igt@kms_chamelium@dp-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-kbl-soraka/igt@kms_chamelium@dp-hpd-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_103443v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][5] -> [INCOMPLETE][6] ([i915#3921])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [DMESG-FAIL][7] ([i915#3987]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [INCOMPLETE][9] ([i915#3921] / [i915#5153]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - bat-adlp-4:         [DMESG-WARN][11] ([i915#3576]) -> [PASS][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/bat-adlp-4/igt@kms_busy@basic@modeset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/bat-adlp-4/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5801]: https://gitlab.freedesktop.org/drm/intel/issues/5801


Build changes
-------------

  * Linux: CI_DRM_11612 -> Patchwork_103443v2

  CI-20190529: 20190529
  CI_DRM_11612: 9f6ebefdd3fadb37d1e284e7f0bf0cfcd2fef75b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103443v2: 9f6ebefdd3fadb37d1e284e7f0bf0cfcd2fef75b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f41752acf146 drm/i915/pvc: read fuses for link copy engines
130d53a5578d drm/i915/pvc: skip all copy engines from aux table invalidate
d608ac99fab2 drm/i915/pvc: Reset support for new copy engines
2b1639d2aa3e drm/i915/pvc: Interrupt support for new copy engines
d4064df82c11 drm/i915/pvc: Engine definitions for new copy engines
0d90a6d4e6a2 drm/i915/gvt: Use intel_engine_mask_t for ring mask
69140f89ec0d drm/i915/pvc: Reduce stack usage in reset selftest with extra blitter engine
9782f9902d63 drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL
332fe30ef673 drm/i915/pvc: Read correct RP_STATE_CAP register
b8a70a3201f1 drm/i915/pvc: Define MOCS table for PVC
a15e27c9fa27 drm/i915/pvc: Add forcewake support
24bbf8bbee2c drm/i915/uncore: Reorganize and document shadow and forcewake tables

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/index.html

--===============1687287141837141639==
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
<tr><td><b>Series:</b></td><td>i915: Introduce Ponte Vecchio (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103443/">https://patchwork.freedesktop.org/series/103443/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11612 -&gt; Patchwork_103443v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_103443v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_103443v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Additional (1): bat-adlm-1 <br />
  Missing    (2): fi-rkl-11600 fi-bsw-cyan </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_103443v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_sync@basic-each:<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-hsw-g3258/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-hsw-g3258/igt@gem_sync@basic-each.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_chamelium@dp-hpd-fast:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-kbl-soraka/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-kbl-soraka/igt@kms_chamelium@dp-hpd-fast.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103443v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987">i915#3987</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5153">i915#5153</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11612/bat-adlp-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v2/bat-adlp-4/igt@kms_busy@basic@modeset.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11612 -&gt; Patchwork_103443v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11612: 9f6ebefdd3fadb37d1e284e7f0bf0cfcd2fef75b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103443v2: 9f6ebefdd3fadb37d1e284e7f0bf0cfcd2fef75b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f41752acf146 drm/i915/pvc: read fuses for link copy engines<br />
130d53a5578d drm/i915/pvc: skip all copy engines from aux table invalidate<br />
d608ac99fab2 drm/i915/pvc: Reset support for new copy engines<br />
2b1639d2aa3e drm/i915/pvc: Interrupt support for new copy engines<br />
d4064df82c11 drm/i915/pvc: Engine definitions for new copy engines<br />
0d90a6d4e6a2 drm/i915/gvt: Use intel_engine_mask_t for ring mask<br />
69140f89ec0d drm/i915/pvc: Reduce stack usage in reset selftest with extra blitter engine<br />
9782f9902d63 drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL<br />
332fe30ef673 drm/i915/pvc: Read correct RP_STATE_CAP register<br />
b8a70a3201f1 drm/i915/pvc: Define MOCS table for PVC<br />
a15e27c9fa27 drm/i915/pvc: Add forcewake support<br />
24bbf8bbee2c drm/i915/uncore: Reorganize and document shadow and forcewake tables</p>

</body>
</html>

--===============1687287141837141639==--
