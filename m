Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD0131621E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 10:25:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36526E3EE;
	Wed, 10 Feb 2021 09:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91A896E3DF;
 Wed, 10 Feb 2021 09:25:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8989DA47E1;
 Wed, 10 Feb 2021 09:25:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Wed, 10 Feb 2021 09:25:28 -0000
Message-ID: <161294912853.28740.1429302540107889301@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210210083338.100068-1-khaled.almahallawy@intel.com>
In-Reply-To: <20210210083338.100068-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/2=5D_drm/dp=3A_Make_number_of_AUX_?=
 =?utf-8?q?retries_configurable_by_display_drivers=2E?=
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
Content-Type: multipart/mixed; boundary="===============0043818755=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0043818755==
Content-Type: multipart/alternative;
 boundary="===============8706863603418794682=="

--===============8706863603418794682==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [RFC,1/2] drm/dp: Make number of AUX retries configurable by display drivers.
URL   : https://patchwork.freedesktop.org/series/86937/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9755 -> Patchwork_19649
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19649 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19649, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19649:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp2:
    - fi-kbl-7500u:       [PASS][3] -> [DMESG-WARN][4] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-kbl-7500u/igt@kms_flip@basic-flip-vs-dpms@a-dp2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-kbl-7500u/igt@kms_flip@basic-flip-vs-dpms@a-dp2.html

  
Known issues
------------

  Here are the changes found in Patchwork_19649 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-tgl-y/igt@gem_tiled_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-tgl-y/igt@gem_tiled_blits@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][9] ([i915#1372]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      [DMESG-FAIL][11] ([i915#2291]) -> [DMESG-FAIL][12] ([i915#1886] / [i915#2291])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9755 -> Patchwork_19649

  CI-20190529: 20190529
  CI_DRM_9755: 4bf39002081ca59826f350c446106d2b2bef7e3a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5999: 2982c998a9cb79095611fba018d5df3eec5eab88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19649: 011a4bcefd9a01da9d2488e946ada9d8bd53e6f0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

011a4bcefd9a drm/i915/dp: Retry AUX requests 7 times.
9b605e7f6e6f drm/dp: Make number of AUX retries configurable by display drivers.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/index.html

--===============8706863603418794682==
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
<tr><td><b>Series:</b></td><td>series starting with [RFC,1/2] drm/dp: Make number of AUX retries configurable by display drivers.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86937/">https://patchwork.freedesktop.org/series/86937/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9755 -&gt; Patchwork_19649</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19649 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19649, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19649:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp2:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-kbl-7500u/igt@kms_flip@basic-flip-vs-dpms@a-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-kbl-7500u/igt@kms_flip@basic-flip-vs-dpms@a-dp2.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19649 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_self_import@basic-with_one_bo_two_files:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-tgl-y/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-tgl-y/igt@gem_tiled_blits@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9755/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19649/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9755 -&gt; Patchwork_19649</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9755: 4bf39002081ca59826f350c446106d2b2bef7e3a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5999: 2982c998a9cb79095611fba018d5df3eec5eab88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19649: 011a4bcefd9a01da9d2488e946ada9d8bd53e6f0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>011a4bcefd9a drm/i915/dp: Retry AUX requests 7 times.<br />
9b605e7f6e6f drm/dp: Make number of AUX retries configurable by display drivers.</p>

</body>
</html>

--===============8706863603418794682==--

--===============0043818755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0043818755==--
