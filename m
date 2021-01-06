Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7EE2EB731
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 01:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFF0189733;
	Wed,  6 Jan 2021 00:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C84F89733;
 Wed,  6 Jan 2021 00:57:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 764A4A9A43;
 Wed,  6 Jan 2021 00:57:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 06 Jan 2021 00:57:13 -0000
Message-ID: <160989463347.18711.12370992318578696522@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU3Bs?=
 =?utf-8?q?it_GuC_submission_from_execlists_submission?=
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
Content-Type: multipart/mixed; boundary="===============0535945952=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0535945952==
Content-Type: multipart/alternative;
 boundary="===============0981659293677372729=="

--===============0981659293677372729==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Split GuC submission from execlists submission
URL   : https://patchwork.freedesktop.org/series/85528/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9547 -> Patchwork_19262
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/index.html

Known issues
------------

  Here are the changes found in Patchwork_19262 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@userptr:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#2203] / [i915#2868])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-tgl-y:           [FAIL][6] ([i915#2780]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-tgl-y/igt@gem_exec_parallel@engines@contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-tgl-y/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_sync@basic-all:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-tgl-y/igt@gem_sync@basic-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-tgl-y/igt@gem_sync@basic-all.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [INCOMPLETE][10] ([i915#142] / [i915#2405]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][12] ([i915#2291] / [i915#541]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2780]: https://gitlab.freedesktop.org/drm/intel/issues/2780
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9547 -> Patchwork_19262

  CI-20190529: 20190529
  CI_DRM_9547: 4f31e1ebafa4d59ce9692a7ef7f76e63e51f58d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19262: 95e1c72faff4fcd33f689e4379ea66a3e91fa5ba @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

95e1c72faff4 drm/i915/guc: enable only the user interrupt when using GuC submission
c8a929723bd2 drm/i915/guc: stop calling execlists_set_default_submission
19efc6761a69 drm/i915/guc: init engine directly in GuC submission mode
45b23606fe0e drm/i915/guc: do not dump execlists state with GuC submission
b91fa7500d8f drm/i915/guc: Delete GuC code unused in future patches

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/index.html

--===============0981659293677372729==
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
<tr><td><b>Series:</b></td><td>Split GuC submission from execlists submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85528/">https://patchwork.freedesktop.org/series/85528/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9547 -&gt; Patchwork_19262</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19262 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-byt-j1900/igt@amdgpu/amd_basic@userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-tgl-y/igt@gem_exec_parallel@engines@contexts.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2780">i915#2780</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-tgl-y/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-tgl-y/igt@gem_sync@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-tgl-y/igt@gem_sync@basic-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9547/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19262/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9547 -&gt; Patchwork_19262</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9547: 4f31e1ebafa4d59ce9692a7ef7f76e63e51f58d6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19262: 95e1c72faff4fcd33f689e4379ea66a3e91fa5ba @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>95e1c72faff4 drm/i915/guc: enable only the user interrupt when using GuC submission<br />
c8a929723bd2 drm/i915/guc: stop calling execlists_set_default_submission<br />
19efc6761a69 drm/i915/guc: init engine directly in GuC submission mode<br />
45b23606fe0e drm/i915/guc: do not dump execlists state with GuC submission<br />
b91fa7500d8f drm/i915/guc: Delete GuC code unused in future patches</p>

</body>
</html>

--===============0981659293677372729==--

--===============0535945952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0535945952==--
