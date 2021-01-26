Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E49303188
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 02:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6AE6E3EC;
	Tue, 26 Jan 2021 01:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0F936E3CE;
 Tue, 26 Jan 2021 01:57:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A98D4A73C9;
 Tue, 26 Jan 2021 01:57:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 26 Jan 2021 01:57:26 -0000
Message-ID: <161162624666.9812.10386423966656463456@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125224200.3146462-1-John.C.Harrison@Intel.com>
In-Reply-To: <20210125224200.3146462-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/uc=3A_Use_platform_specific_defaults_for_GuC/HuC_enabling?=
 =?utf-8?q?_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1873157117=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1873157117==
Content-Type: multipart/alternative;
 boundary="===============3895915885616563669=="

--===============3895915885616563669==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/uc: Use platform specific defaults for GuC/HuC enabling (rev2)
URL   : https://patchwork.freedesktop.org/series/86100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9682 -> Patchwork_19497
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/index.html

Known issues
------------

  Here are the changes found in Patchwork_19497 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@write:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@fbdev@write.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/fi-tgl-y/igt@fbdev@write.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:
    - fi-pnv-d510:        [PASS][3] -> [FAIL][4] ([i915#2122])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_ctx_create@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/fi-tgl-y/igt@gem_ctx_create@basic.html

  
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (40 -> 35)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-ctg-p8600 


Build changes
-------------

  * Linux: CI_DRM_9682 -> Patchwork_19497

  CI-20190529: 20190529
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19497: 4c9b8d9213f61a51880612c720f74378f158139b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4c9b8d9213f6 drm/i915/uc: Use platform specific defaults for GuC/HuC enabling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/index.html

--===============3895915885616563669==
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
<tr><td><b>Series:</b></td><td>drm/i915/uc: Use platform specific defaults for GuC/HuC enabling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86100/">https://patchwork.freedesktop.org/series/86100/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9682 -&gt; Patchwork_19497</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19497 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_ctx_create@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_ctx_create@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19497/fi-tgl-y/igt@gem_ctx_create@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-ctg-p8600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9682 -&gt; Patchwork_19497</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19497: 4c9b8d9213f61a51880612c720f74378f158139b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4c9b8d9213f6 drm/i915/uc: Use platform specific defaults for GuC/HuC enabling</p>

</body>
</html>

--===============3895915885616563669==--

--===============1873157117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1873157117==--
