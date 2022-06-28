Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B3155EFB4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 22:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C446F1124D7;
	Tue, 28 Jun 2022 20:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35A3211216C;
 Tue, 28 Jun 2022 20:40:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EEF0AADDA;
 Tue, 28 Jun 2022 20:40:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1313925615650790929=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 28 Jun 2022 20:40:31 -0000
Message-ID: <165644883116.14503.4575927656274509740@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220628055130.1117146-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220628055130.1117146-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRGVs?=
 =?utf-8?q?ay_disabling_scheduling_on_a_context_=28rev2=29?=
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

--===============1313925615650790929==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Delay disabling scheduling on a context (rev2)
URL   : https://patchwork.freedesktop.org/series/96167/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11820 -> Patchwork_96167v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_96167v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_96167v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/index.html

Participating hosts (38 -> 39)
------------------------------

  Additional (1): bat-dg2-9 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_96167v2:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-rkl-guc:         [PASS][1] -> [TIMEOUT][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-rkl-guc/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-rkl-guc/igt@core_auth@basic-auth.html
    - bat-dg1-6:          [PASS][3] -> [TIMEOUT][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg1-6/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg1-6/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - bat-adlp-4:         [PASS][5] -> [TIMEOUT][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-4/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adlp-4/igt@debugfs_test@read_all_entries.html

  * igt@gem_basic@bad-close:
    - bat-adlp-4:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-4/igt@gem_basic@bad-close.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adlp-4/igt@gem_basic@bad-close.html
    - bat-dg1-6:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg1-6/igt@gem_basic@bad-close.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg1-6/igt@gem_basic@bad-close.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_auth@basic-auth:
    - {bat-dg2-9}:        NOTRUN -> [TIMEOUT][11] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-9/igt@core_auth@basic-auth.html
    - {bat-dg2-8}:        [PASS][12] -> [TIMEOUT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg2-8/igt@core_auth@basic-auth.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-8/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - {bat-adln-1}:       [PASS][14] -> [TIMEOUT][15] +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adln-1/igt@debugfs_test@read_all_entries.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adln-1/igt@debugfs_test@read_all_entries.html
    - {bat-dg2-8}:        [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-8/igt@debugfs_test@read_all_entries.html

  * igt@gem_basic@bad-close:
    - {bat-adlp-6}:       [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-6/igt@gem_basic@bad-close.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adlp-6/igt@gem_basic@bad-close.html
    - {bat-adln-1}:       [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adln-1/igt@gem_basic@bad-close.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adln-1/igt@gem_basic@bad-close.html
    - {bat-dg2-9}:        NOTRUN -> [INCOMPLETE][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-9/igt@gem_basic@bad-close.html

  * igt@i915_module_load@load:
    - {bat-adlp-6}:       [PASS][23] -> [TIMEOUT][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-6/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adlp-6/igt@i915_module_load@load.html
    - {bat-dg2-8}:        [DMESG-WARN][25] ([i915#5763]) -> [TIMEOUT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg2-8/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_96167v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - fi-tgl-u2:          [PASS][27] -> [DMESG-WARN][28] ([i915#402]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - fi-hsw-4770:        [FAIL][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-hsw-4770/igt@i915_pm_rps@basic-api.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-hsw-4770/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       [DMESG-FAIL][31] ([i915#3674]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-tgl-u2:          [DMESG-WARN][33] ([i915#402]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3674]: https://gitlab.freedesktop.org/drm/intel/issues/3674
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763


Build changes
-------------

  * Linux: CI_DRM_11820 -> Patchwork_96167v2

  CI-20190529: 20190529
  CI_DRM_11820: 8f4a9176de36698b5b3ba72c4f68f1cf7a15c0c9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6549: 9b9371c8da32533022ad700a7c023b4c3a085fbc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_96167v2: 8f4a9176de36698b5b3ba72c4f68f1cf7a15c0c9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cf4d09b1de9f drm/i915/guc: Add delay to disable scheduling after pin count goes to zero
a21ef9c3e5e5 drm/i915/selftests: Use correct selfest calls for live tests

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/index.html

--===============1313925615650790929==
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
<tr><td><b>Series:</b></td><td>Delay disabling scheduling on a context (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96167/">https://patchwork.freedesktop.org/series/96167/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11820 -&gt; Patchwork_96167v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_96167v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_96167v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/index.html</p>
<h2>Participating hosts (38 -&gt; 39)</h2>
<p>Additional (1): bat-dg2-9 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_96167v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-rkl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-rkl-guc/igt@core_auth@basic-auth.html">TIMEOUT</a> +4 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg1-6/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg1-6/igt@core_auth@basic-auth.html">TIMEOUT</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adlp-4/igt@debugfs_test@read_all_entries.html">TIMEOUT</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-4/igt@gem_basic@bad-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adlp-4/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg1-6/igt@gem_basic@bad-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg1-6/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-9/igt@core_auth@basic-auth.html">TIMEOUT</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg2-8/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-8/igt@core_auth@basic-auth.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adln-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adln-1/igt@debugfs_test@read_all_entries.html">TIMEOUT</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg2-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-8/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-6/igt@gem_basic@bad-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adlp-6/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adln-1/igt@gem_basic@bad-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adln-1/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-9/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-adlp-6/igt@i915_module_load@load.html">TIMEOUT</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5763">i915#5763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/bat-dg2-8/igt@i915_module_load@load.html">TIMEOUT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_96167v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_flip@basic-plain-flip@a-edp1:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-hsw-4770/igt@i915_pm_rps@basic-api.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-hsw-4770/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3674">i915#3674</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11820 -&gt; Patchwork_96167v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11820: 8f4a9176de36698b5b3ba72c4f68f1cf7a15c0c9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6549: 9b9371c8da32533022ad700a7c023b4c3a085fbc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_96167v2: 8f4a9176de36698b5b3ba72c4f68f1cf7a15c0c9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cf4d09b1de9f drm/i915/guc: Add delay to disable scheduling after pin count goes to zero<br />
a21ef9c3e5e5 drm/i915/selftests: Use correct selfest calls for live tests</p>

</body>
</html>

--===============1313925615650790929==--
