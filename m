Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0023D2F6E67
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 23:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D426E042;
	Thu, 14 Jan 2021 22:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A07296E042;
 Thu, 14 Jan 2021 22:44:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B9C3A8169;
 Thu, 14 Jan 2021 22:44:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 14 Jan 2021 22:44:25 -0000
Message-ID: <161066426563.19646.5170086917999485200@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Shuffle_DP_code_around?=
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
Content-Type: multipart/mixed; boundary="===============1198275805=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1198275805==
Content-Type: multipart/alternative;
 boundary="===============6860214921941853255=="

--===============6860214921941853255==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Shuffle DP code around
URL   : https://patchwork.freedesktop.org/series/85878/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9612 -> Patchwork_19362
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/index.html

Known issues
------------

  Here are the changes found in Patchwork_19362 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@runner@aborted:
    - fi-kbl-r:           NOTRUN -> [FAIL][3] ([i915#1569] / [i915#192] / [i915#193] / [i915#194] / [i915#2295])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/fi-kbl-r/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-byt-j1900 fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9612 -> Patchwork_19362

  CI-20190529: 20190529
  CI_DRM_9612: 3d921d1ad818c1aabb5b2bd3f0861df99e49be9b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19362: 303d614cbb64c6495251dea9f9b28fdb8045d96c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

303d614cbb64 drm/i915: Introduce g4x_dp.c
90067b76465c drm/i915: Fix the PHY compliance test vs. hotplug mishap
88f2b4fea349 drm/i915: Split intel_ddi_encoder_reset() from intel_dp_encoder_reset()
2d486f60d7dd drm/i915: Relocate intel_dp_program_link_training_pattern()
77a30579d793 drm/i915: Remove dead signal level debugs
e5f62898fdee drm/i915: Remove dead TPS3->TPS2 fallback code
4c22a0db410f drm/i915: Fix the training pattern debug print

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/index.html

--===============6860214921941853255==
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
<tr><td><b>Series:</b></td><td>drm/i915: Shuffle DP code around</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85878/">https://patchwork.freedesktop.org/series/85878/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9612 -&gt; Patchwork_19362</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19362 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1569">i915#1569</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/192">i915#192</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/193">i915#193</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/194">i915#194</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9612/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19362/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-byt-j1900 fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9612 -&gt; Patchwork_19362</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9612: 3d921d1ad818c1aabb5b2bd3f0861df99e49be9b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19362: 303d614cbb64c6495251dea9f9b28fdb8045d96c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>303d614cbb64 drm/i915: Introduce g4x_dp.c<br />
90067b76465c drm/i915: Fix the PHY compliance test vs. hotplug mishap<br />
88f2b4fea349 drm/i915: Split intel_ddi_encoder_reset() from intel_dp_encoder_reset()<br />
2d486f60d7dd drm/i915: Relocate intel_dp_program_link_training_pattern()<br />
77a30579d793 drm/i915: Remove dead signal level debugs<br />
e5f62898fdee drm/i915: Remove dead TPS3-&gt;TPS2 fallback code<br />
4c22a0db410f drm/i915: Fix the training pattern debug print</p>

</body>
</html>

--===============6860214921941853255==--

--===============1198275805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1198275805==--
