Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AB6559820
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 12:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93AC10E6B8;
	Fri, 24 Jun 2022 10:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E59610E6B8;
 Fri, 24 Jun 2022 10:47:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9675BA77A5;
 Fri, 24 Jun 2022 10:47:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2409736367060565680=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Fri, 24 Jun 2022 10:47:18 -0000
Message-ID: <165606763858.16787.16018661254571331723@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220624080444.7619-1-christian.koenig@amd.com>
In-Reply-To: <20220624080444.7619-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/14=5D_fs=3A_add_per_file_RSS?=
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

--===============2409736367060565680==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/14] fs: add per file RSS
URL   : https://patchwork.freedesktop.org/series/105588/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11803 -> Patchwork_105588v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105588v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105588v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/index.html

Participating hosts (36 -> 41)
------------------------------

  Additional (6): fi-kbl-soraka fi-bxt-dsi fi-bdw-5557u bat-adls-5 bat-dg2-9 bat-adlp-6 
  Missing    (1): fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105588v1:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-elk-e7500:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-elk-e7500/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-ilk-650/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-snb-2520m/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-rkl-11600/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - bat-dg1-5:          [FAIL][7] ([i915#4312] / [i915#5257]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-dg1-5/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-dg1-5/igt@runner@aborted.html
    - bat-dg1-6:          [FAIL][9] ([i915#4312] / [i915#5257]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-dg1-6/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-dg1-6/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {bat-dg2-8}:        NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-dg2-8/igt@runner@aborted.html
    - {bat-adlp-6}:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-adlp-6/igt@runner@aborted.html
    - {bat-dg2-9}:        NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-dg2-9/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_105588v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271]) +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][17] ([i915#1886])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - fi-skl-6700k2:      NOTRUN -> [FAIL][19] ([i915#5917])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][20] ([i915#5917])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-cfl-8109u/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][21] ([i915#5917])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-8809g/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][22] ([i915#6219])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-ivb-3770/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][23] ([i915#5917])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-guc/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][24] ([i915#3690])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-tgl-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][25] ([i915#5917])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-bxt-dsi/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][26] ([i915#5917])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][27] ([i915#5917])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-glk-dsi/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][28] ([i915#5917])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][29] ([i915#5917])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][30] ([i915#5917])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][31] ([i915#5917])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][32] ([i915#5917])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][33] ([i915#3690])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-bsw-nick/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][34] ([i915#5917] / [i915#6246])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-hsw-g3258/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][35] ([i915#5917])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][36] ([i915#5917])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-adl-ddr5/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-hsw-4770:        [FAIL][37] ([fdo#109271] / [i915#4312] / [i915#5594] / [i915#6246]) -> [FAIL][38] ([i915#5594] / [i915#5917] / [i915#6246])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-hsw-4770/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-blb-e6850:       [FAIL][39] ([fdo#109271] / [i915#2403] / [i915#4312]) -> [FAIL][40] ([i915#2403])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-blb-e6850/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-blb-e6850/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][41] ([i915#4312]) -> [FAIL][42] ([i915#5917])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-apl-guc/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-apl-guc/igt@runner@aborted.html
    - fi-pnv-d510:        [FAIL][43] ([fdo#109271] / [i915#2403] / [i915#4312]) -> [FAIL][44] ([i915#2403])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-pnv-d510/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-pnv-d510/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5917]: https://gitlab.freedesktop.org/drm/intel/issues/5917
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246


Build changes
-------------

  * Linux: CI_DRM_11803 -> Patchwork_105588v1

  CI-20190529: 20190529
  CI_DRM_11803: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6541: 02153f109bd422d93cfce7f5aa9d7b0e22fab13c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105588v1: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

68c65d57123b drm/tegra: use drm_file_rss
d33d994348a2 drm/vmwgfx: use drm_file_rss
29fdde593fb2 drm/omap: use drm_file_rss
2141c54e54db drm/nouveau: use drm_file_rss
7bed616803db drm/i915: use drm_file_rss
f1f4872ce293 drm/radeon: use drm_oom_badness
ace3321403b2 drm/amdgpu: use drm_file_rss
1685cb326665 drm/gma500: use drm_file_rss
331177394d6a drm/gem: adjust per file RSS on handling buffers
52e37a96ef4b dma-buf: provide file RSS for DMA-buf files
7a5e9cdc3b1a mm: shmem: provide RSS for shmem files
ba80952b38b9 proc: expose per file RSS
edd30828874b oom: take per file RSS into account
2ebb66a831e9 fs: add per file RSS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/index.html

--===============2409736367060565680==
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
<tr><td><b>Series:</b></td><td>series starting with [01/14] fs: add per file RSS</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105588/">https://patchwork.freedesktop.org/series/105588/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11803 -&gt; Patchwork_105588v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105588v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_105588v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/index.html</p>
<h2>Participating hosts (36 -&gt; 41)</h2>
<p>Additional (6): fi-kbl-soraka fi-bxt-dsi fi-bdw-5557u bat-adls-5 bat-dg2-9 bat-adlp-6 <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105588v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
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
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-dg2-8/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-adlp-6/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/bat-dg2-9/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105588v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
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
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105588v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11803 -&gt; Patchwork_105588v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11803: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6541: 02153f109bd422d93cfce7f5aa9d7b0e22fab13c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105588v1: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>68c65d57123b drm/tegra: use drm_file_rss<br />
d33d994348a2 drm/vmwgfx: use drm_file_rss<br />
29fdde593fb2 drm/omap: use drm_file_rss<br />
2141c54e54db drm/nouveau: use drm_file_rss<br />
7bed616803db drm/i915: use drm_file_rss<br />
f1f4872ce293 drm/radeon: use drm_oom_badness<br />
ace3321403b2 drm/amdgpu: use drm_file_rss<br />
1685cb326665 drm/gma500: use drm_file_rss<br />
331177394d6a drm/gem: adjust per file RSS on handling buffers<br />
52e37a96ef4b dma-buf: provide file RSS for DMA-buf files<br />
7a5e9cdc3b1a mm: shmem: provide RSS for shmem files<br />
ba80952b38b9 proc: expose per file RSS<br />
edd30828874b oom: take per file RSS into account<br />
2ebb66a831e9 fs: add per file RSS</p>

</body>
</html>

--===============2409736367060565680==--
