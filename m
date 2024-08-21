Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBCA959F3C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 16:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AC010E5E9;
	Wed, 21 Aug 2024 14:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843F110E5D1;
 Wed, 21 Aug 2024 14:03:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5177872295417009361=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm=3A_Provide_client_setup?=
 =?utf-8?q?_helper_and_convert_drivers_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2024 14:03:42 -0000
Message-ID: <172424902253.721436.8463616525117550809@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240821130348.73038-1-tzimmermann@suse.de>
In-Reply-To: <20240821130348.73038-1-tzimmermann@suse.de>
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

--===============5177872295417009361==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Provide client setup helper and convert drivers (rev2)
URL   : https://patchwork.freedesktop.org/series/137389/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15269 -> Patchwork_137389v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_137389v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_137389v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/index.html

Participating hosts (41 -> 34)
------------------------------

  Additional (1): bat-mtlp-6 
  Missing    (8): bat-kbl-2 bat-adlp-9 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g fi-elk-e7500 bat-arls-1 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_137389v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-arlh-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-arlh-2/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-arlh-2/igt@i915_module_load@load.html
    - bat-adlm-1:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-adlm-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-adlm-1/igt@i915_module_load@load.html
    - bat-mtlp-6:         NOTRUN -> [ABORT][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-mtlp-6/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg2-9/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg2-9/igt@i915_module_load@load.html
    - fi-kbl-x1275:       [PASS][8] -> [ABORT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-kbl-x1275/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-kbl-x1275/igt@i915_module_load@load.html
    - bat-adlp-11:        [PASS][10] -> [ABORT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-adlp-11/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-adlp-11/igt@i915_module_load@load.html
    - fi-kbl-guc:         [PASS][12] -> [ABORT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-kbl-guc/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-kbl-guc/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-6:         [PASS][14] -> [ABORT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
    - bat-rplp-1:         [PASS][16] -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-rplp-1/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-rplp-1/igt@i915_pm_rpm@module-reload.html
    - fi-rkl-11600:       [PASS][18] -> [ABORT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-dg2-11:         [PASS][22] -> [ABORT][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8109u:       [PASS][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
    - bat-mtlp-8:         [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html
    - bat-adls-6:         [PASS][28] -> [ABORT][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - fi-tgl-1115g4:      [PASS][30] -> [ABORT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-guc:         [PASS][32] -> [ABORT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8700k:       [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
    - bat-twl-1:          [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-twl-1/igt@i915_pm_rpm@module-reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-twl-1/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-dg2-8:          [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@mman:
    - fi-pnv-d510:        [PASS][40] -> [ABORT][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-pnv-d510/igt@i915_selftest@live@mman.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-pnv-d510/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-arls-5:         [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
    - fi-ivb-3770:        [PASS][44] -> [ABORT][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-ivb-3770/igt@i915_selftest@live@sanitycheck.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-ivb-3770/igt@i915_selftest@live@sanitycheck.html
    - bat-rpls-4:         [PASS][46] -> [ABORT][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-rpls-4/igt@i915_selftest@live@sanitycheck.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-rpls-4/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - bat-twl-2:          [PASS][48] -> [ABORT][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-twl-2/igt@i915_selftest@live@uncore.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-twl-2/igt@i915_selftest@live@uncore.html
    - bat-dg2-14:         [PASS][50] -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg2-14/igt@i915_selftest@live@uncore.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg2-14/igt@i915_selftest@live@uncore.html
    - fi-ilk-650:         [PASS][52] -> [ABORT][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-ilk-650/igt@i915_selftest@live@uncore.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-ilk-650/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - fi-kbl-7567u:       [PASS][54] -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html
    - bat-apl-1:          [PASS][56] -> [ABORT][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-apl-1/igt@i915_selftest@live@workarounds.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-apl-1/igt@i915_selftest@live@workarounds.html
    - bat-arls-2:         [PASS][58] -> [ABORT][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-arls-2/igt@i915_selftest@live@workarounds.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-arls-2/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_sync@basic-each:
    - {bat-arlh-3}:       [PASS][60] -> [INCOMPLETE][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-arlh-3/igt@gem_sync@basic-each.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-arlh-3/igt@gem_sync@basic-each.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Build changes
-------------

  * Linux: CI_DRM_15269 -> Patchwork_137389v2

  CI-20190529: 20190529
  CI_DRM_15269: c83ab549ef8f647c3de42793d222a980021a973f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7981: f4e2ada1adec484cf506b5ec7e9acb3ae62228f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137389v2: c83ab549ef8f647c3de42793d222a980021a973f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/index.html

--===============5177872295417009361==
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
<tr><td><b>Series:</b></td><td>drm: Provide client setup helper and convert drivers (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137389/">https://patchwork.freedesktop.org/series/137389/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15269 -&gt; Patchwork_137389v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_137389v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_137389v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/index.html</p>
<h2>Participating hosts (41 -&gt; 34)</h2>
<p>Additional (1): bat-mtlp-6 <br />
  Missing    (8): bat-kbl-2 bat-adlp-9 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g fi-elk-e7500 bat-arls-1 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_137389v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-arlh-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-arlh-2/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-adlm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-adlm-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-mtlp-6/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-kbl-x1275/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-kbl-x1275/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-adlp-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-kbl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-kbl-guc/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-rplp-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-rplp-1/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-adls-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-adls-6/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-twl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-twl-1/igt@i915_pm_rpm@module-reload.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-pnv-d510/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-pnv-d510/igt@i915_selftest@live@mman.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-ivb-3770/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-ivb-3770/igt@i915_selftest@live@sanitycheck.html">ABORT</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-rpls-4/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-rpls-4/igt@i915_selftest@live@sanitycheck.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-twl-2/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-twl-2/igt@i915_selftest@live@uncore.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-dg2-14/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-dg2-14/igt@i915_selftest@live@uncore.html">ABORT</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-ilk-650/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-ilk-650/igt@i915_selftest@live@uncore.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html">ABORT</a></li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-apl-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-apl-1/igt@i915_selftest@live@workarounds.html">ABORT</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-arls-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-arls-2/igt@i915_selftest@live@workarounds.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_sync@basic-each:<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15269/bat-arlh-3/igt@gem_sync@basic-each.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137389v2/bat-arlh-3/igt@gem_sync@basic-each.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15269 -&gt; Patchwork_137389v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15269: c83ab549ef8f647c3de42793d222a980021a973f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7981: f4e2ada1adec484cf506b5ec7e9acb3ae62228f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137389v2: c83ab549ef8f647c3de42793d222a980021a973f @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5177872295417009361==--
