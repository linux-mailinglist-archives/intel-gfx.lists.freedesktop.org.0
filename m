Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABBB4D3AB5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 21:00:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3D010E3FD;
	Wed,  9 Mar 2022 20:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D7D610E35A;
 Wed,  9 Mar 2022 20:00:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CA41AA0EB;
 Wed,  9 Mar 2022 20:00:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8071623151739563371=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 09 Mar 2022 20:00:51 -0000
Message-ID: <164685605150.14948.3505496835909531814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_SAGV_block_time_fixes_=28rev2=29?=
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

--===============8071623151739563371==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: SAGV block time fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/101171/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11346 -> Patchwork_22524
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/index.html

Participating hosts (43 -> 35)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (9): bat-dg1-6 bat-dg1-5 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_22524 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +58 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [FAIL][2] ([i915#3194]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {fi-rkl-11600}:     [INCOMPLETE][4] ([i915#5127]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11346 -> Patchwork_22524

  CI-20190529: 20190529
  CI_DRM_11346: ab6456d23719e60c20e8cef05a5f322eea134b88 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6373: 82306f1903c0fee8371f43a156d8b63163ca61c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22524: 947f302e9d2d4716c0cb2bed715c2b7085535fa9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

947f302e9d2d drm/i915: Rename QGV request/response bits
c745332be423 drm/i915: Unconfuses QGV vs. PSF point masks
a21de1e7d3fd drm/i915: Fix PSF GV point mask when SAGV is not possible
244e37910608 drm/i915: Rename pre-icl SAGV enable/disable functions
5eaafe273039 drm/i915: Reject excessive SAGV block time
e8e1719bfc7d drm/i915: Probe whether SAGV works on pre-icl
bc3dfeda81e4 drm/i915: Rework SAGV block time probing
060166c820c6 drm/i915: Treat SAGV block time 0 as SAGV disabled

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/index.html

--===============8071623151739563371==
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
<tr><td><b>Series:</b></td><td>drm/i915: SAGV block time fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101171/">https://patchwork.freedesktop.org/series/101171/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11346 -&gt; Patchwork_22524</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/index.html</p>
<h2>Participating hosts (43 -&gt; 35)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (9): bat-dg1-6 bat-dg1-5 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22524 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-userptr:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +58 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{fi-rkl-11600}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11346/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22524/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11346 -&gt; Patchwork_22524</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11346: ab6456d23719e60c20e8cef05a5f322eea134b88 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6373: 82306f1903c0fee8371f43a156d8b63163ca61c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22524: 947f302e9d2d4716c0cb2bed715c2b7085535fa9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>947f302e9d2d drm/i915: Rename QGV request/response bits<br />
c745332be423 drm/i915: Unconfuses QGV vs. PSF point masks<br />
a21de1e7d3fd drm/i915: Fix PSF GV point mask when SAGV is not possible<br />
244e37910608 drm/i915: Rename pre-icl SAGV enable/disable functions<br />
5eaafe273039 drm/i915: Reject excessive SAGV block time<br />
e8e1719bfc7d drm/i915: Probe whether SAGV works on pre-icl<br />
bc3dfeda81e4 drm/i915: Rework SAGV block time probing<br />
060166c820c6 drm/i915: Treat SAGV block time 0 as SAGV disabled</p>

</body>
</html>

--===============8071623151739563371==--
