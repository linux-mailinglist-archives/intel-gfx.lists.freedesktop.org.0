Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153104E4CAC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 07:20:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61CFD10E252;
	Wed, 23 Mar 2022 06:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3DD910E252;
 Wed, 23 Mar 2022 06:20:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1BE7A0003;
 Wed, 23 Mar 2022 06:20:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7935474659774556087=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Wed, 23 Mar 2022 06:20:54 -0000
Message-ID: <164801645476.17994.14224734468907176491@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220321044330.27723-1-cooper.chiou@intel.com>
In-Reply-To: <20220321044330.27723-1-cooper.chiou@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_filter_DisplayID_v2=2E0_CTA_block_in_audio_detection_?=
 =?utf-8?b?KHJldjIp?=
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

--===============7935474659774556087==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: filter DisplayID v2.0 CTA block in audio detection (rev2)
URL   : https://patchwork.freedesktop.org/series/101565/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11397 -> Patchwork_22650
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/index.html

Participating hosts (49 -> 41)
------------------------------

  Missing    (8): shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22650 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-glk-dsi:         [DMESG-WARN][1] ([i915#2943]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][3] ([i915#4494] / [i915#4957]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - {fi-hsw-g3258}:     [INCOMPLETE][5] ([i915#4785]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][7] ([i915#3303]) -> [INCOMPLETE][8] ([i915#4785])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2943]: https://gitlab.freedesktop.org/drm/intel/issues/2943
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5340]: https://gitlab.freedesktop.org/drm/intel/issues/5340
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342


Build changes
-------------

  * Linux: CI_DRM_11397 -> Patchwork_22650

  CI-20190529: 20190529
  CI_DRM_11397: 056d47eaf6ea753fa2e21da31f9cbd8b721bbb7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22650: 67ac8aa43118c5586e781cf65eeb03681d40788e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

67ac8aa43118 drm/edid: check basic audio support on CEA extension block

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/index.html

--===============7935474659774556087==
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
<tr><td><b>Series:</b></td><td>drm/edid: filter DisplayID v2.0 CTA block in audio detection (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101565/">https://patchwork.freedesktop.org/series/101565/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11397 -&gt; Patchwork_22650</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/index.html</p>
<h2>Participating hosts (49 -&gt; 41)</h2>
<p>Missing    (8): shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22650 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2943">i915#2943</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/fi-glk-dsi/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>{fi-hsw-g3258}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11397/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22650/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11397 -&gt; Patchwork_22650</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11397: 056d47eaf6ea753fa2e21da31f9cbd8b721bbb7b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6387: 04d012b18355b53798af5a55a8915afb1a421bba @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22650: 67ac8aa43118c5586e781cf65eeb03681d40788e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>67ac8aa43118 drm/edid: check basic audio support on CEA extension block</p>

</body>
</html>

--===============7935474659774556087==--
