Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381134910E7
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jan 2022 21:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E31310EEAD;
	Mon, 17 Jan 2022 20:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D8F810EEAD;
 Mon, 17 Jan 2022 20:16:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C42FA0169;
 Mon, 17 Jan 2022 20:16:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2947646783503081038=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Mon, 17 Jan 2022 20:16:55 -0000
Message-ID: <164245061548.28490.1788387204227568350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220117193255.236599-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220117193255.236599-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_multitile_support?=
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

--===============2947646783503081038==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce multitile support
URL   : https://patchwork.freedesktop.org/series/98958/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11092 -> Patchwork_22009
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/index.html

Participating hosts (47 -> 42)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (6): fi-kbl-soraka shard-tglu fi-bsw-cyan shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22009:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@reset:
    - {bat-adlp-6}:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11092/bat-adlp-6/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/bat-adlp-6/igt@i915_selftest@live@reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_22009 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][3] ([fdo#109315]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-tgl-1115g4:      [PASS][4] -> [FAIL][5] ([i915#1888])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11092/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][6] -> [INCOMPLETE][7] ([i915#146])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11092/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][8] ([i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] ([i915#4613]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][10] ([fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          NOTRUN -> [SKIP][11] ([fdo#109278]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][12] ([fdo#109285])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][13] ([i915#3301])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  
#### Warnings ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [FAIL][14] ([i915#4547]) -> [INCOMPLETE][15] ([i915#4838])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11092/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4838]: https://gitlab.freedesktop.org/drm/intel/issues/4838
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897


Build changes
-------------

  * Linux: CI_DRM_11092 -> Patchwork_22009

  CI-20190529: 20190529
  CI_DRM_11092: e20161a37d76ea1707961c320bb3218b2a368a63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6327: 0d559158c2d3b5723abbfc2cb4b04532e28663b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22009: 19cc3444427011b704776e93cff7c6d1377124fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

19cc34444270 drm/i915/gt: make a gt sysfs group and move power management files
3a9bf34c3413 drm/i915: Prepare for multiple GTs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/index.html

--===============2947646783503081038==
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
<tr><td><b>Series:</b></td><td>Introduce multitile support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98958/">https://patchwork.freedesktop.org/series/98958/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11092 -&gt; Patchwork_22009</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/index.html</p>
<h2>Participating hosts (47 -&gt; 42)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (6): fi-kbl-soraka shard-tglu fi-bsw-cyan shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22009:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11092/bat-adlp-6/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/bat-adlp-6/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22009 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11092/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0@smem.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11092/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11092/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22009/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4838">i915#4838</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11092 -&gt; Patchwork_22009</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11092: e20161a37d76ea1707961c320bb3218b2a368a63 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6327: 0d559158c2d3b5723abbfc2cb4b04532e28663b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22009: 19cc3444427011b704776e93cff7c6d1377124fd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>19cc34444270 drm/i915/gt: make a gt sysfs group and move power management files<br />
3a9bf34c3413 drm/i915: Prepare for multiple GTs</p>

</body>
</html>

--===============2947646783503081038==--
