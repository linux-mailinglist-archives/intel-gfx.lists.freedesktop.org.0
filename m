Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB25E9A49A2
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 00:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5D310E9D8;
	Fri, 18 Oct 2024 22:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C49A10E9D8;
 Fri, 18 Oct 2024 22:26:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5181987153706459023=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_FOR-CI=3A_drm/i915/guc=3A_D?=
 =?utf-8?q?isable_ct_during_GuC_reset?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhanjun Dong" <zhanjun.dong@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2024 22:26:59 -0000
Message-ID: <172929041924.1294974.14765339894171454011@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241018205519.86326-1-zhanjun.dong@intel.com>
In-Reply-To: <20241018205519.86326-1-zhanjun.dong@intel.com>
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

--===============5181987153706459023==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: FOR-CI: drm/i915/guc: Disable ct during GuC reset
URL   : https://patchwork.freedesktop.org/series/140197/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15562 -> Patchwork_140197v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140197v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140197v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140197v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-twl-2:          [PASS][1] -> [DMESG-WARN][2] +2 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@guc_hang:
    - bat-mtlp-6:         [PASS][3] -> [DMESG-WARN][4] +1 other test dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-mtlp-6/igt@i915_selftest@live@guc_hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-mtlp-6/igt@i915_selftest@live@guc_hang.html
    - bat-adlp-11:        [PASS][5] -> [DMESG-WARN][6] +2 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlp-11/igt@i915_selftest@live@guc_hang.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlp-11/igt@i915_selftest@live@guc_hang.html
    - bat-arls-2:         [PASS][7] -> [DMESG-WARN][8] +1 other test dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-2/igt@i915_selftest@live@guc_hang.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-2/igt@i915_selftest@live@guc_hang.html
    - bat-adlp-6:         [PASS][9] -> [DMESG-WARN][10] +4 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlp-6/igt@i915_selftest@live@guc_hang.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlp-6/igt@i915_selftest@live@guc_hang.html
    - bat-dg2-11:         [PASS][11] -> [DMESG-WARN][12] +1 other test dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-11/igt@i915_selftest@live@guc_hang.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-11/igt@i915_selftest@live@guc_hang.html
    - bat-dg2-14:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-14/igt@i915_selftest@live@guc_hang.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-14/igt@i915_selftest@live@guc_hang.html
    - bat-atsm-1:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-atsm-1/igt@i915_selftest@live@guc_hang.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-atsm-1/igt@i915_selftest@live@guc_hang.html
    - bat-dg2-8:          [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-8/igt@i915_selftest@live@guc_hang.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-8/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@hangcheck:
    - bat-mtlp-8:         [PASS][19] -> [DMESG-WARN][20] +2 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html
    - bat-adlm-1:         [PASS][21] -> [DMESG-WARN][22] +1 other test dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
    - bat-arls-1:         [PASS][23] -> [DMESG-WARN][24] +1 other test dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html
    - bat-twl-1:          [PASS][25] -> [DMESG-WARN][26] +1 other test dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-twl-1/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-twl-1/igt@i915_selftest@live@hangcheck.html
    - bat-arlh-2:         [PASS][27] -> [DMESG-WARN][28] +1 other test dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arlh-2/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg1-7:          [PASS][29] -> [DMESG-WARN][30] +2 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg1-7/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg1-7/igt@i915_selftest@live@workarounds.html
    - bat-adlp-9:         [PASS][31] -> [DMESG-WARN][32] +4 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlp-9/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hangcheck:
    - {bat-arlh-3}:       NOTRUN -> [DMESG-WARN][33] +1 other test dmesg-warn
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-3/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_140197v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][34] -> [DMESG-WARN][35] ([i915#10341])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-mtlp-8/igt@i915_selftest@live.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-adlm-1:         [PASS][36] -> [DMESG-WARN][37] ([i915#12133]) +1 other test dmesg-warn
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlm-1/igt@i915_selftest@live.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlm-1/igt@i915_selftest@live.html
    - bat-arls-1:         [PASS][38] -> [DMESG-WARN][39] ([i915#10341] / [i915#12133])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-1/igt@i915_selftest@live.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-1/igt@i915_selftest@live.html
    - bat-dg1-7:          [PASS][40] -> [DMESG-WARN][41] ([i915#12133])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg1-7/igt@i915_selftest@live.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg1-7/igt@i915_selftest@live.html
    - bat-twl-1:          [PASS][42] -> [DMESG-WARN][43] ([i915#12133])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-twl-1/igt@i915_selftest@live.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-arlh-2:         [PASS][44] -> [DMESG-WARN][45] ([i915#10341] / [i915#12133])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arlh-2/igt@i915_selftest@live.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-2/igt@i915_selftest@live.html
    - bat-arls-2:         [PASS][46] -> [DMESG-WARN][47] ([i915#10341] / [i915#12133])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-2/igt@i915_selftest@live.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-2/igt@i915_selftest@live.html
    - bat-mtlp-6:         [PASS][48] -> [DMESG-WARN][49] ([i915#10341])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-mtlp-6/igt@i915_selftest@live.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-mtlp-6/igt@i915_selftest@live.html
    - bat-twl-2:          [PASS][50] -> [DMESG-WARN][51] ([i915#12133])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-twl-2/igt@i915_selftest@live.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-twl-2/igt@i915_selftest@live.html
    - bat-dg2-11:         [PASS][52] -> [DMESG-WARN][53] ([i915#12133])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-11/igt@i915_selftest@live.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-11/igt@i915_selftest@live.html
    - bat-dg2-14:         [PASS][54] -> [DMESG-WARN][55] ([i915#12133])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-14/igt@i915_selftest@live.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-14/igt@i915_selftest@live.html
    - bat-atsm-1:         [PASS][56] -> [DMESG-WARN][57] ([i915#12133])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-atsm-1/igt@i915_selftest@live.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-arls-1:         [PASS][58] -> [DMESG-WARN][59] ([i915#12133])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-1/igt@i915_selftest@live@gt_mocs.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-1/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-2:         [PASS][60] -> [DMESG-WARN][61] ([i915#10341])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html
    - bat-arls-1:         [PASS][62] -> [DMESG-WARN][63] ([i915#10341])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-1/igt@i915_selftest@live@workarounds.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-1/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - {bat-arlh-3}:       [ABORT][64] ([i915#12061]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-dg2-8:          [DMESG-FAIL][66] ([i915#9500]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-8/igt@i915_selftest@live@workarounds.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-8/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-dg2-8:          [DMESG-FAIL][68] ([i915#12133] / [i915#9500]) -> [DMESG-WARN][69] ([i915#12133])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-8/igt@i915_selftest@live.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-8/igt@i915_selftest@live.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15562 -> Patchwork_140197v1

  CI-20190529: 20190529
  CI_DRM_15562: fe768c9d3f0cfbe30a1dddf3ae2319d1e04a4403 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8080: 20fcbc59241a16c84d12f4f6ba390fb46fd65a36 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140197v1: fe768c9d3f0cfbe30a1dddf3ae2319d1e04a4403 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/index.html

--===============5181987153706459023==
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
<tr><td><b>Series:</b></td><td>FOR-CI: drm/i915/guc: Disable ct during GuC reset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140197/">https://patchwork.freedesktop.org/series/140197/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15562 -&gt; Patchwork_140197v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140197v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140197v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140197v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-twl-2/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-mtlp-6/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-mtlp-6/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlp-11/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlp-11/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-2/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-2/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlp-6/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlp-6/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a> +4 other tests dmesg-warn</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-11/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-11/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-14/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-14/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-atsm-1/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-atsm-1/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-8/igt@i915_selftest@live@guc_hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-8/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-mtlp-8/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-twl-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-twl-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arlh-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg1-7/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg1-7/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +4 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{bat-arlh-3}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140197v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-adlm-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-adlm-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +1 other test dmesg-warn</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg1-7/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg1-7/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-twl-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-2/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-2/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-mtlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-mtlp-6/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-twl-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-twl-2/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-11/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-11/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-14/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-14/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-atsm-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-atsm-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-1/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-1/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arls-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-arlh-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-8/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15562/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140197v1/bat-dg2-8/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15562 -&gt; Patchwork_140197v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15562: fe768c9d3f0cfbe30a1dddf3ae2319d1e04a4403 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8080: 20fcbc59241a16c84d12f4f6ba390fb46fd65a36 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140197v1: fe768c9d3f0cfbe30a1dddf3ae2319d1e04a4403 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5181987153706459023==--
