Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E29358E4C0
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 03:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9AEE27AA;
	Wed, 10 Aug 2022 01:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32351E2766;
 Wed, 10 Aug 2022 01:58:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 240BDAADDB;
 Wed, 10 Aug 2022 01:58:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6278414503269397911=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Wed, 10 Aug 2022 01:58:59 -0000
Message-ID: <166009673911.12352.8164047942194691373@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220810000306.5476-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20220810000306.5476-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Allow_SLPC_to_use_efficient_frequency?=
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

--===============6278414503269397911==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc/slpc: Allow SLPC to use efficient frequency
URL   : https://patchwork.freedesktop.org/series/107101/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11977 -> Patchwork_107101v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107101v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107101v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/index.html

Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-hsw-4200u fi-ctg-p8600 bat-jsl-3 bat-rpls-2 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107101v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-4:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlp-4/igt@i915_pm_rps@basic-api.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlp-4/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@slpc:
    - bat-adlp-4:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlp-4/igt@i915_selftest@live@slpc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlp-4/igt@i915_selftest@live@slpc.html
    - bat-dg1-5:          [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-5/igt@i915_selftest@live@slpc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg1-5/igt@i915_selftest@live@slpc.html
    - bat-dg1-6:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-6/igt@i915_selftest@live@slpc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg1-6/igt@i915_selftest@live@slpc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rps@basic-api:
    - {bat-adlp-6}:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlp-6/igt@i915_pm_rps@basic-api.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html
    - {bat-rplp-1}:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-rplp-1/igt@i915_pm_rps@basic-api.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-8}:        [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-rpls-1/igt@i915_selftest@live@slpc.html
    - {bat-adlp-6}:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlp-6/igt@i915_selftest@live@slpc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlp-6/igt@i915_selftest@live@slpc.html
    - {bat-adlm-1}:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlm-1/igt@i915_selftest@live@slpc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlm-1/igt@i915_selftest@live@slpc.html
    - {bat-rplp-1}:       [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-rplp-1/igt@i915_selftest@live@slpc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-rplp-1/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_107101v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [PASS][23] -> [INCOMPLETE][24] ([i915#6532])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          [PASS][25] -> [FAIL][26] ([i915#4032])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          [PASS][27] -> [FAIL][28] ([i915#4032])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-5/igt@i915_pm_rps@basic-api.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bdw-5557u:       [PASS][29] -> [DMESG-FAIL][30] ([i915#5334])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][31] -> [INCOMPLETE][32] ([i915#3303] / [i915#4785])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][34] ([fdo#109271] / [i915#4312] / [i915#6246])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][35] ([i915#2867]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6532]: https://gitlab.freedesktop.org/drm/intel/issues/6532


Build changes
-------------

  * Linux: CI_DRM_11977 -> Patchwork_107101v1

  CI-20190529: 20190529
  CI_DRM_11977: 71776a3cc166e6400e713acdd2b03094120e1baa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6619: ec2ab8e3a151ce05bd2726319c528c2ab99e8a96 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107101v1: 71776a3cc166e6400e713acdd2b03094120e1baa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ec204f791ebd drm/i915/guc/slpc: Allow SLPC to use efficient frequency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/index.html

--===============6278414503269397911==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc/slpc: Allow SLPC to use efficient frequency</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107101/">https://patchwork.freedesktop.org/series/107101/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11977 -&gt; Patchwork_107101v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107101v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107101v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/index.html</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-hsw-4200u fi-ctg-p8600 bat-jsl-3 bat-rpls-2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107101v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlp-4/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlp-4/igt@i915_pm_rps@basic-api.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlp-4/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlp-4/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-5/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg1-5/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg1-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlp-6/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlp-6/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-rplp-1/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlp-6/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlm-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlm-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-rplp-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-rplp-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107101v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6532">i915#6532</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-6/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-5/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107101v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11977 -&gt; Patchwork_107101v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11977: 71776a3cc166e6400e713acdd2b03094120e1baa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6619: ec2ab8e3a151ce05bd2726319c528c2ab99e8a96 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107101v1: 71776a3cc166e6400e713acdd2b03094120e1baa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ec204f791ebd drm/i915/guc/slpc: Allow SLPC to use efficient frequency</p>

</body>
</html>

--===============6278414503269397911==--
