Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AA323EEF8
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 16:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95BAF6E8EC;
	Fri,  7 Aug 2020 14:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D5AF6E8DE;
 Fri,  7 Aug 2020 14:22:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8694BA47EA;
 Fri,  7 Aug 2020 14:22:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 07 Aug 2020 14:22:23 -0000
Message-ID: <159681014351.26557.4292658401444252636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200807125440.3419-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200807125440.3419-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gt=3A_Remove_defunct_intel?=
 =?utf-8?b?X3ZpcnR1YWxfZW5naW5lX2dldF9zaWJsaW5nKCk=?=
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
Content-Type: multipart/mixed; boundary="===============1332570499=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1332570499==
Content-Type: multipart/alternative;
 boundary="===============6110708647892937320=="

--===============6110708647892937320==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()
URL   : https://patchwork.freedesktop.org/series/80393/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8856 -> Patchwork_18322
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18322 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18322, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18322:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-8809g/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-8809g/boot.html
    - fi-icl-y:           [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-icl-y/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-icl-y/boot.html
    - fi-snb-2520m:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-snb-2520m/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-snb-2520m/boot.html
    - fi-bsw-nick:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bsw-nick/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bsw-nick/boot.html
    - fi-gdg-551:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-gdg-551/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-gdg-551/boot.html
    - fi-icl-u2:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-icl-u2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-icl-u2/boot.html
    - fi-cfl-8109u:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-cfl-8109u/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-cfl-8109u/boot.html
    - fi-skl-6600u:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-skl-6600u/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-skl-6600u/boot.html
    - fi-byt-j1900:       [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-byt-j1900/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-byt-j1900/boot.html
    - fi-cfl-8700k:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-cfl-8700k/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-cfl-8700k/boot.html
    - fi-cml-u2:          [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-cml-u2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-cml-u2/boot.html
    - fi-pnv-d510:        [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-pnv-d510/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-pnv-d510/boot.html
    - fi-ilk-650:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-ilk-650/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-ilk-650/boot.html
    - fi-tgl-u2:          [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-tgl-u2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-tgl-u2/boot.html
    - fi-bsw-n3050:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bsw-n3050/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bsw-n3050/boot.html
    - fi-skl-6700k2:      [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-skl-6700k2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-skl-6700k2/boot.html
    - fi-hsw-4770:        [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-hsw-4770/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-hsw-4770/boot.html
    - fi-kbl-soraka:      [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-soraka/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-soraka/boot.html
    - fi-cml-s:           [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-cml-s/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-cml-s/boot.html
    - fi-elk-e7500:       [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-elk-e7500/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-elk-e7500/boot.html
    - fi-skl-lmem:        [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-skl-lmem/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-skl-lmem/boot.html
    - fi-ivb-3770:        [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-ivb-3770/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-ivb-3770/boot.html
    - fi-snb-2600:        [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-snb-2600/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-snb-2600/boot.html
    - fi-kbl-guc:         [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-guc/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-guc/boot.html
    - fi-bsw-kefka:       [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bsw-kefka/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bsw-kefka/boot.html
    - fi-kbl-x1275:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-x1275/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-x1275/boot.html
    - fi-bdw-gvtdvm:      [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bdw-gvtdvm/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bdw-gvtdvm/boot.html
    - fi-kbl-7500u:       [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-7500u/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-7500u/boot.html
    - fi-blb-e6850:       [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-blb-e6850/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-blb-e6850/boot.html
    - fi-bwr-2160:        [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bwr-2160/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bwr-2160/boot.html
    - fi-bdw-5557u:       [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bdw-5557u/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bdw-5557u/boot.html
    - fi-skl-guc:         [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-skl-guc/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-skl-guc/boot.html
    - fi-kbl-r:           [PASS][65] -> [FAIL][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-r/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-r/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][67] -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-tgl-dsi/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-tgl-dsi/boot.html
    - {fi-kbl-7560u}:     [PASS][69] -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-7560u/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-7560u/boot.html
    - {fi-ehl-1}:         [PASS][71] -> [FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-ehl-1/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-ehl-1/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_18322 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-apl-guc:         [PASS][73] -> [FAIL][74] ([i915#1635] / [i915#348])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-apl-guc/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-apl-guc/boot.html
    - fi-bxt-dsi:         [PASS][75] -> [FAIL][76] ([i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bxt-dsi/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bxt-dsi/boot.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#348]: https://gitlab.freedesktop.org/drm/intel/issues/348


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_5764 -> None
  * Linux: CI_DRM_8856 -> Patchwork_18322

  CI-20190529: 20190529
  CI_DRM_8856: 238c742f0beea85fc171bfc3eef05cf284af6d4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5764: 0f91c80b4c809cf48afff65a2ea68590389aa5ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18322: cfd370c67224a0b3d3b0440e2738c12b39d63247 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cfd370c67224 drm/i915/gt: Free stale request on destroying the virtual engine
435242a104ce drm/i915/gt: Split the breadcrumb spinlock between global and contexts
7f54c977c742 drm/i915/gt: Don't cancel the interrupt shadow too early
45d3f0fee88b drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
9676cd4fcbab drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
9d375c4552bf drm/i915/gt: Protect context lifetime with RCU
f82f8ef253eb drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/index.html

--===============6110708647892937320==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80393/">https://patchwork.freedesktop.org/series/80393/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8856 -&gt; Patchwork_18322</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18322 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18322, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18322:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-8809g/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-8809g/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-icl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-icl-y/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-snb-2520m/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-snb-2520m/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bsw-nick/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bsw-nick/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-gdg-551/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-gdg-551/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-icl-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-icl-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-cfl-8109u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-skl-6600u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-skl-6600u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-byt-j1900/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-byt-j1900/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-cfl-8700k/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-cml-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-cml-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-pnv-d510/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-pnv-d510/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-ilk-650/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-ilk-650/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-tgl-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-tgl-u2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bsw-n3050/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-skl-6700k2/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-hsw-4770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-soraka/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-cml-s/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-cml-s/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-elk-e7500/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-elk-e7500/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-skl-lmem/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-skl-lmem/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-ivb-3770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-ivb-3770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-snb-2600/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bsw-kefka/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bsw-kefka/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-x1275/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-x1275/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bdw-gvtdvm/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bdw-gvtdvm/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-7500u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-7500u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-blb-e6850/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-blb-e6850/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bwr-2160/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bwr-2160/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bdw-5557u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bdw-5557u/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-skl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-skl-guc/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-r/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-r/boot.html">FAIL</a></p>
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
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-tgl-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-tgl-dsi/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-kbl-7560u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-kbl-7560u/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-ehl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-ehl-1/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18322 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/348">i915#348</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8856/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18322/fi-bxt-dsi/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5764 -&gt; None</li>
<li>Linux: CI_DRM_8856 -&gt; Patchwork_18322</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8856: 238c742f0beea85fc171bfc3eef05cf284af6d4d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5764: 0f91c80b4c809cf48afff65a2ea68590389aa5ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18322: cfd370c67224a0b3d3b0440e2738c12b39d63247 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cfd370c67224 drm/i915/gt: Free stale request on destroying the virtual engine<br />
435242a104ce drm/i915/gt: Split the breadcrumb spinlock between global and contexts<br />
7f54c977c742 drm/i915/gt: Don't cancel the interrupt shadow too early<br />
45d3f0fee88b drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock<br />
9676cd4fcbab drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission<br />
9d375c4552bf drm/i915/gt: Protect context lifetime with RCU<br />
f82f8ef253eb drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()</p>

</body>
</html>

--===============6110708647892937320==--

--===============1332570499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1332570499==--
