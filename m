Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EB57176CD
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 08:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B63610E1B4;
	Wed, 31 May 2023 06:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C503910E1B4;
 Wed, 31 May 2023 06:24:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2109A882E;
 Wed, 31 May 2023 06:24:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0048303973411450141=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Wed, 31 May 2023 06:24:45 -0000
Message-ID: <168551428578.17615.13321848387509410861@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230530111534.871403-1-luciano.coelho@intel.com>
In-Reply-To: <20230530111534.871403-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev3=29?=
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

--===============0048303973411450141==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: implement internal workqueues (rev3)
URL   : https://patchwork.freedesktop.org/series/117618/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13203 -> Patchwork_117618v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117618v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117618v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117618v3:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-blb-e6850:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-blb-e6850/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-blb-e6850/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-elk-e7500:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-elk-e7500/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-elk-e7500/igt@gem_close_race@basic-process.html

  * igt@i915_selftest@live@evict:
    - bat-adlp-9:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-adlp-9/igt@i915_selftest@live@evict.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-adlp-9/igt@i915_selftest@live@evict.html
    - bat-rpls-2:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-rpls-2/igt@i915_selftest@live@evict.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-rpls-2/igt@i915_selftest@live@evict.html
    - bat-adlm-1:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-adlm-1/igt@i915_selftest@live@evict.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-adlm-1/igt@i915_selftest@live@evict.html
    - bat-rpls-1:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-rpls-1/igt@i915_selftest@live@evict.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-rpls-1/igt@i915_selftest@live@evict.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@evict:
    - {bat-mtlp-8}:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-mtlp-8/igt@i915_selftest@live@evict.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-mtlp-8/igt@i915_selftest@live@evict.html

  
Known issues
------------

  Here are the changes found in Patchwork_117618v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-kbl-8809g:       [PASS][17] -> [FAIL][18] ([i915#8293] / [i915#8298])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-kbl-8809g/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-kbl-8809g/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][19] -> [DMESG-WARN][20] ([i915#1982] / [i915#8189]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-kbl-soraka/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][21] -> [DMESG-FAIL][22] ([i915#5334] / [i915#7872])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-guc:         [DMESG-FAIL][23] ([i915#5334]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@migrate:
    - {bat-mtlp-8}:       [DMESG-FAIL][25] ([i915#7699]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-mtlp-8/igt@i915_selftest@live@migrate.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-mtlp-8/igt@i915_selftest@live@migrate.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8298]: https://gitlab.freedesktop.org/drm/intel/issues/8298


Build changes
-------------

  * Linux: CI_DRM_13203 -> Patchwork_117618v3

  CI-20190529: 20190529
  CI_DRM_13203: f01a870c3a528f64447611d03cf9bdba51b6d481 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7311: c031030f39aff973330668a5a2f1593408da78ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117618v3: f01a870c3a528f64447611d03cf9bdba51b6d481 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d305c6732492 drm/i915/selftests: add local workqueue for SW fence selftest
c45c28fe0aee drm/i915: add a dedicated workqueue inside drm_i915_private
4b0cbd6b9089 drm/i915: use pointer to i915 instead of rpm in wakeref

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/index.html

--===============0048303973411450141==
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
<tr><td><b>Series:</b></td><td>drm/i915: implement internal workqueues (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117618/">https://patchwork.freedesktop.org/series/117618/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13203 -&gt; Patchwork_117618v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117618v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117618v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117618v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-blb-e6850/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-blb-e6850/igt@gem_close_race@basic-process.html">ABORT</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-hsw-4770/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-hsw-4770/igt@gem_close_race@basic-process.html">ABORT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-elk-e7500/igt@gem_close_race@basic-process.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-elk-e7500/igt@gem_close_race@basic-process.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-adlp-9/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-adlp-9/igt@i915_selftest@live@evict.html">ABORT</a></p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-rpls-2/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-rpls-2/igt@i915_selftest@live@evict.html">ABORT</a></p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-adlm-1/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-adlm-1/igt@i915_selftest@live@evict.html">ABORT</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-rpls-1/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-rpls-1/igt@i915_selftest@live@evict.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@evict:<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-mtlp-8/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-mtlp-8/igt@i915_selftest@live@evict.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117618v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-kbl-8809g/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-kbl-8809g/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8298">i915#8298</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-mtlp-8/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-mtlp-8/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13203 -&gt; Patchwork_117618v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13203: f01a870c3a528f64447611d03cf9bdba51b6d481 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7311: c031030f39aff973330668a5a2f1593408da78ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117618v3: f01a870c3a528f64447611d03cf9bdba51b6d481 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d305c6732492 drm/i915/selftests: add local workqueue for SW fence selftest<br />
c45c28fe0aee drm/i915: add a dedicated workqueue inside drm_i915_private<br />
4b0cbd6b9089 drm/i915: use pointer to i915 instead of rpm in wakeref</p>

</body>
</html>

--===============0048303973411450141==--
