Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA515F6DAF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 20:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAB810E86B;
	Thu,  6 Oct 2022 18:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89D8110E86F;
 Thu,  6 Oct 2022 18:46:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82299AADD4;
 Thu,  6 Oct 2022 18:46:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4007389220599068367=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 06 Oct 2022 18:46:00 -0000
Message-ID: <166508196049.5834.10462359144515033687@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221006172056.1381588-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221006172056.1381588-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/huc=3A_bump_timeout_for_delayed_load_and_reduce_print_ver?=
 =?utf-8?q?bosity?=
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

--===============4007389220599068367==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/huc: bump timeout for delayed load and reduce print verbosity
URL   : https://patchwork.freedesktop.org/series/109455/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12223 -> Patchwork_109455v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109455v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109455v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Additional (1): bat-adls-5 
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-hsw-4200u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109455v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_timelines:
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg1-5/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@reset:
    - bat-adlp-4:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adlp-4/igt@i915_selftest@live@reset.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adlp-4/igt@i915_selftest@live@reset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {bat-jsl-1}:        [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-jsl-1/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-jsl-1/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-rte:
    - {bat-rplp-1}:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-adlp-6}:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
    - {bat-jsl-3}:        [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html
    - {bat-adls-5}:       NOTRUN -> [INCOMPLETE][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adls-5/igt@i915_pm_rpm@module-reload.html
    - {bat-adln-1}:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adln-1/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adln-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@evict:
    - {bat-rpls-2}:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-2/igt@i915_selftest@live@evict.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-rpls-2/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-9}:        [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_timelines:
    - {bat-dg2-8}:        [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-adlm-1}:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-dg2-11}:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg2-11/igt@i915_selftest@live@requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg2-11/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@dp-crc-fast:
    - {bat-rpls-1}:       [SKIP][25] ([fdo#111827]) -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-1/igt@kms_chamelium@dp-crc-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-rpls-1/igt@kms_chamelium@dp-crc-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_109455v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [INCOMPLETE][27] ([i915#4418]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_12223 -> Patchwork_109455v1

  CI-20190529: 20190529
  CI_DRM_12223: c53a5e48e0405a63cda64682304cd8b391025be3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7002: 523844c74e7da6b39d856596c28a92f04172035f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109455v1: c53a5e48e0405a63cda64682304cd8b391025be3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9d6424aa57d2 drm/i915/huc: bump timeout for delayed load and reduce print verbosity

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/index.html

--===============4007389220599068367==
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
<tr><td><b>Series:</b></td><td>drm/i915/huc: bump timeout for delayed load and reduce print verbosity</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109455/">https://patchwork.freedesktop.org/series/109455/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12223 -&gt; Patchwork_109455v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109455v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_109455v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Additional (1): bat-adls-5 <br />
  Missing    (3): fi-ctg-p8600 fi-hsw-4770 fi-hsw-4200u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109455v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg1-5/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adlp-4/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adlp-4/igt@i915_selftest@live@reset.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-jsl-1/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-jsl-1/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-rplp-1/igt@i915_pm_rpm@basic-rte.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-jsl-3/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-jsl-3/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adls-5/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adln-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adln-1/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-2/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-rpls-2/igt@i915_selftest@live@evict.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg2-11/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg2-11/igt@i915_selftest@live@requests.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-rpls-1/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-rpls-1/igt@kms_chamelium@dp-crc-fast.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109455v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109455v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12223 -&gt; Patchwork_109455v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12223: c53a5e48e0405a63cda64682304cd8b391025be3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7002: 523844c74e7da6b39d856596c28a92f04172035f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109455v1: c53a5e48e0405a63cda64682304cd8b391025be3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9d6424aa57d2 drm/i915/huc: bump timeout for delayed load and reduce print verbosity</p>

</body>
</html>

--===============4007389220599068367==--
