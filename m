Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD12759AA7C
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Aug 2022 03:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4AB10E124;
	Sat, 20 Aug 2022 01:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65B0710E3EE;
 Sat, 20 Aug 2022 01:29:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 265B5AADD6;
 Sat, 20 Aug 2022 01:29:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3283520423775818203=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Sat, 20 Aug 2022 01:29:53 -0000
Message-ID: <166095899392.27058.11466603036512716267@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220820005822.102716-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ0RD?=
 =?utf-8?q?LK_churn=3A_move_checks_to_atomic_check?=
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

--===============3283520423775818203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: CDCLK churn: move checks to atomic check
URL   : https://patchwork.freedesktop.org/series/107522/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12004 -> Patchwork_107522v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107522v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107522v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (3): bat-adln-1 bat-dg2-10 bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107522v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-rkl-11600:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-rkl-11600/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-rkl-11600/igt@i915_module_load@load.html
    - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-skl-6700k2/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-skl-6700k2/igt@i915_module_load@load.html
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-cfl-8700k/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-8700k/igt@i915_module_load@load.html
    - fi-adl-ddr5:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-adl-ddr5/igt@i915_module_load@load.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-adl-ddr5/igt@i915_module_load@load.html
    - fi-cfl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-cfl-guc/igt@i915_module_load@load.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-guc/igt@i915_module_load@load.html
    - fi-bdw-5557u:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-bdw-5557u/igt@i915_module_load@load.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-5557u/igt@i915_module_load@load.html
    - fi-cfl-8109u:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-cfl-8109u/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-8109u/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - fi-bsw-kefka:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-bsw-kefka/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bsw-kefka/igt@kms_busy@basic@flip.html
    - fi-skl-6600u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-skl-6600u/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-skl-6600u/igt@kms_busy@basic@flip.html
    - fi-glk-j4005:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-glk-j4005/igt@kms_busy@basic@flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-glk-j4005/igt@kms_busy@basic@flip.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-bdw-gvtdvm:      [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - fi-rkl-guc:         [TIMEOUT][23] ([i915#6627]) -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-rkl-guc/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-rkl-guc/igt@i915_module_load@load.html
    - bat-dg1-6:          [TIMEOUT][25] ([i915#6627]) -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-dg1-6/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-dg1-6/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-dg2-8}:        [INCOMPLETE][27] ([i915#6637]) -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - {bat-jsl-3}:        [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-jsl-3/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-jsl-3/igt@i915_module_load@load.html
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-tgl-dsi/igt@i915_module_load@load.html
    - {bat-dg2-9}:        [TIMEOUT][32] ([i915#6637]) -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-dg2-9/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-dg2-9/igt@i915_module_load@load.html
    - {bat-rpls-2}:       [TIMEOUT][34] ([i915#6627]) -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-rpls-2/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-rpls-2/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-jsl-1}:         [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {fi-ehl-2}:         [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-ehl-2/igt@i915_pm_rpm@basic-pci-d3-state.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-ehl-2/igt@i915_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_107522v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-bdw-gvtdvm:      [PASS][40] -> [DMESG-WARN][41] ([i915#6540])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-bdw-gvtdvm/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-gvtdvm/igt@i915_module_load@load.html

  * igt@runner@aborted:
    - fi-skl-6700k2:      NOTRUN -> [FAIL][42] ([i915#4312] / [i915#6599])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][43] ([i915#4312] / [i915#6599])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-8109u/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][44] ([i915#4312] / [i915#6599])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][45] ([i915#4312])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][46] ([i915#4312] / [i915#6599])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][47] ([i915#4312] / [i915#6599])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-rkl-guc/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][48] ([i915#4312])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-dg1-6/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][49] ([i915#4312] / [i915#6599])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-8700k/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][50] ([i915#4312] / [i915#6599])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][51] ([i915#4312])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][52] ([i915#4312])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bsw-kefka/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][53] ([i915#4312] / [i915#6599])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][54] ([i915#4312] / [i915#6599])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#6540]: https://gitlab.freedesktop.org/drm/intel/issues/6540
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6627]: https://gitlab.freedesktop.org/drm/intel/issues/6627
  [i915#6637]: https://gitlab.freedesktop.org/drm/intel/issues/6637


Build changes
-------------

  * Linux: CI_DRM_12004 -> Patchwork_107522v1

  CI-20190529: 20190529
  CI_DRM_12004: 9a91db2ace2b69713b8ebbbc37554b53f23fa883 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6632: a0ac4d449e551fd5c78b56f85cd534330ea60507 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107522v1: 9a91db2ace2b69713b8ebbbc37554b53f23fa883 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a151aeaff7ef drm/i915/display: Add cdclk checks to atomic check
e5515080f499 drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
e1d06c9c9d73 drm/i915/squash: s/intel_cdclk_can_squash/intel_cdclk_squash
61504643ab4f drm/i915/display: Add CDCLK actions to intel_cdclk_state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/index.html

--===============3283520423775818203==
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
<tr><td><b>Series:</b></td><td>CDCLK churn: move checks to atomic check</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107522/">https://patchwork.freedesktop.org/series/107522/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12004 -&gt; Patchwork_107522v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107522v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107522v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (3): bat-adln-1 bat-dg2-10 bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107522v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-rkl-11600/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-skl-6700k2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-skl-6700k2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-cfl-8700k/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-8700k/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-adl-ddr5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-adl-ddr5/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-cfl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-bdw-5557u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-5557u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-cfl-8109u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-8109u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-bsw-kefka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bsw-kefka/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-skl-6600u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-skl-6600u/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-glk-j4005/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-glk-j4005/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-rkl-guc/igt@i915_module_load@load.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6627">i915#6627</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-rkl-guc/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-dg1-6/igt@i915_module_load@load.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6627">i915#6627</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-dg1-6/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-dg2-8/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6637">i915#6637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-jsl-3/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-jsl-3/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-tgl-dsi/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-dg2-9/igt@i915_module_load@load.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6637">i915#6637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-dg2-9/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/bat-rpls-2/igt@i915_module_load@load.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6627">i915#6627</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-rpls-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-jsl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-ehl-2/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-ehl-2/igt@i915_pm_rpm@basic-pci-d3-state.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107522v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12004/fi-bdw-gvtdvm/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-gvtdvm/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6540">i915#6540</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107522v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12004 -&gt; Patchwork_107522v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12004: 9a91db2ace2b69713b8ebbbc37554b53f23fa883 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6632: a0ac4d449e551fd5c78b56f85cd534330ea60507 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107522v1: 9a91db2ace2b69713b8ebbbc37554b53f23fa883 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a151aeaff7ef drm/i915/display: Add cdclk checks to atomic check<br />
e5515080f499 drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl<br />
e1d06c9c9d73 drm/i915/squash: s/intel_cdclk_can_squash/intel_cdclk_squash<br />
61504643ab4f drm/i915/display: Add CDCLK actions to intel_cdclk_state</p>

</body>
</html>

--===============3283520423775818203==--
