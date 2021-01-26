Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B5730321D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 03:49:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63BD16E40A;
	Tue, 26 Jan 2021 02:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD07F6E409;
 Tue, 26 Jan 2021 02:49:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6321A47DF;
 Tue, 26 Jan 2021 02:49:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 26 Jan 2021 02:49:05 -0000
Message-ID: <161162934564.9813.1044934256563988292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126001031.881048-1-lyude@redhat.com>
In-Reply-To: <20210126001031.881048-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_support_in_?=
 =?utf-8?q?nouveau_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1556580029=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1556580029==
Content-Type: multipart/alternative;
 boundary="===============6564828731815689459=="

--===============6564828731815689459==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev4)
URL   : https://patchwork.freedesktop.org/series/84754/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9682 -> Patchwork_19499
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_19499 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19499, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19499:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][1] ([fdo#109271]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_19499 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/fi-tgl-y/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_ctx_create@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/fi-tgl-y/igt@gem_ctx_create@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (40 -> 35)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-ctg-p8600 


Build changes
-------------

  * Linux: CI_DRM_9682 -> Patchwork_19499

  CI-20190529: 20190529
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19499: c574a4addb610e2f648096ccc191fd29041a5317 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c574a4addb61 drm/nouveau/kms/nv50-: Add basic DPCD backlight support for nouveau
72f9fc4aadbe drm/dp: Extract i915's eDP backlight code into DRM helpers
ff5e1e98cbc2 drm/i915/dp: Remove redundant AUX backlight frequency calculations
13a7a2e26126 drm/nouveau/kms: Don't probe eDP connectors more then once
fe77c1e29c45 drm/nouveau/kms/nv40-/backlight: Assign prop type once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/index.html

--===============6564828731815689459==
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
<tr><td><b>Series:</b></td><td>drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84754/">https://patchwork.freedesktop.org/series/84754/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9682 -&gt; Patchwork_19499</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_19499 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19499, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19499:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19499 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_close_race@basic-threads:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/fi-tgl-y/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_ctx_create@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_ctx_create@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19499/fi-tgl-y/igt@gem_ctx_create@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-ctg-p8600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9682 -&gt; Patchwork_19499</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19499: c574a4addb610e2f648096ccc191fd29041a5317 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c574a4addb61 drm/nouveau/kms/nv50-: Add basic DPCD backlight support for nouveau<br />
72f9fc4aadbe drm/dp: Extract i915's eDP backlight code into DRM helpers<br />
ff5e1e98cbc2 drm/i915/dp: Remove redundant AUX backlight frequency calculations<br />
13a7a2e26126 drm/nouveau/kms: Don't probe eDP connectors more then once<br />
fe77c1e29c45 drm/nouveau/kms/nv40-/backlight: Assign prop type once</p>

</body>
</html>

--===============6564828731815689459==--

--===============1556580029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1556580029==--
