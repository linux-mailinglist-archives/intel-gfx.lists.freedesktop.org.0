Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B7D88B6A0
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 02:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ACBB10E988;
	Tue, 26 Mar 2024 01:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A31310E988;
 Tue, 26 Mar 2024 01:14:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6813582877808453781=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gem=3A_Calculate_o?=
 =?utf-8?q?bject_page_offset_for_partial_memory_mapping?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Mar 2024 01:14:30 -0000
Message-ID: <171141567063.1038646.17038896228104104607@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240325134033.287913-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240325134033.287913-1-andi.shyti@linux.intel.com>
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

--===============6813582877808453781==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Calculate object page offset for partial memory mapping
URL   : https://patchwork.freedesktop.org/series/131582/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14482 -> Patchwork_131582v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131582v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131582v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/index.html

Participating hosts (37 -> 34)
------------------------------

  Additional (1): bat-arls-4 
  Missing    (4): bat-mtlp-8 bat-dg1-7 bat-kbl-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131582v1:

### IGT changes ###

#### Possible regressions ####

  * igt@fbdev@eof:
    - fi-kbl-7567u:       [PASS][1] -> [TIMEOUT][2] +4 other tests timeout
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-kbl-7567u/igt@fbdev@eof.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-kbl-7567u/igt@fbdev@eof.html
    - fi-cfl-8700k:       [PASS][3] -> [TIMEOUT][4] +4 other tests timeout
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-cfl-8700k/igt@fbdev@eof.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8700k/igt@fbdev@eof.html
    - fi-bsw-nick:        [PASS][5] -> [TIMEOUT][6] +4 other tests timeout
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-bsw-nick/igt@fbdev@eof.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-bsw-nick/igt@fbdev@eof.html
    - bat-rplp-1:         [PASS][7] -> [TIMEOUT][8] +4 other tests timeout
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-rplp-1/igt@fbdev@eof.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-rplp-1/igt@fbdev@eof.html
    - fi-rkl-11600:       [PASS][9] -> [TIMEOUT][10] +4 other tests timeout
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-rkl-11600/igt@fbdev@eof.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-rkl-11600/igt@fbdev@eof.html
    - bat-jsl-3:          [PASS][11] -> [TIMEOUT][12] +4 other tests timeout
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-jsl-3/igt@fbdev@eof.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-jsl-3/igt@fbdev@eof.html
    - bat-adln-1:         [PASS][13] -> [TIMEOUT][14] +4 other tests timeout
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adln-1/igt@fbdev@eof.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adln-1/igt@fbdev@eof.html
    - fi-elk-e7500:       [PASS][15] -> [TIMEOUT][16] +4 other tests timeout
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-elk-e7500/igt@fbdev@eof.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-elk-e7500/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-cfl-8109u:       NOTRUN -> [TIMEOUT][17] +4 other tests timeout
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/igt@fbdev@info.html
    - fi-ivb-3770:        [PASS][18] -> [TIMEOUT][19] +4 other tests timeout
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-ivb-3770/igt@fbdev@info.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-ivb-3770/igt@fbdev@info.html
    - bat-adls-6:         [PASS][20] -> [TIMEOUT][21] +4 other tests timeout
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adls-6/igt@fbdev@info.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adls-6/igt@fbdev@info.html
    - fi-ilk-650:         [PASS][22] -> [TIMEOUT][23] +4 other tests timeout
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-ilk-650/igt@fbdev@info.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-ilk-650/igt@fbdev@info.html
    - bat-jsl-1:          [PASS][24] -> [TIMEOUT][25] +4 other tests timeout
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-jsl-1/igt@fbdev@info.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-jsl-1/igt@fbdev@info.html
    - bat-adlp-6:         [PASS][26] -> [TIMEOUT][27] +4 other tests timeout
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adlp-6/igt@fbdev@info.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adlp-6/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - fi-tgl-1115g4:      [PASS][28] -> [TIMEOUT][29] +4 other tests timeout
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-tgl-1115g4/igt@fbdev@nullptr.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-tgl-1115g4/igt@fbdev@nullptr.html

  * igt@fbdev@read:
    - bat-adlp-9:         [PASS][30] -> [TIMEOUT][31] +4 other tests timeout
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adlp-9/igt@fbdev@read.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adlp-9/igt@fbdev@read.html

  * igt@fbdev@write:
    - fi-cfl-guc:         [PASS][32] -> [TIMEOUT][33] +4 other tests timeout
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-cfl-guc/igt@fbdev@write.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-guc/igt@fbdev@write.html
    - fi-pnv-d510:        [PASS][34] -> [TIMEOUT][35] +4 other tests timeout
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-pnv-d510/igt@fbdev@write.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-pnv-d510/igt@fbdev@write.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-modeset@a-dp6:
    - {bat-mtlp-9}:       [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@a-dp6.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@a-dp6.html

  
Known issues
------------

  Here are the changes found in Patchwork_131582v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-dg2-11:         [PASS][38] -> [FAIL][39] ([i915#10491])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-11/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-11/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-cfl-8109u:       [FAIL][40] ([i915#8293]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-cfl-8109u/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][42] ([i915#2190])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][43] ([i915#4613]) +3 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@gt_engines:
    - bat-adls-6:         [PASS][44] -> [TIMEOUT][45] ([i915#10026])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adls-6/igt@i915_selftest@live@gt_engines.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adls-6/igt@i915_selftest@live@gt_engines.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][46] +11 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-14:         [FAIL][47] ([i915#10378]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@execlists:
    - bat-dg2-14:         [ABORT][49] ([i915#10366]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-14/igt@i915_selftest@live@execlists.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-14/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - bat-dg2-9:          [ABORT][51] ([i915#10366]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-9/igt@i915_selftest@live@gt_pm.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-9/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - bat-dg2-8:          [ABORT][53] ([i915#10366]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-8/igt@i915_selftest@live@mman.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-8/igt@i915_selftest@live@mman.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - fi-kbl-7567u:       [DMESG-WARN][55] ([i915#180] / [i915#1982] / [i915#8585]) -> [DMESG-WARN][56] ([i915#180] / [i915#8585])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-kbl-7567u/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-kbl-7567u/igt@i915_module_load@load.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [DMESG-WARN][57] ([i915#180] / [i915#8585]) -> [DMESG-WARN][58] ([i915#180] / [i915#1982] / [i915#8585])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/intel/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10491]: https://gitlab.freedesktop.org/drm/intel/issues/10491
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9157]: https://gitlab.freedesktop.org/drm/intel/issues/9157
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14482 -> Patchwork_131582v1

  CI-20190529: 20190529
  CI_DRM_14482: 4a8fabcf2f1aadbbb777a94edd01549c2aa95caf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7782: a404f73182948e843640d00cc279883391cf6ef4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131582v1: 4a8fabcf2f1aadbbb777a94edd01549c2aa95caf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6185edd61e52 drm/i915/gem: Calculate object page offset for partial memory mapping

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/index.html

--===============6813582877808453781==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Calculate object page offset for partial memory mapping</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131582/">https://patchwork.freedesktop.org/series/131582/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14482 -&gt; Patchwork_131582v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131582v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131582v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Additional (1): bat-arls-4 <br />
  Missing    (4): bat-mtlp-8 bat-dg1-7 bat-kbl-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131582v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-kbl-7567u/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-kbl-7567u/igt@fbdev@eof.html">TIMEOUT</a> +4 other tests timeout</li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-cfl-8700k/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8700k/igt@fbdev@eof.html">TIMEOUT</a> +4 other tests timeout</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-bsw-nick/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-bsw-nick/igt@fbdev@eof.html">TIMEOUT</a> +4 other tests timeout</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-rplp-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-rplp-1/igt@fbdev@eof.html">TIMEOUT</a> +4 other tests timeout</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-rkl-11600/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-rkl-11600/igt@fbdev@eof.html">TIMEOUT</a> +4 other tests timeout</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-jsl-3/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-jsl-3/igt@fbdev@eof.html">TIMEOUT</a> +4 other tests timeout</li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adln-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adln-1/igt@fbdev@eof.html">TIMEOUT</a> +4 other tests timeout</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-elk-e7500/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-elk-e7500/igt@fbdev@eof.html">TIMEOUT</a> +4 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/igt@fbdev@info.html">TIMEOUT</a> +4 other tests timeout</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-ivb-3770/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-ivb-3770/igt@fbdev@info.html">TIMEOUT</a> +4 other tests timeout</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adls-6/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adls-6/igt@fbdev@info.html">TIMEOUT</a> +4 other tests timeout</li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-ilk-650/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-ilk-650/igt@fbdev@info.html">TIMEOUT</a> +4 other tests timeout</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-jsl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-jsl-1/igt@fbdev@info.html">TIMEOUT</a> +4 other tests timeout</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adlp-6/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adlp-6/igt@fbdev@info.html">TIMEOUT</a> +4 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-tgl-1115g4/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-tgl-1115g4/igt@fbdev@nullptr.html">TIMEOUT</a> +4 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adlp-9/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adlp-9/igt@fbdev@read.html">TIMEOUT</a> +4 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-cfl-guc/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-guc/igt@fbdev@write.html">TIMEOUT</a> +4 other tests timeout</li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-pnv-d510/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-pnv-d510/igt@fbdev@write.html">TIMEOUT</a> +4 other tests timeout</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@basic-flip-vs-modeset@a-dp6:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@a-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@a-dp6.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131582v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-11/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-11/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10491">i915#10491</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-adls-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-adls-6/igt@i915_selftest@live@gt_engines.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10026">i915#10026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-14/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-14/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-14/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-9/igt@i915_selftest@live@gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-9/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/bat-dg2-8/igt@i915_selftest@live@mman.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/bat-dg2-8/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-kbl-7567u/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-kbl-7567u/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14482/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131582v1/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14482 -&gt; Patchwork_131582v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14482: 4a8fabcf2f1aadbbb777a94edd01549c2aa95caf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7782: a404f73182948e843640d00cc279883391cf6ef4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131582v1: 4a8fabcf2f1aadbbb777a94edd01549c2aa95caf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6185edd61e52 drm/i915/gem: Calculate object page offset for partial memory mapping</p>

</body>
</html>

--===============6813582877808453781==--
