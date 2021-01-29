Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 055A1308D5F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 20:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD036EC0E;
	Fri, 29 Jan 2021 19:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04A6C6EC0D;
 Fri, 29 Jan 2021 19:32:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB34DA0099;
 Fri, 29 Jan 2021 19:32:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Fri, 29 Jan 2021 19:32:01 -0000
Message-ID: <161194872193.15525.1795922338118564093@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210129182945.217078-1-aditya.swarup@intel.com>
In-Reply-To: <20210129182945.217078-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRmlu?=
 =?utf-8?q?al_set_of_patches_for_ADLS_enabling_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0740237854=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0740237854==
Content-Type: multipart/alternative;
 boundary="===============1408138322593172442=="

--===============1408138322593172442==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Final set of patches for ADLS enabling (rev3)
URL   : https://patchwork.freedesktop.org/series/86322/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9701 -> Patchwork_19545
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/index.html

Known issues
------------

  Here are the changes found in Patchwork_19545 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9701/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9701/fi-tgl-y/igt@gem_ctx_create@basic-files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-tgl-y/igt@gem_ctx_create@basic-files.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][7] ([i915#1161] / [i915#262]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9701/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [DMESG-WARN][9] ([i915#2868]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9701/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2868]: https://gitlab.freedesktop.org/drm/intel/issues/2868
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9701 -> Patchwork_19545

  CI-20190529: 20190529
  CI_DRM_9701: 1974b10a6bcd66b58fd5ed6990c6dc2495047d31 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5979: fdc23507d022b68443121ec2c1a951af27c87240 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19545: 3900b84d73acf2a16d1b95f59ea6ccf02f71d216 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3900b84d73ac drm/i915/adl_s: Add GT and CTX WAs for ADL-S
277d527984de drm/i915/adl_s: Add display WAs for ADL-S
fd086fb350b9 drm/i915/adl_s: Update memory bandwidth parameters
9825e76754aa drm/i915/adl_s: Load DMC
598223745a32 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
d1a01bcc7045 drm/i915/adl_s: Re-use TGL GuC/HuC firmware
ad35bfcaf2e4 drm/i915/adl_s: Add power wells
20fe6c96d8ea drm/i915/adl_s: Update PHY_MISC programming

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/index.html

--===============1408138322593172442==
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
<tr><td><b>Series:</b></td><td>Final set of patches for ADLS enabling (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86322/">https://patchwork.freedesktop.org/series/86322/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9701 -&gt; Patchwork_19545</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19545 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9701/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9701/fi-tgl-y/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-tgl-y/igt@gem_ctx_create@basic-files.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9701/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9701/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2868">i915#2868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19545/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9701 -&gt; Patchwork_19545</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9701: 1974b10a6bcd66b58fd5ed6990c6dc2495047d31 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5979: fdc23507d022b68443121ec2c1a951af27c87240 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19545: 3900b84d73acf2a16d1b95f59ea6ccf02f71d216 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3900b84d73ac drm/i915/adl_s: Add GT and CTX WAs for ADL-S<br />
277d527984de drm/i915/adl_s: Add display WAs for ADL-S<br />
fd086fb350b9 drm/i915/adl_s: Update memory bandwidth parameters<br />
9825e76754aa drm/i915/adl_s: Load DMC<br />
598223745a32 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION<br />
d1a01bcc7045 drm/i915/adl_s: Re-use TGL GuC/HuC firmware<br />
ad35bfcaf2e4 drm/i915/adl_s: Add power wells<br />
20fe6c96d8ea drm/i915/adl_s: Update PHY_MISC programming</p>

</body>
</html>

--===============1408138322593172442==--

--===============0740237854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0740237854==--
