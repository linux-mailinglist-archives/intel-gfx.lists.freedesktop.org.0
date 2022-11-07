Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71F261EE31
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 10:07:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A51510E248;
	Mon,  7 Nov 2022 09:07:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6329C10E248;
 Mon,  7 Nov 2022 09:07:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDBF1AADE1;
 Mon,  7 Nov 2022 09:07:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4418695632872420743=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Mon, 07 Nov 2022 09:07:02 -0000
Message-ID: <166781202287.17762.3669891074155670163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107073923.1353049-1-suraj.kandpal@intel.com>
In-Reply-To: <20221107073923.1353049-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_YCbCr420_for_VDSC?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4418695632872420743==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable YCbCr420 for VDSC
URL   : https://patchwork.freedesktop.org/series/110581/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12347 -> Patchwork_110581v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/index.html

Participating hosts (38 -> 26)
------------------------------

  Missing    (12): fi-rkl-11600 bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_110581v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#111827])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-mst}:       [DMESG-WARN][2] ([i915#6434]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-tgl-mst/igt@gem_ctx_create@basic-files.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/fi-tgl-mst/igt@gem_ctx_create@basic-files.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][4] ([i915#2940]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][6] ([i915#3303] / [i915#7122]) -> [INCOMPLETE][7] ([i915#7122])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#7122]: https://gitlab.freedesktop.org/drm/intel/issues/7122


Build changes
-------------

  * Linux: CI_DRM_12347 -> Patchwork_110581v1

  CI-20190529: 20190529
  CI_DRM_12347: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110581v1: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ae01b7bce59f drm/i915: Code styling fixes
6e5508625cfd drm/i915/dsc: Allow DSC only with YCbCr420 format when forced from debugfs
930ecc8dafdf drm/i915/dsc: Add debugfs entry to validate DSC YCbCr420
fb6311137ba0 drm/i915: Fill in native_420 field
ec1a8853e204 drm/i915: Enable YCbCr420 for VDSC
4bb6e9c54428 drm/i915: Adding the new registers for DSC
b42343caed06 drm/i915/dp: Check if DSC supports the given output_format
31c8508ee2cc drm/dp_helper: Add helper to check if the sink supports given format with DSC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/index.html

--===============4418695632872420743==
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
<tr><td><b>Series:</b></td><td>Enable YCbCr420 for VDSC</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110581/">https://patchwork.freedesktop.org/series/110581/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12347 -&gt; Patchwork_110581v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/index.html</p>
<h2>Participating hosts (38 -&gt; 26)</h2>
<p>Missing    (12): fi-rkl-11600 bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110581v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-tgl-mst/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/fi-tgl-mst/igt@gem_ctx_create@basic-files.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7122">i915#7122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110581v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7122">i915#7122</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12347 -&gt; Patchwork_110581v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12347: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110581v1: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ae01b7bce59f drm/i915: Code styling fixes<br />
6e5508625cfd drm/i915/dsc: Allow DSC only with YCbCr420 format when forced from debugfs<br />
930ecc8dafdf drm/i915/dsc: Add debugfs entry to validate DSC YCbCr420<br />
fb6311137ba0 drm/i915: Fill in native_420 field<br />
ec1a8853e204 drm/i915: Enable YCbCr420 for VDSC<br />
4bb6e9c54428 drm/i915: Adding the new registers for DSC<br />
b42343caed06 drm/i915/dp: Check if DSC supports the given output_format<br />
31c8508ee2cc drm/dp_helper: Add helper to check if the sink supports given format with DSC</p>

</body>
</html>

--===============4418695632872420743==--
