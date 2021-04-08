Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD7F358F4F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 23:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832BA6E3E5;
	Thu,  8 Apr 2021 21:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 848686E3D8;
 Thu,  8 Apr 2021 21:38:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B596A73C9;
 Thu,  8 Apr 2021 21:38:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 08 Apr 2021 21:38:22 -0000
Message-ID: <161791790247.10402.11371115925012884232@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210408203150.237947-1-jose.souza@intel.com>
In-Reply-To: <20210408203150.237947-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Skip_display_inter?=
 =?utf-8?q?ruption_setup_when_display_is_not_available?=
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
Content-Type: multipart/mixed; boundary="===============0083123590=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0083123590==
Content-Type: multipart/alternative;
 boundary="===============0736411253848894264=="

--===============0736411253848894264==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915: Skip display interruption setup when display is not available
URL   : https://patchwork.freedesktop.org/series/88879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9946 -> Patchwork_19905
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/index.html

Known issues
------------

  Here are the changes found in Patchwork_19905 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-write:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9946/fi-tgl-y/igt@prime_vgem@basic-write.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/fi-tgl-y/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-kbl-r:           NOTRUN -> [FAIL][3] ([i915#1569] / [i915#192] / [i915#193] / [i915#194])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/fi-kbl-r/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9946/fi-tgl-y/igt@fbdev@write.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/fi-tgl-y/igt@fbdev@write.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][6] ([i915#1372]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9946/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3278]: https://gitlab.freedesktop.org/drm/intel/issues/3278
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9946 -> Patchwork_19905

  CI-20190529: 20190529
  CI_DRM_9946: 6e235c4de2cc1cd4a53d77e173895614f1075b11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6061: 4aa7cd3ac664af4a7ca87d3fa8ed44208e4b0fa5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19905: 8f8797def2351acba999fe522dca123737590d4e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8f8797def235 drm/i915: skip display initialization when there is no display
b6797c585874 drm/i915: Do not set any power wells when there is no display
d4ad74f70cc8 drm/i915: Skip display interruption setup when display is not available

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/index.html

--===============0736411253848894264==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915: Skip display interruption setup when display is not available</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88879/">https://patchwork.freedesktop.org/series/88879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9946 -&gt; Patchwork_19905</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19905 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9946/fi-tgl-y/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/fi-tgl-y/igt@prime_vgem@basic-write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9946/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/fi-tgl-y/igt@fbdev@write.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9946/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19905/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9946 -&gt; Patchwork_19905</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9946: 6e235c4de2cc1cd4a53d77e173895614f1075b11 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6061: 4aa7cd3ac664af4a7ca87d3fa8ed44208e4b0fa5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19905: 8f8797def2351acba999fe522dca123737590d4e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8f8797def235 drm/i915: skip display initialization when there is no display<br />
b6797c585874 drm/i915: Do not set any power wells when there is no display<br />
d4ad74f70cc8 drm/i915: Skip display interruption setup when display is not available</p>

</body>
</html>

--===============0736411253848894264==--

--===============0083123590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0083123590==--
