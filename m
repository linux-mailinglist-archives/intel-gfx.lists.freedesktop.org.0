Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E54B85A702
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 16:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109CC10E092;
	Mon, 19 Feb 2024 15:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB45110E092;
 Mon, 19 Feb 2024 15:09:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2744501665549617859=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_QGV/SAGV_related_fixes_=28r?=
 =?utf-8?q?ev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Feb 2024 15:09:53 -0000
Message-ID: <170835539396.89216.1136692339923173179@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
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

--===============2744501665549617859==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: QGV/SAGV related fixes (rev6)
URL   : https://patchwork.freedesktop.org/series/126962/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14296 -> Patchwork_126962v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126962v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126962v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/index.html

Participating hosts (35 -> 34)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126962v6:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
    - fi-elk-e7500:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@load:
    - fi-elk-e7500:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-elk-e7500/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-elk-e7500/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-kbl-2:          NOTRUN -> [DMESG-WARN][7] +40 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-kbl-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - bat-dg2-8:          [PASS][8] -> [DMESG-WARN][9] +40 other tests dmesg-warn
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-8/igt@i915_selftest@live@client.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-8/igt@i915_selftest@live@client.html
    - fi-kbl-guc:         [PASS][10] -> [DMESG-WARN][11] +40 other tests dmesg-warn
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-guc/igt@i915_selftest@live@client.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - bat-dg2-9:          [PASS][12] -> [DMESG-WARN][13] +40 other tests dmesg-warn
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-9/igt@i915_selftest@live@coherency.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-9/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gem:
    - fi-rkl-11600:       [PASS][14] -> [DMESG-WARN][15] +40 other tests dmesg-warn
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-rkl-11600/igt@i915_selftest@live@gem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-rkl-11600/igt@i915_selftest@live@gem.html
    - fi-pnv-d510:        [PASS][16] -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][18] -> [DMESG-WARN][19] +40 other tests dmesg-warn
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6600u:       [PASS][20] -> [DMESG-WARN][21] +38 other tests dmesg-warn
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-ilk-650:         [PASS][22] -> [DMESG-WARN][23] +39 other tests dmesg-warn
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-1115g4:      [PASS][24] -> [DMESG-WARN][25] +40 other tests dmesg-warn
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][26] -> [DMESG-WARN][27] +39 other tests dmesg-warn
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-11/igt@i915_selftest@live@perf.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-11/igt@i915_selftest@live@perf.html
    - fi-kbl-x1275:       [PASS][28] -> [DMESG-WARN][29] +40 other tests dmesg-warn
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-x1275/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@ring_submission:
    - fi-cfl-8109u:       [PASS][30] -> [DMESG-WARN][31] +40 other tests dmesg-warn
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][32] -> [DMESG-WARN][33] +38 other tests dmesg-warn
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
    - fi-cfl-8700k:       [PASS][34] -> [DMESG-WARN][35] +39 other tests dmesg-warn
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - bat-dg1-7:          [PASS][36] -> [DMESG-WARN][37] +40 other tests dmesg-warn
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg1-7/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@vma:
    - fi-skl-guc:         [PASS][38] -> [DMESG-WARN][39] +40 other tests dmesg-warn
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-skl-guc/igt@i915_selftest@live@vma.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-skl-guc/igt@i915_selftest@live@vma.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {bat-adls-6}:       [PASS][40] -> [DMESG-WARN][41] +6 other tests dmesg-warn
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-adls-6/igt@core_hotunplug@unbind-rebind.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-adls-6/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@load:
    - {bat-dg2-13}:       [PASS][42] -> [DMESG-WARN][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-13/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-13/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-dg2-14}:       [PASS][44] -> [DMESG-WARN][45] +40 other tests dmesg-warn
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-14/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - {bat-adls-6}:       NOTRUN -> [DMESG-WARN][46] +31 other tests dmesg-warn
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-adls-6/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@gt_engines:
    - {bat-adls-6}:       [TIMEOUT][47] ([i915#10026]) -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-adls-6/igt@i915_selftest@live@gt_engines.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-adls-6/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_126962v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#1849])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][50] ([fdo#109271]) +35 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [PASS][51] -> [DMESG-WARN][52] ([i915#1982]) +1 other test dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-skl-6600u/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-kbl-7567u:       [PASS][53] -> [DMESG-WARN][54] ([i915#1982])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-7567u/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-7567u/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][55] -> [DMESG-WARN][56] ([i915#1982])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-cfl-8700k/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-cfl-8700k/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][57] -> [DMESG-WARN][58] ([i915#1982])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - fi-kbl-7567u:       [PASS][59] -> [CRASH][60] ([i915#9947])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#9947]: https://gitlab.freedesktop.org/drm/intel/issues/9947


Build changes
-------------

  * Linux: CI_DRM_14296 -> Patchwork_126962v6

  CI-20190529: 20190529
  CI_DRM_14296: f12bce6493b6443870b55f36b1462d65e450d29d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7716: 7716
  Patchwork_126962v6: f12bce6493b6443870b55f36b1462d65e450d29d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f74f69b0d8a5 drm/i915: Disable SAGV on bw init, to force QGV point recalculation
12c2c30c041b drm/i915: Extract code required to calculate max qgv/psf gv point
657e09a33749 drm/i915: Add meaningful traces for QGV point info error handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/index.html

--===============2744501665549617859==
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
<tr><td><b>Series:</b></td><td>QGV/SAGV related fixes (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126962/">https://patchwork.freedesktop.org/series/126962/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14296 -&gt; Patchwork_126962v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126962v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126962v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126962v6:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-elk-e7500/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-elk-e7500/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-8/igt@i915_selftest@live@client.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-9/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-9/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-rkl-11600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-rkl-11600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-pnv-d510/igt@i915_selftest@live@gem.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-ilk-650/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-x1275/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-x1275/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-cfl-8109u/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-cfl-8700k/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg1-7/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@vma:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-skl-guc/igt@i915_selftest@live@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-skl-guc/igt@i915_selftest@live@vma.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-adls-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-adls-6/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-13/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +40 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>{bat-adls-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-adls-6/igt@i915_selftest@live@client.html">DMESG-WARN</a> +31 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-adls-6/igt@i915_selftest@live@gt_engines.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10026">i915#10026</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-adls-6/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126962v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-skl-6600u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 other test dmesg-warn</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-cfl-8700k/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-cfl-8700k/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126962v6/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9947">i915#9947</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14296 -&gt; Patchwork_126962v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14296: f12bce6493b6443870b55f36b1462d65e450d29d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7716: 7716<br />
  Patchwork_126962v6: f12bce6493b6443870b55f36b1462d65e450d29d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f74f69b0d8a5 drm/i915: Disable SAGV on bw init, to force QGV point recalculation<br />
12c2c30c041b drm/i915: Extract code required to calculate max qgv/psf gv point<br />
657e09a33749 drm/i915: Add meaningful traces for QGV point info error handling</p>

</body>
</html>

--===============2744501665549617859==--
