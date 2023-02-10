Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 778B96923F2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 18:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1038D10ED8F;
	Fri, 10 Feb 2023 17:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3686A10ED8F;
 Fri, 10 Feb 2023 17:05:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1CE4EA66C9;
 Fri, 10 Feb 2023 17:05:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6142680619067253019=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 10 Feb 2023 17:05:05 -0000
Message-ID: <167604870508.7874.14036795268450506418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230210130647.580135-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230210130647.580135-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgV2Fp?=
 =?utf-8?q?tboost_drm_syncobj_waits_=28rev2=29?=
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

--===============6142680619067253019==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Waitboost drm syncobj waits (rev2)
URL   : https://patchwork.freedesktop.org/series/113846/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12727 -> Patchwork_113846v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_113846v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_113846v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): bat-atsm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113846v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all-engines:
    - fi-ivb-3770:        [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-ivb-3770/igt@gem_busy@busy@all-engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-ivb-3770/igt@gem_busy@busy@all-engines.html

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-ilk-650/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-ilk-650/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-blb-e6850/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-bsw-n3050:       [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-bsw-n3050/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-rkl-11600/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-skl-6600u/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-apl-guc:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-apl-guc/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-apl-guc/igt@i915_module_load@load.html
    - bat-dg1-5:          [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg1-5/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg1-5/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-pnv-d510/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-glk-j4005/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-glk-j4005/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-skl-guc/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-skl-guc/igt@i915_module_load@load.html
    - bat-dg1-6:          [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg1-6/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg1-6/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-kbl-7567u/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-cfl-8700k/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-elk-e7500/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-bsw-nick/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-bsw-nick/igt@i915_module_load@load.html
    - fi-tgl-1115g4:      [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-tgl-1115g4/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-tgl-1115g4/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-kbl-x1275/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-kbl-x1275/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-hsw-4770/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-cfl-8109u/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-cfl-8109u/igt@i915_module_load@load.html
    - fi-kbl-guc:         [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-kbl-guc/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-kbl-guc/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-jsl-1}:        [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-jsl-1/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-jsl-1/igt@i915_module_load@load.html
    - {bat-rpls-1}:       [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-rpls-1/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-rpls-1/igt@i915_module_load@load.html
    - {bat-adlp-6}:       [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adlp-6/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adlp-6/igt@i915_module_load@load.html
    - {bat-adls-5}:       [PASS][49] -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adls-5/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adls-5/igt@i915_module_load@load.html
    - {bat-dg1-7}:        [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg1-7/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg1-7/igt@i915_module_load@load.html
    - {bat-jsl-3}:        [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-jsl-3/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-jsl-3/igt@i915_module_load@load.html
    - {bat-adlp-9}:       [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adlp-9/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adlp-9/igt@i915_module_load@load.html
    - {bat-dg2-11}:       [PASS][57] -> [ABORT][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg2-11/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg2-11/igt@i915_module_load@load.html
    - {bat-adln-1}:       [PASS][59] -> [ABORT][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adln-1/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adln-1/igt@i915_module_load@load.html
    - {bat-adlm-1}:       [PASS][61] -> [ABORT][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adlm-1/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adlm-1/igt@i915_module_load@load.html
    - {bat-rplp-1}:       [PASS][63] -> [ABORT][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-rplp-1/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-rplp-1/igt@i915_module_load@load.html
    - {bat-dg2-9}:        [PASS][65] -> [ABORT][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg2-9/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg2-9/igt@i915_module_load@load.html
    - {bat-rpls-2}:       [PASS][67] -> [ABORT][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-rpls-2/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-rpls-2/igt@i915_module_load@load.html
    - {bat-dg2-8}:        [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg2-8/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg2-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_113846v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-cfl-guc:         [PASS][71] -> [ABORT][72] ([i915#8141])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-cfl-guc/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-cfl-guc/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#8141]: https://gitlab.freedesktop.org/drm/intel/issues/8141


Build changes
-------------

  * Linux: CI_DRM_12727 -> Patchwork_113846v2

  CI-20190529: 20190529
  CI_DRM_12727: 571111c8567d76c5a5ec4641ba771bb1bdd278fc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7156: d10786443fef434534ec4d08e93db92dfad84c7b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113846v2: 571111c8567d76c5a5ec4641ba771bb1bdd278fc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7a08fd7f270f drm/i915: Wait boost requests waited upon by others
8c687c784061 drm/i915: Mark waits as explicit
119d3caa3ca6 drm/i915: Waitboost external waits
dfadc3ae295a drm/syncobj: Mark syncobj waits as external waiters
9729003feb78 dma-fence: Track explicit waiters

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/index.html

--===============6142680619067253019==
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
<tr><td><b>Series:</b></td><td>Waitboost drm syncobj waits (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113846/">https://patchwork.freedesktop.org/series/113846/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12727 -&gt; Patchwork_113846v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_113846v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_113846v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): bat-atsm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113846v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all-engines:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-ivb-3770/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-ivb-3770/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-blb-e6850/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-apl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-apl-guc/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg1-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg1-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg1-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg1-6/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-elk-e7500/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-bsw-nick/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-tgl-1115g4/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-tgl-1115g4/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-kbl-x1275/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-kbl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-kbl-guc/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-jsl-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-rpls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-rpls-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adls-5}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adls-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-jsl-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-jsl-3/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adln-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-adlm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-adlm-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-rpls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-rpls-2/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113846v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12727/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v2/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8141">i915#8141</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12727 -&gt; Patchwork_113846v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12727: 571111c8567d76c5a5ec4641ba771bb1bdd278fc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7156: d10786443fef434534ec4d08e93db92dfad84c7b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113846v2: 571111c8567d76c5a5ec4641ba771bb1bdd278fc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7a08fd7f270f drm/i915: Wait boost requests waited upon by others<br />
8c687c784061 drm/i915: Mark waits as explicit<br />
119d3caa3ca6 drm/i915: Waitboost external waits<br />
dfadc3ae295a drm/syncobj: Mark syncobj waits as external waiters<br />
9729003feb78 dma-fence: Track explicit waiters</p>

</body>
</html>

--===============6142680619067253019==--
