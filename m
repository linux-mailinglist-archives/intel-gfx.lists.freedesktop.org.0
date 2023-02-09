Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20882690E7B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 17:39:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F9910E220;
	Thu,  9 Feb 2023 16:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9692910E23D;
 Thu,  9 Feb 2023 16:39:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EC99AA01E;
 Thu,  9 Feb 2023 16:39:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2444339267029525681=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 09 Feb 2023 16:39:32 -0000
Message-ID: <167596077257.20198.10207485871893392147@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230209154315.468682-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230209154315.468682-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgV2Fp?=
 =?utf-8?q?tboost_drm_syncobj_waits?=
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

--===============2444339267029525681==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Waitboost drm syncobj waits
URL   : https://patchwork.freedesktop.org/series/113846/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12721 -> Patchwork_113846v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_113846v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_113846v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (2): bat-atsm-1 bat-dg1-6 
  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113846v1:

### CI changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {bat-kbl-2}:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-kbl-2/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-kbl-2/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-ilk-650/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-ilk-650/igt@i915_module_load@load.html
    - fi-blb-e6850:       [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-blb-e6850/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-blb-e6850/igt@i915_module_load@load.html
    - fi-bsw-n3050:       [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-bsw-n3050/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-rkl-11600/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-skl-6600u/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-apl-guc:         [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-apl-guc/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-apl-guc/igt@i915_module_load@load.html
    - bat-dg1-5:          [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg1-5/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg1-5/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-pnv-d510/igt@i915_module_load@load.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-pnv-d510/igt@i915_module_load@load.html
    - fi-glk-j4005:       [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-glk-j4005/igt@i915_module_load@load.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-glk-j4005/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-skl-guc/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-skl-guc/igt@i915_module_load@load.html
    - bat-dg1-6:          NOTRUN -> [ABORT][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg1-6/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-kbl-7567u/igt@i915_module_load@load.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-cfl-8700k/igt@i915_module_load@load.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][28] -> [ABORT][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-elk-e7500/igt@i915_module_load@load.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-elk-e7500/igt@i915_module_load@load.html
    - fi-bsw-nick:        [PASS][30] -> [ABORT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-bsw-nick/igt@i915_module_load@load.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-bsw-nick/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][32] -> [ABORT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-cfl-guc/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-cfl-guc/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-kbl-x1275/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-kbl-x1275/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-hsw-4770/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-cfl-8109u/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-cfl-8109u/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][40] -> [ABORT][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-ivb-3770/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-ivb-3770/igt@i915_module_load@load.html
    - fi-kbl-guc:         [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-kbl-guc/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-kbl-guc/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_auth@basic-auth:
    - {bat-rpls-2}:       [PASS][44] -> [ABORT][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-rpls-2/igt@core_auth@basic-auth.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-rpls-2/igt@core_auth@basic-auth.html

  * igt@i915_module_load@load:
    - {bat-jsl-1}:        [PASS][46] -> [ABORT][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-jsl-1/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-jsl-1/igt@i915_module_load@load.html
    - {bat-rpls-1}:       [PASS][48] -> [ABORT][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-rpls-1/igt@i915_module_load@load.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-rpls-1/igt@i915_module_load@load.html
    - {bat-adlp-6}:       [PASS][50] -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adlp-6/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adlp-6/igt@i915_module_load@load.html
    - {bat-adls-5}:       [PASS][52] -> [ABORT][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adls-5/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adls-5/igt@i915_module_load@load.html
    - {bat-dg1-7}:        [PASS][54] -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg1-7/igt@i915_module_load@load.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg1-7/igt@i915_module_load@load.html
    - {bat-jsl-3}:        [PASS][56] -> [ABORT][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-jsl-3/igt@i915_module_load@load.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-jsl-3/igt@i915_module_load@load.html
    - {bat-adlp-9}:       [PASS][58] -> [ABORT][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adlp-9/igt@i915_module_load@load.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adlp-9/igt@i915_module_load@load.html
    - {bat-dg2-11}:       [PASS][60] -> [ABORT][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg2-11/igt@i915_module_load@load.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg2-11/igt@i915_module_load@load.html
    - {bat-adln-1}:       [PASS][62] -> [ABORT][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adln-1/igt@i915_module_load@load.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adln-1/igt@i915_module_load@load.html
    - {bat-adlm-1}:       [PASS][64] -> [ABORT][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adlm-1/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adlm-1/igt@i915_module_load@load.html
    - {bat-rplp-1}:       [PASS][66] -> [ABORT][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-rplp-1/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-rplp-1/igt@i915_module_load@load.html
    - {bat-atsm-1}:       NOTRUN -> [ABORT][68]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-atsm-1/igt@i915_module_load@load.html
    - {bat-dg2-9}:        [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg2-9/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg2-9/igt@i915_module_load@load.html
    - {bat-dg2-8}:        [PASS][71] -> [ABORT][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg2-8/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg2-8/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Build changes
-------------

  * Linux: CI_DRM_12721 -> Patchwork_113846v1

  CI-20190529: 20190529
  CI_DRM_12721: e1f9df7a92c1e3da1009afa74dc1d08ef95c3d7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7155: 75c508d4e19c65683d4060cb3a772df600aaf23e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113846v1: e1f9df7a92c1e3da1009afa74dc1d08ef95c3d7c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e9af776738e5 drm/i915: Waitboost external waits
b09ea7b88835 drm/syncobj: Mark syncobj waits as external waiters
fe94251ffb8b dma-fence: Track explicit waiters

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/index.html

--===============2444339267029525681==
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
<tr><td><b>Series:</b></td><td>Waitboost drm syncobj waits</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113846/">https://patchwork.freedesktop.org/series/113846/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12721 -&gt; Patchwork_113846v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_113846v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_113846v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (2): bat-atsm-1 bat-dg1-6 <br />
  Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113846v1:</p>
<h3>CI changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>boot:<ul>
<li>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-kbl-2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-kbl-2/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-blb-e6850/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-blb-e6850/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-bsw-n3050/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-apl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-apl-guc/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg1-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg1-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-glk-j4005/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-glk-j4005/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg1-6/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-elk-e7500/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-bsw-nick/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-bsw-nick/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-kbl-x1275/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/fi-kbl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/fi-kbl-guc/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-rpls-2/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-rpls-2/igt@core_auth@basic-auth.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-jsl-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-rpls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-rpls-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adlp-6/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adls-5}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adls-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-jsl-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-jsl-3/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adlp-9/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adln-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adln-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-adlm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-adlm-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-rplp-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-atsm-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12721/bat-dg2-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113846v1/bat-dg2-8/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12721 -&gt; Patchwork_113846v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12721: e1f9df7a92c1e3da1009afa74dc1d08ef95c3d7c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7155: 75c508d4e19c65683d4060cb3a772df600aaf23e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113846v1: e1f9df7a92c1e3da1009afa74dc1d08ef95c3d7c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e9af776738e5 drm/i915: Waitboost external waits<br />
b09ea7b88835 drm/syncobj: Mark syncobj waits as external waiters<br />
fe94251ffb8b dma-fence: Track explicit waiters</p>

</body>
</html>

--===============2444339267029525681==--
