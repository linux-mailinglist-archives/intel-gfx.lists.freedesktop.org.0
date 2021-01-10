Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A91112F04D2
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jan 2021 03:51:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CA56E921;
	Sun, 10 Jan 2021 02:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 639686E920;
 Sun, 10 Jan 2021 02:51:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DA54A7DFF;
 Sun, 10 Jan 2021 02:51:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bas Nieuwenhuizen" <bas@basnieuwenhuizen.nl>
Date: Sun, 10 Jan 2021 02:51:48 -0000
Message-ID: <161024710836.22033.2932588976636890394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210110021142.28221-1-bas@basnieuwenhuizen.nl>
In-Reply-To: <20210110021142.28221-1-bas@basnieuwenhuizen.nl>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Check_actual_format_for_legacy_pageflip=2E?=
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
Content-Type: multipart/mixed; boundary="===============0897861743=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0897861743==
Content-Type: multipart/alternative;
 boundary="===============8755405304471452001=="

--===============8755405304471452001==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Check actual format for legacy pageflip.
URL   : https://patchwork.freedesktop.org/series/85667/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9573 -> Patchwork_19309
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19309 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19309, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19309:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-u2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19309 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@memory-alloc:
    - fi-tgl-y:           NOTRUN -> [SKIP][2] ([fdo#109315] / [i915#2575]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-y/igt@amdgpu/amd_basic@memory-alloc.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live@hangcheck:
    - fi-tgl-u2:          [PASS][5] -> [INCOMPLETE][6] ([i915#2840] / [i915#750])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][7] ([fdo#109271]) +30 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-snb-2600:        [DMESG-WARN][9] ([i915#2772]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][13] ([i915#1161] / [i915#262]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2772]: https://gitlab.freedesktop.org/drm/intel/issues/2772
  [i915#2840]: https://gitlab.freedesktop.org/drm/intel/issues/2840
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9573 -> Patchwork_19309

  CI-20190529: 20190529
  CI_DRM_9573: cd0df21e28c36de80356344ff8683be2813c6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19309: 2173ccf34b3d04c7060402bc71adba9ac2d7d96c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2173ccf34b3d drm: Check actual format for legacy pageflip.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/index.html

--===============8755405304471452001==
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
<tr><td><b>Series:</b></td><td>drm: Check actual format for legacy pageflip.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85667/">https://patchwork.freedesktop.org/series/85667/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9573 -&gt; Patchwork_19309</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19309 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19309, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19309:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19309 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-y/igt@amdgpu/amd_basic@memory-alloc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-u2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2840">i915#2840</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/750">i915#750</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2772">i915#2772</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9573/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19309/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9573 -&gt; Patchwork_19309</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9573: cd0df21e28c36de80356344ff8683be2813c6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5953: 65c5eea699141e6f942ce0a8fc85db76ce53cd19 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19309: 2173ccf34b3d04c7060402bc71adba9ac2d7d96c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2173ccf34b3d drm: Check actual format for legacy pageflip.</p>

</body>
</html>

--===============8755405304471452001==--

--===============0897861743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0897861743==--
