Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73F4413FDE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 04:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A936EA14;
	Wed, 22 Sep 2021 02:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C27489DB2;
 Wed, 22 Sep 2021 02:59:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9436EA0003;
 Wed, 22 Sep 2021 02:59:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6850942162873430518=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 02:59:02 -0000
Message-ID: <163227954257.6942.17666108605738093761@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922021305.33096-1-matthew.brost@intel.com>
In-Reply-To: <20210922021305.33096-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drop_stealing_of_bits_from_i915=5Fsw=5Ffence_function_?=
 =?utf-8?q?pointer?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6850942162873430518==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Drop stealing of bits from i915_sw_fence function pointer
URL   : https://patchwork.freedesktop.org/series/94924/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10622 -> Patchwork_21123
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21123 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21123, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21123:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-apl-guc/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-apl-guc/boot.html
    - fi-kbl-8809g:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-8809g/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-8809g/boot.html
    - fi-snb-2520m:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-snb-2520m/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-snb-2520m/boot.html
    - fi-elk-e7500:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-elk-e7500/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-elk-e7500/boot.html
    - fi-bsw-nick:        [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bsw-nick/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bsw-nick/boot.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-tgl-1115g4/boot.html
    - fi-glk-dsi:         [PASS][12] -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-glk-dsi/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-glk-dsi/boot.html
    - fi-cfl-8109u:       [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-cfl-8109u/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-cfl-8109u/boot.html
    - fi-ivb-3770:        [PASS][16] -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-ivb-3770/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-ivb-3770/boot.html
    - fi-rkl-guc:         [PASS][18] -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-rkl-guc/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-rkl-guc/boot.html
    - fi-cfl-8700k:       [PASS][20] -> [FAIL][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-cfl-8700k/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-cfl-8700k/boot.html
    - fi-bxt-dsi:         [PASS][22] -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bxt-dsi/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bxt-dsi/boot.html
    - fi-snb-2600:        [PASS][24] -> [FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-snb-2600/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-snb-2600/boot.html
    - fi-cml-u2:          [PASS][26] -> [FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-cml-u2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-cml-u2/boot.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-guc/boot.html
    - fi-pnv-d510:        [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-pnv-d510/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-pnv-d510/boot.html
    - fi-bsw-kefka:       [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bsw-kefka/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bsw-kefka/boot.html
    - fi-bdw-gvtdvm:      [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bdw-gvtdvm/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bdw-gvtdvm/boot.html
    - fi-kbl-7500u:       [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-7500u/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-7500u/boot.html
    - fi-hsw-4770:        [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-hsw-4770/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-hsw-4770/boot.html
    - fi-cfl-guc:         [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-cfl-guc/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-cfl-guc/boot.html
    - fi-bwr-2160:        [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bwr-2160/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bwr-2160/boot.html
    - fi-kbl-r:           [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-r/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-r/boot.html
    - fi-kbl-7567u:       [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-7567u/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-7567u/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-tgl-dsi/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-tgl-dsi/boot.html
    - {fi-jsl-1}:         [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-jsl-1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-jsl-1/boot.html
    - {fi-ehl-2}:         [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-ehl-2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-ehl-2/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_21123 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-icl-y:           [PASS][53] -> [FAIL][54] ([i915#3521])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-icl-y/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][55] -> [FAIL][56] ([i915#3521])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-icl-u2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-icl-u2/boot.html
    - fi-skl-6600u:       [PASS][57] -> [FAIL][58] ([i915#3174])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-skl-6600u/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-skl-6600u/boot.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][59] ([i915#3174])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-skl-6700k2/boot.html
    - fi-kbl-soraka:      [PASS][60] -> [FAIL][61] ([i915#3895])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-soraka/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-soraka/boot.html
    - fi-skl-guc:         NOTRUN -> [FAIL][62] ([i915#3174])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-skl-guc/boot.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3174]: https://gitlab.freedesktop.org/drm/intel/issues/3174
  [i915#3521]: https://gitlab.freedesktop.org/drm/intel/issues/3521
  [i915#3895]: https://gitlab.freedesktop.org/drm/intel/issues/3895


Participating hosts (33 -> 33)
------------------------------

  Additional (4): fi-skl-guc fi-kbl-guc fi-tgl-1115g4 fi-skl-6700k2 
  Missing    (4): fi-bsw-cyan fi-bdw-samus fi-bdw-5557u bat-dg1-6 


Build changes
-------------

  * IGT: IGT_6214 -> None
  * Linux: CI_DRM_10622 -> Patchwork_21123

  CI-20190529: 20190529
  CI_DRM_10622: 525a2117194d1c06200adb49678fe56fd1641591 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21123: b71f1b1135e95359e6e2f3a9094118b3aac5ea6f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b71f1b1135e9 drm/i915: Drop stealing of bits from i915_sw_fence function pointer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/index.html

--===============6850942162873430518==
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
<tr><td><b>Series:</b></td><td>drm/i915: Drop stealing of bits from i915_sw_fence function pointer</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94924/">https://patchwork.freedesktop.org/series/94924/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10622 -&gt; Patchwork_21123</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21123 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21123, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21123:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-apl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-8809g/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-8809g/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-snb-2520m/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-snb-2520m/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-elk-e7500/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-elk-e7500/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bsw-nick/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bsw-nick/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-tgl-1115g4/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-glk-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-glk-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-cfl-8109u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-ivb-3770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-ivb-3770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-rkl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-rkl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-cfl-8700k/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bxt-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-snb-2600/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-cml-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-cml-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-pnv-d510/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-pnv-d510/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bsw-kefka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bsw-kefka/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bdw-gvtdvm/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bdw-gvtdvm/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-7500u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-7500u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-hsw-4770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-cfl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-cfl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-bwr-2160/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-bwr-2160/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-r/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-r/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-7567u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-7567u/boot.html">FAIL</a></p>
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
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-tgl-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-jsl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-ehl-2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-ehl-2/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21123 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-icl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-icl-y/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-icl-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-icl-u2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-skl-6600u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-skl-6600u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-skl-6700k2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10622/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-kbl-soraka/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3895">i915#3895</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21123/fi-skl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 33)</h2>
<p>Additional (4): fi-skl-guc fi-kbl-guc fi-tgl-1115g4 fi-skl-6700k2 <br />
  Missing    (4): fi-bsw-cyan fi-bdw-samus fi-bdw-5557u bat-dg1-6 </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6214 -&gt; None</li>
<li>Linux: CI_DRM_10622 -&gt; Patchwork_21123</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10622: 525a2117194d1c06200adb49678fe56fd1641591 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21123: b71f1b1135e95359e6e2f3a9094118b3aac5ea6f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b71f1b1135e9 drm/i915: Drop stealing of bits from i915_sw_fence function pointer</p>

</body>
</html>

--===============6850942162873430518==--
