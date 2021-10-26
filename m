Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FC943BB83
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 22:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB6ED6E865;
	Tue, 26 Oct 2021 20:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6C806E48E;
 Tue, 26 Oct 2021 20:24:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7C99A0169;
 Tue, 26 Oct 2021 20:24:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2821850201213558079=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Oct 2021 20:24:13 -0000
Message-ID: <163527985379.9775.11985068631283647281@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211026161517.2694067-1-imre.deak@intel.com>
In-Reply-To: <20211026161517.2694067-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/fb=3A_Simplify_modifier_handling_more?=
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

--===============2821850201213558079==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fb: Simplify modifier handling more
URL   : https://patchwork.freedesktop.org/series/96308/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10792 -> Patchwork_21451
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21451 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21451, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (2): fi-ilk-650 fi-pnv-d510 
  Missing    (4): fi-ctg-p8600 bat-adlp-4 bat-dg1-6 bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21451:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-pnv-d510:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-pnv-d510/igt@core_hotunplug@unbind-rebind.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_create@basic@smem}:
    - fi-bsw-nick:        [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-bsw-nick/igt@gem_exec_create@basic@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-bsw-nick/igt@gem_exec_create@basic@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_21451 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-ilk-650:         NOTRUN -> [SKIP][4] ([fdo#109271]) +35 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-WARN][6] ([i915#1982] / [i915#262])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][7] -> [INCOMPLETE][8] ([i915#2940])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][10] ([fdo#109271]) +53 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][11] ([i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-bsw-nick/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][12] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][13] ([i915#4269]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
    - {fi-hsw-gt1}:       [DMESG-WARN][15] ([i915#4290]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4290]: https://gitlab.freedesktop.org/drm/intel/issues/4290
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Build changes
-------------

  * Linux: CI_DRM_10792 -> Patchwork_21451

  CI-20190529: 20190529
  CI_DRM_10792: 299777ddcc06c9a0ea7b95a0823ccaca268d16b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21451: 5ed4505aff1d9b4a472e3a2ae70c2c9d8d646642 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5ed4505aff1d drm/i915/fb: Fold modifier CCS type/tiling attribute to plane caps
01af6655070d drm/i915/fb: Don't store bitmasks in the intel_plane_caps enum
6f6061e382b3 drm/i915/fb: Don't report MC CCS plane capability on GEN<12

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/index.html

--===============2821850201213558079==
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
<tr><td><b>Series:</b></td><td>drm/i915/fb: Simplify modifier handling more</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96308/">https://patchwork.freedesktop.org/series/96308/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10792 -&gt; Patchwork_21451</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21451 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21451, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (2): fi-ilk-650 fi-pnv-d510 <br />
  Missing    (4): fi-ctg-p8600 bat-adlp-4 bat-dg1-6 bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21451:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-pnv-d510/igt@core_hotunplug@unbind-rebind.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@gem_exec_create@basic@smem}:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-bsw-nick/igt@gem_exec_create@basic@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-bsw-nick/igt@gem_exec_create@basic@smem.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21451 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10792/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4290">i915#4290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21451/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10792 -&gt; Patchwork_21451</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10792: 299777ddcc06c9a0ea7b95a0823ccaca268d16b8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21451: 5ed4505aff1d9b4a472e3a2ae70c2c9d8d646642 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5ed4505aff1d drm/i915/fb: Fold modifier CCS type/tiling attribute to plane caps<br />
01af6655070d drm/i915/fb: Don't store bitmasks in the intel_plane_caps enum<br />
6f6061e382b3 drm/i915/fb: Don't report MC CCS plane capability on GEN&lt;12</p>

</body>
</html>

--===============2821850201213558079==--
