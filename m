Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F195D6E2CE5
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Apr 2023 01:29:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD9910EEBB;
	Fri, 14 Apr 2023 23:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 226D610E224;
 Fri, 14 Apr 2023 23:29:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19F6EAA3D8;
 Fri, 14 Apr 2023 23:29:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0615055534864734600=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Fri, 14 Apr 2023 23:29:14 -0000
Message-ID: <168151495406.26688.11535613316192901575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230414223415.3077055-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20230414223415.3077055-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Provide_sysfs_for_efficient_freq_=28rev2=29?=
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

--===============0615055534864734600==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc/slpc: Provide sysfs for efficient freq (rev2)
URL   : https://patchwork.freedesktop.org/series/116510/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13009 -> Patchwork_116510v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116510v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116510v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116510v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-9:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adlp-9/igt@i915_pm_rps@basic-api.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-9/igt@i915_pm_rps@basic-api.html
    - bat-adlp-6:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adlp-6/igt@i915_pm_rps@basic-api.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-6/igt@i915_pm_rps@basic-api.html
    - bat-atsm-1:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-atsm-1/igt@i915_pm_rps@basic-api.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-atsm-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@i915_selftest@live@slpc.html
    - bat-dg1-5:          [PASS][8] -> [DMESG-FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg1-5/igt@i915_selftest@live@slpc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg1-5/igt@i915_selftest@live@slpc.html
    - bat-dg1-7:          [PASS][10] -> [DMESG-FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg1-7/igt@i915_selftest@live@slpc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg1-7/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-adln-1:         [DMESG-FAIL][12] ([i915#6997]) -> [DMESG-FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adln-1/igt@i915_selftest@live@slpc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adln-1/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_116510v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][14] ([i915#6687] / [i915#7978])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          [PASS][17] -> [FAIL][18] ([i915#8308])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg1-7/igt@i915_pm_rps@basic-api.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-rpls-2:         [PASS][19] -> [FAIL][20] ([i915#8308])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-2/igt@i915_pm_rps@basic-api.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-2/igt@i915_pm_rps@basic-api.html
    - bat-rplp-1:         [PASS][21] -> [FAIL][22] ([i915#8308])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rplp-1/igt@i915_pm_rps@basic-api.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          [PASS][23] -> [FAIL][24] ([i915#8308])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg1-5/igt@i915_pm_rps@basic-api.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg1-5/igt@i915_pm_rps@basic-api.html
    - bat-dg2-9:          [PASS][25] -> [FAIL][26] ([i915#8308])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-9/igt@i915_pm_rps@basic-api.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-adln-1:         [PASS][27] -> [FAIL][28] ([i915#8308])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adln-1/igt@i915_pm_rps@basic-api.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adln-1/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          [PASS][29] -> [FAIL][30] ([i915#8308])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-8/igt@i915_pm_rps@basic-api.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-8/igt@i915_pm_rps@basic-api.html
    - bat-rpls-1:         [PASS][31] -> [FAIL][32] ([i915#8308])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-1/igt@i915_pm_rps@basic-api.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][33] ([i915#1886])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [PASS][34] -> [ABORT][35] ([i915#7913] / [i915#7979])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [PASS][36] -> [DMESG-WARN][37] ([i915#7699])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [PASS][38] -> [ABORT][39] ([i915#4983] / [i915#7913])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-2/igt@i915_selftest@live@requests.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-atsm-1:         [PASS][40] -> [DMESG-FAIL][41] ([i915#7913])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-atsm-1/igt@i915_selftest@live@slpc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-atsm-1/igt@i915_selftest@live@slpc.html
    - bat-adlp-6:         [PASS][42] -> [DMESG-FAIL][43] ([i915#7913])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adlp-6/igt@i915_selftest@live@slpc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-6/igt@i915_selftest@live@slpc.html
    - bat-adlp-9:         [PASS][44] -> [DMESG-FAIL][45] ([i915#7913])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adlp-9/igt@i915_selftest@live@slpc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-9/igt@i915_selftest@live@slpc.html
    - bat-rplp-1:         [PASS][46] -> [DMESG-FAIL][47] ([i915#7913])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rplp-1/igt@i915_selftest@live@slpc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rplp-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][48] ([fdo#109271]) +16 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][49] ([i915#3546]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-atsm-1:         [DMESG-FAIL][50] ([i915#7699]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-atsm-1/igt@i915_selftest@live@migrate.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-atsm-1/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [TIMEOUT][52] ([i915#6794]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-1/igt@i915_selftest@live@mman.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         [ABORT][54] ([i915#6687] / [i915#7978]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [FAIL][56] ([i915#7932]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7979]: https://gitlab.freedesktop.org/drm/intel/issues/7979
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_13009 -> Patchwork_116510v2

  CI-20190529: 20190529
  CI_DRM_13009: 766ccc538115e757a747d12d1bf7a714d1424ae5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7256: 066fa5410180730b85f61e4f3073da9a2055dc49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116510v2: 766ccc538115e757a747d12d1bf7a714d1424ae5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

485bb14437e4 drm/i915/guc/slpc: Provide sysfs for efficient freq

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/index.html

--===============0615055534864734600==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc/slpc: Provide sysfs for efficient freq (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116510/">https://patchwork.freedesktop.org/series/116510/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13009 -&gt; Patchwork_116510v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116510v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116510v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116510v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adlp-9/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-9/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adlp-6/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-6/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-atsm-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-atsm-1/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg1-5/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg1-5/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg1-7/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg1-7/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116510v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg1-7/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg1-7/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-2/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-2/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rplp-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rplp-1/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg1-5/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg1-5/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-9/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adln-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adln-1/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-8/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-8/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7979">i915#7979</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-atsm-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-atsm-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-adlp-9/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-9/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rplp-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rplp-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-atsm-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-atsm-1/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13009/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13009 -&gt; Patchwork_116510v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13009: 766ccc538115e757a747d12d1bf7a714d1424ae5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7256: 066fa5410180730b85f61e4f3073da9a2055dc49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116510v2: 766ccc538115e757a747d12d1bf7a714d1424ae5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>485bb14437e4 drm/i915/guc/slpc: Provide sysfs for efficient freq</p>

</body>
</html>

--===============0615055534864734600==--
