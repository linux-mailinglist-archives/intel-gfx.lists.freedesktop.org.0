Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 746E0BDE58E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 13:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367E110E789;
	Wed, 15 Oct 2025 11:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 97596180aaec (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2168610E784;
 Wed, 15 Oct 2025 11:57:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0540989691644177224=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Optimize_vrr=2Eguardband?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Oct 2025 11:57:23 -0000
Message-ID: <176052944312.16661.5190457396391810677@97596180aaec>
X-Patchwork-Hint: ignore
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
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

--===============0540989691644177224==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Optimize vrr.guardband
URL   : https://patchwork.freedesktop.org/series/155980/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17365 -> Patchwork_155980v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_155980v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_155980v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_155980v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-ilk-650:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-ilk-650/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-ilk-650/igt@i915_module_load@load.html
    - fi-bsw-n3050:       NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-bsw-n3050/igt@i915_module_load@load.html
    - bat-arlh-2:         [PASS][4] -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arlh-2/igt@i915_module_load@load.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-arlh-2/igt@i915_module_load@load.html
    - fi-rkl-11600:       [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-rkl-11600/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][8] -> [ABORT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-skl-6600u/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-pnv-d510:        [PASS][10] -> [ABORT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-pnv-d510/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-pnv-d510/igt@i915_module_load@load.html
    - bat-dg1-7:          [PASS][12] -> [ABORT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg1-7/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg1-7/igt@i915_module_load@load.html
    - fi-kbl-7567u:       [PASS][14] -> [ABORT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-kbl-7567u/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][16] -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-cfl-8700k/igt@i915_module_load@load.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-kbl-8809g:       [PASS][18] -> [ABORT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-kbl-8809g/igt@i915_module_load@load.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-kbl-8809g/igt@i915_module_load@load.html
    - bat-apl-1:          [PASS][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-apl-1/igt@i915_module_load@load.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-apl-1/igt@i915_module_load@load.html
    - fi-elk-e7500:       [PASS][22] -> [ABORT][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-elk-e7500/igt@i915_module_load@load.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-elk-e7500/igt@i915_module_load@load.html
    - bat-kbl-2:          [PASS][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-kbl-2/igt@i915_module_load@load.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-kbl-2/igt@i915_module_load@load.html
    - bat-arls-5:         [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arls-5/igt@i915_module_load@load.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-arls-5/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][28] -> [ABORT][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-cfl-guc/igt@i915_module_load@load.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-cfl-guc/igt@i915_module_load@load.html
    - bat-mtlp-6:         [PASS][30] -> [ABORT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-mtlp-6/igt@i915_module_load@load.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-mtlp-6/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][32] -> [ABORT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-kbl-x1275/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-kbl-x1275/igt@i915_module_load@load.html
    - fi-hsw-4770:        [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-hsw-4770/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-hsw-4770/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-cfl-8109u/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-cfl-8109u/igt@i915_module_load@load.html
    - fi-ivb-3770:        [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-ivb-3770/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-ivb-3770/igt@i915_module_load@load.html
    - bat-dg1-6:          [PASS][40] -> [ABORT][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg1-6/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg1-6/igt@i915_module_load@load.html
    - fi-kbl-guc:         [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-kbl-guc/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-kbl-guc/igt@i915_module_load@load.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-rpls-4:         [PASS][44] -> [FAIL][45] +8 other tests fail
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-rpls-4/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-rpls-4/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - bat-rpls-4:         [PASS][46] -> [ABORT][47] +1 other test abort
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@core_debugfs@read-all-entries}:
    - bat-mtlp-9:         [PASS][48] -> [ABORT][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-mtlp-9/igt@core_debugfs@read-all-entries.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-mtlp-9/igt@core_debugfs@read-all-entries.html
    - bat-arls-6:         [PASS][50] -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arls-6/igt@core_debugfs@read-all-entries.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-arls-6/igt@core_debugfs@read-all-entries.html
    - bat-dg2-9:          [PASS][52] -> [ABORT][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg2-9/igt@core_debugfs@read-all-entries.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg2-9/igt@core_debugfs@read-all-entries.html
    - bat-mtlp-8:         [PASS][54] -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-mtlp-8/igt@core_debugfs@read-all-entries.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-mtlp-8/igt@core_debugfs@read-all-entries.html
    - bat-dg2-8:          [PASS][56] -> [ABORT][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg2-8/igt@core_debugfs@read-all-entries.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg2-8/igt@core_debugfs@read-all-entries.html
    - bat-adls-6:         [PASS][58] -> [ABORT][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-adls-6/igt@core_debugfs@read-all-entries.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-adls-6/igt@core_debugfs@read-all-entries.html
    - bat-jsl-1:          [PASS][60] -> [ABORT][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-jsl-1/igt@core_debugfs@read-all-entries.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-jsl-1/igt@core_debugfs@read-all-entries.html
    - fi-tgl-1115g4:      [PASS][62] -> [ABORT][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-tgl-1115g4/igt@core_debugfs@read-all-entries.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-tgl-1115g4/igt@core_debugfs@read-all-entries.html
    - bat-adlp-6:         [PASS][64] -> [ABORT][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-adlp-6/igt@core_debugfs@read-all-entries.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-adlp-6/igt@core_debugfs@read-all-entries.html
    - bat-arlh-3:         [PASS][66] -> [ABORT][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arlh-3/igt@core_debugfs@read-all-entries.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-arlh-3/igt@core_debugfs@read-all-entries.html
    - fi-glk-j4005:       [PASS][68] -> [ABORT][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-glk-j4005/igt@core_debugfs@read-all-entries.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-glk-j4005/igt@core_debugfs@read-all-entries.html
    - bat-adlp-9:         [PASS][70] -> [ABORT][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-adlp-9/igt@core_debugfs@read-all-entries.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-adlp-9/igt@core_debugfs@read-all-entries.html
    - bat-twl-2:          [PASS][72] -> [ABORT][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-twl-2/igt@core_debugfs@read-all-entries.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-twl-2/igt@core_debugfs@read-all-entries.html
    - bat-dg2-11:         [PASS][74] -> [ABORT][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg2-11/igt@core_debugfs@read-all-entries.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg2-11/igt@core_debugfs@read-all-entries.html
    - bat-twl-1:          [PASS][76] -> [ABORT][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-twl-1/igt@core_debugfs@read-all-entries.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-twl-1/igt@core_debugfs@read-all-entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Build changes
-------------

  * Linux: CI_DRM_17365 -> Patchwork_155980v1

  CI-20190529: 20190529
  CI_DRM_17365: 6a9cafb6723c47062cc4d593804d5bb69155d81a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8585: 8585
  Patchwork_155980v1: 6a9cafb6723c47062cc4d593804d5bb69155d81a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/index.html

--===============0540989691644177224==
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
<tr><td><b>Series:</b></td><td>Optimize vrr.guardband</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/155980/">https://patchwork.freedesktop.org/series/155980/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17365 -&gt; Patchwork_155980v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_155980v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_155980v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_155980v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-ilk-650/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-ilk-650/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-bsw-n3050/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arlh-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-arlh-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-skl-6600u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg1-7/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg1-7/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-kbl-7567u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-cfl-8700k/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-kbl-8809g/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-kbl-8809g/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-apl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-apl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-elk-e7500/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-kbl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-kbl-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-arls-5/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-cfl-guc/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-mtlp-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-mtlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-kbl-x1275/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-hsw-4770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-hsw-4770/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-cfl-8109u/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-ivb-3770/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg1-6/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg1-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-kbl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-kbl-guc/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-rpls-4/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-rpls-4/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +8 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp1:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@core_debugfs@read-all-entries}:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-mtlp-9/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-mtlp-9/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arls-6/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-arls-6/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg2-9/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg2-9/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-mtlp-8/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-mtlp-8/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg2-8/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg2-8/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-adls-6/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-adls-6/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-jsl-1/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-jsl-1/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-tgl-1115g4/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-tgl-1115g4/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-adlp-6/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-adlp-6/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-arlh-3/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-arlh-3/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/fi-glk-j4005/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/fi-glk-j4005/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-adlp-9/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-adlp-9/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-twl-2/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-twl-2/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-dg2-11/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-dg2-11/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17365/bat-twl-1/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155980v1/bat-twl-1/igt@core_debugfs@read-all-entries.html">ABORT</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17365 -&gt; Patchwork_155980v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17365: 6a9cafb6723c47062cc4d593804d5bb69155d81a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8585: 8585<br />
  Patchwork_155980v1: 6a9cafb6723c47062cc4d593804d5bb69155d81a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0540989691644177224==--
