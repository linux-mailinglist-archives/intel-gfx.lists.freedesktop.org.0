Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD144F8F3B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 09:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E587E10F8E3;
	Fri,  8 Apr 2022 07:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D79110F8DB;
 Fri,  8 Apr 2022 07:11:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07F9DA0096;
 Fri,  8 Apr 2022 07:11:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4580993686333563073=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Fri, 08 Apr 2022 07:11:06 -0000
Message-ID: <164940186602.22678.3290003632783127881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220406210540.493610-1-jose.souza@intel.com>
In-Reply-To: <20220406210540.493610-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Fix_warnings_about_PSR_lock_not_held_=28rev3?=
 =?utf-8?q?=29?=
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

--===============4580993686333563073==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fix warnings about PSR lock not held (rev3)
URL   : https://patchwork.freedesktop.org/series/102298/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11472 -> Patchwork_22818
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22818 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22818, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/index.html

Participating hosts (49 -> 49)
------------------------------

  Additional (4): bat-hsw-1 bat-rpls-2 fi-bwr-2160 bat-adlp-4 
  Missing    (4): bat-rpls-1 fi-blb-e6850 fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22818:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@basic:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-dg1-5:          NOTRUN -> [SKIP][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-7567u:       [FAIL][3] ([i915#5602]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html

  * igt@runner@aborted:
    - fi-rkl-11600:       [FAIL][5] ([i915#4312]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-rkl-11600/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][7] ([i915#4312] / [i915#5257]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-guc/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@perf_pmu@busy-start:
    - {shard-dg1}:        NOTRUN -> [SKIP][9] +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/shard-dg1-15/igt@perf_pmu@busy-start.html

  * igt@runner@aborted:
    - {bat-hsw-1}:        NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-hsw-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22818 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bwr-2160:        NOTRUN -> [FAIL][11] ([i915#5605])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-bwr-2160/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][12] ([fdo#109271]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-8809g/igt@core_auth@basic-auth.html

  * igt@fbdev@eof:
    - bat-dg1-5:          NOTRUN -> [SKIP][13] ([i915#2582]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@fbdev@eof.html
    - fi-kbl-8809g:       NOTRUN -> [INCOMPLETE][14] ([i915#5557])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-8809g/igt@fbdev@eof.html

  * igt@gem_basic@create-close:
    - fi-ivb-3770:        NOTRUN -> [SKIP][15] ([fdo#109271]) +146 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-ivb-3770/igt@gem_basic@create-close.html

  * igt@gem_lmem_swapping@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][16] ([i915#5602])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@gem_lmem_swapping@basic.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][17] ([fdo#109271]) +146 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-ivb-3770:        NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#5341])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - bat-dg1-5:          NOTRUN -> [SKIP][19] ([i915#2575] / [i915#5341])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#5341])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#5341])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][22] ([fdo#109271]) +145 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@prime_self_import@basic-with_two_bos:
    - bat-dg1-5:          NOTRUN -> [SKIP][23] ([i915#2575]) +143 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@prime_self_import@basic-with_two_bos.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][24] ([i915#5457])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-adlp-4/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       [FAIL][25] -> [SKIP][26] ([fdo#109271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       [FAIL][27] -> [FAIL][28] ([i915#4312])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-cfl-8109u/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][29] -> [FAIL][30] ([i915#4312])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        [FAIL][31] ([i915#4312]) -> [FAIL][32] ([i915#4312] / [i915#5594])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-hsw-4770/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][33] -> [FAIL][34] ([i915#4312])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ivb-3770/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][35] ([i915#4312] / [i915#5257]) -> [FAIL][36] ([i915#3690] / [i915#4312])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][37] ([i915#4312]) -> [FAIL][38] ([i915#3690] / [i915#4312])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-n3050/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-bsw-n3050/igt@runner@aborted.html
    - bat-dg1-5:          [FAIL][39] -> [FAIL][40] ([i915#4312])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/bat-dg1-5/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][41] -> [FAIL][42] ([i915#2722])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-8809g/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
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

  * Linux: CI_DRM_11472 -> Patchwork_22818

  CI-20190529: 20190529
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22818: 94b0c7a7c959ef072e258af592a337650314f108 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

94b0c7a7c959 drm/i915/display: Fix warnings about PSR lock not held

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/index.html

--===============4580993686333563073==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fix warnings about PSR lock not held (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102298/">https://patchwork.freedesktop.org/series/102298/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11472 -&gt; Patchwork_22818</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22818 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22818, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/index.html</p>
<h2>Participating hosts (49 -&gt; 49)</h2>
<p>Additional (4): bat-hsw-1 bat-rpls-2 fi-bwr-2160 bat-adlp-4 <br />
  Missing    (4): bat-rpls-1 fi-blb-e6850 fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22818:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@perf_pmu@busy-start:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/shard-dg1-15/igt@perf_pmu@busy-start.html">SKIP</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{bat-hsw-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-hsw-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22818 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-bwr-2160/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5605">i915#5605</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-8809g/igt@core_auth@basic-auth.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-8809g/igt@fbdev@eof.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5557">i915#5557</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-ivb-3770/igt@gem_basic@create-close.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +145 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@prime_self_import@basic-with_two_bos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +143 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5457">i915#5457</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/bat-dg1-5/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22818/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11472 -&gt; Patchwork_22818</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22818: 94b0c7a7c959ef072e258af592a337650314f108 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>94b0c7a7c959 drm/i915/display: Fix warnings about PSR lock not held</p>

</body>
</html>

--===============4580993686333563073==--
