Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4D4303AC1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 11:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5172D6E28A;
	Tue, 26 Jan 2021 10:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 164BF6E1E8;
 Tue, 26 Jan 2021 10:51:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1045BA8169;
 Tue, 26 Jan 2021 10:51:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 26 Jan 2021 10:51:01 -0000
Message-ID: <161165826103.9812.5161884561130054854@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126094612.163290-1-matthew.auld@intel.com>
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915=3A_setup_the_LMEM_region?=
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
Content-Type: multipart/mixed; boundary="===============1287557291=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1287557291==
Content-Type: multipart/alternative;
 boundary="===============1081707483383395067=="

--===============1081707483383395067==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915: setup the LMEM region
URL   : https://patchwork.freedesktop.org/series/86294/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9682 -> Patchwork_19502
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19502 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19502, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19502:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_19502 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][5] -> [INCOMPLETE][6] ([i915#2940])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][7] ([i915#1436] / [i915#1602])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_ctx_create@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-tgl-y/igt@gem_ctx_create@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][10] ([fdo#109271]) -> [FAIL][11] ([i915#704])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704


Participating hosts (40 -> 36)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9682 -> Patchwork_19502

  CI-20190529: 20190529
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19502: bf5fa03c9cc58969a5b0d7f9b8f2d1a4a332bd04 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bf5fa03c9cc5 drm/i915: allocate cmd ring in lmem
85f01e9f4886 drm/i915: move engine scratch to LMEM
41cf705692f0 drm/i915: allocate context from LMEM
f8db1a26bbd9 drm/i915/dg1: Reserve first 1MB of local memory
47e9cf146fbe drm/i915: introduce mem->reserved
bebbd470cc5f drm/i915: reserve stolen for LMEM region
684488fc1838 drm/i915: setup the LMEM region

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/index.html

--===============1081707483383395067==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915: setup the LMEM region</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86294/">https://patchwork.freedesktop.org/series/86294/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9682 -&gt; Patchwork_19502</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19502 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19502, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19502:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19502 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_ctx_create@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-tgl-y/igt@gem_ctx_create@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-tgl-y/igt@gem_ctx_create@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9682/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19502/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/704">i915#704</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9682 -&gt; Patchwork_19502</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9682: 35ee6d505b478462c04952da1a4fbc03991af114 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19502: bf5fa03c9cc58969a5b0d7f9b8f2d1a4a332bd04 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bf5fa03c9cc5 drm/i915: allocate cmd ring in lmem<br />
85f01e9f4886 drm/i915: move engine scratch to LMEM<br />
41cf705692f0 drm/i915: allocate context from LMEM<br />
f8db1a26bbd9 drm/i915/dg1: Reserve first 1MB of local memory<br />
47e9cf146fbe drm/i915: introduce mem-&gt;reserved<br />
bebbd470cc5f drm/i915: reserve stolen for LMEM region<br />
684488fc1838 drm/i915: setup the LMEM region</p>

</body>
</html>

--===============1081707483383395067==--

--===============1287557291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1287557291==--
