Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54CC2E281E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 17:55:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A05895B9;
	Thu, 24 Dec 2020 16:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BE658954A;
 Thu, 24 Dec 2020 16:54:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F10BA882F;
 Thu, 24 Dec 2020 16:54:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 24 Dec 2020 16:54:58 -0000
Message-ID: <160882889842.23493.18392452999543632486@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201224144835.391775-1-matthew.auld@intel.com>
In-Reply-To: <20201224144835.391775-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_clear_the_shadow_b?=
 =?utf-8?q?atch?=
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
Content-Type: multipart/mixed; boundary="===============1755192580=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1755192580==
Content-Type: multipart/alternative;
 boundary="===============6458855474767288993=="

--===============6458855474767288993==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915: clear the shadow batch
URL   : https://patchwork.freedesktop.org/series/85205/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9521 -> Patchwork_19212
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/index.html

Known issues
------------

  Here are the changes found in Patchwork_19212 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-apl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-apl-guc/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@i915_selftest@live@coherency:
    - fi-gdg-551:         [PASS][2] -> [DMESG-FAIL][3] ([i915#1748])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-gdg-551/igt@i915_selftest@live@coherency.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-gdg-551/igt@i915_selftest@live@coherency.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_timelines:
    - fi-apl-guc:         [INCOMPLETE][6] ([i915#2750]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [DMESG-WARN][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-tgl-y/igt@vgem_basic@setversion.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-tgl-y/igt@vgem_basic@setversion.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1748]: https://gitlab.freedesktop.org/drm/intel/issues/1748
  [i915#2750]: https://gitlab.freedesktop.org/drm/intel/issues/2750
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9521 -> Patchwork_19212

  CI-20190529: 20190529
  CI_DRM_9521: cc56141fcd48b8cb24e0157aac53ea8a9cd73bc7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5922: 334f0c326bb2812e7a2764dc63ff83c83b6daf58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19212: abe10822aebc26834ff21c252971c498fe7b59ae @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

abe10822aebc drm/i915: clear the shadow batch

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/index.html

--===============6458855474767288993==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915: clear the shadow batch</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85205/">https://patchwork.freedesktop.org/series/85205/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9521 -&gt; Patchwork_19212</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19212 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-apl-guc/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-gdg-551/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-gdg-551/igt@i915_selftest@live@coherency.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1748">i915#1748</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2750">i915#2750</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9521/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19212/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9521 -&gt; Patchwork_19212</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9521: cc56141fcd48b8cb24e0157aac53ea8a9cd73bc7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5922: 334f0c326bb2812e7a2764dc63ff83c83b6daf58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19212: abe10822aebc26834ff21c252971c498fe7b59ae @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>abe10822aebc drm/i915: clear the shadow batch</p>

</body>
</html>

--===============6458855474767288993==--

--===============1755192580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1755192580==--
