Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CA94F8442
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 17:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BF610EA56;
	Thu,  7 Apr 2022 15:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5128E10EA56;
 Thu,  7 Apr 2022 15:57:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B759A363D;
 Thu,  7 Apr 2022 15:57:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5980961628225844291=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 07 Apr 2022 15:57:44 -0000
Message-ID: <164934706427.14671.8184205974964516001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220407110608.1184820-1-matthew.auld@intel.com>
In-Reply-To: <20220407110608.1184820-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_consider_min=5Fpage=5Fs?=
 =?utf-8?q?ize_when_migrating?=
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

--===============5980961628225844291==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: consider min_page_size when migrating
URL   : https://patchwork.freedesktop.org/series/102333/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11472 -> Patchwork_22811
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22811 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22811, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/index.html

Participating hosts (47 -> 37)
------------------------------

  Additional (2): fi-bwr-2160 fi-pnv-d510 
  Missing    (12): shard-tglu bat-adls-5 bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22811:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-pnv-d510:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-pnv-d510/boot.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bwr-2160/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@basic:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][5] ([i915#4312]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bdw-5557u/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][7] ([i915#4312]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-7567u/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@basic:
    - {fi-tgl-dsi}:       NOTRUN -> [SKIP][9] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-tgl-dsi/igt@gem_lmem_swapping@basic.html
    - {fi-jsl-1}:         [FAIL][10] -> [SKIP][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@gem_lmem_swapping@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-jsl-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_22811 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][13] ([fdo#109271]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-8809g/igt@core_auth@basic-auth.html

  * igt@fbdev@eof:
    - fi-kbl-8809g:       NOTRUN -> [INCOMPLETE][14] ([i915#5557])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-8809g/igt@fbdev@eof.html

  * igt@gem_exec_fence@basic-await:
    - fi-bsw-nick:        NOTRUN -> [SKIP][15] ([fdo#109271]) +151 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-nick/igt@gem_exec_fence@basic-await.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][16] ([fdo#109271]) +145 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#5341])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#5341])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][19] ([i915#4312]) -> [FAIL][20] ([i915#3690])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-kefka/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][21] -> [FAIL][22] ([i915#4312])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-8109u/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][23] ([i915#3690]) -> [FAIL][24] ([i915#4312])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-nick/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][25] -> [FAIL][26] ([i915#2722])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-8809g/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-8809g/igt@runner@aborted.html
    - fi-hsw-4770:        [FAIL][27] ([i915#4312]) -> [FAIL][28] ([i915#4312] / [i915#5594])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][29] ([i915#4312] / [i915#5257]) -> [FAIL][30] ([i915#4312])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-guc/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][31] ([i915#4312] / [i915#5257]) -> [FAIL][32] ([i915#3690])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][33] ([i915#4312]) -> [FAIL][34] ([i915#4312] / [i915#5257])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5557]: https://gitlab.freedesktop.org/drm/intel/issues/5557
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594


Build changes
-------------

  * Linux: CI_DRM_11472 -> Patchwork_22811

  CI-20190529: 20190529
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22811: 07096a893ef20e5fa25c76d7aba66fc01f504b82 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

07096a893ef2 drm/i915/buddy: sanity check the size
0a6057c62aa5 drm/i915: consider min_page_size when migrating

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/index.html

--===============5980961628225844291==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: consider min_page_size when migrating</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102333/">https://patchwork.freedesktop.org/series/102333/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11472 -&gt; Patchwork_22811</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22811 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22811, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/index.html</p>
<h2>Participating hosts (47 -&gt; 37)</h2>
<p>Additional (2): fi-bwr-2160 fi-pnv-d510 <br />
  Missing    (12): shard-tglu bat-adls-5 bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22811:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-pnv-d510/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bwr-2160/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a></p>
</li>
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
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-tgl-dsi/igt@gem_lmem_swapping@basic.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@gem_lmem_swapping@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-jsl-1/igt@gem_lmem_swapping@basic.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22811 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-8809g/igt@core_auth@basic-auth.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-8809g/igt@fbdev@eof.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5557">i915#5557</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-nick/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +151 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +145 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22811/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11472 -&gt; Patchwork_22811</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22811: 07096a893ef20e5fa25c76d7aba66fc01f504b82 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>07096a893ef2 drm/i915/buddy: sanity check the size<br />
0a6057c62aa5 drm/i915: consider min_page_size when migrating</p>

</body>
</html>

--===============5980961628225844291==--
