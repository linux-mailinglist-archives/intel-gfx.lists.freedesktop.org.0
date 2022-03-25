Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D6B4E7A92
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 21:03:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA04610E722;
	Fri, 25 Mar 2022 20:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 39CA710E722;
 Fri, 25 Mar 2022 20:02:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35B52AADD5;
 Fri, 25 Mar 2022 20:02:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4751834624827075497=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 25 Mar 2022 20:02:55 -0000
Message-ID: <164823857518.24040.2358523092977890688@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325175839.2717499-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220325175839.2717499-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_remaining=5Ftimeout_in_intel=5Fgt=5Fretire=5Freque?=
 =?utf-8?q?sts=5Ftimeout?=
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

--===============4751834624827075497==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix remaining_timeout in intel_gt_retire_requests_timeout
URL   : https://patchwork.freedesktop.org/series/101805/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11407 -> Patchwork_22690
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22690 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22690, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/index.html

Participating hosts (46 -> 32)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (15): fi-jsl-1 fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-hsw-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 fi-skl-6700k2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22690:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-guc:         NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-glk-dsi:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_linear_blits@basic:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-pnv-d510/igt@gem_render_linear_blits@basic.html
    - fi-snb-2520m:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-snb-2520m/igt@gem_render_linear_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-snb-2520m/igt@gem_render_linear_blits@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-bsw-nick:        [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html
    - fi-kbl-7500u:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-7500u/igt@gem_render_tiled_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-7500u/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-hsw-4770:        [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-hsw-4770/igt@gem_tiled_blits@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-hsw-4770/igt@gem_tiled_blits@basic.html
    - fi-ilk-650:         NOTRUN -> [INCOMPLETE][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-ilk-650/igt@gem_tiled_blits@basic.html
    - fi-cfl-8109u:       [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
    - fi-kbl-7567u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-7567u/igt@gem_tiled_blits@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-7567u/igt@gem_tiled_blits@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_tiled_blits@basic:
    - {fi-hsw-g3258}:     [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-hsw-g3258/igt@gem_tiled_blits@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-hsw-g3258/igt@gem_tiled_blits@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_22690 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][21] ([fdo#109315])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][22] ([fdo#109315] / [i915#2575]) +16 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][23] ([i915#1373])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][24] ([fdo#109271]) +9 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@gem_render_tiled_blits@basic:
    - fi-cfl-8700k:       [PASS][25] -> [INCOMPLETE][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8700k/igt@gem_render_tiled_blits@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-8700k/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-ilk-650:         NOTRUN -> [SKIP][27] ([fdo#109271]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-ilk-650/igt@gem_softpin@allocator-basic-reserve.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-cfl-guc:         NOTRUN -> [SKIP][31] ([fdo#109271]) +9 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#533])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#533])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][34] ([fdo#109271]) +22 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][35] ([fdo#109271]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][36] ([i915#2403] / [i915#4312])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][37] ([i915#4312] / [k.org#202321])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-glk-dsi/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][38] ([i915#4312])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      [INCOMPLETE][39] ([i915#1373]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - {fi-ehl-2}:         [INCOMPLETE][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_linear_blits@basic:
    - fi-ilk-650:         [INCOMPLETE][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-ilk-650/igt@gem_render_linear_blits@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-ilk-650/igt@gem_render_linear_blits@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-kbl-soraka:      [INCOMPLETE][45] -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html
    - fi-bsw-n3050:       [INCOMPLETE][47] -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-cfl-guc:         [INCOMPLETE][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-guc/igt@gem_tiled_blits@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@gem_tiled_blits@basic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-bsw-kefka:       [FAIL][51] ([i915#2122]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-nick:        [FAIL][53] ([i915#4312]) -> [FAIL][54] ([i915#3428] / [i915#4312])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-nick/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-nick/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][55] ([i915#3428] / [i915#4312]) -> [FAIL][56] ([i915#4312])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-n3050/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11407 -> Patchwork_22690

  CI-20190529: 20190529
  CI_DRM_11407: a2fff1c90d9587c65608497d5bf5781c073bf46a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22690: 2846541256d36c3fcb989859759245e0a2f01495 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2846541256d3 drm/i915: fix remaining_timeout in intel_gt_retire_requests_timeout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/index.html

--===============4751834624827075497==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix remaining_timeout in intel_gt_retire_requests_timeout</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101805/">https://patchwork.freedesktop.org/series/101805/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11407 -&gt; Patchwork_22690</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22690 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22690, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/index.html</p>
<h2>Participating hosts (46 -&gt; 32)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (15): fi-jsl-1 fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-hsw-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 fi-skl-6700k2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22690:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-pnv-d510/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-snb-2520m/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-snb-2520m/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-7500u/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-7500u/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-hsw-4770/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-hsw-4770/igt@gem_tiled_blits@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-ilk-650/igt@gem_tiled_blits@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-7567u/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-7567u/igt@gem_tiled_blits@basic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_tiled_blits@basic:<ul>
<li>{fi-hsw-g3258}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-hsw-g3258/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-hsw-g3258/igt@gem_tiled_blits@basic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22690 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8700k/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-8700k/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-ilk-650/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
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
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-ilk-650/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-ilk-650/igt@gem_render_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-guc/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-cfl-guc/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22690/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11407 -&gt; Patchwork_22690</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11407: a2fff1c90d9587c65608497d5bf5781c073bf46a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22690: 2846541256d36c3fcb989859759245e0a2f01495 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2846541256d3 drm/i915: fix remaining_timeout in intel_gt_retire_requests_timeout</p>

</body>
</html>

--===============4751834624827075497==--
