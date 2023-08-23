Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DAC78625B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 23:30:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE2C10E0F5;
	Wed, 23 Aug 2023 21:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8104610E0F5;
 Wed, 23 Aug 2023 21:30:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7919AAADD8;
 Wed, 23 Aug 2023 21:30:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5644895502823604584=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Wed, 23 Aug 2023 21:30:12 -0000
Message-ID: <169282621246.16629.10600801933579420666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXBw?=
 =?utf-8?q?ly_Wa=5F16018031267_/_Wa=5F16018063123_=28rev2=29?=
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

--===============5644895502823604584==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Apply Wa_16018031267 / Wa_16018063123 (rev2)
URL   : https://patchwork.freedesktop.org/series/122804/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13554 -> Patchwork_122804v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_122804v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122804v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_122804v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-dg2-11:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg2-11/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg2-11/igt@i915_module_load@load.html
    - bat-atsm-1:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-atsm-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-atsm-1/igt@i915_module_load@load.html
    - bat-dg2-9:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg2-9/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg2-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg1-5:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg1-5/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg1-5/igt@i915_selftest@live@gt_lrc.html
    - fi-rkl-11600:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/fi-rkl-11600/igt@i915_selftest@live@gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/fi-rkl-11600/igt@i915_selftest@live@gt_lrc.html
    - bat-mtlp-8:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-mtlp-8/igt@i915_selftest@live@gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-mtlp-8/igt@i915_selftest@live@gt_lrc.html
    - bat-adlm-1:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html
    - fi-tgl-1115g4:      [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html
    - bat-rpls-1:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-rpls-1/igt@i915_selftest@live@gt_lrc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-rpls-1/igt@i915_selftest@live@gt_lrc.html
    - bat-mtlp-6:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-mtlp-6/igt@i915_selftest@live@gt_lrc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-mtlp-6/igt@i915_selftest@live@gt_lrc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-13}:       [DMESG-WARN][21] ([i915#8879]) -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg2-13/igt@i915_module_load@load.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg2-13/igt@i915_module_load@load.html
    - {bat-dg2-14}:       [DMESG-WARN][23] ([i915#8879]) -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg2-14/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg2-14/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_122804v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlp-9:         [PASS][25] -> [DMESG-FAIL][26] ([i915#7913])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html
    - bat-adls-5:         [PASS][27] -> [DMESG-FAIL][28] ([i915#7913])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-adls-5/igt@i915_selftest@live@gt_lrc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-adls-5/igt@i915_selftest@live@gt_lrc.html
    - bat-rpls-2:         [PASS][29] -> [DMESG-FAIL][30] ([i915#7913])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][31] -> [ABORT][32] ([i915#8442] / [i915#8668])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [DMESG-FAIL][33] ([i915#7699] / [i915#7913]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-adlp-9/igt@i915_selftest@live@migrate.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879


Build changes
-------------

  * Linux: CI_DRM_13554 -> Patchwork_122804v2

  CI-20190529: 20190529
  CI_DRM_13554: 5d0f4dd3b47afb5b95c4f61ae5fe55735bb57300 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122804v2: 5d0f4dd3b47afb5b95c4f61ae5fe55735bb57300 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ba5f075212f1 drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123
8ce59f4ba8f0 drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/index.html

--===============5644895502823604584==
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
<tr><td><b>Series:</b></td><td>Apply Wa_16018031267 / Wa_16018063123 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122804/">https://patchwork.freedesktop.org/series/122804/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13554 -&gt; Patchwork_122804v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_122804v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122804v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_122804v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-atsm-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-atsm-1/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg2-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg2-9/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg1-5/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg1-5/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/fi-rkl-11600/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/fi-rkl-11600/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-mtlp-8/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-mtlp-8/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-rpls-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-rpls-1/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-mtlp-6/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-mtlp-6/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></p>
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
<p>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg2-13/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8879">i915#8879</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg2-13/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-dg2-14/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8879">i915#8879</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-dg2-14/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122804v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-adls-5/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-adls-5/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-rpls-2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13554/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122804v2/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13554 -&gt; Patchwork_122804v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13554: 5d0f4dd3b47afb5b95c4f61ae5fe55735bb57300 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7451: 5d48d1fb231f449fe2f80cda14ea7a1ecfda59fa @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122804v2: 5d0f4dd3b47afb5b95c4f61ae5fe55735bb57300 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ba5f075212f1 drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123<br />
8ce59f4ba8f0 drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123</p>

</body>
</html>

--===============5644895502823604584==--
