Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C0853C05A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 23:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35B010EB31;
	Thu,  2 Jun 2022 21:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A6BE410EAF2;
 Thu,  2 Jun 2022 21:29:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E502A363D;
 Thu,  2 Jun 2022 21:29:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1296482565212217753=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 02 Jun 2022 21:29:28 -0000
Message-ID: <165420536861.17949.5103130788118026836@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Parse_more_eDP_link_rate_stuff_from_VBT_=28rev3=29?=
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

--===============1296482565212217753==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Parse more eDP link rate stuff from VBT (rev3)
URL   : https://patchwork.freedesktop.org/series/104615/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11721 -> Patchwork_104615v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/index.html

Participating hosts (43 -> 45)
------------------------------

  Additional (2): bat-dg2-9 bat-atsm-1 

Known issues
------------

  Here are the changes found in Patchwork_104615v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-FAIL][2] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][3] ([i915#5594] / [i915#5917])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-hsw-4770/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][4] ([i915#5602] / [i915#5917])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][5] ([i915#5602] / [i915#5917])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-cfl-8109u/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][6] ([i915#5457])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/bat-adlp-4/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][7] ([i915#5602] / [i915#5917])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][8] ([i915#5602] / [i915#5917])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-kbl-guc/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][9] ([i915#3690])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-tgl-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][10] ([i915#5917])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-bxt-dsi/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][11] ([i915#5917])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-skl-6600u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][12] ([i915#5917])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-glk-dsi/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][13] ([i915#5917])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-bdw-5557u/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][14] ([i915#5602])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][15] ([i915#5602] / [i915#5917])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][16] ([i915#5602] / [i915#5917])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][17] ([i915#5602] / [i915#5917])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-kbl-7567u/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][18] ([i915#5917])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-cfl-8700k/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][19] ([i915#5602])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-rkl-11600/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][20] ([i915#5917])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-hsw-g3258/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][21] ([i915#5917])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][22] ([i915#5917])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][23] ([i915#5917])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-cfl-guc/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-1115g4:      [FAIL][24] ([i915#4312] / [i915#5257]) -> [FAIL][25] ([i915#3690])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-tgl-1115g4/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][26] ([i915#4312]) -> [FAIL][27] ([i915#5917])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-apl-guc/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-apl-guc/igt@runner@aborted.html
    - bat-dg1-5:          [FAIL][28] ([i915#4312] / [i915#5257]) -> [FAIL][29] ([i915#5616])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/bat-dg1-5/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/bat-dg1-5/igt@runner@aborted.html
    - bat-dg1-6:          [FAIL][30] ([i915#4312] / [i915#5257]) -> [FAIL][31] ([i915#5616])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/bat-dg1-6/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/bat-dg1-6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5181]: https://gitlab.freedesktop.org/drm/intel/issues/5181
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5457]: https://gitlab.freedesktop.org/drm/intel/issues/5457
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602
  [i915#5606]: https://gitlab.freedesktop.org/drm/intel/issues/5606
  [i915#5616]: https://gitlab.freedesktop.org/drm/intel/issues/5616
  [i915#5703]: https://gitlab.freedesktop.org/drm/intel/issues/5703
  [i915#5775]: https://gitlab.freedesktop.org/drm/intel/issues/5775
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5917]: https://gitlab.freedesktop.org/drm/intel/issues/5917
  [i915#6030]: https://gitlab.freedesktop.org/drm/intel/issues/6030


Build changes
-------------

  * Linux: CI_DRM_11721 -> Patchwork_104615v3

  CI-20190529: 20190529
  CI_DRM_11721: ee8c8067f279c483c105c5731becae9dbe9b1383 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104615v3: ee8c8067f279c483c105c5731becae9dbe9b1383 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

55d3f60ff15f drm/i915: Parse max link rate from the eDP BDB block
f0f04f32b713 drm/i915: Update eDP fast link training link rate parsing
f07d502b9594 drm/i915: Initialize eDP source rates after per-panel VBT parsing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/index.html

--===============1296482565212217753==
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
<tr><td><b>Series:</b></td><td>drm/i915: Parse more eDP link rate stuff from VBT (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104615/">https://patchwork.freedesktop.org/series/104615/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11721 -&gt; Patchwork_104615v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/index.html</p>
<h2>Participating hosts (43 -&gt; 45)</h2>
<p>Additional (2): bat-dg2-9 bat-atsm-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104615v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5457">i915#5457</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
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
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5917">i915#5917</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5616">i915#5616</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11721/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104615v3/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5616">i915#5616</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11721 -&gt; Patchwork_104615v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11721: ee8c8067f279c483c105c5731becae9dbe9b1383 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104615v3: ee8c8067f279c483c105c5731becae9dbe9b1383 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>55d3f60ff15f drm/i915: Parse max link rate from the eDP BDB block<br />
f0f04f32b713 drm/i915: Update eDP fast link training link rate parsing<br />
f07d502b9594 drm/i915: Initialize eDP source rates after per-panel VBT parsing</p>

</body>
</html>

--===============1296482565212217753==--
