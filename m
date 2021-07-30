Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C6F3DBF89
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 22:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0E96F45C;
	Fri, 30 Jul 2021 20:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B82D86F483;
 Fri, 30 Jul 2021 20:20:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B19B3AA915;
 Fri, 30 Jul 2021 20:20:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1380719161697455133=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jul 2021 20:20:30 -0000
Message-ID: <162767643070.582.11810390951901262380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210730195342.110234-1-matthew.brost@intel.com>
In-Reply-To: <20210730195342.110234-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_syncmap_memory_leak?=
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

--===============1380719161697455133==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix syncmap memory leak
URL   : https://patchwork.freedesktop.org/series/93245/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10427 -> Patchwork_20751
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/index.html

Known issues
------------

  Here are the changes found in Patchwork_20751 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][1] ([i915#1888]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@workarounds:
    - fi-tgl-u2:          [DMESG-WARN][3] ([i915#2867]) -> [PASS][4] +16 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-u2/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/fi-tgl-u2/igt@i915_selftest@live@workarounds.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867


Participating hosts (37 -> 32)
------------------------------

  Missing    (5): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10427 -> Patchwork_20751

  CI-20190529: 20190529
  CI_DRM_10427: e5efc20bce6b7996df9bdc720796f8713a45701a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20751: 2e32c1dff4b60c320ec8c4c38ed1f5ab6f84b936 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e32c1dff4b6 drm/i915: Fix syncmap memory leak

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/index.html

--===============1380719161697455133==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix syncmap memory leak</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93245/">https://patchwork.freedesktop.org/series/93245/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10427 -&gt; Patchwork_20751</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20751 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10427/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20751/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">PASS</a> +16 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 32)</h2>
<p>Missing    (5): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10427 -&gt; Patchwork_20751</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10427: e5efc20bce6b7996df9bdc720796f8713a45701a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20751: 2e32c1dff4b60c320ec8c4c38ed1f5ab6f84b936 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2e32c1dff4b6 drm/i915: Fix syncmap memory leak</p>

</body>
</html>

--===============1380719161697455133==--
