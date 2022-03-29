Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B874EAC0E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 13:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3953310E881;
	Tue, 29 Mar 2022 11:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2535110E881;
 Tue, 29 Mar 2022 11:16:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21FD5AADDE;
 Tue, 29 Mar 2022 11:16:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2265631384953776616=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 29 Mar 2022 11:16:40 -0000
Message-ID: <164855260011.5797.3163631163832464670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220328172551.43309-1-matthew.auld@intel.com>
In-Reply-To: <20220328172551.43309-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915/gt=3A_Explicitly_clea?=
 =?utf-8?q?r_BB=5FOFFSET_for_new_contexts_=28rev2=29?=
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

--===============2265631384953776616==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm/i915/gt: Explicitly clear BB_OFFSET for new contexts (rev2)
URL   : https://patchwork.freedesktop.org/series/101899/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11416 -> Patchwork_22715
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22715 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22715, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/index.html

Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-bsw-cyan shard-tglu fi-bdw-samus fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22715:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_softpin@safe-alignment:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-bsw-kefka/igt@gem_softpin@safe-alignment.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-bsw-kefka/igt@gem_softpin@safe-alignment.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
    - fi-bsw-nick:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_22715 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][8] -> [INCOMPLETE][9] ([i915#2373] / [i915#4983])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - {fi-jsl-1}:         [DMESG-WARN][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-jsl-1/igt@i915_pm_rps@basic-api.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-jsl-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_lrc:
    - {bat-adlp-6}:       [INCOMPLETE][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html
    - {fi-tgl-dsi}:       [DMESG-FAIL][14] ([i915#2373]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - {bat-rpls-2}:       [DMESG-WARN][16] ([i915#4391]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-rpls-2/igt@i915_selftest@live@guc_multi_lrc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-rpls-2/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][18] ([i915#4785]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - {fi-hsw-g3258}:     [INCOMPLETE][20] ([i915#3303] / [i915#4785]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
    - {fi-ehl-2}:         [INCOMPLETE][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-ehl-2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-2}:       [DMESG-FAIL][24] ([i915#5087]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-rpls-2/igt@i915_selftest@live@requests.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - {bat-adlp-6}:       [DMESG-WARN][26] ([i915#5068]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][28] ([i915#3576]) -> [PASS][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-adlp-6/igt@kms_busy@basic@flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-adlp-6/igt@kms_busy@basic@flip.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][30] ([fdo#109271] / [i915#1436] / [i915#2722] / [i915#3428] / [i915#4312]) -> [FAIL][31] ([i915#4312])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-bsw-kefka/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-bsw-kefka/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5068]: https://gitlab.freedesktop.org/drm/intel/issues/5068
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127


Build changes
-------------

  * Linux: CI_DRM_11416 -> Patchwork_22715

  CI-20190529: 20190529
  CI_DRM_11416: 1dc2c6953e2689a0e5b7cca8450da14059d35f03 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6399: 9ba6cb16f04319226383b57975db203561c75781 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22715: ce17ad9a6f22805ff343b221a8f9d35eb8e73ca6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ce17ad9a6f22 drm/i915/selftest: Always cancel semaphore on error
236d5c1ff105 drm/i915/selftest: Clear the output buffers before GPU writes
6ae0170b05b0 drm/i915/selftests: Check for incomplete LRI from the context image
d7e2ab52888e drm/i915/gt: Explicitly clear BB_OFFSET for new contexts

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/index.html

--===============2265631384953776616==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm/i915/gt: Explicitly clear BB_OFFSET for new contexts (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101899/">https://patchwork.freedesktop.org/series/101899/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11416 -&gt; Patchwork_22715</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22715 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22715, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/index.html</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-bsw-cyan shard-tglu fi-bdw-samus fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22715:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_softpin@safe-alignment:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-bsw-kefka/igt@gem_softpin@safe-alignment.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-bsw-kefka/igt@gem_softpin@safe-alignment.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-bsw-nick/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22715 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-jsl-1/igt@i915_pm_rps@basic-api.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-jsl-1/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-rpls-2/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-rpls-2/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>{fi-hsw-g3258}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-rpls-2/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5087">i915#5087</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-adlp-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5068">i915#5068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22715/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11416 -&gt; Patchwork_22715</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11416: 1dc2c6953e2689a0e5b7cca8450da14059d35f03 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6399: 9ba6cb16f04319226383b57975db203561c75781 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22715: ce17ad9a6f22805ff343b221a8f9d35eb8e73ca6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ce17ad9a6f22 drm/i915/selftest: Always cancel semaphore on error<br />
236d5c1ff105 drm/i915/selftest: Clear the output buffers before GPU writes<br />
6ae0170b05b0 drm/i915/selftests: Check for incomplete LRI from the context image<br />
d7e2ab52888e drm/i915/gt: Explicitly clear BB_OFFSET for new contexts</p>

</body>
</html>

--===============2265631384953776616==--
