Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 893FC3B1CCA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 16:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83EB6E922;
	Wed, 23 Jun 2021 14:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93DAC6E926;
 Wed, 23 Jun 2021 14:43:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83588AADD0;
 Wed, 23 Jun 2021 14:43:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 23 Jun 2021 14:43:23 -0000
Message-ID: <162445940352.30472.2269517709998741273@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210623112637.266855-1-matthew.auld@intel.com>
In-Reply-To: <20210623112637.266855-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/ttm=3A_consider_all_placem?=
 =?utf-8?q?ents_for_the_page_alignment?=
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
Content-Type: multipart/mixed; boundary="===============1183431895=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1183431895==
Content-Type: multipart/alternative;
 boundary="===============2273278530900735246=="

--===============2273278530900735246==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/ttm: consider all placements for the page alignment
URL   : https://patchwork.freedesktop.org/series/91811/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10268 -> Patchwork_20439
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20439 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20439, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20439:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-apl-guc/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-apl-guc/boot.html
    - fi-kbl-8809g:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-8809g/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-8809g/boot.html
    - fi-snb-2520m:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-snb-2520m/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-snb-2520m/boot.html
    - fi-bsw-nick:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bsw-nick/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bsw-nick/boot.html
    - fi-cfl-8109u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cfl-8109u/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cfl-8109u/boot.html
    - fi-cfl-8700k:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cfl-8700k/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cfl-8700k/boot.html
    - fi-bxt-dsi:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bxt-dsi/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bxt-dsi/boot.html
    - fi-cml-u2:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cml-u2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cml-u2/boot.html
    - fi-pnv-d510:        [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-pnv-d510/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-pnv-d510/boot.html
    - fi-ilk-650:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-ilk-650/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-ilk-650/boot.html
    - fi-bsw-n3050:       [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bsw-n3050/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bsw-n3050/boot.html
    - fi-hsw-4770:        [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-hsw-4770/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-hsw-4770/boot.html
    - fi-cfl-guc:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cfl-guc/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cfl-guc/boot.html
    - fi-kbl-soraka:      [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-soraka/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-soraka/boot.html
    - fi-cml-s:           [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cml-s/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cml-s/boot.html
    - fi-elk-e7500:       [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-elk-e7500/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-elk-e7500/boot.html
    - fi-glk-dsi:         [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-glk-dsi/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-glk-dsi/boot.html
    - fi-ivb-3770:        [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-ivb-3770/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-ivb-3770/boot.html
    - fi-snb-2600:        [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-snb-2600/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-snb-2600/boot.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-guc/boot.html
    - fi-bsw-kefka:       [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bsw-kefka/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bsw-kefka/boot.html
    - fi-kbl-x1275:       [PASS][42] -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-x1275/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-x1275/boot.html
    - fi-bdw-gvtdvm:      [PASS][44] -> [FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bdw-gvtdvm/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bdw-gvtdvm/boot.html
    - fi-bwr-2160:        [PASS][46] -> [FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bwr-2160/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bwr-2160/boot.html
    - fi-bdw-5557u:       [PASS][48] -> [FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bdw-5557u/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bdw-5557u/boot.html
    - fi-kbl-r:           [PASS][50] -> [FAIL][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-r/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-r/boot.html
    - fi-kbl-7567u:       [PASS][52] -> [FAIL][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-7567u/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-7567u/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][54] -> [FAIL][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-tgl-dsi/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-tgl-dsi/boot.html
    - {fi-tgl-1115g4}:    [PASS][56] -> [FAIL][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-tgl-1115g4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-tgl-1115g4/boot.html
    - {fi-hsw-gt1}:       [PASS][58] -> [FAIL][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-hsw-gt1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-hsw-gt1/boot.html
    - {fi-jsl-1}:         [PASS][60] -> [FAIL][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-jsl-1/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-jsl-1/boot.html
    - {fi-ehl-2}:         [PASS][62] -> [FAIL][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-ehl-2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-ehl-2/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_20439 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-icl-y:           [PASS][64] -> [FAIL][65] ([i915#3521])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-icl-y/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][66] -> [FAIL][67] ([i915#3521])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-icl-u2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-icl-u2/boot.html
    - fi-skl-6600u:       [PASS][68] -> [FAIL][69] ([i915#3174])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-skl-6600u/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-skl-6600u/boot.html
    - fi-skl-6700k2:      [PASS][70] -> [FAIL][71] ([i915#3174])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-skl-6700k2/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-skl-6700k2/boot.html
    - fi-skl-guc:         [PASS][72] -> [FAIL][73] ([i915#3174])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-skl-guc/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-skl-guc/boot.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2788]: https://gitlab.freedesktop.org/drm/intel/issues/2788
  [i915#3174]: https://gitlab.freedesktop.org/drm/intel/issues/3174
  [i915#3521]: https://gitlab.freedesktop.org/drm/intel/issues/3521


Participating hosts (41 -> 38)
------------------------------

  Additional (1): fi-kbl-guc 
  Missing    (4): fi-ilk-m540 fi-bdw-samus fi-bsw-cyan bat-adlp-4 


Build changes
-------------

  * IGT: IGT_6117 -> None
  * Linux: CI_DRM_10268 -> Patchwork_20439

  CI-20190529: 20190529
  CI_DRM_10268: 0e0529132a50160a0e8bd0aa9608226445a3299b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20439: 4fbf426a3769570dca71baaae14985f6ea2a152d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4fbf426a3769 drm/i915/gtt: ignore min_page_size for paging structures
7fd267210a65 drm/i915: support forcing the page size with lmem
04c6fc20483d drm/i915/ttm: consider all placements for the page alignment

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/index.html

--===============2273278530900735246==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/ttm: consider all placements for the page alignment</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91811/">https://patchwork.freedesktop.org/series/91811/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10268 -&gt; Patchwork_20439</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20439 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20439, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20439:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-apl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-8809g/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-8809g/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-snb-2520m/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-snb-2520m/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bsw-nick/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bsw-nick/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cfl-8109u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cfl-8700k/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bxt-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cml-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cml-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-pnv-d510/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-pnv-d510/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-ilk-650/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-ilk-650/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bsw-n3050/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-hsw-4770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cfl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cfl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-soraka/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-cml-s/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-cml-s/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-elk-e7500/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-elk-e7500/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-glk-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-glk-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-ivb-3770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-ivb-3770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-snb-2600/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bsw-kefka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bsw-kefka/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-x1275/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-x1275/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bdw-gvtdvm/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bdw-gvtdvm/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bwr-2160/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bwr-2160/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-bdw-5557u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-bdw-5557u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-r/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-r/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-kbl-7567u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-kbl-7567u/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-tgl-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-tgl-1115g4/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-tgl-1115g4/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-hsw-gt1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-hsw-gt1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-jsl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-ehl-2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-ehl-2/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20439 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-icl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-icl-y/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-icl-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-icl-u2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-skl-6600u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-skl-6600u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-skl-6700k2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10268/fi-skl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20439/fi-skl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-guc <br />
  Missing    (4): fi-ilk-m540 fi-bdw-samus fi-bsw-cyan bat-adlp-4 </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6117 -&gt; None</li>
<li>Linux: CI_DRM_10268 -&gt; Patchwork_20439</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10268: 0e0529132a50160a0e8bd0aa9608226445a3299b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20439: 4fbf426a3769570dca71baaae14985f6ea2a152d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4fbf426a3769 drm/i915/gtt: ignore min_page_size for paging structures<br />
7fd267210a65 drm/i915: support forcing the page size with lmem<br />
04c6fc20483d drm/i915/ttm: consider all placements for the page alignment</p>

</body>
</html>

--===============2273278530900735246==--

--===============1183431895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1183431895==--
