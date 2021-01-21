Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E652FF305
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 19:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD396E927;
	Thu, 21 Jan 2021 18:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BDE66E910;
 Thu, 21 Jan 2021 18:16:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51892A41FB;
 Thu, 21 Jan 2021 18:16:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 Jan 2021 18:16:51 -0000
Message-ID: <161125301132.14015.17696715585650833559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210121124932.2143-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210121124932.2143-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gem=3A_Remove_special_casi?=
 =?utf-8?q?ng_from_reloc-gtt?=
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
Content-Type: multipart/mixed; boundary="===============1943836128=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1943836128==
Content-Type: multipart/alternative;
 boundary="===============8742099158717463366=="

--===============8742099158717463366==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/gem: Remove special casing from reloc-gtt
URL   : https://patchwork.freedesktop.org/series/86137/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9662 -> Patchwork_19440
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/index.html

Known issues
------------

  Here are the changes found in Patchwork_19440 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][2] -> [FAIL][3] ([i915#2203])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9662/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9662/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][7] ([i915#2601]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9662/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9662/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (40 -> 37)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9662 -> Patchwork_19440

  CI-20190529: 20190529
  CI_DRM_9662: ef8c9d63dcbb380943dcedeedfcd3ba78e1d752e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5962: 22e3daaed82ab7890018a2f2aabf5082cd536023 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19440: 5e6e66f047a08b1d0d72caa5b6ea50dc495a9f67 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5e6e66f047a0 drm/i915/gvt: Acutally use the map interface
bc39291ceb7e drm/i915/gem: Remove special casing from reloc-gtt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/index.html

--===============8742099158717463366==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/gem: Remove special casing from reloc-gtt</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86137/">https://patchwork.freedesktop.org/series/86137/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9662 -&gt; Patchwork_19440</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19440 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9662/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9662/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9662/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9662/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19440/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9662 -&gt; Patchwork_19440</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9662: ef8c9d63dcbb380943dcedeedfcd3ba78e1d752e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5962: 22e3daaed82ab7890018a2f2aabf5082cd536023 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19440: 5e6e66f047a08b1d0d72caa5b6ea50dc495a9f67 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5e6e66f047a0 drm/i915/gvt: Acutally use the map interface<br />
bc39291ceb7e drm/i915/gem: Remove special casing from reloc-gtt</p>

</body>
</html>

--===============8742099158717463366==--

--===============1943836128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1943836128==--
