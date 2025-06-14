Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6839AD99B0
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Jun 2025 04:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79EC310E1EE;
	Sat, 14 Jun 2025 02:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF2AF10E1EE;
 Sat, 14 Jun 2025 02:35:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5451722729963160189=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/guc=3A_Enable_CT?=
 =?utf-8?q?=5FDEAD_output_in_regular_debug_builds?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Jun 2025 02:35:20 -0000
Message-ID: <174986852067.79414.11332689635719121037@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250614014153.91379-1-John.C.Harrison@Intel.com>
In-Reply-To: <20250614014153.91379-1-John.C.Harrison@Intel.com>
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

--===============5451722729963160189==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Enable CT_DEAD output in regular debug builds
URL   : https://patchwork.freedesktop.org/series/150275/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16703 -> Patchwork_150275v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_150275v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_150275v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/index.html

Participating hosts (44 -> 42)
------------------------------

  Missing    (2): bat-arlh-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_150275v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines:
    - bat-arls-6:         [PASS][1] -> [INCOMPLETE][2] +3 other tests incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arls-6/igt@gem_exec_parallel@engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-arls-6/igt@gem_exec_parallel@engines.html

  * igt@gem_sync@basic-all:
    - bat-twl-2:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-twl-2/igt@gem_sync@basic-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-2/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live:
    - bat-adlp-9:         [PASS][5] -> [INCOMPLETE][6] +1 other test incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-adlp-9/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-adlp-9/igt@i915_selftest@live.html
    - bat-arls-5:         [PASS][7] -> [INCOMPLETE][8] +1 other test incomplete
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arls-5/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-dg1-7:          [PASS][9] -> [INCOMPLETE][10] +1 other test incomplete
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg1-7/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg1-7/igt@i915_selftest@live@gem_contexts.html
    - bat-twl-1:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-twl-1/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-1/igt@i915_selftest@live@gem_contexts.html
    - bat-rplp-1:         [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-rplp-1/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-rplp-1/igt@i915_selftest@live@gem_contexts.html
    - bat-adlp-11:        [PASS][15] -> [ABORT][16] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-adlp-11/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-adlp-11/igt@i915_selftest@live@gem_contexts.html
    - bat-dg1-6:          [PASS][17] -> [INCOMPLETE][18] +1 other test incomplete
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg1-6/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg1-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-dg2-9:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-9/igt@i915_selftest@live@gt_timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-9/igt@i915_selftest@live@gt_timelines.html
    - bat-adlp-6:         [PASS][21] -> [INCOMPLETE][22] +1 other test incomplete
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-adlp-6/igt@i915_selftest@live@gt_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-adlp-6/igt@i915_selftest@live@gt_timelines.html
    - bat-twl-2:          [PASS][23] -> [TIMEOUT][24] +1 other test timeout
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-twl-2/igt@i915_selftest@live@gt_timelines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-2/igt@i915_selftest@live@gt_timelines.html
    - bat-dg2-11:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-11/igt@i915_selftest@live@gt_timelines.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-11/igt@i915_selftest@live@gt_timelines.html
    - bat-dg2-14:         [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-14/igt@i915_selftest@live@gt_timelines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-14/igt@i915_selftest@live@gt_timelines.html
    - bat-atsm-1:         [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-atsm-1/igt@i915_selftest@live@gt_timelines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-atsm-1/igt@i915_selftest@live@gt_timelines.html
    - bat-mtlp-9:         [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-9/igt@i915_selftest@live@gt_timelines.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-9/igt@i915_selftest@live@gt_timelines.html
    - bat-mtlp-8:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-8/igt@i915_selftest@live@gt_timelines.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-8/igt@i915_selftest@live@gt_timelines.html
    - bat-dg2-8:          [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html
    - bat-arlh-3:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arlh-3/igt@i915_selftest@live@gt_timelines.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-arlh-3/igt@i915_selftest@live@gt_timelines.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-dg2-8:          [ABORT][39] ([i915#14429]) -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-8/igt@i915_selftest@live.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-dg2-9:          [DMESG-FAIL][41] ([i915#12061]) -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-9/igt@i915_selftest@live.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-9/igt@i915_selftest@live.html
    - bat-dg2-11:         [DMESG-FAIL][43] ([i915#12061]) -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-11/igt@i915_selftest@live.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-11/igt@i915_selftest@live.html
    - bat-atsm-1:         [DMESG-FAIL][45] ([i915#12061] / [i915#13929]) -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-atsm-1/igt@i915_selftest@live.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-atsm-1/igt@i915_selftest@live.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16703 and Patchwork_150275v1:

### New IGT tests (1) ###

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-7:
    - Statuses : 1 pass(s)
    - Exec time: [0.68] s

  

Known issues
------------

  Here are the changes found in Patchwork_150275v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - bat-twl-2:          NOTRUN -> [INCOMPLETE][47] ([i915#12904]) +1 other test incomplete
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][48] -> [INCOMPLETE][49] ([i915#14393])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-8/igt@i915_selftest@live.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][50] -> [INCOMPLETE][51] ([i915#14096])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-twl-1/igt@i915_selftest@live.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-mtlp-9:         [PASS][52] -> [INCOMPLETE][53] ([i915#14402])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-9/igt@i915_selftest@live.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-9/igt@i915_selftest@live.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [DMESG-WARN][54] ([i915#13494]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-9/igt@i915_module_load@load.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [DMESG-FAIL][56] ([i915#12061]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         [DMESG-FAIL][58] ([i915#12061]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [DMESG-FAIL][60] ([i915#12061]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [DMESG-FAIL][62] ([i915#14243]) -> [INCOMPLETE][63] ([i915#14393])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arlh-3/igt@i915_selftest@live.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-arlh-3/igt@i915_selftest@live.html
    - bat-dg2-14:         [DMESG-FAIL][64] ([i915#12061]) -> [INCOMPLETE][65] ([i915#14393])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-14/igt@i915_selftest@live.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-14/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14096]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243
  [i915#14393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14393
  [i915#14402]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14402
  [i915#14429]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14429


Build changes
-------------

  * Linux: CI_DRM_16703 -> Patchwork_150275v1

  CI-20190529: 20190529
  CI_DRM_16703: 4d016d6e602638e0ebc3895331224e057508c07a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8411: d5b5d2bb4f8795a98ea58376a128b74f654b7ec1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_150275v1: 4d016d6e602638e0ebc3895331224e057508c07a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/index.html

--===============5451722729963160189==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Enable CT_DEAD output in regular debug builds</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/150275/">https://patchwork.freedesktop.org/series/150275/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16703 -&gt; Patchwork_150275v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_150275v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_150275v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Missing    (2): bat-arlh-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_150275v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arls-6/igt@gem_exec_parallel@engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-arls-6/igt@gem_exec_parallel@engines.html">INCOMPLETE</a> +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-twl-2/igt@gem_sync@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-2/igt@gem_sync@basic-all.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-adlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-adlp-9/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arls-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-arls-5/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg1-7/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg1-7/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-twl-1/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-rplp-1/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-rplp-1/igt@i915_selftest@live@gem_contexts.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-adlp-11/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-adlp-11/igt@i915_selftest@live@gem_contexts.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg1-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg1-6/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-9/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-9/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-adlp-6/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-adlp-6/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> +1 other test incomplete</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-twl-2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-2/igt@i915_selftest@live@gt_timelines.html">TIMEOUT</a> +1 other test timeout</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-11/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-11/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-14/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-14/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-atsm-1/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-atsm-1/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-9/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-9/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-8/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-8/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-8/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arlh-3/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-arlh-3/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14429">i915#14429</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-8/igt@i915_selftest@live.html">INCOMPLETE</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-9/igt@i915_selftest@live.html">INCOMPLETE</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-11/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-11/igt@i915_selftest@live.html">INCOMPLETE</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16703 and Patchwork_150275v1:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-7:<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.68] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_150275v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-8/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14393">i915#14393</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-twl-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096">i915#14096</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-9/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-9/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14402">i915#14402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14393">i915#14393</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16703/bat-dg2-14/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150275v1/bat-dg2-14/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14393">i915#14393</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16703 -&gt; Patchwork_150275v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16703: 4d016d6e602638e0ebc3895331224e057508c07a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8411: d5b5d2bb4f8795a98ea58376a128b74f654b7ec1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_150275v1: 4d016d6e602638e0ebc3895331224e057508c07a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5451722729963160189==--
