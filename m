Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B4387F41D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 00:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A549110EC15;
	Mon, 18 Mar 2024 23:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F7F10EC15;
 Mon, 18 Mar 2024 23:37:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9069664918230728638=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm=3A_Add_plane_SIZE=5FHIN?=
 =?utf-8?q?TS_property_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Mar 2024 23:37:01 -0000
Message-ID: <171080502136.900325.14939729936122110471@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240318204408.9687-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240318204408.9687-1-ville.syrjala@linux.intel.com>
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

--===============9069664918230728638==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Add plane SIZE_HINTS property (rev6)
URL   : https://patchwork.freedesktop.org/series/113758/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14443 -> Patchwork_113758v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_113758v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_113758v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/index.html

Participating hosts (35 -> 34)
------------------------------

  Additional (2): bat-arls-4 bat-jsl-1 
  Missing    (3): bat-kbl-2 bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113758v6:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@slpc:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-arls-1/igt@i915_selftest@live@slpc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-arls-1/igt@i915_selftest@live@slpc.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14443 and Patchwork_113758v6:

### New IGT tests (23) ###

  * igt@kms_cursor_crc@cursor-size-hints:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-a-dp-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.42, 0.51] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-a-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.47] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-a-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.55, 0.56] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-a-dp-6:
    - Statuses : 1 pass(s)
    - Exec time: [1.54] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-a-edp-1:
    - Statuses : 5 pass(s)
    - Exec time: [0.66, 0.83] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-a-hdmi-a-1:
    - Statuses : 6 pass(s)
    - Exec time: [0.29, 0.74] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-a-hdmi-a-2:
    - Statuses : 3 pass(s)
    - Exec time: [0.52, 0.81] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-a-vga-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.29, 0.84] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.32] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-b-vga-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.27, 0.68] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-c-dp-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.51, 0.56] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-c-edp-1:
    - Statuses : 3 pass(s)
    - Exec time: [1.40, 1.47] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-c-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.27, 0.35] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.67] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-c-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-d-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.39] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-d-dp-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.44] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-d-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.52, 0.54] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-d-dp-6:
    - Statuses : 1 pass(s)
    - Exec time: [0.79] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-d-edp-1:
    - Statuses : 2 pass(s)
    - Exec time: [1.34, 1.40] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-d-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.23, 0.34] s

  * igt@kms_cursor_crc@cursor-size-hints@pipe-d-hdmi-a-2:
    - Statuses : 3 pass(s)
    - Exec time: [0.40, 0.67] s

  

Known issues
------------

  Here are the changes found in Patchwork_113758v6 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-cfl-8109u:       [FAIL][3] ([i915#8293]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][5] ([i915#9318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-jsl-1:          NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-arls-1:         [PASS][10] -> [DMESG-FAIL][11] ([i915#10262]) +3 other tests dmesg-fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html

  * {igt@kms_cursor_crc@cursor-size-hints} (NEW):
    - bat-dg2-8:          NOTRUN -> [SKIP][12] ([i915#9197])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-dg2-8/igt@kms_cursor_crc@cursor-size-hints.html
    - fi-kbl-guc:         NOTRUN -> [SKIP][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-kbl-guc/igt@kms_cursor_crc@cursor-size-hints.html
    - bat-adlm-1:         NOTRUN -> [SKIP][14] ([i915#9900])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-adlm-1/igt@kms_cursor_crc@cursor-size-hints.html
    - bat-dg2-9:          NOTRUN -> [SKIP][15] ([i915#9197])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-dg2-9/igt@kms_cursor_crc@cursor-size-hints.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-kbl-x1275/igt@kms_cursor_crc@cursor-size-hints.html
    - fi-kbl-8809g:       NOTRUN -> [SKIP][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-kbl-8809g/igt@kms_cursor_crc@cursor-size-hints.html
    - bat-atsm-1:         NOTRUN -> [SKIP][18] ([i915#6078])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-atsm-1/igt@kms_cursor_crc@cursor-size-hints.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          NOTRUN -> [SKIP][19] ([i915#4103]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][20] +11 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          NOTRUN -> [SKIP][21] ([i915#3555] / [i915#9886])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-1:          NOTRUN -> [SKIP][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-1:          NOTRUN -> [SKIP][23] ([i915#3555])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-apl-guc:         [ABORT][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adlp-6:         [ABORT][26] ([i915#10021]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adlp-6/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-adlp-6/igt@i915_selftest@live@hangcheck.html
    - bat-rpls-3:         [DMESG-WARN][28] ([i915#5591]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10021]: https://gitlab.freedesktop.org/drm/intel/issues/10021
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
  [i915#10262]: https://gitlab.freedesktop.org/drm/intel/issues/10262
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886
  [i915#9900]: https://gitlab.freedesktop.org/drm/intel/issues/9900


Build changes
-------------

  * IGT: IGT_7769 -> IGTPW_10848
  * Linux: CI_DRM_14443 -> Patchwork_113758v6

  CI-20190529: 20190529
  CI_DRM_14443: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_10848: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10848/index.html
  IGT_7769: 7769
  Patchwork_113758v6: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3ebe7f36efb4 drm/i915: Add SIZE_HINTS property for cursors
90a85e9601b4 drm: Introduce plane SIZE_HINTS property

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/index.html

--===============9069664918230728638==
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
<tr><td><b>Series:</b></td><td>drm: Add plane SIZE_HINTS property (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113758/">https://patchwork.freedesktop.org/series/113758/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14443 -&gt; Patchwork_113758v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_113758v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_113758v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Additional (2): bat-arls-4 bat-jsl-1 <br />
  Missing    (3): bat-kbl-2 bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113758v6:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-arls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-arls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14443 and Patchwork_113758v6:</p>
<h3>New IGT tests (23)</h3>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-a-dp-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.42, 0.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-a-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.55, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-a-dp-6:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.66, 0.83] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.29, 0.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.52, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.29, 0.84] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.27, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.51, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.40, 1.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.27, 0.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-c-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-d-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-d-dp-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.52, 0.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-d-dp-6:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.34, 1.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.23, 0.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-hints@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.40, 0.67] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113758v6 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-arls-1/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10262">i915#10262</a>) +3 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>{igt@kms_cursor_crc@cursor-size-hints} (NEW):</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-dg2-8/igt@kms_cursor_crc@cursor-size-hints.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-kbl-guc/igt@kms_cursor_crc@cursor-size-hints.html">SKIP</a></li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-adlm-1/igt@kms_cursor_crc@cursor-size-hints.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>)</li>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-dg2-9/igt@kms_cursor_crc@cursor-size-hints.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-kbl-x1275/igt@kms_cursor_crc@cursor-size-hints.html">SKIP</a></li>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-kbl-8809g/igt@kms_cursor_crc@cursor-size-hints.html">SKIP</a></li>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-atsm-1/igt@kms_cursor_crc@cursor-size-hints.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html">SKIP</a> +11 other tests skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adlp-6/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10021">i915#10021</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-adlp-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113758v6/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7769 -&gt; IGTPW_10848</li>
<li>Linux: CI_DRM_14443 -&gt; Patchwork_113758v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14443: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_10848: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10848/index.html<br />
  IGT_7769: 7769<br />
  Patchwork_113758v6: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3ebe7f36efb4 drm/i915: Add SIZE_HINTS property for cursors<br />
90a85e9601b4 drm: Introduce plane SIZE_HINTS property</p>

</body>
</html>

--===============9069664918230728638==--
