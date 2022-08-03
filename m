Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 071BE588768
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 08:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2E5113036;
	Wed,  3 Aug 2022 06:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CA3A10FC77;
 Wed,  3 Aug 2022 06:32:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 604DBA010C;
 Wed,  3 Aug 2022 06:32:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7739192971327513415=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Wed, 03 Aug 2022 06:32:28 -0000
Message-ID: <165950834836.15012.11587760229407695696@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220803052944.28069-1-animesh.manna@intel.com>
In-Reply-To: <20220803052944.28069-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pps=3A_added_get=5Fpps=5Fidx=28=29_hook_as_part_of_pps=5F?=
 =?utf-8?q?get=5Fregister=28=29_cleanup?=
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

--===============7739192971327513415==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pps: added get_pps_idx() hook as part of pps_get_register() cleanup
URL   : https://patchwork.freedesktop.org/series/106922/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11964 -> Patchwork_106922v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106922v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106922v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-hsw-4200u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106922v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-kbl-7567u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-kbl-7567u/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-kbl-8809g:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-kbl-8809g/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-8809g/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-kbl-x1275/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-x1275/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-skl-6600u/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-soraka/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-jsl-1}:        [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-jsl-1/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-jsl-1/igt@i915_module_load@load.html
    - {fi-jsl-1}:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-jsl-1/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-jsl-1/igt@i915_module_load@load.html
    - {fi-ehl-2}:         [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-ehl-2/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-ehl-2/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_106922v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][16] -> [DMESG-FAIL][17] ([i915#4494] / [i915#4957])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - bat-adlp-4:         [PASS][18] -> [DMESG-WARN][19] ([i915#1888])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-adlp-4/igt@i915_selftest@live@hugepages.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-adlp-4/igt@i915_selftest@live@hugepages.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [PASS][20] -> [FAIL][21] ([i915#6298])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@runner@aborted:
    - fi-kbl-7567u:       NOTRUN -> [FAIL][22] ([i915#4312] / [i915#6219])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][23] ([i915#4312] / [i915#6219])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-x1275/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][24] ([i915#4312] / [i915#6219])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-8809g/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][25] ([i915#4312])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][26] ([i915#4312] / [i915#6219])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][27] ([i915#2582]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-rpls-2/igt@fbdev@read.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][29] ([i915#2867]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_ringfill@basic-all:
    - {bat-dg2-8}:        [FAIL][31] ([i915#5886]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-dg2-8/igt@gem_ringfill@basic-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-dg2-8/igt@gem_ringfill@basic-all.html

  * igt@i915_selftest@live@hugepages:
    - {bat-adlm-1}:       [DMESG-WARN][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-adlm-1/igt@i915_selftest@live@hugepages.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-adlm-1/igt@i915_selftest@live@hugepages.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
  [i915#5886]: https://gitlab.freedesktop.org/drm/intel/issues/5886
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298


Build changes
-------------

  * Linux: CI_DRM_11964 -> Patchwork_106922v1

  CI-20190529: 20190529
  CI_DRM_11964: 856e330c2d6aa43e94bfca2d1b09369575f8f498 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6610: c93f93dfe91a77e6a884f826d61f927106988b5f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106922v1: 856e330c2d6aa43e94bfca2d1b09369575f8f498 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e30840c8bccb drm/i915/pps: added get_pps_idx() hook as part of pps_get_register() cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/index.html

--===============7739192971327513415==
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
<tr><td><b>Series:</b></td><td>drm/i915/pps: added get_pps_idx() hook as part of pps_get_register() cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106922/">https://patchwork.freedesktop.org/series/106922/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11964 -&gt; Patchwork_106922v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106922v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_106922v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-hsw-4200u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106922v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-7567u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-8809g/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-x1275/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-skl-6600u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-soraka/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-ehl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-ehl-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106922v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-adlp-4/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-adlp-4/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-dg2-8/igt@gem_ringfill@basic-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5886">i915#5886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-dg2-8/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11964/bat-adlm-1/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106922v1/bat-adlm-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11964 -&gt; Patchwork_106922v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11964: 856e330c2d6aa43e94bfca2d1b09369575f8f498 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6610: c93f93dfe91a77e6a884f826d61f927106988b5f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106922v1: 856e330c2d6aa43e94bfca2d1b09369575f8f498 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e30840c8bccb drm/i915/pps: added get_pps_idx() hook as part of pps_get_register() cleanup</p>

</body>
</html>

--===============7739192971327513415==--
