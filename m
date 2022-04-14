Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E433A501EF6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 01:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 299CB10E78D;
	Thu, 14 Apr 2022 23:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A34C810F268;
 Thu, 14 Apr 2022 23:18:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1FEFA0096;
 Thu, 14 Apr 2022 23:18:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0288592496166795867=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Thu, 14 Apr 2022 23:18:45 -0000
Message-ID: <164997832565.1346.7667283696910094309@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220414183148.15884-1-nirmoy.das@intel.com>
In-Reply-To: <20220414183148.15884-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQUxT?=
 =?utf-8?q?A=3A_hda=3A_handle_UAF_at_probe_error?=
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

--===============0288592496166795867==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ALSA: hda: handle UAF at probe error
URL   : https://patchwork.freedesktop.org/series/102714/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11503 -> Patchwork_102714v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102714v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102714v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/index.html

Participating hosts (49 -> 45)
------------------------------

  Missing    (4): fi-kbl-soraka fi-bdw-samus fi-bsw-cyan bat-adlp-4 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102714v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@system-suspend-without-i915:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-1115g4/igt@i915_suspend@system-suspend-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-tgl-1115g4/igt@i915_suspend@system-suspend-without-i915.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@basic:
    - {bat-rpls-2}:       NOTRUN -> [FAIL][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/bat-rpls-2/igt@gem_lmem_swapping@basic.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [INCOMPLETE][4] ([i915#5329]) -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-rpls-2/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - {fi-ehl-2}:         [PASS][6] -> [SKIP][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-ehl-2/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-ehl-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - {fi-ehl-2}:         NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-ehl-2/igt@i915_selftest@live.html

  * igt@i915_suspend@system-suspend-without-i915:
    - {fi-ehl-2}:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-ehl-2/igt@i915_suspend@system-suspend-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-ehl-2/igt@i915_suspend@system-suspend-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_102714v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-1115g4:      [PASS][11] -> [FAIL][12] ([i915#579])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][13] ([i915#1245])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-tgl-1115g4/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][14] -> [INCOMPLETE][15] ([i915#4785])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][16] ([fdo#109271] / [i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_suspend@system-suspend-without-i915:
    - {fi-tgl-dsi}:       [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1245]: https://gitlab.freedesktop.org/drm/intel/issues/1245
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5329]: https://gitlab.freedesktop.org/drm/intel/issues/5329
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5401]: https://gitlab.freedesktop.org/drm/intel/issues/5401
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Build changes
-------------

  * Linux: CI_DRM_11503 -> Patchwork_102714v1

  CI-20190529: 20190529
  CI_DRM_11503: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102714v1: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c287159b48b5 ALSA: hda: handle UAF at probe error
5e85240f9606 ALSA: core: Add snd_card_free_on_error() helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/index.html

--===============0288592496166795867==
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
<tr><td><b>Series:</b></td><td>ALSA: hda: handle UAF at probe error</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102714/">https://patchwork.freedesktop.org/series/102714/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11503 -&gt; Patchwork_102714v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102714v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102714v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/index.html</p>
<h2>Participating hosts (49 -&gt; 45)</h2>
<p>Missing    (4): fi-kbl-soraka fi-bdw-samus fi-bsw-cyan bat-adlp-4 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102714v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@system-suspend-without-i915:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-1115g4/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-tgl-1115g4/igt@i915_suspend@system-suspend-without-i915.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/bat-rpls-2/igt@gem_lmem_swapping@basic.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/bat-rpls-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5329">i915#5329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-ehl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-ehl-2/igt@i915_pm_rpm@module-reload.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-ehl-2/igt@i915_selftest@live.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@system-suspend-without-i915:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-ehl-2/igt@i915_suspend@system-suspend-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-ehl-2/igt@i915_suspend@system-suspend-without-i915.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102714v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-tgl-1115g4/igt@i915_selftest@live.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1245">i915#1245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_suspend@system-suspend-without-i915:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102714v1/fi-tgl-dsi/igt@i915_suspend@system-suspend-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11503 -&gt; Patchwork_102714v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11503: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6437: ea0144ed6ccb66b977f204b4d53b6062ed1cc8bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102714v1: 000a595e443e99065d0ea00993a60eef24276e5f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c287159b48b5 ALSA: hda: handle UAF at probe error<br />
5e85240f9606 ALSA: core: Add snd_card_free_on_error() helper</p>

</body>
</html>

--===============0288592496166795867==--
