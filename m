Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6296839DA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 23:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E9E10E3A0;
	Tue, 31 Jan 2023 22:59:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBC1610E3A0;
 Tue, 31 Jan 2023 22:59:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5FC6AA01E;
 Tue, 31 Jan 2023 22:59:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4261184086647971595=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Tue, 31 Jan 2023 22:59:22 -0000
Message-ID: <167520596284.5938.8646785366677516966@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230131222837.1921-1-michal.wajdeczko@intel.com>
In-Reply-To: <20230131222837.1921-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/huc=3A_Add_and_use_HuC_oriented_print_macros?=
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

--===============4261184086647971595==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/huc: Add and use HuC oriented print macros
URL   : https://patchwork.freedesktop.org/series/113542/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12675 -> Patchwork_113542v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/index.html

Participating hosts (26 -> 25)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113542v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-1}:       [ABORT][1] ([i915#6311] / [i915#7359]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12675/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-adlm-1}:       [INCOMPLETE][3] ([i915#4983]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12675/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913


Build changes
-------------

  * Linux: CI_DRM_12675 -> Patchwork_113542v1

  CI-20190529: 20190529
  CI_DRM_12675: dcc649c15d884fe52a8336f2223fe5abfa3d5d0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7143: c7b12dcc460fc2348e1fa7f4dcb791bb82e29e44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113542v1: dcc649c15d884fe52a8336f2223fe5abfa3d5d0a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c4d67f7697b3 drm/i915/huc: Add and use HuC oriented print macros

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/index.html

--===============4261184086647971595==
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
<tr><td><b>Series:</b></td><td>drm/i915/huc: Add and use HuC oriented print macros</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113542/">https://patchwork.freedesktop.org/series/113542/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12675 -&gt; Patchwork_113542v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/index.html</p>
<h2>Participating hosts (26 -&gt; 25)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113542v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12675/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7359">i915#7359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/bat-rpls-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12675/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113542v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12675 -&gt; Patchwork_113542v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12675: dcc649c15d884fe52a8336f2223fe5abfa3d5d0a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7143: c7b12dcc460fc2348e1fa7f4dcb791bb82e29e44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113542v1: dcc649c15d884fe52a8336f2223fe5abfa3d5d0a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c4d67f7697b3 drm/i915/huc: Add and use HuC oriented print macros</p>

</body>
</html>

--===============4261184086647971595==--
