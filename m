Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE7261A693
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 02:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B0410E073;
	Sat,  5 Nov 2022 01:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D89810E073;
 Sat,  5 Nov 2022 01:19:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55631A47EB;
 Sat,  5 Nov 2022 01:19:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8272368360541762857=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Sat, 05 Nov 2022 01:19:32 -0000
Message-ID: <166761117231.3516.10463546890588986502@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?_live_busy_stats_selftest_failure?=
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

--===============8272368360541762857==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix live busy stats selftest failure
URL   : https://patchwork.freedesktop.org/series/110557/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12346 -> Patchwork_110557v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/index.html

Participating hosts (39 -> 27)
------------------------------

  Missing    (12): fi-bdw-samus bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_110557v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][1] -> [FAIL][2] ([i915#7229])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12346/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-ehl-2}:         [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12346/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/fi-ehl-2/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12346 -> Patchwork_110557v1

  CI-20190529: 20190529
  CI_DRM_12346: 7b32ba9462baa932abf6cbe2f1a8ecb79e922a6e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110557v1: 7b32ba9462baa932abf6cbe2f1a8ecb79e922a6e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

231612650801 drm/i915/selftest: Bump up sample period for busy stats selftest
18b0e07b0348 i915/uncore: Acquire fw before loop in intel_uncore_read64_2x32

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/index.html

--===============8272368360541762857==
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
<tr><td><b>Series:</b></td><td>Fix live busy stats selftest failure</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110557/">https://patchwork.freedesktop.org/series/110557/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12346 -&gt; Patchwork_110557v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/index.html</p>
<h2>Participating hosts (39 -&gt; 27)</h2>
<p>Missing    (12): fi-bdw-samus bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110557v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12346/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12346/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110557v1/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12346 -&gt; Patchwork_110557v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12346: 7b32ba9462baa932abf6cbe2f1a8ecb79e922a6e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110557v1: 7b32ba9462baa932abf6cbe2f1a8ecb79e922a6e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>231612650801 drm/i915/selftest: Bump up sample period for busy stats selftest<br />
18b0e07b0348 i915/uncore: Acquire fw before loop in intel_uncore_read64_2x32</p>

</body>
</html>

--===============8272368360541762857==--
