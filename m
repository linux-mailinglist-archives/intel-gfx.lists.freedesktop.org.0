Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 245693A81CC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 16:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F10389BF1;
	Tue, 15 Jun 2021 14:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6EA2489363;
 Tue, 15 Jun 2021 14:05:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6AEB2AADD0;
 Tue, 15 Jun 2021 14:05:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 15 Jun 2021 14:05:37 -0000
Message-ID: <162376593743.8817.9947397855499637698@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5_TTM_sync_accelerated_migration_and_clear_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1617887039=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1617887039==
Content-Type: multipart/alternative;
 boundary="===============1061811126758499648=="

--===============1061811126758499648==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915 TTM sync accelerated migration and clear (rev3)
URL   : https://patchwork.freedesktop.org/series/91463/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10225 -> Patchwork_20371
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10225 and Patchwork_20371:

### New IGT tests (1) ###

  * igt@i915_selftest@live@migrate:
    - Statuses : 2 dmesg-warn(s) 33 pass(s)
    - Exec time: [0.52, 8.94] s

  

Known issues
------------

  Here are the changes found in Patchwork_20371 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][2] -> [DMESG-FAIL][3] ([i915#2927])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * {igt@i915_selftest@live@migrate} (NEW):
    - {fi-ehl-2}:         NOTRUN -> [DMESG-WARN][4] ([i915#1222])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-ehl-2/igt@i915_selftest@live@migrate.html
    - {fi-jsl-1}:         NOTRUN -> [DMESG-WARN][5] ([i915#1222])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-jsl-1/igt@i915_selftest@live@migrate.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][6] ([fdo#109271] / [i915#1436])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-bsw-nick/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][7] ([i915#1602] / [i915#2029])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][8] ([i915#3303]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][10] ([i915#2782]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (48 -> 39)
------------------------------

  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10225 -> Patchwork_20371

  CI-20190529: 20190529
  CI_DRM_10225: 52beaf52657f49ffda64af3c46548fb0907cf66d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6107: 2bec4e7619f04d2ca86006917acd3b5c86fb73a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20371: 51bd492a35f8e9dbcb87bf324ecde7c1736c9759 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

51bd492a35f8 drm/i915/gem: Zap the i915_gem_object_blt code
656ff10118e4 drm/i915/gem: Zap the client blt code
54c4a427f357 drm/i915/ttm: accelerated move implementation
1196a59da677 drm/i915/gt: Setup a default migration context on the GT
35222babd9d2 drm/i915/gt: Pipelined clear
ee3ad654412a drm/i915/gt: Pipelined page migration
9c144ca818bb drm/i915/gt: Export the pinned context constructor and destructor
b8de4e1527e9 drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
1d7d203cc9de drm/i915/gt: Add an insert_entry for gen8_ppgtt
170905ae335a drm/i915: Introduce a ww transaction helper
dad033f5d41d drm/i915: Break out dma_resv ww locking utilities to separate files
84d52ccba4bc drm/i915: Reference objects on the ww object list

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/index.html

--===============1061811126758499648==
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
<tr><td><b>Series:</b></td><td>i915 TTM sync accelerated migration and clear (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91463/">https://patchwork.freedesktop.org/series/91463/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10225 -&gt; Patchwork_20371</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10225 and Patchwork_20371:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>Statuses : 2 dmesg-warn(s) 33 pass(s)</li>
<li>Exec time: [0.52, 8.94] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20371 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</li>
</ul>
</li>
<li>
<p>{igt@i915_selftest@live@migrate} (NEW):</p>
<ul>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>)</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-jsl-1/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10225/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20371/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (48 -&gt; 39)</h2>
<p>Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10225 -&gt; Patchwork_20371</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10225: 52beaf52657f49ffda64af3c46548fb0907cf66d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6107: 2bec4e7619f04d2ca86006917acd3b5c86fb73a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20371: 51bd492a35f8e9dbcb87bf324ecde7c1736c9759 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>51bd492a35f8 drm/i915/gem: Zap the i915_gem_object_blt code<br />
656ff10118e4 drm/i915/gem: Zap the client blt code<br />
54c4a427f357 drm/i915/ttm: accelerated move implementation<br />
1196a59da677 drm/i915/gt: Setup a default migration context on the GT<br />
35222babd9d2 drm/i915/gt: Pipelined clear<br />
ee3ad654412a drm/i915/gt: Pipelined page migration<br />
9c144ca818bb drm/i915/gt: Export the pinned context constructor and destructor<br />
b8de4e1527e9 drm/i915/gt: Add a routine to iterate over the pagetables of a GTT<br />
1d7d203cc9de drm/i915/gt: Add an insert_entry for gen8_ppgtt<br />
170905ae335a drm/i915: Introduce a ww transaction helper<br />
dad033f5d41d drm/i915: Break out dma_resv ww locking utilities to separate files<br />
84d52ccba4bc drm/i915: Reference objects on the ww object list</p>

</body>
</html>

--===============1061811126758499648==--

--===============1617887039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1617887039==--
