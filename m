Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F1B2E241D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 04:57:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D0EB6E8E9;
	Thu, 24 Dec 2020 03:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4ABA66E8E5;
 Thu, 24 Dec 2020 03:57:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 394EAAA915;
 Thu, 24 Dec 2020 03:57:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Thu, 24 Dec 2020 03:57:48 -0000
Message-ID: <160878226819.23491.12632874085470699263@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201224031026.7360-1-sean.z.huang@intel.com>
In-Reply-To: <20201224031026.7360-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev15=29?=
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
Content-Type: multipart/mixed; boundary="===============1422422630=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1422422630==
Content-Type: multipart/alternative;
 boundary="===============6355832806221133344=="

--===============6355832806221133344==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev15)
URL   : https://patchwork.freedesktop.org/series/84620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9520 -> Patchwork_19208
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/index.html

Known issues
------------

  Here are the changes found in Patchwork_19208 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [PASS][2] -> [DMESG-WARN][3] ([i915#2605])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-7500u/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-7500u/igt@i915_module_load@reload.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@evict:
    - fi-kbl-soraka:      [INCOMPLETE][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-soraka/igt@i915_selftest@live@evict.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-soraka/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem:
    - fi-kbl-soraka:      [DMESG-WARN][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-soraka/igt@i915_selftest@live@gem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-soraka/igt@i915_selftest@live@gem.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [DMESG-FAIL][10] ([i915#165]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][12] ([i915#402]) -> [PASS][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9520 -> Patchwork_19208

  CI-20190529: 20190529
  CI_DRM_9520: 05faf2ea2c198f592c56bd3bedd1e5a241a2c75d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5920: 05dbccbbc2e57403730134580c4110bde85576f4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19208: d394ebccf41605247d3ec401608537a486176063 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d394ebccf416 drm/i915/pxp: Add plane decryption support
f03f8e74dc0b drm/i915/pxp: User interface for Protected buffer
8887af8130db drm/i915/uapi: introduce drm_i915_gem_create_ext
166b855c8b3f mei: pxp: export pavp client to me client bus
96c29251fc2c drm/i915/pxp: Expose session state for display protection flip
e8420b874553 drm/i915/pxp: Enable PXP power management
aad33f4371cc drm/i915/pxp: Destroy arb session upon teardown
3262236ce6ac drm/i915/pxp: Enable PXP irq worker and callback stub
bbfcb811b034 drm/i915/pxp: Func to send hardware session termination
2b60ee61cae2 drm/i915/pxp: Create the arbitrary session after boot
395008b344e9 drm/i915/pxp: Implement funcs to create the TEE channel
51cbdc8b2ce1 drm/i915/pxp: set KCR reg init during the boot time
dfdab12a4f29 drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/index.html

--===============6355832806221133344==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev15)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9520 -&gt; Patchwork_19208</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19208 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-soraka/igt@i915_selftest@live@evict.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-soraka/igt@i915_selftest@live@evict.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-soraka/igt@i915_selftest@live@gem.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-soraka/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9520/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19208/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9520 -&gt; Patchwork_19208</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9520: 05faf2ea2c198f592c56bd3bedd1e5a241a2c75d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5920: 05dbccbbc2e57403730134580c4110bde85576f4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19208: d394ebccf41605247d3ec401608537a486176063 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d394ebccf416 drm/i915/pxp: Add plane decryption support<br />
f03f8e74dc0b drm/i915/pxp: User interface for Protected buffer<br />
8887af8130db drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
166b855c8b3f mei: pxp: export pavp client to me client bus<br />
96c29251fc2c drm/i915/pxp: Expose session state for display protection flip<br />
e8420b874553 drm/i915/pxp: Enable PXP power management<br />
aad33f4371cc drm/i915/pxp: Destroy arb session upon teardown<br />
3262236ce6ac drm/i915/pxp: Enable PXP irq worker and callback stub<br />
bbfcb811b034 drm/i915/pxp: Func to send hardware session termination<br />
2b60ee61cae2 drm/i915/pxp: Create the arbitrary session after boot<br />
395008b344e9 drm/i915/pxp: Implement funcs to create the TEE channel<br />
51cbdc8b2ce1 drm/i915/pxp: set KCR reg init during the boot time<br />
dfdab12a4f29 drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============6355832806221133344==--

--===============1422422630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1422422630==--
