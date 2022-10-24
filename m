Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF9160AF1A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 17:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91E010E85C;
	Mon, 24 Oct 2022 15:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97AAA10E855;
 Mon, 24 Oct 2022 15:34:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EC9EAADDD;
 Mon, 24 Oct 2022 15:34:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5432234372013009202=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Somalapuram Amaranath" <amaranath.somalapuram@amd.com>
Date: Mon, 24 Oct 2022 15:34:00 -0000
Message-ID: <166662564055.3426.11155932229592697297@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221019152736.654451-1-Amaranath.Somalapuram@amd.com>
In-Reply-To: <20221019152736.654451-1-Amaranath.Somalapuram@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/ttm=3A_rework_on_ttm=5Fresource?=
 =?utf-8?q?_to_use_size=5Ft_type?=
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

--===============5432234372013009202==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: series starting with [1/6] drm/ttm: rework on ttm_resource to use size_t type
URL   : https://patchwork.freedesktop.org/series/110055/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12285 -> Patchwork_110055v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110055v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110055v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (3): fi-ctg-p8600 fi-bdw-samus bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110055v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@fds:
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-bsw-nick/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_selftest@live@hugepages:
    - fi-skl-guc:         [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-skl-guc/igt@i915_selftest@live@hugepages.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-skl-guc/igt@i915_selftest@live@hugepages.html
    - fi-icl-u2:          NOTRUN -> [DMESG-FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-icl-u2/igt@i915_selftest@live@hugepages.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_selftest@live@hugepages:
    - fi-cfl-8109u:       [DMESG-WARN][6] ([i915#5904]) -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_selftest@live@hugepages.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@i915_selftest@live@hugepages.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hugepages:
    - {bat-rplp-1}:       [PASS][8] -> [DMESG-FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rplp-1/igt@i915_selftest@live@hugepages.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-rplp-1/igt@i915_selftest@live@hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_110055v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][10] -> [FAIL][11] ([i915#7229])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][12] ([i915#4613]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][13] -> [INCOMPLETE][14] ([i915#4418])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [PASS][15] -> [INCOMPLETE][16] ([i915#7122])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][17] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-kbl-x1275/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][20] ([fdo#109295] / [i915#3301])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][21] ([i915#4312])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][22] ([i915#4312])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][23] ([i915#4312])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-skl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][24] ([i915#2582]) -> [PASS][25] +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-2/igt@fbdev@read.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-bsw-nick:        [INCOMPLETE][26] -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-adlm-1}:       [DMESG-WARN][28] ([i915#2867]) -> [PASS][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-u2:          [DMESG-WARN][30] ([i915#4890]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-FAIL][32] ([i915#62]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@coherency:
    - fi-cfl-8109u:       [DMESG-WARN][34] ([i915#5904]) -> [PASS][35] +15 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_selftest@live@coherency.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][36] ([i915#4785]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-rkl-11600:       [DMESG-FAIL][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-rkl-11600/igt@i915_selftest@live@hugepages.html
    - fi-kbl-x1275:       [DMESG-FAIL][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
    - {bat-adln-1}:       [DMESG-FAIL][42] -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-adln-1/igt@i915_selftest@live@hugepages.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-adln-1/igt@i915_selftest@live@hugepages.html
    - {bat-rpls-2}:       [DMESG-FAIL][44] -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-2/igt@i915_selftest@live@hugepages.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-rpls-2/igt@i915_selftest@live@hugepages.html
    - {bat-rpls-1}:       [DMESG-FAIL][46] -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-1/igt@i915_selftest@live@hugepages.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][48] ([i915#62]) -> [PASS][49] +13 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6856]: https://gitlab.freedesktop.org/drm/intel/issues/6856
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7122]: https://gitlab.freedesktop.org/drm/intel/issues/7122
  [i915#7125]: https://gitlab.freedesktop.org/drm/intel/issues/7125
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12285 -> Patchwork_110055v1

  CI-20190529: 20190529
  CI_DRM_12285: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7023: 229bb0accbb7c8cedcc8d9256ad2b6683c9f161a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110055v1: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

dd86c8b90470 drm/vmwgfx: fix’s on ttm_resource rework to use size_t type
d3a84c5bd9ce drm/radeon: fix’s on ttm_resource rework to use size_t type
8c646b086ff2 drm/nouveau: fix’s on ttm_resource rework to use size_t type
f6bd77ff38ce drm/i915: fix’s on ttm_resource rework to use size_t type
57fbb1f1cdac drm/amd: fix’s on ttm_resource rework to use size_t type
f598a6e7d873 drm/ttm: rework on ttm_resource to use size_t type

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/index.html

--===============5432234372013009202==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


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
<tr><td><b>Series:</b></td><td>series starting with [1/6] drm/ttm: rework on ttm_resource to use size_t type</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110055/">https://patchwork.freedesktop.org/series/110055/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12285 -&gt; Patchwork_110055v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110055v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_110055v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (3): fi-ctg-p8600 fi-bdw-samus bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110055v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-bsw-nick/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-skl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-skl-guc/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-icl-u2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hugepages:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@hugepages:<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rplp-1/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-rplp-1/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110055v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7122">i915#7122</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-kbl-x1275/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-bsw-nick/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4890">i915#4890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-icl-u2/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@i915_selftest@live@coherency.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-rkl-11600/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-adln-1/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-adln-1/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-rpls-2/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-1/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110055v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> +13 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12285 -&gt; Patchwork_110055v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12285: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7023: 229bb0accbb7c8cedcc8d9256ad2b6683c9f161a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110055v1: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>dd86c8b90470 drm/vmwgfx: fix’s on ttm_resource rework to use size_t type<br />
d3a84c5bd9ce drm/radeon: fix’s on ttm_resource rework to use size_t type<br />
8c646b086ff2 drm/nouveau: fix’s on ttm_resource rework to use size_t type<br />
f6bd77ff38ce drm/i915: fix’s on ttm_resource rework to use size_t type<br />
57fbb1f1cdac drm/amd: fix’s on ttm_resource rework to use size_t type<br />
f598a6e7d873 drm/ttm: rework on ttm_resource to use size_t type</p>

</body>
</html>

--===============5432234372013009202==--
