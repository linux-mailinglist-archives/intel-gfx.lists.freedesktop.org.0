Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1EE8A9CAE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 16:20:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05889113CEC;
	Thu, 18 Apr 2024 14:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E8C113CEC;
 Thu, 18 Apr 2024 14:20:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1155223353986791451=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/audio=3A_Fix_audio?=
 =?utf-8?q?_time_stamp_programming_for_DP?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Apr 2024 14:20:18 -0000
Message-ID: <171345001814.1501117.12916913292230437038@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240418132915.4157957-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240418132915.4157957-1-chaitanya.kumar.borah@intel.com>
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

--===============1155223353986791451==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/audio: Fix audio time stamp programming for DP
URL   : https://patchwork.freedesktop.org/series/132602/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14602 -> Patchwork_132602v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132602v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132602v1, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (3): fi-bsw-n3050 bat-jsl-1 bat-arls-3 
  Missing    (3): fi-glk-j4005 bat-mtlp-8 bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132602v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@flip:
    - fi-bsw-n3050:       NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-bsw-n3050/igt@kms_busy@basic@flip.html
    - fi-pnv-d510:        [PASS][2] -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-pnv-d510/igt@kms_busy@basic@flip.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-pnv-d510/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - fi-ivb-3770:        [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-ivb-3770/igt@kms_busy@basic@modeset.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-ivb-3770/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-apl-guc:         [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-jsl-1:          NOTRUN -> [INCOMPLETE][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - fi-tgl-1115g4:      [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-vga1:
    - fi-elk-e7500:       NOTRUN -> [INCOMPLETE][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-arls-4}:       NOTRUN -> [ABORT][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - {bat-rpls-4}:       NOTRUN -> [ABORT][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - {bat-rpls-4}:       NOTRUN -> [DMESG-WARN][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14602 and Patchwork_132602v1:

### New IGT tests (2) ###

  * igt@gem_close_race:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_basic:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_132602v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-kbl-x1275:       [PASS][15] -> [INCOMPLETE][16] ([i915#2295])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-kbl-x1275/igt@core_auth@basic-auth.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-x1275/igt@core_auth@basic-auth.html

  * igt@debugfs_test@basic-hwmon:
    - bat-jsl-1:          NOTRUN -> [SKIP][17] ([i915#9318])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
    - bat-arls-3:         NOTRUN -> [SKIP][18] ([i915#9318])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - fi-kbl-guc:         NOTRUN -> [SKIP][19] +4 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-guc/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-kbl-guc:         NOTRUN -> [SKIP][20] ([i915#1849])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-guc/igt@fbdev@info.html

  * igt@gem_close_race@basic-threads:
    - fi-kbl-guc:         NOTRUN -> [ABORT][21] ([i915#10875])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-1:          NOTRUN -> [SKIP][22] ([i915#2190])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap@basic:
    - bat-arls-3:         NOTRUN -> [SKIP][23] ([i915#4083])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arls-3:         NOTRUN -> [SKIP][24] ([i915#10197] / [i915#10211] / [i915#4079])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][25] +5 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-bsw-n3050/igt@gem_tiled_blits@basic.html
    - bat-arls-3:         NOTRUN -> [SKIP][26] ([i915#10196] / [i915#4077]) +2 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-3:         NOTRUN -> [SKIP][27] ([i915#10206] / [i915#4079])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@gem_tiled_pread_basic.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-arls-3:         NOTRUN -> [SKIP][28] ([i915#10200]) +9 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_busy@basic@modeset:
    - fi-bsw-n3050:       NOTRUN -> [DMESG-WARN][29] ([i915#10875])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-bsw-n3050/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-adln-1:         NOTRUN -> [SKIP][30] ([i915#4213]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - bat-arls-3:         NOTRUN -> [SKIP][31] ([i915#10202]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-14:         NOTRUN -> [SKIP][32] ([i915#4103] / [i915#4213]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-jsl-1:          NOTRUN -> [SKIP][33] ([i915#4103]) +1 other test skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-arls-3:         NOTRUN -> [ABORT][34] ([i915#10875])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-dg2-14:         NOTRUN -> [DMESG-WARN][35] ([i915#10875])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-dg2-14/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - fi-elk-e7500:       NOTRUN -> [SKIP][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-elk-e7500/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          NOTRUN -> [SKIP][37] ([i915#3555] / [i915#9886])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - fi-kbl-guc:         [ABORT][38] ([i915#10875]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-kbl-guc/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-guc/igt@i915_module_load@load.html

  * igt@kms_busy@basic@modeset:
    - {bat-rpls-4}:       [ABORT][40] ([i915#10875]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-rpls-4/igt@kms_busy@basic@modeset.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-rpls-4/igt@kms_busy@basic@modeset.html
    - bat-dg2-14:         [DMESG-WARN][42] ([i915#10875]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-dg2-14/igt@kms_busy@basic@modeset.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-dg2-14/igt@kms_busy@basic@modeset.html
    - {bat-mtlp-9}:       [ABORT][44] ([i915#10875]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-arls-4}:       [ABORT][46] ([i915#10875]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-cfl-8109u:       [INCOMPLETE][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-kbl-2:          [INCOMPLETE][50] -> [INCOMPLETE][51] ([i915#10875])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-kbl-2/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-kbl-2/igt@i915_module_load@load.html

  * igt@kms_busy@basic@modeset:
    - fi-pnv-d510:        [ABORT][52] ([i915#10875]) -> [SKIP][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-pnv-d510/igt@kms_busy@basic@modeset.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-pnv-d510/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/intel/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10875]: https://gitlab.freedesktop.org/drm/intel/issues/10875
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14602 -> Patchwork_132602v1

  CI-20190529: 20190529
  CI_DRM_14602: 4eddedf2b31be4f2280a7c42966eaf9b6cb251a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7812: 7812
  Patchwork_132602v1: 4eddedf2b31be4f2280a7c42966eaf9b6cb251a8 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/index.html

--===============1155223353986791451==
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
<tr><td><b>Series:</b></td><td>drm/i915/audio: Fix audio time stamp programming for DP</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132602/">https://patchwork.freedesktop.org/series/132602/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14602 -&gt; Patchwork_132602v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132602v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132602v1, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (3): fi-bsw-n3050 bat-jsl-1 bat-arls-3 <br />
  Missing    (3): fi-glk-j4005 bat-mtlp-8 bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132602v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-bsw-n3050/igt@kms_busy@basic@flip.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-pnv-d510/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-pnv-d510/igt@kms_busy@basic@flip.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-ivb-3770/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-ivb-3770/igt@kms_busy@basic@modeset.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-vga1:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-arls-4}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp1:</p>
<ul>
<li>{bat-rpls-4}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>{bat-rpls-4}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14602 and Patchwork_132602v1:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@gem_close_race:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132602v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-kbl-x1275/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-x1275/igt@core_auth@basic-auth.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-guc/igt@fbdev@eof.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-guc/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-guc/igt@gem_close_race@basic-threads.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-bsw-n3050/igt@gem_tiled_blits@basic.html">SKIP</a> +5 other tests skip</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10200">i915#10200</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-bsw-n3050/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-adln-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10202">i915#10202</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-dg2-14/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-elk-e7500/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-kbl-guc/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-kbl-guc/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-rpls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-rpls-4/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-rpls-4/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-dg2-14/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-dg2-14/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-mtlp-9/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-arls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/bat-kbl-2/igt@i915_module_load@load.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/bat-kbl-2/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14602/fi-pnv-d510/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132602v1/fi-pnv-d510/igt@kms_busy@basic@modeset.html">SKIP</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14602 -&gt; Patchwork_132602v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14602: 4eddedf2b31be4f2280a7c42966eaf9b6cb251a8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7812: 7812<br />
  Patchwork_132602v1: 4eddedf2b31be4f2280a7c42966eaf9b6cb251a8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1155223353986791451==--
