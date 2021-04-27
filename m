Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5316236C80C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 16:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31716E97C;
	Tue, 27 Apr 2021 14:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FF2B6E97A;
 Tue, 27 Apr 2021 14:54:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95975A47E8;
 Tue, 27 Apr 2021 14:54:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 27 Apr 2021 14:54:40 -0000
Message-ID: <161953528058.17485.242459454484692791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427120315.12342-1-jani.nikula@intel.com>
In-Reply-To: <20210427120315.12342-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_move_crtc_and_dpll_declarations_where_they_bel?=
 =?utf-8?q?ong?=
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
Content-Type: multipart/mixed; boundary="===============2087630716=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2087630716==
Content-Type: multipart/alternative;
 boundary="===============5480035564980054878=="

--===============5480035564980054878==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: move crtc and dpll declarations where they belong
URL   : https://patchwork.freedesktop.org/series/89551/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10017 -> Patchwork_20005
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20005:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - {fi-tgl-1115g4}:    NOTRUN -> [SKIP][1] +25 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@gem_exec_suspend@basic-s0:
    - {fi-tgl-1115g4}:    NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_20005 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-tgl-y:           NOTRUN -> [SKIP][3] ([fdo#109315] / [i915#2575])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (46 -> 41)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10017 -> Patchwork_20005

  CI-20190529: 20190529
  CI_DRM_10017: 90fd4f5c1834f556c119cba5b6c41fe90683b912 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20005: c75032319fb208810e5e1f7e2f2347ceecb79fbf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c75032319fb2 drm/i915/display: move crtc and dpll declarations where they belong

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/index.html

--===============5480035564980054878==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: move crtc and dpll declarations where they belong</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89551/">https://patchwork.freedesktop.org/series/89551/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10017 -&gt; Patchwork_20005</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20005:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>{fi-tgl-1115g4}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>{fi-tgl-1115g4}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20005 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_prime@amd-to-i915:<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20005/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10017 -&gt; Patchwork_20005</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10017: 90fd4f5c1834f556c119cba5b6c41fe90683b912 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20005: c75032319fb208810e5e1f7e2f2347ceecb79fbf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c75032319fb2 drm/i915/display: move crtc and dpll declarations where they belong</p>

</body>
</html>

--===============5480035564980054878==--

--===============2087630716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2087630716==--
