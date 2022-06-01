Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6733053AB92
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 19:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A859910E1F9;
	Wed,  1 Jun 2022 17:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3D7B10E1F9;
 Wed,  1 Jun 2022 17:11:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DFA5A66C8;
 Wed,  1 Jun 2022 17:11:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1424136934135290443=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 01 Jun 2022 17:11:13 -0000
Message-ID: <165410347363.17295.15976088358800565576@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Parse_more_eDP_link_rate_stuff_from_VBT?=
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

--===============1424136934135290443==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Parse more eDP link rate stuff from VBT
URL   : https://patchwork.freedesktop.org/series/104615/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11717 -> Patchwork_104615v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/index.html

Participating hosts (42 -> 42)
------------------------------

  Additional (4): fi-kbl-soraka fi-rkl-11600 fi-icl-u2 bat-dg2-9 
  Missing    (4): fi-bdw-samus bat-jsl-2 fi-apl-guc fi-hsw-4200u 

Known issues
------------

  Here are the changes found in Patchwork_104615v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-FAIL][2] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/fi-blb-e6850/igt@i915_selftest@live@gem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][4] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bsw-nick:        NOTRUN -> [SKIP][5] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][6] ([i915#5594] / [i915#5917])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][7] ([i915#5602] / [i915#5917])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][8] ([i915#5602] / [i915#5917])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-cfl-8109u/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][9] ([i915#5457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/bat-adlp-4/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][10] ([i915#5602] / [i915#5917])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][11] ([i915#5602] / [i915#5917])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-kbl-guc/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][12] ([i915#3690])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-tgl-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][13] ([i915#5917])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bxt-dsi/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][14] ([fdo#109271] / [i915#2403] / [i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-blb-e6850/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][15] ([i915#5917])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][16] ([i915#5917])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-glk-dsi/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][17] ([i915#3690])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-icl-u2/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][18] ([i915#5602])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][19] ([i915#5602] / [i915#5917])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][20] ([i915#5602] / [i915#5917])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][21] ([i915#5602] / [i915#5917])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][22] ([i915#5917])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][23] ([i915#5602])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][24] ([i915#5917])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-hsw-g3258/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][25] ([i915#5917])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][26] ([i915#5917])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][27] ([i915#5917])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-cfl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [DMESG-FAIL][28] ([i915#3428]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][30] ([i915#4528]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-1115g4:      [FAIL][32] ([i915#4312] / [i915#5257]) -> [FAIL][33] ([i915#3690])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/fi-tgl-1115g4/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-5:          [FAIL][34] ([i915#4312] / [i915#5257]) -> [FAIL][35] ([i915#5616])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/bat-dg1-5/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/bat-dg1-5/igt@runner@aborted.html
    - bat-dg1-6:          [FAIL][36] ([i915#4312] / [i915#5257]) -> [FAIL][37] ([i915#5616])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/bat-dg1-6/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/bat-dg1-6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5457]: https://gitlab.freedesktop.org/drm/intel/issues/5457
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602
  [i915#5616]: https://gitlab.freedesktop.org/drm/intel/issues/5616
  [i915#5917]: https://gitlab.freedesktop.org/drm/intel/issues/5917
  [i915#6030]: https://gitlab.freedesktop.org/drm/intel/issues/6030


Build changes
-------------

  * Linux: CI_DRM_11717 -> Patchwork_104615v1

  CI-20190529: 20190529
  CI_DRM_11717: 9b2cd0320680e7397a9d7bd18eeed5e6a8b3f713 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6504: b31fd736fe7c30a111cca9a76255cad7c18d58db @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104615v1: 9b2cd0320680e7397a9d7bd18eeed5e6a8b3f713 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0f5cac9a5960 drm/i915: Parse max link rate from the eDP BDB block
b401fdf214f6 drm/i915: Update eDP fast link training link rate parsing
817ceb5a5ec3 drm/i915: Initialize eDP source rates after per-panel VBT parsing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/index.html

--===============1424136934135290443==
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
<tr><td><b>Series:</b></td><td>drm/i915: Parse more eDP link rate stuff from VBT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104615/">https://patchwork.freedesktop.org/series/104615/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11717 -&gt; Patchwork_104615v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/index.html</p>
<h2>Participating hosts (42 -&gt; 42)</h2>
<p>Additional (4): fi-kbl-soraka fi-rkl-11600 fi-icl-u2 bat-dg2-9 <br />
  Missing    (4): fi-bdw-samus bat-jsl-2 fi-apl-guc fi-hsw-4200u </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104615v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/fi-blb-e6850/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5457">i915#5457</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5616">i915#5616</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11717/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5616">i915#5616</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11717 -&gt; Patchwork_104615v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11717: 9b2cd0320680e7397a9d7bd18eeed5e6a8b3f713 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6504: b31fd736fe7c30a111cca9a76255cad7c18d58db @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104615v1: 9b2cd0320680e7397a9d7bd18eeed5e6a8b3f713 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0f5cac9a5960 drm/i915: Parse max link rate from the eDP BDB block<br />
b401fdf214f6 drm/i915: Update eDP fast link training link rate parsing<br />
817ceb5a5ec3 drm/i915: Initialize eDP source rates after per-panel VBT parsing</p>

</body>
</html>

--===============1424136934135290443==--
