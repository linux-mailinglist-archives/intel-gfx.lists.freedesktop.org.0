Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9908E4FC827
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 01:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C232A10E102;
	Mon, 11 Apr 2022 23:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 525A210E029;
 Mon, 11 Apr 2022 23:36:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 509CBAADD8;
 Mon, 11 Apr 2022 23:36:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5038960290694422746=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Mon, 11 Apr 2022 23:36:53 -0000
Message-ID: <164972021330.2971.13294300445575756527@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220411192453.1000147-1-bob.beckett@collabora.com>
In-Reply-To: <20220411192453.1000147-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ttm_for_stolen_region?=
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

--===============5038960290694422746==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: ttm for stolen region
URL   : https://patchwork.freedesktop.org/series/102540/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11484 -> Patchwork_102540v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_102540v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_102540v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/index.html

Participating hosts (49 -> 38)
------------------------------

  Additional (2): fi-kbl-soraka fi-hsw-4770 
  Missing    (13): shard-tglu bat-dg1-6 bat-dg2-8 shard-rkl bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-rpls-1 bat-rpls-2 shard-dg1 bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102540v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-ivb-3770/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-ivb-3770/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-snb-2600:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-ilk-650/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-cfl-8109u/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bwr-2160/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-hsw-g3258/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-7500u/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bxt-dsi/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-elk-e7500/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-cfl-guc/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-skl-6700k2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][22] ([i915#2722]) -> [FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-kbl-8809g/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-8809g/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][24] ([i915#4312]) -> [FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-apl-guc/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-apl-guc/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_102540v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][28] ([i915#5602])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][29] ([i915#2403])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][30] ([i915#5602])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][31] ([i915#3690])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bsw-kefka/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][32] ([i915#3690])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-icl-u2/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][33] ([i915#3690])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bsw-nick/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][34] ([i915#5594])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][35] ([i915#5602])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-guc/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][36] ([i915#3690])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][37] ([i915#5602])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][38] ([i915#3690])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bsw-n3050/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][39] ([i915#3690])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-tgl-u2/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][40] ([i915#2403])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-blb-e6850/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5602]: https://gitlab.freedesktop.org/drm/intel/issues/5602


Build changes
-------------

  * Linux: CI_DRM_11484 -> Patchwork_102540v1

  CI-20190529: 20190529
  CI_DRM_11484: 8034f05811fe63be8ced11c140e59a8cea07a3d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6419: 33a5adf20dc435cc2c6dd584caa3674c89032762 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102540v1: 102540v1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

372402622998 drm/i915: stolen memory use ttm backend
a44139a6bc41 drm/i915: ttm backend dont provide mmap_offset for kernel buffers
4987725cc258 drm/i915: ttm move/clear logic fix
cac8f1e94ac4 drm/i915: sanitize mem_flags for stolen buffers
5722fa9259ae drm/i915: instantiate ttm ranger manager for stolen memory

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/index.html

--===============5038960290694422746==
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
<tr><td><b>Series:</b></td><td>drm/i915: ttm for stolen region</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102540/">https://patchwork.freedesktop.org/series/102540/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11484 -&gt; Patchwork_102540v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_102540v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_102540v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/index.html</p>
<h2>Participating hosts (49 -&gt; 38)</h2>
<p>Additional (2): fi-kbl-soraka fi-hsw-4770 <br />
  Missing    (13): shard-tglu bat-dg1-6 bat-dg2-8 shard-rkl bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-rpls-1 bat-rpls-2 shard-dg1 bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102540v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-ivb-3770/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-ivb-3770/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a></p>
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
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-apl-guc/igt@runner@aborted.html">FAIL</a></p>
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
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102540v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5602">i915#5602</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102540v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11484 -&gt; Patchwork_102540v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11484: 8034f05811fe63be8ced11c140e59a8cea07a3d6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6419: 33a5adf20dc435cc2c6dd584caa3674c89032762 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102540v1: 102540v1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>372402622998 drm/i915: stolen memory use ttm backend<br />
a44139a6bc41 drm/i915: ttm backend dont provide mmap_offset for kernel buffers<br />
4987725cc258 drm/i915: ttm move/clear logic fix<br />
cac8f1e94ac4 drm/i915: sanitize mem_flags for stolen buffers<br />
5722fa9259ae drm/i915: instantiate ttm ranger manager for stolen memory</p>

</body>
</html>

--===============5038960290694422746==--
