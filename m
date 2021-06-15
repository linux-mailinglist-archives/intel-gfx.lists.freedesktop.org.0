Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 099CE3A7344
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 03:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B6D56E19A;
	Tue, 15 Jun 2021 01:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B71976E19A;
 Tue, 15 Jun 2021 01:24:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A897FAADD0;
 Tue, 15 Jun 2021 01:24:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 15 Jun 2021 01:24:29 -0000
Message-ID: <162372026966.8816.15558740876363525049@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210614162612.294869-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210614162612.294869-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5_TTM_sync_accelerated_migration_and_clear?=
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
Content-Type: multipart/mixed; boundary="===============1237732191=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1237732191==
Content-Type: multipart/alternative;
 boundary="===============0069238817119159643=="

--===============0069238817119159643==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915 TTM sync accelerated migration and clear
URL   : https://patchwork.freedesktop.org/series/91463/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10222 -> Patchwork_20362
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10222 and Patchwork_20362:

### New IGT tests (1) ###

  * igt@i915_selftest@live@migrate:
    - Statuses : 2 dmesg-warn(s) 34 pass(s)
    - Exec time: [0.51, 8.68] s

  

Known issues
------------

  Here are the changes found in Patchwork_20362 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-kbl-soraka/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#2782] / [i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * {igt@i915_selftest@live@migrate} (NEW):
    - {fi-ehl-2}:         NOTRUN -> [DMESG-WARN][5] ([i915#1222])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-ehl-2/igt@i915_selftest@live@migrate.html
    - {fi-jsl-1}:         NOTRUN -> [DMESG-WARN][6] ([i915#1222])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-jsl-1/igt@i915_selftest@live@migrate.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#1436])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][8] ([fdo#109271]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][10] ([i915#3303]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][12] ([i915#2782]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3542]: https://gitlab.freedesktop.org/drm/intel/issues/3542
  [i915#3544]: https://gitlab.freedesktop.org/drm/intel/issues/3544
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (42 -> 39)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10222 -> Patchwork_20362

  CI-20190529: 20190529
  CI_DRM_10222: 9b5675dc51137543709a5ec444b0d7076e43198e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6105: 598a154680374e7875ae9ffc98425abc57398b2f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20362: d95873d0888ac8c680a5527c57d526378ec6ccf4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d95873d0888a drm/i915/gem: Zap the i915_gem_object_blt code
eda8112d6927 drm/i915/gem: Zap the client blt code
7e0037bd1a17 drm/i915/ttm: accelerated move implementation
1c74336e9b0c drm/i915/gt: Setup a default migration context on the GT
40f8090431c6 drm/i915/gt: Pipelined clear
a498403a00c0 drm/i915/gt: Pipelined page migration
eec7f1143f99 drm/i915/gt: Export the pinned context constructor and destructor
03305cf7c83e drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
f748e9a88a62 drm/i915/gt: Add an insert_entry for gen8_ppgtt
52210b9e019a drm/i915: Introduce a ww transaction helper
161d138ac072 drm/i915: Break out dma_resv ww locking utilities to separate files
a9a395f920ef drm/i915: Reference objects on the ww object list

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/index.html

--===============0069238817119159643==
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
<tr><td><b>Series:</b></td><td>i915 TTM sync accelerated migration and clear</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91463/">https://patchwork.freedesktop.org/series/91463/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10222 -&gt; Patchwork_20362</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10222 and Patchwork_20362:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>Statuses : 2 dmesg-warn(s) 34 pass(s)</li>
<li>Exec time: [0.51, 8.68] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20362 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-kbl-soraka/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>{igt@i915_selftest@live@migrate} (NEW):</p>
<ul>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>)</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-jsl-1/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10222/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20362/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10222 -&gt; Patchwork_20362</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10222: 9b5675dc51137543709a5ec444b0d7076e43198e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6105: 598a154680374e7875ae9ffc98425abc57398b2f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20362: d95873d0888ac8c680a5527c57d526378ec6ccf4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d95873d0888a drm/i915/gem: Zap the i915_gem_object_blt code<br />
eda8112d6927 drm/i915/gem: Zap the client blt code<br />
7e0037bd1a17 drm/i915/ttm: accelerated move implementation<br />
1c74336e9b0c drm/i915/gt: Setup a default migration context on the GT<br />
40f8090431c6 drm/i915/gt: Pipelined clear<br />
a498403a00c0 drm/i915/gt: Pipelined page migration<br />
eec7f1143f99 drm/i915/gt: Export the pinned context constructor and destructor<br />
03305cf7c83e drm/i915/gt: Add a routine to iterate over the pagetables of a GTT<br />
f748e9a88a62 drm/i915/gt: Add an insert_entry for gen8_ppgtt<br />
52210b9e019a drm/i915: Introduce a ww transaction helper<br />
161d138ac072 drm/i915: Break out dma_resv ww locking utilities to separate files<br />
a9a395f920ef drm/i915: Reference objects on the ww object list</p>

</body>
</html>

--===============0069238817119159643==--

--===============1237732191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1237732191==--
