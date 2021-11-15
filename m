Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 767524503C6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 12:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E356E8E2;
	Mon, 15 Nov 2021 11:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0776989CD7;
 Mon, 15 Nov 2021 11:49:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F14DBA9932;
 Mon, 15 Nov 2021 11:49:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7287974542468785556=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tilak Tangudu" <tilak.tangudu@intel.com>
Date: Mon, 15 Nov 2021 11:49:49 -0000
Message-ID: <163697698998.2948.15112749594155961830@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211115101018.3141302-1-tilak.tangudu@intel.com>
In-Reply-To: <20211115101018.3141302-1-tilak.tangudu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_runtime_pm_autosuspend_by_default?=
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

--===============7287974542468785556==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable runtime pm autosuspend by default
URL   : https://patchwork.freedesktop.org/series/96897/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10881 -> Patchwork_21584
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/index.html

Participating hosts (40 -> 34)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (7): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-icl-u2 fi-pnv-d510 fi-icl-y fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_21584 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10881/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [PASS][3] -> [FAIL][4] ([i915#3239])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10881/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][6] -> [DMESG-WARN][7] ([i915#4269])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10881/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][8] ([fdo#109271]) +55 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][9] ([i915#2426])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-snb-2520m/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - fi-bsw-nick:        [DMESG-WARN][10] ([i915#3428]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10881/fi-bsw-nick/igt@gem_ringfill@basic-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-bsw-nick/igt@gem_ringfill@basic-all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3239]: https://gitlab.freedesktop.org/drm/intel/issues/3239
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750


Build changes
-------------

  * Linux: CI_DRM_10881 -> Patchwork_21584

  CI-20190529: 20190529
  CI_DRM_10881: ec2cf62da73ea8fd5f28c1a20468296bcae41d4a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6280: 246bfd31dba6bf184b26b170d91d72c90a54be6b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21584: 2bde69a247b51b00b0310635c535ec1fb5e78170 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2bde69a247b5 drm/i915/rpm: Enable runtime pm autosuspend by default

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/index.html

--===============7287974542468785556==
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
<tr><td><b>Series:</b></td><td>Enable runtime pm autosuspend by default</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96897/">https://patchwork.freedesktop.org/series/96897/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10881 -&gt; Patchwork_21584</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/index.html</p>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Additional (1): fi-snb-2520m <br />
  Missing    (7): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-icl-u2 fi-pnv-d510 fi-icl-y fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21584 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10881/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10881/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3239">i915#3239</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10881/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_ringfill@basic-all:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10881/fi-bsw-nick/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21584/fi-bsw-nick/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10881 -&gt; Patchwork_21584</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10881: ec2cf62da73ea8fd5f28c1a20468296bcae41d4a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6280: 246bfd31dba6bf184b26b170d91d72c90a54be6b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21584: 2bde69a247b51b00b0310635c535ec1fb5e78170 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2bde69a247b5 drm/i915/rpm: Enable runtime pm autosuspend by default</p>

</body>
</html>

--===============7287974542468785556==--
