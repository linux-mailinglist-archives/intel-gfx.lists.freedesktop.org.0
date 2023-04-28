Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2876F2042
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 23:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3ECE10E161;
	Fri, 28 Apr 2023 21:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1852410E161;
 Fri, 28 Apr 2023 21:47:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10D33A41FB;
 Fri, 28 Apr 2023 21:47:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2283230725960760075=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 28 Apr 2023 21:47:27 -0000
Message-ID: <168271844703.32441.12430763406001186112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230428185810.4127234-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230428185810.4127234-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_HuC_loading_and_authentication_for_MTL_=28rev2=29?=
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

--===============2283230725960760075==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: HuC loading and authentication for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/117080/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13075 -> Patchwork_117080v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117080v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117080v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117080v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@client:
    - bat-dg2-8:          [PASS][1] -> [DMESG-WARN][2] +37 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-8/igt@i915_selftest@live@client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-8/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - bat-dg2-9:          [PASS][3] -> [DMESG-WARN][4] +38 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-9/igt@i915_selftest@live@coherency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-9/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][5] -> [DMESG-WARN][6] +37 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-11/igt@i915_selftest@live@perf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-11/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@slpc:
    - bat-atsm-1:         [PASS][7] -> [DMESG-WARN][8] +39 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-atsm-1/igt@i915_selftest@live@slpc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-atsm-1/igt@i915_selftest@live@slpc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-6}:       [ABORT][9] ([i915#4983] / [i915#7920]) -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_117080v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-dg2-11:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - bat-dg2-11:         [PASS][13] -> [DMESG-WARN][14] ([i915#8189]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-11/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-11/igt@i915_module_load@reload.html
    - bat-dg2-9:          [PASS][15] -> [DMESG-WARN][16] ([i915#8189]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-9/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-9/igt@i915_module_load@reload.html
    - bat-dg2-8:          [PASS][17] -> [DMESG-WARN][18] ([i915#8189]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-8/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-8/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-soraka:      [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-atsm-1:         [PASS][21] -> [DMESG-WARN][22] ([i915#7699]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-atsm-1/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-atsm-1/igt@i915_selftest@live@gt_heartbeat.html
    - bat-dg2-9:          [PASS][23] -> [DMESG-WARN][24] ([i915#7699]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html
    - bat-dg2-8:          [PASS][25] -> [DMESG-WARN][26] ([i915#7699]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-8/igt@i915_selftest@live@gt_heartbeat.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-8/igt@i915_selftest@live@gt_heartbeat.html
    - bat-dg2-11:         [PASS][27] -> [DMESG-WARN][28] ([i915#7699])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][29] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/fi-bsw-n3050/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1:
    - fi-rkl-11600:       [PASS][30] -> [FAIL][31] ([fdo#103375])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - {bat-mtlp-6}:       [SKIP][32] ([i915#3595]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-mtlp-6/igt@gem_huc_copy@huc-copy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-mtlp-6/igt@gem_huc_copy@huc-copy.html
    - {bat-mtlp-8}:       [SKIP][34] ([i915#3595]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-mtlp-8/igt@gem_huc_copy@huc-copy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-mtlp-8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][36] ([i915#7911] / [i915#7913]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_mocs:
    - {bat-mtlp-8}:       [ABORT][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8379]: https://gitlab.freedesktop.org/drm/intel/issues/8379


Build changes
-------------

  * Linux: CI_DRM_13075 -> Patchwork_117080v2

  CI-20190529: 20190529
  CI_DRM_13075: b0058d7610b0cd455b699a3e393e416823a6bc80 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7277: 1cb3507f3ff28d11bd5cfabcde576fe78ddab571 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117080v2: b0058d7610b0cd455b699a3e393e416823a6bc80 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

93a5b488bf87 drm/i915/huc: define HuC FW version for MTL
7b85c1090c5b drm/i915/mtl/huc: Use the media gt for the HuC getparam
b5ee1ec4587d drm/i915/mtl/huc: auth HuC via GSC
7e2c67c47fb2 drm/i915/huc: differentiate the 2 steps of the MTL HuC auth flow
0b868f35e6b5 drm/i915/huc: Load GSC-enabled HuC via DMA xfer if the fuse says so
9159f4f8f27f drm/i915/huc: Parse the GSC-enabled HuC binary
de5537562b4e drm/i915/uc: perma-pin firmwares
50fed1ba03b7 DO NOT REVIEW: drm/i915: Add support for MTL GSC SW Proxy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/index.html

--===============2283230725960760075==
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
<tr><td><b>Series:</b></td><td>drm/i915: HuC loading and authentication for MTL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117080/">https://patchwork.freedesktop.org/series/117080/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13075 -&gt; Patchwork_117080v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117080v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117080v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117080v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-8/igt@i915_selftest@live@client.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-9/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-9/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-atsm-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-atsm-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +39 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117080v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-11/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-11/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-9/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-8/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-atsm-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-atsm-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-9/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-8/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-8/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/fi-bsw-n3050/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/fi-rkl-11600/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-mtlp-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3595">i915#3595</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-mtlp-6/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
<li>
<p>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-mtlp-8/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3595">i915#3595</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-mtlp-8/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13075/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v2/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13075 -&gt; Patchwork_117080v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13075: b0058d7610b0cd455b699a3e393e416823a6bc80 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7277: 1cb3507f3ff28d11bd5cfabcde576fe78ddab571 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117080v2: b0058d7610b0cd455b699a3e393e416823a6bc80 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>93a5b488bf87 drm/i915/huc: define HuC FW version for MTL<br />
7b85c1090c5b drm/i915/mtl/huc: Use the media gt for the HuC getparam<br />
b5ee1ec4587d drm/i915/mtl/huc: auth HuC via GSC<br />
7e2c67c47fb2 drm/i915/huc: differentiate the 2 steps of the MTL HuC auth flow<br />
0b868f35e6b5 drm/i915/huc: Load GSC-enabled HuC via DMA xfer if the fuse says so<br />
9159f4f8f27f drm/i915/huc: Parse the GSC-enabled HuC binary<br />
de5537562b4e drm/i915/uc: perma-pin firmwares<br />
50fed1ba03b7 DO NOT REVIEW: drm/i915: Add support for MTL GSC SW Proxy</p>

</body>
</html>

--===============2283230725960760075==--
