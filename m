Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CA46E563E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 03:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F82A10E65A;
	Tue, 18 Apr 2023 01:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15F3210E65A;
 Tue, 18 Apr 2023 01:14:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D2C4A7DFF;
 Tue, 18 Apr 2023 01:14:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2644676474844269266=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
Date: Tue, 18 Apr 2023 01:14:34 -0000
Message-ID: <168178047401.17887.17666517456768411451@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230418000915.3489494-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20230418000915.3489494-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Provide_sysfs_for_efficient_freq_=28rev3=29?=
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

--===============2644676474844269266==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc/slpc: Provide sysfs for efficient freq (rev3)
URL   : https://patchwork.freedesktop.org/series/116510/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13023 -> Patchwork_116510v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116510v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116510v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116510v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-9:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adlp-9/igt@i915_pm_rps@basic-api.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adlp-9/igt@i915_pm_rps@basic-api.html
    - bat-adlp-6:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adlp-6/igt@i915_pm_rps@basic-api.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adlp-6/igt@i915_pm_rps@basic-api.html
    - bat-atsm-1:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-atsm-1/igt@i915_pm_rps@basic-api.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-atsm-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@slpc:
    - bat-dg1-7:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg1-7/igt@i915_selftest@live@slpc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg1-7/igt@i915_selftest@live@slpc.html
    - bat-dg2-11:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg2-11/igt@i915_selftest@live@slpc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg2-11/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][11] ([i915#6367]) -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-1/igt@i915_selftest@live@slpc.html
    - bat-adln-1:         [DMESG-FAIL][13] ([i915#6997]) -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adln-1/igt@i915_selftest@live@slpc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adln-1/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_116510v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          [PASS][15] -> [FAIL][16] ([i915#8308])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg1-7/igt@i915_pm_rps@basic-api.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-rpls-2:         [PASS][17] -> [FAIL][18] ([i915#8308])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_pm_rps@basic-api.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-2/igt@i915_pm_rps@basic-api.html
    - bat-rplp-1:         [PASS][19] -> [FAIL][20] ([i915#8308])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rplp-1/igt@i915_pm_rps@basic-api.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rplp-1/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          [PASS][21] -> [FAIL][22] ([i915#8308])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg1-5/igt@i915_pm_rps@basic-api.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg1-5/igt@i915_pm_rps@basic-api.html
    - bat-dg2-9:          [PASS][23] -> [FAIL][24] ([i915#8308])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg2-9/igt@i915_pm_rps@basic-api.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-adln-1:         [PASS][25] -> [FAIL][26] ([i915#8308])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adln-1/igt@i915_pm_rps@basic-api.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adln-1/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          [PASS][27] -> [FAIL][28] ([i915#8308])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg2-8/igt@i915_pm_rps@basic-api.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg2-8/igt@i915_pm_rps@basic-api.html
    - bat-rpls-1:         [PASS][29] -> [FAIL][30] ([i915#8308])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-1/igt@i915_pm_rps@basic-api.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][31] -> [DMESG-FAIL][32] ([i915#5334])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg1-5:          [PASS][33] -> [ABORT][34] ([i915#4983])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg1-5/igt@i915_selftest@live@gt_mocs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg1-5/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][35] -> [DMESG-FAIL][36] ([i915#4258])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@slpc:
    - bat-atsm-1:         [PASS][37] -> [DMESG-FAIL][38] ([i915#7913])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-atsm-1/igt@i915_selftest@live@slpc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-atsm-1/igt@i915_selftest@live@slpc.html
    - bat-adlp-6:         [PASS][39] -> [DMESG-FAIL][40] ([i915#7913])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adlp-6/igt@i915_selftest@live@slpc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adlp-6/igt@i915_selftest@live@slpc.html
    - bat-adlp-9:         [PASS][41] -> [DMESG-FAIL][42] ([i915#7913])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adlp-9/igt@i915_selftest@live@slpc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adlp-9/igt@i915_selftest@live@slpc.html
    - bat-rplp-1:         [PASS][43] -> [DMESG-FAIL][44] ([i915#7913])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rplp-1/igt@i915_selftest@live@slpc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rplp-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-2:         [PASS][45] -> [ABORT][46] ([i915#6687] / [i915#7978])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-FAIL][47] ([i915#6997] / [i915#7913]) -> [DMESG-FAIL][48] ([i915#7913])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_13023 -> Patchwork_116510v3

  CI-20190529: 20190529
  CI_DRM_13023: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7258: ad2eb276eda849b7a7985229009a816c7608186c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116510v3: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9840b4a9781b drm/i915/guc/slpc: Provide sysfs for efficient freq

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/index.html

--===============2644676474844269266==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc/slpc: Provide sysfs for efficient freq (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116510/">https://patchwork.freedesktop.org/series/116510/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13023 -&gt; Patchwork_116510v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116510v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116510v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116510v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adlp-9/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adlp-9/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adlp-6/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adlp-6/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-atsm-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-atsm-1/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg1-7/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg1-7/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg2-11/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg2-11/igt@i915_selftest@live@slpc.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116510v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg1-7/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg1-7/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-2/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rplp-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rplp-1/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg1-5/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg1-5/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg2-9/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg2-9/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adln-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adln-1/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg2-8/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg2-8/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-1/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-dg1-5/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-dg1-5/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-atsm-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-atsm-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adlp-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-adlp-9/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-adlp-9/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rplp-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rplp-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13023/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116510v3/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13023 -&gt; Patchwork_116510v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13023: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7258: ad2eb276eda849b7a7985229009a816c7608186c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116510v3: 0c6c8e560ac78d000179e195e1280cc3479ebd58 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9840b4a9781b drm/i915/guc/slpc: Provide sysfs for efficient freq</p>

</body>
</html>

--===============2644676474844269266==--
