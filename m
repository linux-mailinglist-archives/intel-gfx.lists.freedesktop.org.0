Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8804A3DC89D
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Aug 2021 00:21:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D816E17B;
	Sat, 31 Jul 2021 22:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E02316E17B;
 Sat, 31 Jul 2021 22:20:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6594A66C9;
 Sat, 31 Jul 2021 22:20:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8391312068604278893=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 31 Jul 2021 22:20:59 -0000
Message-ID: <162777005984.3960.8963398327127917455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210731214211.657280-1-jim.cromie@gmail.com>
In-Reply-To: <20210731214211.657280-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_use_dyndbg_in_drm=5Fprint_=28rev3=29?=
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

--===============8391312068604278893==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: use dyndbg in drm_print (rev3)
URL   : https://patchwork.freedesktop.org/series/92542/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10431 -> Patchwork_20754
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20754/index.html

Known issues
------------

  Here are the changes found in Patchwork_20754 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10431/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20754/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888


Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10431 -> Patchwork_20754

  CI-20190529: 20190529
  CI_DRM_10431: 9ea1f3822810c59013c44b9fa06f59176c325a38 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20754: 04b4dd37cb1c362aefa3cdc17881003a81b237ec @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

04b4dd37cb1c amdgpu: define a dydbg-bitmap to control categorized pr_debugs
7b12f8b286e8 drm/print: add choice to use dynamic debug in drm-debug
816d1412b3f8 i915/gvt: control pr_debug("gvt:")s with bits in parameters/debug_gvt
f73667a8cacb i915/gvt: remove spaces in pr_debug "gvt: core:" etc prefixes
7193036bdfae dyndbg: add dyndbg-bitmap definer and callbacks
ab95444b671f moduleparam: add data member to struct kernel_param

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20754/index.html

--===============8391312068604278893==
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
<tr><td><b>Series:</b></td><td>drm: use dyndbg in drm_print (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92542/">https://patchwork.freedesktop.org/series/92542/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20754/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20754/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10431 -&gt; Patchwork_20754</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20754/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20754 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10431/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20754/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10431 -&gt; Patchwork_20754</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10431: 9ea1f3822810c59013c44b9fa06f59176c325a38 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20754: 04b4dd37cb1c362aefa3cdc17881003a81b237ec @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>04b4dd37cb1c amdgpu: define a dydbg-bitmap to control categorized pr_debugs<br />
7b12f8b286e8 drm/print: add choice to use dynamic debug in drm-debug<br />
816d1412b3f8 i915/gvt: control pr_debug("gvt:")s with bits in parameters/debug_gvt<br />
f73667a8cacb i915/gvt: remove spaces in pr_debug "gvt: core:" etc prefixes<br />
7193036bdfae dyndbg: add dyndbg-bitmap definer and callbacks<br />
ab95444b671f moduleparam: add data member to struct kernel_param</p>

</body>
</html>

--===============8391312068604278893==--
