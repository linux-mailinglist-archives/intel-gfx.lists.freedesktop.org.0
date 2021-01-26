Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3193032AA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 04:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707AC6E40D;
	Tue, 26 Jan 2021 03:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0E066E40B;
 Tue, 26 Jan 2021 03:59:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A648A0019;
 Tue, 26 Jan 2021 03:59:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Tue, 26 Jan 2021 03:59:42 -0000
Message-ID: <161163358260.9810.6347756130016278765@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125140753.347998-1-aditya.swarup@intel.com>
In-Reply-To: <20210125140753.347998-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWxk?=
 =?utf-8?q?erlake-S_platform_enabling_patches_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1592666702=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1592666702==
Content-Type: multipart/alternative;
 boundary="===============4292386639279900069=="

--===============4292386639279900069==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Alderlake-S platform enabling patches (rev2)
URL   : https://patchwork.freedesktop.org/series/86260/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9682 -> Patchwork_19501
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/index.html

Known issues
------------

  Here are the changes found in Patchwork_19501 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          [PASS][3] -> [INCOMPLETE][4] ([i915#2268])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (40 -> 36)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9682 -> Patchwork_19501

  CI-20190529: 20190529
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19501: 0700ccc2b0ce0d963275a5066fc1fa03d2d5ee79 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0700ccc2b0ce drm/i915/adl_s: Update combo PHY master/slave relationships
a9a635f54fb2 drm/i915/adl_s: Add vbt port and aux channel settings for adls
4d3692703ac0 drm/i915/adl_s: Add adl-s ddc pin mapping
a3783d1bb097 drm/i915/adl_s: Initialize display for ADL-S
0b554f3df487 drm/i915/adl_s: Configure Port clock registers for ADL-S
7c2a725093dc drm/i915/adl_s: Configure DPLL for ADL-S
6e5d01044438 drm/i915/adl_s: Add PHYs for Alderlake S
43ecfab3c2ba drm/i915/adl_s: Add Interrupt Support
300dcb516efb drm/i915/adl_s: Add PCH support
aade12b92978 x86/gpu: Add Alderlake-S stolen memory support

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/index.html

--===============4292386639279900069==
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
<tr><td><b>Series:</b></td><td>Alderlake-S platform enabling patches (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86260/">https://patchwork.freedesktop.org/series/86260/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9682 -&gt; Patchwork_19501</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19501 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19501/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9682 -&gt; Patchwork_19501</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19501: 0700ccc2b0ce0d963275a5066fc1fa03d2d5ee79 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0700ccc2b0ce drm/i915/adl_s: Update combo PHY master/slave relationships<br />
a9a635f54fb2 drm/i915/adl_s: Add vbt port and aux channel settings for adls<br />
4d3692703ac0 drm/i915/adl_s: Add adl-s ddc pin mapping<br />
a3783d1bb097 drm/i915/adl_s: Initialize display for ADL-S<br />
0b554f3df487 drm/i915/adl_s: Configure Port clock registers for ADL-S<br />
7c2a725093dc drm/i915/adl_s: Configure DPLL for ADL-S<br />
6e5d01044438 drm/i915/adl_s: Add PHYs for Alderlake S<br />
43ecfab3c2ba drm/i915/adl_s: Add Interrupt Support<br />
300dcb516efb drm/i915/adl_s: Add PCH support<br />
aade12b92978 x86/gpu: Add Alderlake-S stolen memory support</p>

</body>
</html>

--===============4292386639279900069==--

--===============1592666702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1592666702==--
