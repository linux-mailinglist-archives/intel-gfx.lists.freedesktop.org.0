Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A88768A9F9D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 18:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF62113D8D;
	Thu, 18 Apr 2024 16:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F26113D8C;
 Thu, 18 Apr 2024 16:08:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6188212682519989143=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/dmc=3A_firmware_pa?=
 =?utf-8?q?th_handling_changes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Apr 2024 16:08:53 -0000
Message-ID: <171345653322.1501117.2113099715715805835@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1713450693.git.jani.nikula@intel.com>
In-Reply-To: <cover.1713450693.git.jani.nikula@intel.com>
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

--===============6188212682519989143==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: firmware path handling changes
URL   : https://patchwork.freedesktop.org/series/132609/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14603 -> Patchwork_132609v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132609v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132609v1, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/index.html

Participating hosts (38 -> 39)
------------------------------

  Additional (4): fi-kbl-7567u bat-kbl-2 bat-mtlp-6 bat-arls-3 
  Missing    (3): bat-dg1-7 fi-cfl-8109u fi-elk-e7500 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132609v1:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - bat-atsm-1:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-atsm-1/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_parallel@engines@contexts:
    - bat-arls-2:         [PASS][2] -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-arls-2/igt@gem_exec_parallel@engines@contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-2/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_exec_parallel@engines@fds:
    - bat-arls-2:         [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-arls-2/igt@gem_exec_parallel@engines@fds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-2/igt@gem_exec_parallel@engines@fds.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-kbl-7567u:       NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - fi-tgl-1115g4:      [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_132609v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-kbl-x1275:       NOTRUN -> [INCOMPLETE][9] ([i915#2295])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-x1275/igt@core_auth@basic-auth.html

  * igt@debugfs_test@basic-hwmon:
    - bat-arls-3:         NOTRUN -> [SKIP][10] ([i915#9318])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@debugfs_test@basic-hwmon.html
    - bat-mtlp-6:         NOTRUN -> [SKIP][11] ([i915#9318])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-mtlp-6:         NOTRUN -> [SKIP][12] ([i915#1849] / [i915#2582])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-6/igt@fbdev@info.html

  * igt@fbdev@write:
    - bat-mtlp-6:         NOTRUN -> [SKIP][13] ([i915#2582]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-6/igt@fbdev@write.html

  * igt@gem_busy@busy@all-engines:
    - fi-kbl-8809g:       [PASS][14] -> [ABORT][15] ([i915#10875])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-kbl-8809g/igt@gem_busy@busy@all-engines.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-8809g/igt@gem_busy@busy@all-engines.html

  * igt@gem_close_race@basic-process:
    - bat-mtlp-6:         NOTRUN -> [DMESG-WARN][16] ([i915#10875])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-6/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - bat-dg2-9:          NOTRUN -> [DMESG-WARN][17] ([i915#10875])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-9/igt@gem_close_race@basic-threads.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][18] ([i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap@basic:
    - bat-arls-3:         NOTRUN -> [SKIP][19] ([i915#4083])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@gem_mmap@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-arls-3:         NOTRUN -> [SKIP][20] ([i915#10197] / [i915#10211] / [i915#4079])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-arls-3:         NOTRUN -> [SKIP][21] ([i915#10196] / [i915#4077]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-arls-3:         NOTRUN -> [SKIP][22] ([i915#10206] / [i915#4079])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@load:
    - bat-kbl-2:          NOTRUN -> [INCOMPLETE][23] ([i915#10877])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-kbl-2/igt@i915_module_load@load.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - bat-arls-3:         NOTRUN -> [SKIP][24] ([i915#10200]) +9 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_busy@basic@modeset:
    - fi-cfl-guc:         [PASS][25] -> [INCOMPLETE][26] ([i915#10056])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-arls-3:         NOTRUN -> [SKIP][27] ([i915#10202]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-arls-3:         NOTRUN -> [ABORT][28] ([i915#10875])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][29] +3 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-process:
    - bat-dg2-9:          [DMESG-WARN][30] ([i915#10875]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-dg2-9/igt@gem_close_race@basic-process.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-9/igt@gem_close_race@basic-process.html

  * igt@i915_module_load@load:
    - bat-dg2-13:         [INCOMPLETE][32] ([i915#10875]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-dg2-13/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-13/igt@i915_module_load@load.html
    - bat-atsm-1:         [INCOMPLETE][34] ([i915#10875]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-atsm-1/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-atsm-1/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - {bat-mtlp-9}:       [ABORT][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-mtlp-9/igt@kms_busy@basic@flip.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-9/igt@kms_busy@basic@flip.html
    - fi-pnv-d510:        [ABORT][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-pnv-d510/igt@kms_busy@basic@flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-pnv-d510/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-adlp-9:         [DMESG-WARN][40] ([i915#10875]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-adlp-9/igt@kms_busy@basic@modeset.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-adlp-9/igt@kms_busy@basic@modeset.html
    - {bat-mtlp-9}:       [DMESG-WARN][42] -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-mtlp-9/igt@kms_busy@basic@modeset.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-apl-guc:         [INCOMPLETE][44] -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-dg2-8:          [INCOMPLETE][46] ([i915#10875] / [i915#10877]) -> [INCOMPLETE][47] ([i915#10877])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-dg2-8/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-8/igt@i915_module_load@load.html

  * igt@kms_busy@basic@modeset:
    - fi-pnv-d510:        [SKIP][48] -> [ABORT][49] ([i915#10875])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-pnv-d510/igt@kms_busy@basic@modeset.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-pnv-d510/igt@kms_busy@basic@modeset.html
    - bat-dg2-14:         [DMESG-WARN][50] ([i915#10875]) -> [INCOMPLETE][51] ([i915#10056] / [i915#10875])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-dg2-14/igt@kms_busy@basic@modeset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-14/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10056]: https://gitlab.freedesktop.org/drm/intel/issues/10056
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/intel/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10875]: https://gitlab.freedesktop.org/drm/intel/issues/10875
  [i915#10877]: https://gitlab.freedesktop.org/drm/intel/issues/10877
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318


Build changes
-------------

  * Linux: CI_DRM_14603 -> Patchwork_132609v1

  CI-20190529: 20190529
  CI_DRM_14603: 610019be3a56c982044361759f6ed366ae99a2a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7813: 66841b7d9024447be4f4f5449aaf4f021e6323e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132609v1: 610019be3a56c982044361759f6ed366ae99a2a1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/index.html

--===============6188212682519989143==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: firmware path handling changes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132609/">https://patchwork.freedesktop.org/series/132609/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14603 -&gt; Patchwork_132609v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132609v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132609v1, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/index.html</p>
<h2>Participating hosts (38 -&gt; 39)</h2>
<p>Additional (4): fi-kbl-7567u bat-kbl-2 bat-mtlp-6 bat-arls-3 <br />
  Missing    (3): bat-dg1-7 fi-cfl-8109u fi-elk-e7500 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132609v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-atsm-1/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-arls-2/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-2/igt@gem_exec_parallel@engines@contexts.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-arls-2/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-2/igt@gem_exec_parallel@engines@fds.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132609v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-x1275/igt@core_auth@basic-auth.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-6/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-6/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy@all-engines:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-kbl-8809g/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-8809g/igt@gem_busy@busy@all-engines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-6/igt@gem_close_race@basic-process.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-9/igt@gem_close_race@basic-threads.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10197">i915#10197</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10211">i915#10211</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10196">i915#10196</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10206">i915#10206</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-kbl-2/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10877">i915#10877</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10200">i915#10200</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-cfl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10202">i915#10202</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-arls-3/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-dg2-9/igt@gem_close_race@basic-process.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-9/igt@gem_close_race@basic-process.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-dg2-13/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-13/igt@i915_module_load@load.html">PASS</a></li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-atsm-1/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-atsm-1/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-mtlp-9/igt@kms_busy@basic@flip.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-9/igt@kms_busy@basic@flip.html">PASS</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-pnv-d510/igt@kms_busy@basic@flip.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-pnv-d510/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-adlp-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-adlp-9/igt@kms_busy@basic@modeset.html">PASS</a></li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-mtlp-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-mtlp-9/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10877">i915#10877</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-8/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10877">i915#10877</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/fi-pnv-d510/igt@kms_busy@basic@modeset.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/fi-pnv-d510/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14603/bat-dg2-14/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132609v1/bat-dg2-14/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14603 -&gt; Patchwork_132609v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14603: 610019be3a56c982044361759f6ed366ae99a2a1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7813: 66841b7d9024447be4f4f5449aaf4f021e6323e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132609v1: 610019be3a56c982044361759f6ed366ae99a2a1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6188212682519989143==--
