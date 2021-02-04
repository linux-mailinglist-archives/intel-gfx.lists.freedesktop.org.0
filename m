Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 556E930EDE4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 09:01:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66A66ECEB;
	Thu,  4 Feb 2021 08:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 488E76ECEB;
 Thu,  4 Feb 2021 08:01:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41EA4A363D;
 Thu,  4 Feb 2021 08:01:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 04 Feb 2021 08:01:14 -0000
Message-ID: <161242567424.4501.3757812325439228020@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204064842.11595-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20210204064842.11595-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSERN?=
 =?utf-8?q?I2=2E1_PCON_Misc_Fixes?=
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
Content-Type: multipart/mixed; boundary="===============1798400512=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1798400512==
Content-Type: multipart/alternative;
 boundary="===============0886197031538449661=="

--===============0886197031538449661==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDMI2.1 PCON Misc Fixes
URL   : https://patchwork.freedesktop.org/series/86677/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9729 -> Patchwork_19583
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/index.html

Known issues
------------

  Here are the changes found in Patchwork_19583 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-tgl-y/igt@gem_ringfill@basic-all.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#2411] / [i915#402]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][6] ([i915#2940]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9729 -> Patchwork_19583

  CI-20190529: 20190529
  CI_DRM_9729: f5c0d295953da801ec6f504a0b3de020e43b55b4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19583: 5c5357769b1891aa1a10e74e0867f2e48d24dfed @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5c5357769b18 i915/display: Remove FRL related code from disable DP sequence for older platforms
61ee4530371e drm/dp_helper: Define options for FRL training for HDMI2.1 PCON
5fa4c89ea9a4 i915/display/intel_dp: Read PCON DSC ENC caps only for DPCD rev >= 1.4

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/index.html

--===============0886197031538449661==
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
<tr><td><b>Series:</b></td><td>HDMI2.1 PCON Misc Fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86677/">https://patchwork.freedesktop.org/series/86677/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9729 -&gt; Patchwork_19583</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19583 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9729/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19583/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9729 -&gt; Patchwork_19583</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9729: f5c0d295953da801ec6f504a0b3de020e43b55b4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19583: 5c5357769b1891aa1a10e74e0867f2e48d24dfed @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5c5357769b18 i915/display: Remove FRL related code from disable DP sequence for older platforms<br />
61ee4530371e drm/dp_helper: Define options for FRL training for HDMI2.1 PCON<br />
5fa4c89ea9a4 i915/display/intel_dp: Read PCON DSC ENC caps only for DPCD rev &gt;= 1.4</p>

</body>
</html>

--===============0886197031538449661==--

--===============1798400512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1798400512==--
