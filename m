Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D945B36D34A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 09:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF066EAB2;
	Wed, 28 Apr 2021 07:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ECB8F6EAB1;
 Wed, 28 Apr 2021 07:37:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB0D6A7DFC;
 Wed, 28 Apr 2021 07:37:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 28 Apr 2021 07:37:56 -0000
Message-ID: <161959547686.24077.1344872851793754433@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427230756.2847495-1-lucas.demarchi@intel.com>
In-Reply-To: <20210427230756.2847495-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2lt?=
 =?utf-8?q?plify_intel=5Fsetup=5Foutputs_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1796547184=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1796547184==
Content-Type: multipart/alternative;
 boundary="===============7764189000339535766=="

--===============7764189000339535766==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Simplify intel_setup_outputs (rev4)
URL   : https://patchwork.freedesktop.org/series/88988/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10019 -> Patchwork_20014
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20014/index.html

Known issues
------------

  Here are the changes found in Patchwork_20014 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20014/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-rkl-11500t fi-ilk-m540 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10019 -> Patchwork_20014

  CI-20190529: 20190529
  CI_DRM_10019: acf28153df39c6dab44a8691ecaad05f1f37ed46 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20014: f27a8cb58de37a4c267b7e8a618f49ae0e5ca581 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f27a8cb58de3 drm/i915/display: hide workaround for broken vbt in intel_bios.c
593377cfe8cb drm/i915/display: remove strap checks from gen 9
cdad6edb5b72 drm/i915/display: remove FIXME comment for intended feature
ce98f174164a drm/i915/display: move vbt check to intel_ddi_init()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20014/index.html

--===============7764189000339535766==
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
<tr><td><b>Series:</b></td><td>Simplify intel_setup_outputs (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88988/">https://patchwork.freedesktop.org/series/88988/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20014/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20014/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10019 -&gt; Patchwork_20014</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20014/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20014 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_prime@amd-to-i915:<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20014/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-rkl-11500t fi-ilk-m540 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10019 -&gt; Patchwork_20014</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10019: acf28153df39c6dab44a8691ecaad05f1f37ed46 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20014: f27a8cb58de37a4c267b7e8a618f49ae0e5ca581 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f27a8cb58de3 drm/i915/display: hide workaround for broken vbt in intel_bios.c<br />
593377cfe8cb drm/i915/display: remove strap checks from gen 9<br />
cdad6edb5b72 drm/i915/display: remove FIXME comment for intended feature<br />
ce98f174164a drm/i915/display: move vbt check to intel_ddi_init()</p>

</body>
</html>

--===============7764189000339535766==--

--===============1796547184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1796547184==--
