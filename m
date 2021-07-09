Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4153C2916
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 20:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135796EA14;
	Fri,  9 Jul 2021 18:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCB0D6EA14;
 Fri,  9 Jul 2021 18:38:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5B39A7DFC;
 Fri,  9 Jul 2021 18:38:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 09 Jul 2021 18:38:00 -0000
Message-ID: <162585588073.9813.3478801995631548131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaW9t?=
 =?utf-8?q?mu/vt-d=3A_Disable_igfx_iommu_superpage_on_bxt/skl/glk?=
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
Content-Type: multipart/mixed; boundary="===============1808817403=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1808817403==
Content-Type: multipart/alternative;
 boundary="===============0046939367685552880=="

--===============0046939367685552880==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: iommu/vt-d: Disable igfx iommu superpage on bxt/skl/glk
URL   : https://patchwork.freedesktop.org/series/92374/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10326 -> Patchwork_20566
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/index.html

Known issues
------------

  Here are the changes found in Patchwork_20566 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][1] ([i915#3718])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][2] ([fdo#109271]) +5 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  * igt@vgem_basic@unload:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][3] ([i915#3744])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/fi-bdw-5557u/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][4] ([i915#1602] / [i915#2029]) -> [FAIL][5] ([i915#2722] / [i915#3744])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bdw-5557u/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/fi-bdw-5557u/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3744]: https://gitlab.freedesktop.org/drm/intel/issues/3744


Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan fi-ilk-650 


Build changes
-------------

  * Linux: CI_DRM_10326 -> Patchwork_20566

  CI-20190529: 20190529
  CI_DRM_10326: 8fa21d35c119a14a3cb14035dde5a9cc7e2321d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20566: 4f652b23e277fac45edeba2beec291d6f5428f3f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4f652b23e277 drm/i915/fbc: Allow FBC + VT-d on SKL/BXT
7e8975387280 iommu/vt-d: Disable superpage for Skylake igfx
54ea2020b79a iommu/vt-d: Disable superpage for Broxton igfx
7da685194fc4 iommu/vt-d: Disable superpage for Geminilake igfx

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/index.html

--===============0046939367685552880==
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
<tr><td><b>Series:</b></td><td>iommu/vt-d: Disable igfx iommu superpage on bxt/skl/glk</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92374/">https://patchwork.freedesktop.org/series/92374/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10326 -&gt; Patchwork_20566</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20566 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/fi-bdw-5557u/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10326/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20566/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan fi-ilk-650 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10326 -&gt; Patchwork_20566</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10326: 8fa21d35c119a14a3cb14035dde5a9cc7e2321d2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20566: 4f652b23e277fac45edeba2beec291d6f5428f3f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4f652b23e277 drm/i915/fbc: Allow FBC + VT-d on SKL/BXT<br />
7e8975387280 iommu/vt-d: Disable superpage for Skylake igfx<br />
54ea2020b79a iommu/vt-d: Disable superpage for Broxton igfx<br />
7da685194fc4 iommu/vt-d: Disable superpage for Geminilake igfx</p>

</body>
</html>

--===============0046939367685552880==--

--===============1808817403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1808817403==--
