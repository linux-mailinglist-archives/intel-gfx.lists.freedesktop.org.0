Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 785384E4F58
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 10:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A779110E605;
	Wed, 23 Mar 2022 09:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B18810E605;
 Wed, 23 Mar 2022 09:26:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46EDEA00A0;
 Wed, 23 Mar 2022 09:26:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6725979240853814313=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Date: Wed, 23 Mar 2022 09:26:34 -0000
Message-ID: <164802759428.17992.13606178316121244127@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220323071641.14560-1-zbigniew.kempczynski@intel.com>
In-Reply-To: <20220323071641.14560-1-zbigniew.kempczynski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/dg2=3A_Add_relocation_exception=22?=
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

--===============6725979240853814313==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm/i915/dg2: Add relocation exception"
URL   : https://patchwork.freedesktop.org/series/101669/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11397 -> Patchwork_22652
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22652 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22652, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/index.html

Participating hosts (49 -> 41)
------------------------------

  Missing    (8): shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22652:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2520m:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {bat-dg2-9}:        [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-9/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-9/igt@gem_exec_gttfill@basic.html
    - {bat-dg2-8}:        [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-8/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@basic:
    - {bat-dg2-9}:        [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-9/igt@gem_exec_parallel@engines@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-9/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - {bat-dg2-8}:        [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-8/igt@gem_exec_parallel@engines@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-8/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-dg2-9}:        [DMESG-WARN][11] ([i915#5193]) -> [FAIL][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-dg2-8}:        [DMESG-WARN][13] ([i915#5193]) -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-8/igt@gem_exec_suspend@basic-s3@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-8/igt@gem_exec_suspend@basic-s3@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_22652 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-glk-dsi:         [DMESG-WARN][15] ([i915#2943]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@coherency:
    - {bat-rpls-2}:       [INCOMPLETE][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-rpls-2/igt@i915_selftest@live@coherency.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-rpls-2/igt@i915_selftest@live@coherency.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2943]: https://gitlab.freedesktop.org/drm/intel/issues/2943
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5337]: https://gitlab.freedesktop.org/drm/intel/issues/5337
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342


Build changes
-------------

  * Linux: CI_DRM_11397 -> Patchwork_22652

  CI-20190529: 20190529
  CI_DRM_11397: 056d47eaf6ea753fa2e21da31f9cbd8b721bbb7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22652: 16ec815c909fcd462eea188236dabb10e5647356 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

16ec815c909f Revert "drm/i915/dg2: Add relocation exception"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/index.html

--===============6725979240853814313==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm/i915/dg2: Add relocation exception&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101669/">https://patchwork.freedesktop.org/series/101669/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11397 -&gt; Patchwork_22652</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22652 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22652, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/index.html</p>
<h2>Participating hosts (49 -&gt; 41)</h2>
<p>Missing    (8): shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22652:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-9/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-9/igt@gem_exec_gttfill@basic.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-8/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-8/igt@gem_exec_gttfill@basic.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-9/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-9/igt@gem_exec_parallel@engines@basic.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-8/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-8/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5193">i915#5193</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg2-8/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5193">i915#5193</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-dg2-8/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22652 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2943">i915#2943</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-rpls-2/igt@i915_selftest@live@coherency.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22652/bat-rpls-2/igt@i915_selftest@live@coherency.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11397 -&gt; Patchwork_22652</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11397: 056d47eaf6ea753fa2e21da31f9cbd8b721bbb7b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22652: 16ec815c909fcd462eea188236dabb10e5647356 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>16ec815c909f Revert "drm/i915/dg2: Add relocation exception"</p>

</body>
</html>

--===============6725979240853814313==--
