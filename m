Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3083EF7B0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 03:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA7066E2E6;
	Wed, 18 Aug 2021 01:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D91786E2E6;
 Wed, 18 Aug 2021 01:45:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFDC3A8830;
 Wed, 18 Aug 2021 01:45:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1142729865229871896=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 01:45:49 -0000
Message-ID: <162925114984.16672.6257784506388696860@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818004216.220279-1-jose.souza@intel.com>
In-Reply-To: <20210818004216.220279-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRHJv?=
 =?utf-8?q?p_frontbuffer_rendering_support_from_Skylake_and_newer?=
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

--===============1142729865229871896==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Drop frontbuffer rendering support from Skylake and newer
URL   : https://patchwork.freedesktop.org/series/93769/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10491 -> Patchwork_20841
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20841 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20841, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20841:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-skl-guc:         [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-cfl-guc:         [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-icl-y:           [PASS][5] -> [FAIL][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-rkl-guc:         [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-skl-6700k2:      [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-skl-6700k2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-skl-6700k2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][11] -> [FAIL][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-cfl-8700k:       [PASS][13] -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-cfl-8700k/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-cfl-8700k/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-cfl-8109u:       [PASS][15] -> [FAIL][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-glk-dsi:         [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][19] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-kbl-7500u:       [PASS][20] -> [FAIL][21] +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-bxt-dsi:         [PASS][22] -> [FAIL][23] +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
    - fi-tgl-1115g4:      [PASS][24] -> [FAIL][25] +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-cml-u2:          [PASS][26] -> [FAIL][27] +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-cml-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-cml-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@coherency:
    - {fi-jsl-1}:         [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-jsl-1/igt@i915_selftest@live@coherency.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-jsl-1/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-jsl-1}:         [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-ehl-2}:         [PASS][32] -> [FAIL][33] +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - {fi-tgl-dsi}:       [PASS][34] -> [FAIL][35] +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - {fi-jsl-1}:         [PASS][36] -> [FAIL][37] +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_20841 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][38] ([fdo#109315]) +17 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#2190])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][40] ([fdo#109271]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][41] ([i915#1886] / [i915#2291])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [DMESG-WARN][44] ([i915#3925]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-ilk-650:         [DMESG-WARN][46] ([i915#164]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [INCOMPLETE][48] ([i915#155]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][50] ([i915#1888]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [DMESG-FAIL][52] ([i915#1993]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (36 -> 34)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10491 -> Patchwork_20841

  CI-20190529: 20190529
  CI_DRM_10491: efa09f306ade4b8550404d7248ac743fc0cb2c7d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20841: deb2e98252ece8cd9336dfa0e35223a0869a18c8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

deb2e98252ec drm/i915/display: Drop PSR frontbuffer rendering support
7abf1b3f8539 drm/i915/display/skl+: Drop frontbuffer rendering support
d392eb08d84c drm/i915/display: Prepare DRRS for frontbuffer rendering drop
0be6fec2e58f drm/i915/display: Share code between intel_edp_drrs_flush and invalidate
f8a34cf4d131 drm/i915/display: Some code improvements and code style fixes for DRRS
6d37b8b938ac drm/i915/display: Move DRRS code its own file
1080e192fe73 drm/i915/display: Drop PSR support from HSW and BDW
c4bc916870ba drm/damage_helper: Fix handling of cursor dirty buffers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/index.html

--===============1142729865229871896==
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
<tr><td><b>Series:</b></td><td>Drop frontbuffer rendering support from Skylake and newer</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93769/">https://patchwork.freedesktop.org/series/93769/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10491 -&gt; Patchwork_20841</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20841 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20841, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20841:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-skl-6700k2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-skl-6700k2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-cfl-8700k/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-cfl-8700k/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-cml-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-cml-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-jsl-1/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-jsl-1/igt@i915_selftest@live@coherency.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20841 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10491/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20841/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10491 -&gt; Patchwork_20841</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10491: efa09f306ade4b8550404d7248ac743fc0cb2c7d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20841: deb2e98252ece8cd9336dfa0e35223a0869a18c8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>deb2e98252ec drm/i915/display: Drop PSR frontbuffer rendering support<br />
7abf1b3f8539 drm/i915/display/skl+: Drop frontbuffer rendering support<br />
d392eb08d84c drm/i915/display: Prepare DRRS for frontbuffer rendering drop<br />
0be6fec2e58f drm/i915/display: Share code between intel_edp_drrs_flush and invalidate<br />
f8a34cf4d131 drm/i915/display: Some code improvements and code style fixes for DRRS<br />
6d37b8b938ac drm/i915/display: Move DRRS code its own file<br />
1080e192fe73 drm/i915/display: Drop PSR support from HSW and BDW<br />
c4bc916870ba drm/damage_helper: Fix handling of cursor dirty buffers</p>

</body>
</html>

--===============1142729865229871896==--
