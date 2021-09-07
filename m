Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE3640219F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 02:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C0B89BF3;
	Tue,  7 Sep 2021 00:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D634189BF3;
 Tue,  7 Sep 2021 00:25:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF2C2A9A42;
 Tue,  7 Sep 2021 00:25:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4818325762357515305=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 00:25:54 -0000
Message-ID: <163097435484.24492.9957249816472542974@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210906235912.2958063-1-airlied@gmail.com>
In-Reply-To: <20210906235912.2958063-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_move_display_funcs_into_a_display_struct=2E_=28v2=29?=
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

--===============4818325762357515305==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: move display funcs into a display struct. (v2)
URL   : https://patchwork.freedesktop.org/series/94396/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10553 -> Patchwork_20970
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20970 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20970, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20970:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-apl-guc/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-apl-guc/boot.html
    - fi-kbl-8809g:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-8809g/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-8809g/boot.html
    - fi-snb-2520m:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-snb-2520m/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-snb-2520m/boot.html
    - fi-bsw-nick:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bsw-nick/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bsw-nick/boot.html
    - fi-tgl-1115g4:      [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-tgl-1115g4/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-tgl-1115g4/boot.html
    - fi-cfl-8109u:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-cfl-8109u/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-cfl-8109u/boot.html
    - fi-cfl-8700k:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-cfl-8700k/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-cfl-8700k/boot.html
    - fi-bxt-dsi:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bxt-dsi/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bxt-dsi/boot.html
    - fi-cml-u2:          [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-cml-u2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-cml-u2/boot.html
    - fi-pnv-d510:        [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-pnv-d510/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-pnv-d510/boot.html
    - fi-ilk-650:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-ilk-650/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-ilk-650/boot.html
    - fi-bsw-n3050:       [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bsw-n3050/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bsw-n3050/boot.html
    - fi-hsw-4770:        [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-hsw-4770/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-hsw-4770/boot.html
    - fi-cfl-guc:         [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-cfl-guc/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-cfl-guc/boot.html
    - fi-elk-e7500:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-elk-e7500/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-elk-e7500/boot.html
    - fi-glk-dsi:         [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-glk-dsi/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-glk-dsi/boot.html
    - fi-ivb-3770:        [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-ivb-3770/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-ivb-3770/boot.html
    - fi-rkl-guc:         [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-rkl-guc/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-rkl-guc/boot.html
    - fi-snb-2600:        [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-snb-2600/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-snb-2600/boot.html
    - fi-tgl-y:           [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-tgl-y/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-tgl-y/boot.html
    - fi-kbl-guc:         [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-guc/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-guc/boot.html
    - fi-bsw-kefka:       [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bsw-kefka/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bsw-kefka/boot.html
    - fi-bdw-gvtdvm:      [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bdw-gvtdvm/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bdw-gvtdvm/boot.html
    - fi-kbl-7500u:       [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-7500u/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-7500u/boot.html
    - fi-rkl-11600:       [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-rkl-11600/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-rkl-11600/boot.html
    - fi-bwr-2160:        [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bwr-2160/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bwr-2160/boot.html
    - fi-bdw-5557u:       [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bdw-5557u/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bdw-5557u/boot.html
    - fi-kbl-r:           [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-r/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-r/boot.html
    - fi-kbl-7567u:       [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-7567u/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-7567u/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-tgl-dsi/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-tgl-dsi/boot.html
    - {fi-hsw-gt1}:       [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-hsw-gt1/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-hsw-gt1/boot.html
    - {fi-jsl-1}:         [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-jsl-1/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-jsl-1/boot.html
    - {fi-ehl-2}:         [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-ehl-2/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-ehl-2/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_20970 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-icl-y:           [PASS][67] -> [FAIL][68] ([i915#3521])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-icl-y/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][69] -> [FAIL][70] ([i915#3521])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-icl-u2/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-icl-u2/boot.html
    - fi-skl-6600u:       [PASS][71] -> [FAIL][72] ([i915#3174])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-6600u/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-skl-6600u/boot.html
    - fi-skl-6700k2:      [PASS][73] -> [FAIL][74] ([i915#3174])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-6700k2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-skl-6700k2/boot.html
    - fi-kbl-soraka:      [PASS][75] -> [FAIL][76] ([i915#3895])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-soraka/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-soraka/boot.html
    - fi-skl-guc:         [PASS][77] -> [FAIL][78] ([i915#3174])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-guc/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-skl-guc/boot.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3174]: https://gitlab.freedesktop.org/drm/intel/issues/3174
  [i915#3521]: https://gitlab.freedesktop.org/drm/intel/issues/3521
  [i915#3895]: https://gitlab.freedesktop.org/drm/intel/issues/3895


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-1 


Build changes
-------------

  * IGT: IGT_6197 -> None
  * Linux: CI_DRM_10553 -> Patchwork_20970

  CI-20190529: 20190529
  CI_DRM_10553: 47b2bd2caa7b29b5741ff2521206657853b85165 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20970: 6d0085d9dfe2a9768db8eab28e781adb6e8815c5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6d0085d9dfe2 drm/i915: move display funcs into a display struct. (v2)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/index.html

--===============4818325762357515305==
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
<tr><td><b>Series:</b></td><td>drm/i915: move display funcs into a display struct. (v2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94396/">https://patchwork.freedesktop.org/series/94396/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10553 -&gt; Patchwork_20970</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20970 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20970, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20970:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-apl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-8809g/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-8809g/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-snb-2520m/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-snb-2520m/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bsw-nick/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bsw-nick/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-tgl-1115g4/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-tgl-1115g4/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-cfl-8109u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-cfl-8700k/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bxt-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-cml-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-cml-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-pnv-d510/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-pnv-d510/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-ilk-650/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-ilk-650/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bsw-n3050/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-hsw-4770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-cfl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-cfl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-elk-e7500/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-elk-e7500/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-glk-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-glk-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-ivb-3770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-ivb-3770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-rkl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-rkl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-snb-2600/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-tgl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-tgl-y/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bsw-kefka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bsw-kefka/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bdw-gvtdvm/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bdw-gvtdvm/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-7500u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-7500u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-rkl-11600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-rkl-11600/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bwr-2160/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bwr-2160/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-bdw-5557u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-bdw-5557u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-r/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-r/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-7567u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-7567u/boot.html">FAIL</a></p>
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
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-tgl-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-hsw-gt1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-hsw-gt1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-jsl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-ehl-2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-ehl-2/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20970 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-icl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-icl-y/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-icl-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-icl-u2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-6600u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-skl-6600u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-skl-6700k2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-kbl-soraka/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3895">i915#3895</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10553/fi-skl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20970/fi-skl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#3174</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6197 -&gt; None</li>
<li>Linux: CI_DRM_10553 -&gt; Patchwork_20970</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10553: 47b2bd2caa7b29b5741ff2521206657853b85165 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20970: 6d0085d9dfe2a9768db8eab28e781adb6e8815c5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6d0085d9dfe2 drm/i915: move display funcs into a display struct. (v2)</p>

</body>
</html>

--===============4818325762357515305==--
