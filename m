Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 315C04AE5D5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 01:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F4210E230;
	Wed,  9 Feb 2022 00:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DC6C10E230;
 Wed,  9 Feb 2022 00:20:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71418AA0EA;
 Wed,  9 Feb 2022 00:20:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3428088338982799132=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 09 Feb 2022 00:20:12 -0000
Message-ID: <164436601245.23763.2241400955258353655@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208213548.244829-1-jose.souza@intel.com>
In-Reply-To: <20220208213548.244829-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/tgl+=3A_Implement_new_PLL_programming_step?=
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

--===============3428088338982799132==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/tgl+: Implement new PLL programming step
URL   : https://patchwork.freedesktop.org/series/99867/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11205 -> Patchwork_22216
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/index.html

Participating hosts (46 -> 43)
------------------------------

  Missing    (3): fi-bsw-cyan bat-jsl-2 shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22216 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#4269])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][4] ([i915#2426] / [i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [INCOMPLETE][5] ([i915#146]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][7] ([i915#4785]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [DMESG-WARN][9] -> [DMESG-WARN][10] ([i915#1610])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][11] ([i915#4957]) -> [DMESG-FAIL][12] ([i915#4494] / [i915#4957])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11205 -> Patchwork_22216

  CI-20190529: 20190529
  CI_DRM_11205: 9999c764a7571bebed03bec481d6fffcb23144fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6341: a96674e747ea2f2431bbf8813156adc44ec3162a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22216: 2f56199b030165ee565961de04328d967d0483d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2f56199b0301 drm/i915/display/tgl+: Implement new PLL programming step

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/index.html

--===============3428088338982799132==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/tgl+: Implement new PLL programming step</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99867/">https://patchwork.freedesktop.org/series/99867/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11205 -&gt; Patchwork_22216</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/index.html</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Missing    (3): fi-bsw-cyan bat-jsl-2 shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22216 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11205/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22216/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11205 -&gt; Patchwork_22216</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11205: 9999c764a7571bebed03bec481d6fffcb23144fe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6341: a96674e747ea2f2431bbf8813156adc44ec3162a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22216: 2f56199b030165ee565961de04328d967d0483d9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2f56199b0301 drm/i915/display/tgl+: Implement new PLL programming step</p>

</body>
</html>

--===============3428088338982799132==--
