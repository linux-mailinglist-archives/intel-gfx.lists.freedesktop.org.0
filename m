Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DD82F083D
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jan 2021 17:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C74516E0CD;
	Sun, 10 Jan 2021 16:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C1006E0C9;
 Sun, 10 Jan 2021 16:05:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B538A8831;
 Sun, 10 Jan 2021 16:05:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 10 Jan 2021 16:05:35 -0000
Message-ID: <161029473554.22036.15113515858979566739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210110150404.19535-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210110150404.19535-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915/gt=3A_Limit_VFE_threads_?=
 =?utf-8?q?based_on_GT?=
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
Content-Type: multipart/mixed; boundary="===============1196269182=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1196269182==
Content-Type: multipart/alternative;
 boundary="===============3503704426905885299=="

--===============3503704426905885299==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/11] drm/i915/gt: Limit VFE threads based on GT
URL   : https://patchwork.freedesktop.org/series/85682/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9573 -> Patchwork_19311
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19311 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19311, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19311:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_19311 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][6] -> [DMESG-FAIL][7] ([i915#2675])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][8] -> [DMESG-WARN][9] ([i915#402]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][10] ([i915#2029])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][11] ([i915#1436])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-bsw-n3050/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][12] ([i915#1602] / [i915#2029] / [i915#456])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][13] ([i915#402]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][15] ([i915#142] / [i915#2405]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][17] ([i915#1161] / [i915#262]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9573 -> Patchwork_19311

  CI-20190529: 20190529
  CI_DRM_9573: cd0df21e28c36de80356344ff8683be2813c6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19311: 0dee39e5ddf4f8bed9fbac4d4c4a7bed38900990 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0dee39e5ddf4 drm/i915: Mark per-engine-reset as supported on gen7
92e8b37223ae drm/i915/selftests: Prepare the selftests for engine resets with ring submission
04d6143b4820 drm/i915/gt: Pull ring submission resume under its caller forcewake
d42ad5b8ac19 drm/i915/gt: Lift stop_ring() to reset_prepare
1695ce6b5260 drm/i915/gt: Reapply ppgtt enabling after engine resets
66c741851381 drm/i915/gt: Replace open-coded intel_engine_stop_cs()
db29438bd0f1 drm/i915/gt: Rearrange ivb workarounds
46082f463e50 drm/i915/gt: Rearrange vlv workarounds
caa80494f198 drm/i915: Allow the sysadmin to override security mitigations
3de2a3eaddac drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail
b57630875319 drm/i915/gt: Limit VFE threads based on GT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/index.html

--===============3503704426905885299==
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
<tr><td><b>Series:</b></td><td>series starting with [01/11] drm/i915/gt: Limit VFE threads based on GT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85682/">https://patchwork.freedesktop.org/series/85682/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9573 -&gt; Patchwork_19311</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19311 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19311, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19311:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19311 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19311/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9573 -&gt; Patchwork_19311</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9573: cd0df21e28c36de80356344ff8683be2813c6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19311: 0dee39e5ddf4f8bed9fbac4d4c4a7bed38900990 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0dee39e5ddf4 drm/i915: Mark per-engine-reset as supported on gen7<br />
92e8b37223ae drm/i915/selftests: Prepare the selftests for engine resets with ring submission<br />
04d6143b4820 drm/i915/gt: Pull ring submission resume under its caller forcewake<br />
d42ad5b8ac19 drm/i915/gt: Lift stop_ring() to reset_prepare<br />
1695ce6b5260 drm/i915/gt: Reapply ppgtt enabling after engine resets<br />
66c741851381 drm/i915/gt: Replace open-coded intel_engine_stop_cs()<br />
db29438bd0f1 drm/i915/gt: Rearrange ivb workarounds<br />
46082f463e50 drm/i915/gt: Rearrange vlv workarounds<br />
caa80494f198 drm/i915: Allow the sysadmin to override security mitigations<br />
3de2a3eaddac drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail<br />
b57630875319 drm/i915/gt: Limit VFE threads based on GT</p>

</body>
</html>

--===============3503704426905885299==--

--===============1196269182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1196269182==--
