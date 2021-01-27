Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AC4305BDF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7AF6E19B;
	Wed, 27 Jan 2021 12:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2586F6E084;
 Wed, 27 Jan 2021 12:46:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 154B0A0BA8;
 Wed, 27 Jan 2021 12:46:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Date: Wed, 27 Jan 2021 12:46:07 -0000
Message-ID: <161175156706.11908.6977764878654660048@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210127082437.31339-1-anshuman.gupta@intel.com>
In-Reply-To: <20210127082437.31339-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_DP_errata?=
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
Content-Type: multipart/mixed; boundary="===============1633012652=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1633012652==
Content-Type: multipart/alternative;
 boundary="===============6793818472370153152=="

--===============6793818472370153152==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 DP errata
URL   : https://patchwork.freedesktop.org/series/86340/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9687 -> Patchwork_19514
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/index.html

Known issues
------------

  Here are the changes found in Patchwork_19514 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +26 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_tiled_blits@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9687/fi-tgl-y/igt@gem_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-tgl-y/igt@gem_tiled_blits@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([i915#1161])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9687/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [FAIL][8] ([i915#1161] / [i915#262]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9687/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9687/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9687 -> Patchwork_19514

  CI-20190529: 20190529
  CI_DRM_9687: 7b5229b02338bfb24c3db4e76abb328d1e9cf8f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5974: a85398dcae50930c0e27548cf8c9575ad0bf69d1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19514: 73b045d7cdace6e291536c0edf4607e45fa66c1a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

73b045d7cdac drm/hdcp: DP HDCP2.2 errata LC_Send_L_Prime=16
34fca57dca70 drm/i915/hdcp: Add DP HDCP2.2 timeout to read entire msg

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/index.html

--===============6793818472370153152==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 DP errata</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86340/">https://patchwork.freedesktop.org/series/86340/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9687 -&gt; Patchwork_19514</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19514 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9687/fi-tgl-y/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-tgl-y/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9687/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9687/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9687/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19514/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9687 -&gt; Patchwork_19514</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9687: 7b5229b02338bfb24c3db4e76abb328d1e9cf8f1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5974: a85398dcae50930c0e27548cf8c9575ad0bf69d1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19514: 73b045d7cdace6e291536c0edf4607e45fa66c1a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>73b045d7cdac drm/hdcp: DP HDCP2.2 errata LC_Send_L_Prime=16<br />
34fca57dca70 drm/i915/hdcp: Add DP HDCP2.2 timeout to read entire msg</p>

</body>
</html>

--===============6793818472370153152==--

--===============1633012652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1633012652==--
