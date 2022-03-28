Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2414E9AC6
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 17:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCCE610ECC0;
	Mon, 28 Mar 2022 15:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B46310ECB8;
 Mon, 28 Mar 2022 15:13:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37472A0078;
 Mon, 28 Mar 2022 15:13:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7598969843333308976=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 28 Mar 2022 15:13:20 -0000
Message-ID: <164848040022.2847.16736478987138440833@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1648458971.git.jani.nikula@intel.com>
In-Reply-To: <cover.1648458971.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_constify_EDID_parsing=2C_with_some_fixes?=
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

--===============7598969843333308976==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: constify EDID parsing, with some fixes
URL   : https://patchwork.freedesktop.org/series/101862/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11411 -> Patchwork_22694
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/index.html

Participating hosts (42 -> 41)
------------------------------

  Additional (1): fi-bwr-2160 
  Missing    (2): fi-bsw-cyan shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22694 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-elk-e7500:       NOTRUN -> [INCOMPLETE][1] ([i915#5441])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html
    - fi-ilk-650:         NOTRUN -> [INCOMPLETE][2] ([i915#5441])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-guc:         NOTRUN -> [INCOMPLETE][3] ([i915#1982] / [i915#5441])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][4] ([i915#1373] / [i915#5441])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-1115g4:      [PASS][5] -> [INCOMPLETE][6] ([i915#1373] / [i915#5441])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bwr-2160:        NOTRUN -> [SKIP][7] ([fdo#109271]) +19 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bwr-2160/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_render_tiled_blits@basic:
    - fi-bsw-n3050:       [PASS][8] -> [INCOMPLETE][9] ([i915#5441])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
    - fi-bsw-nick:        [PASS][10] -> [INCOMPLETE][11] ([i915#5441])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html
    - fi-kbl-7567u:       [PASS][12] -> [INCOMPLETE][13] ([i915#5441])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-kbl-7567u/igt@gem_render_tiled_blits@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-7567u/igt@gem_render_tiled_blits@basic.html
    - fi-kbl-7500u:       [PASS][14] -> [INCOMPLETE][15] ([i915#5441])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-kbl-7500u/igt@gem_render_tiled_blits@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-7500u/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-bwr-2160:        NOTRUN -> [INCOMPLETE][16] ([i915#5441])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bwr-2160/igt@gem_tiled_blits@basic.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][19] ([fdo#109271]) +26 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-cfl-guc:         NOTRUN -> [SKIP][21] ([fdo#109271]) +9 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-elk-e7500:       NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#5341])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-ilk-650:         NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#5341])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#533])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#533])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-ilk-650:         NOTRUN -> [SKIP][26] ([fdo#109271]) +14 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][27] ([fdo#109271]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@runner@aborted:
    - fi-bwr-2160:        NOTRUN -> [FAIL][28] ([i915#4312])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bwr-2160/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][29] ([i915#4312])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-jsl-2}:        [INCOMPLETE][30] ([i915#1373] / [i915#5441]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/bat-jsl-2/igt@core_hotunplug@unbind-rebind.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/bat-jsl-2/igt@core_hotunplug@unbind-rebind.html
    - {fi-adl-ddr5}:      [INCOMPLETE][32] ([i915#5441]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_linear_blits@basic:
    - fi-ilk-650:         [INCOMPLETE][34] ([i915#5441]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-ilk-650/igt@gem_render_linear_blits@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@gem_render_linear_blits@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-kbl-soraka:      [INCOMPLETE][36] ([i915#5441]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-elk-e7500:       [INCOMPLETE][38] ([i915#5441]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-elk-e7500/igt@gem_tiled_blits@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-elk-e7500/igt@gem_tiled_blits@basic.html
    - fi-cfl-guc:         [INCOMPLETE][40] ([i915#5441]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-cfl-guc/igt@gem_tiled_blits@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@gem_tiled_blits@basic.html
    - {fi-jsl-1}:         [INCOMPLETE][42] ([i915#5441]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-jsl-1/igt@gem_tiled_blits@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-jsl-1/igt@gem_tiled_blits@basic.html
    - {bat-adlp-6}:       [INCOMPLETE][44] ([i915#5441]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/bat-adlp-6/igt@gem_tiled_blits@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/bat-adlp-6/igt@gem_tiled_blits@basic.html
    - {fi-hsw-g3258}:     [INCOMPLETE][46] ([i915#5441]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-hsw-g3258/igt@gem_tiled_blits@basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-hsw-g3258/igt@gem_tiled_blits@basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-nick:        [FAIL][48] ([i915#4312]) -> [FAIL][49] ([i915#3428] / [i915#4312])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-bsw-nick/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bsw-nick/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][50] ([i915#4312]) -> [FAIL][51] ([i915#3428] / [i915#4312])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-bsw-n3050/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bsw-n3050/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5195]: https://gitlab.freedesktop.org/drm/intel/issues/5195
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5441]: https://gitlab.freedesktop.org/drm/intel/issues/5441


Build changes
-------------

  * Linux: CI_DRM_11411 -> Patchwork_22694

  CI-20190529: 20190529
  CI_DRM_11411: 584d45d16f9118c67c850a748b34a6470fa28db4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6395: 9cba01635ccbce91e9205f68b8d540805d45c11f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22694: d6ab774d4fc69952bac086fc3dee6d41d924b2d3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d6ab774d4fc6 drm/edid: add more general struct edid constness in the interfaces
f608edfef2f9 drm/edid: constify struct edid passed around in callbacks and closure
faeac16dc413 drm/edid: constify struct edid passed to detailed blocks
271e3f746308 drm/edid: constify struct detailed_timing in parsing callbacks
d473eb44a5b1 drm/edid: constify struct detailed_timing in lower level parsing
069531d80950 drm/edid: use struct detailed_data_monitor_range member access in gtf2 functions
6162fbd4b286 drm/edid: use struct detailed_timing member access in is_rb()
a750f4974472 drm/edid: pass a timing pointer to is_display_descriptor()
c3676edd8bb4 drm/edid: slightly restructure timing and non-timing descriptor structs
29064813a1c5 drm/edid: fix reduced blanking support check
6bf277e7683e drm/edid: don't modify EDID while parsing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/index.html

--===============7598969843333308976==
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
<tr><td><b>Series:</b></td><td>drm/edid: constify EDID parsing, with some fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101862/">https://patchwork.freedesktop.org/series/101862/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11411 -&gt; Patchwork_22694</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/index.html</p>
<h2>Participating hosts (42 -&gt; 41)</h2>
<p>Additional (1): fi-bwr-2160 <br />
  Missing    (2): fi-bsw-cyan shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22694 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-elk-e7500/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bwr-2160/igt@gem_exec_suspend@basic-s3.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-kbl-7567u/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-7567u/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-kbl-7500u/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-7500u/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bwr-2160/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/bat-jsl-2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/bat-jsl-2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>{fi-adl-ddr5}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-ilk-650/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-ilk-650/igt@gem_render_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-elk-e7500/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-elk-e7500/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-cfl-guc/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-cfl-guc/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-jsl-1/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-jsl-1/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/bat-adlp-6/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/bat-adlp-6/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-hsw-g3258}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-hsw-g3258/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-hsw-g3258/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11411/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22694/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11411 -&gt; Patchwork_22694</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11411: 584d45d16f9118c67c850a748b34a6470fa28db4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6395: 9cba01635ccbce91e9205f68b8d540805d45c11f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22694: d6ab774d4fc69952bac086fc3dee6d41d924b2d3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d6ab774d4fc6 drm/edid: add more general struct edid constness in the interfaces<br />
f608edfef2f9 drm/edid: constify struct edid passed around in callbacks and closure<br />
faeac16dc413 drm/edid: constify struct edid passed to detailed blocks<br />
271e3f746308 drm/edid: constify struct detailed_timing in parsing callbacks<br />
d473eb44a5b1 drm/edid: constify struct detailed_timing in lower level parsing<br />
069531d80950 drm/edid: use struct detailed_data_monitor_range member access in gtf2 functions<br />
6162fbd4b286 drm/edid: use struct detailed_timing member access in is_rb()<br />
a750f4974472 drm/edid: pass a timing pointer to is_display_descriptor()<br />
c3676edd8bb4 drm/edid: slightly restructure timing and non-timing descriptor structs<br />
29064813a1c5 drm/edid: fix reduced blanking support check<br />
6bf277e7683e drm/edid: don't modify EDID while parsing</p>

</body>
</html>

--===============7598969843333308976==--
