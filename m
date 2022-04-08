Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1C84F8F50
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 09:16:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2736110F4B6;
	Fri,  8 Apr 2022 07:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D826810F4AD;
 Fri,  8 Apr 2022 07:16:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D396FAADD2;
 Fri,  8 Apr 2022 07:16:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0188154475641547558=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 08 Apr 2022 07:16:34 -0000
Message-ID: <164940219483.22676.10187124779224918301@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220407161839.1073443-1-matthew.d.roper@intel.com>
In-Reply-To: <20220407161839.1073443-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Sunset_igpu_legacy_mmap_support_based_on_GRAPHICS=5FVE?=
 =?utf-8?q?R=5FFULL?=
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

--===============0188154475641547558==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Sunset igpu legacy mmap support based on GRAPHICS_VER_FULL
URL   : https://patchwork.freedesktop.org/series/102352/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11472 -> Patchwork_22819
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22819 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22819, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/index.html

Participating hosts (49 -> 48)
------------------------------

  Additional (4): bat-hsw-1 bat-rpls-2 fi-bwr-2160 bat-adlp-4 
  Missing    (5): fi-blb-e6850 fi-bsw-cyan shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22819:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@basic-rte:
    - bat-dg1-6:          NOTRUN -> ([SKIP][1], [SKIP][2]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@i915_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-x1275:       [FAIL][3] ([i915#4312]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-x1275/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-x1275/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][5] ([i915#4312] / [i915#5257]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][7] ([i915#4312]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-7567u/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {bat-rpls-2}:       NOTRUN -> ([SKIP][9], [SKIP][10]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-rpls-2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-rpls-2/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - {bat-jsl-2}:        NOTRUN -> ([SKIP][11], [SKIP][12]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-jsl-2/igt@i915_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-jsl-2/igt@i915_pm_rpm@basic-rte.html

  * igt@prime_self_import@basic-llseek-size:
    - {bat-rpls-2}:       NOTRUN -> ([SKIP][13], [SKIP][14]) ([i915#2575]) +66 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-rpls-2/igt@prime_self_import@basic-llseek-size.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-rpls-2/igt@prime_self_import@basic-llseek-size.html

  * igt@prime_vgem@basic-fence-read:
    - {bat-jsl-2}:        NOTRUN -> ([SKIP][15], [SKIP][16]) ([i915#2575]) +66 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-jsl-2/igt@prime_vgem@basic-fence-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-jsl-2/igt@prime_vgem@basic-fence-read.html

  * igt@runner@aborted:
    - {bat-adls-5}:       [FAIL][17] ([i915#4312]) -> ([FAIL][18], [FAIL][19])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/bat-adls-5/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-adls-5/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-adls-5/igt@runner@aborted.html
    - {bat-hsw-1}:        NOTRUN -> ([FAIL][20], [FAIL][21])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-hsw-1/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-hsw-1/igt@runner@aborted.html
    - {fi-jsl-1}:         [FAIL][22] ([i915#4312]) -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-jsl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22819 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bwr-2160:        NOTRUN -> [FAIL][24] ([i915#5605])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-bwr-2160/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][25] ([fdo#109271]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@core_auth@basic-auth.html

  * igt@fbdev@eof:
    - fi-kbl-8809g:       NOTRUN -> [INCOMPLETE][26] ([i915#5557])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@fbdev@eof.html

  * igt@gem_basic@create-close:
    - bat-dg1-6:          NOTRUN -> ([SKIP][27], [SKIP][28]) ([i915#2575]) +143 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@gem_basic@create-close.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@gem_basic@create-close.html

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        NOTRUN -> [SKIP][29] ([fdo#109271]) +146 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_lmem_swapping@basic:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][30] ([i915#5602])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html
    - bat-dg1-6:          NOTRUN -> ([SKIP][31], [SKIP][32]) ([i915#5602])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@gem_lmem_swapping@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@gem_lmem_swapping@basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][33] ([fdo#109271]) +146 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][34] ([fdo#109271]) +145 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#5341])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#5341])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - bat-dg1-6:          NOTRUN -> ([SKIP][37], [SKIP][38]) ([i915#2575] / [i915#5341])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#5341])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> ([FAIL][40], [FAIL][41]) ([i915#5457])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-adlp-4/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-adlp-4/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][42] ([i915#4312] / [i915#5257]) -> [FAIL][43] ([i915#4312])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8700k/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][44] -> [FAIL][45] ([i915#4312])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][46] -> [FAIL][47] ([i915#2722])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-8809g/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][48] -> [FAIL][49] ([i915#4312])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        [FAIL][50] ([i915#4312]) -> [FAIL][51] ([i915#5594])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-hsw-4770/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][52] -> [FAIL][53] ([i915#4312])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ivb-3770/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][54] ([i915#4312] / [i915#5257]) -> [FAIL][55] ([i915#3690])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-6:          [FAIL][56] -> ([FAIL][57], [FAIL][58]) ([i915#4312])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/bat-dg1-6/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][59] ([i915#4312]) -> [FAIL][60] ([i915#3690] / [i915#4312])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-n3050/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-bsw-n3050/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5457]: https://gitlab.freedesktop.org/drm/intel/issues/5457
  [i915#5557]: https://gitlab.freedesktop.org/drm/intel/issues/5557
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602
  [i915#5605]: https://gitlab.freedesktop.org/drm/intel/issues/5605


Build changes
-------------

  * Linux: CI_DRM_11472 -> Patchwork_22819

  CI-20190529: 20190529
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22819: 6508c18df33f9cf03c32b4b6928203a29ab0f3bd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6508c18df33f drm/i915: Sunset igpu legacy mmap support based on GRAPHICS_VER_FULL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/index.html

--===============0188154475641547558==
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
<tr><td><b>Series:</b></td><td>drm/i915: Sunset igpu legacy mmap support based on GRAPHICS_VER_FULL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102352/">https://patchwork.freedesktop.org/series/102352/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11472 -&gt; Patchwork_22819</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22819 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22819, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/index.html</p>
<h2>Participating hosts (49 -&gt; 48)</h2>
<p>Additional (4): bat-hsw-1 bat-rpls-2 fi-bwr-2160 bat-adlp-4 <br />
  Missing    (5): fi-blb-e6850 fi-bsw-cyan shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22819:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>bat-dg1-6:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@i915_pm_rpm@basic-rte.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@i915_pm_rpm@basic-rte.html">SKIP</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-rpls-2/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-rpls-2/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-jsl-2}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-jsl-2/igt@i915_pm_rpm@basic-rte.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-jsl-2/igt@i915_pm_rpm@basic-rte.html">SKIP</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-llseek-size:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-rpls-2/igt@prime_self_import@basic-llseek-size.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-rpls-2/igt@prime_self_import@basic-llseek-size.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +66 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{bat-jsl-2}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-jsl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-jsl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +66 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-adls-5}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/bat-adls-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-adls-5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-adls-5/igt@runner@aborted.html">FAIL</a>)</p>
</li>
<li>
<p>{bat-hsw-1}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-hsw-1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-hsw-1/igt@runner@aborted.html">FAIL</a>)</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22819 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-bwr-2160/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5605">i915#5605</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@core_auth@basic-auth.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@fbdev@eof.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5557">i915#5557</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@gem_basic@create-close.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@gem_basic@create-close.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +143 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@gem_close_race@basic-process.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@gem_lmem_swapping@basic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@gem_lmem_swapping@basic.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +145 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-adlp-4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-adlp-4/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5457">i915#5457</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/bat-dg1-6/igt@runner@aborted.html">FAIL</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/bat-dg1-6/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11472 -&gt; Patchwork_22819</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22819: 6508c18df33f9cf03c32b4b6928203a29ab0f3bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6508c18df33f drm/i915: Sunset igpu legacy mmap support based on GRAPHICS_VER_FULL</p>

</body>
</html>

--===============0188154475641547558==--
