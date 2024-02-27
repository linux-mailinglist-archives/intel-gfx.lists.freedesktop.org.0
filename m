Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D315D8684D4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 01:03:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D94B10EE9A;
	Tue, 27 Feb 2024 00:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDC510EE9A;
 Tue, 27 Feb 2024 00:03:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7280477683416307303=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Enable_Wa=5F14019159160_and?=
 =?utf-8?q?_Wa=5F16019325821_for_MTL_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Feb 2024 00:03:12 -0000
Message-ID: <170899219258.318338.10090406548501034261@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240223205632.1621019-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240223205632.1621019-1-John.C.Harrison@Intel.com>
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

--===============7280477683416307303==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Wa_14019159160 and Wa_16019325821 for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/130335/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14345 -> Patchwork_130335v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_130335v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-jsl-1/boot.html
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@ccs0:
    - bat-arls-1:         [PASS][5] -> [DMESG-WARN][6] ([i915#10194])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [PASS][7] -> [CRASH][8] ([i915#9947])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [PASS][9] -> [INCOMPLETE][10] ([i915#10241] / [i915#9413])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic@smem:
    - bat-arls-1:         [DMESG-WARN][11] ([i915#10194]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-arls-1/igt@gem_exec_create@basic@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-arls-1/igt@gem_exec_create@basic@smem.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-atsm-1:         [INCOMPLETE][13] ([i915#10094] / [i915#10137]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-rpls-3}:       [DMESG-WARN][15] ([i915#5591]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10094]: https://gitlab.freedesktop.org/drm/intel/issues/10094
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10241]: https://gitlab.freedesktop.org/drm/intel/issues/10241
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413
  [i915#9947]: https://gitlab.freedesktop.org/drm/intel/issues/9947


Build changes
-------------

  * Linux: CI_DRM_14345 -> Patchwork_130335v2

  CI-20190529: 20190529
  CI_DRM_14345: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130335v2: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

995a6c6906ea drm/i915/guc: Enable Wa_14019159160
a6a6a26a85a1 drm/i915/guc: Add support for w/a KLVs
5abb86912ab6 drm/i915: Enable Wa_16019325821

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/index.html

--===============7280477683416307303==
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
<tr><td><b>Series:</b></td><td>Enable Wa_14019159160 and Wa_16019325821 for MTL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130335/">https://patchwork.freedesktop.org/series/130335/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14345 -&gt; Patchwork_130335v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130335v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@ccs0:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-arls-1/igt@gem_exec_fence@basic-busy@ccs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9947">i915#9947</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10241">i915#10241</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#9413</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic@smem:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-arls-1/igt@gem_exec_create@basic@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-arls-1/igt@gem_exec_create@basic@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10094">i915#10094</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130335v2/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14345 -&gt; Patchwork_130335v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14345: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130335v2: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>995a6c6906ea drm/i915/guc: Enable Wa_14019159160<br />
a6a6a26a85a1 drm/i915/guc: Add support for w/a KLVs<br />
5abb86912ab6 drm/i915: Enable Wa_16019325821</p>

</body>
</html>

--===============7280477683416307303==--
