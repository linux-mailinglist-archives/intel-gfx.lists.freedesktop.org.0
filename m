Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82441520FC1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 10:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB26C10F5ED;
	Tue, 10 May 2022 08:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E3CD10F5ED;
 Tue, 10 May 2022 08:32:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35B37A00A0;
 Tue, 10 May 2022 08:32:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1542027966114959929=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 10 May 2022 08:32:18 -0000
Message-ID: <165217153821.26421.14759734910716691395@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220503061556.513175-1-lucas.demarchi@intel.com>
In-Reply-To: <20220503061556.513175-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Make_drop=5Fpages=28=29_return_bool_=28rev2=29?=
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

--===============1542027966114959929==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Make drop_pages() return bool (rev2)
URL   : https://patchwork.freedesktop.org/series/103466/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11627 -> Patchwork_103466v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (3): bat-dg2-8 bat-adlm-1 bat-jsl-2 
  Missing    (3): fi-bsw-cyan fi-bdw-5557u bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103466v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-1}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-rpls-1/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-rpls-1/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_103466v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-FAIL][4] ([i915#2373])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][5] -> [INCOMPLETE][6] ([i915#4785])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][7] -> [DMESG-FAIL][8] ([i915#4528])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-snb-2600:        NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#4312] / [i915#5594])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-hsw-4770/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][11] ([fdo#109271] / [i915#3428] / [i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-dg2-9}:        [SKIP][12] ([i915#5606]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@read:
    - {bat-dg2-9}:        [SKIP][14] ([i915#2582]) -> [PASS][15] +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@fbdev@read.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [DMESG-WARN][16] ([i915#5122]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_getparams_basic@basic-eu-total:
    - {bat-dg2-9}:        [SKIP][18] ([i915#2575]) -> [PASS][19] +34 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@i915_getparams_basic@basic-eu-total.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_module_load@reload:
    - {bat-dg2-9}:        [FAIL][20] ([i915#5181]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gem:
    - {bat-dg2-9}:        [FAIL][22] ([i915#5703]) -> [PASS][23] +33 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@i915_selftest@live@gem.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][24] ([i915#3921]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - {bat-dg2-9}:        [SKIP][26] ([i915#5171] / [i915#5190]) -> [PASS][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small:
    - {bat-dg2-9}:        [SKIP][28] ([i915#5171]) -> [PASS][29] +46 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@kms_addfb_basic@bo-too-small.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@kms_addfb_basic@bo-too-small.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][30] ([i915#3576]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5171]: https://gitlab.freedesktop.org/drm/intel/issues/5171
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5181]: https://gitlab.freedesktop.org/drm/intel/issues/5181
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5606]: https://gitlab.freedesktop.org/drm/intel/issues/5606
  [i915#5703]: https://gitlab.freedesktop.org/drm/intel/issues/5703
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5879]: https://gitlab.freedesktop.org/drm/intel/issues/5879
  [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885
  [i915#5950]: https://gitlab.freedesktop.org/drm/intel/issues/5950


Build changes
-------------

  * Linux: CI_DRM_11627 -> Patchwork_103466v2

  CI-20190529: 20190529
  CI_DRM_11627: b90a46b7cf238262635312ddb0f150f08c9b9417 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6469: fe3c194ba90615e2402461348357c88a23864275 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103466v2: b90a46b7cf238262635312ddb0f150f08c9b9417 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

af9a0e002070 drm/i915/gem: Make drop_pages() return bool

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/index.html

--===============1542027966114959929==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Make drop_pages() return bool (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103466/">https://patchwork.freedesktop.org/series/103466/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11627 -&gt; Patchwork_103466v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (3): bat-dg2-8 bat-adlm-1 bat-jsl-2 <br />
  Missing    (3): fi-bsw-cyan fi-bdw-5557u bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_103466v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-rpls-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-rpls-1/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103466v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5606">i915#5606</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@i915_getparams_basic@basic-eu-total.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@i915_getparams_basic@basic-eu-total.html">PASS</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@i915_module_load@reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5181">i915#5181</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@i915_selftest@live@gem.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5703">i915#5703</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@i915_selftest@live@gem.html">PASS</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5171">i915#5171</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-dg2-9/igt@kms_addfb_basic@bo-too-small.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5171">i915#5171</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-dg2-9/igt@kms_addfb_basic@bo-too-small.html">PASS</a> +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103466v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11627 -&gt; Patchwork_103466v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11627: b90a46b7cf238262635312ddb0f150f08c9b9417 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6469: fe3c194ba90615e2402461348357c88a23864275 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103466v2: b90a46b7cf238262635312ddb0f150f08c9b9417 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>af9a0e002070 drm/i915/gem: Make drop_pages() return bool</p>

</body>
</html>

--===============1542027966114959929==--
