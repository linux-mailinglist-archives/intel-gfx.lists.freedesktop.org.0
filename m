Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 354D86F10C3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 05:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18F8710E39E;
	Fri, 28 Apr 2023 03:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D750410E00B;
 Fri, 28 Apr 2023 03:16:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0CFFA882E;
 Fri, 28 Apr 2023 03:16:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7876673183367022759=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 28 Apr 2023 03:16:43 -0000
Message-ID: <168265180383.32439.12269832357373862626@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230428023416.4051910-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230428023416.4051910-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_HuC_loading_and_authentication_for_MTL?=
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

--===============7876673183367022759==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: HuC loading and authentication for MTL
URL   : https://patchwork.freedesktop.org/series/117080/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13071 -> Patchwork_117080v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117080v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117080v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/index.html

Participating hosts (38 -> 35)
------------------------------

  Missing    (3): bat-mtlp-8 fi-snb-2520m bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117080v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_huc_copy@huc-copy:
    - bat-dg2-8:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
    - bat-dg2-9:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-9/igt@gem_huc_copy@huc-copy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-9/igt@gem_huc_copy@huc-copy.html
    - bat-atsm-1:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-atsm-1/igt@gem_huc_copy@huc-copy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-atsm-1/igt@gem_huc_copy@huc-copy.html
    - bat-dg2-11:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-11/igt@gem_huc_copy@huc-copy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-11/igt@gem_huc_copy@huc-copy.html

  * igt@i915_hangman@error-state-basic:
    - bat-atsm-1:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-atsm-1/igt@i915_hangman@error-state-basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-atsm-1/igt@i915_hangman@error-state-basic.html
    - bat-dg2-9:          [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-9/igt@i915_hangman@error-state-basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-9/igt@i915_hangman@error-state-basic.html
    - bat-dg2-8:          [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-8/igt@i915_hangman@error-state-basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-8/igt@i915_hangman@error-state-basic.html
    - bat-dg2-11:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-11/igt@i915_hangman@error-state-basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-11/igt@i915_hangman@error-state-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_117080v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [FAIL][17] ([i915#7916]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       [ABORT][19] -> [ABORT][20] ([i915#8397])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      [INCOMPLETE][21] ([i915#7443] / [i915#8102]) -> [INCOMPLETE][22] ([i915#8102])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html

  
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7916]: https://gitlab.freedesktop.org/drm/intel/issues/7916
  [i915#8102]: https://gitlab.freedesktop.org/drm/intel/issues/8102
  [i915#8397]: https://gitlab.freedesktop.org/drm/intel/issues/8397


Build changes
-------------

  * Linux: CI_DRM_13071 -> Patchwork_117080v1

  CI-20190529: 20190529
  CI_DRM_13071: b9458e7075652669ec0e04abe039a5ed001701fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7273: f40ef4b058466219968b7792d22ff0648b82396b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117080v1: b9458e7075652669ec0e04abe039a5ed001701fe @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

24c4af2c7317 drm/i915/huc: define HuC FW version for MTL
25b162fad038 drm/i915/mtl/huc: Use the media gt for the HuC getparam
bef7b1529d83 drm/i915/mtl/huc: auth HuC via GSC
a10d57b78237 drm/i915/huc: differentiate the 2 steps of the MTL HuC auth flow
c6631f6ff1b6 drm/i915/huc: Load GSC-enabled HuC via DMA xfer if the fuse says so
cbf6b5c41d21 drm/i915/huc: Parse the GSC-enabled HuC binary
aaac264890a7 drm/i915/uc: perma-pin firmwares
2e688ab60ccb DO NOT REVIEW: drm/i915: Add support for MTL GSC SW Proxy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/index.html

--===============7876673183367022759==
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
<tr><td><b>Series:</b></td><td>drm/i915: HuC loading and authentication for MTL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117080/">https://patchwork.freedesktop.org/series/117080/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13071 -&gt; Patchwork_117080v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117080v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117080v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): bat-mtlp-8 fi-snb-2520m bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117080v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">FAIL</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-9/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-9/igt@gem_huc_copy@huc-copy.html">FAIL</a></p>
</li>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-atsm-1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-atsm-1/igt@gem_huc_copy@huc-copy.html">FAIL</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-11/igt@gem_huc_copy@huc-copy.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-atsm-1/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-atsm-1/igt@i915_hangman@error-state-basic.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-9/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-9/igt@i915_hangman@error-state-basic.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-8/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-8/igt@i915_hangman@error-state-basic.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-11/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/bat-dg2-11/igt@i915_hangman@error-state-basic.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117080v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7916">i915#7916</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8397">i915#8397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8102">i915#8102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117080v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8102">i915#8102</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13071 -&gt; Patchwork_117080v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13071: b9458e7075652669ec0e04abe039a5ed001701fe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7273: f40ef4b058466219968b7792d22ff0648b82396b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117080v1: b9458e7075652669ec0e04abe039a5ed001701fe @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>24c4af2c7317 drm/i915/huc: define HuC FW version for MTL<br />
25b162fad038 drm/i915/mtl/huc: Use the media gt for the HuC getparam<br />
bef7b1529d83 drm/i915/mtl/huc: auth HuC via GSC<br />
a10d57b78237 drm/i915/huc: differentiate the 2 steps of the MTL HuC auth flow<br />
c6631f6ff1b6 drm/i915/huc: Load GSC-enabled HuC via DMA xfer if the fuse says so<br />
cbf6b5c41d21 drm/i915/huc: Parse the GSC-enabled HuC binary<br />
aaac264890a7 drm/i915/uc: perma-pin firmwares<br />
2e688ab60ccb DO NOT REVIEW: drm/i915: Add support for MTL GSC SW Proxy</p>

</body>
</html>

--===============7876673183367022759==--
