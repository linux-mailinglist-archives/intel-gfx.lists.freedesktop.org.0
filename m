Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 455854EF228
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 17:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBD1210E0F4;
	Fri,  1 Apr 2022 15:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3BE9F10E0F4;
 Fri,  1 Apr 2022 15:01:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37063A66C9;
 Fri,  1 Apr 2022 15:01:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7924736334195511474=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Fri, 01 Apr 2022 15:01:16 -0000
Message-ID: <164882527618.22004.13624014960876277007@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325161140.11906-1-animesh.manna@intel.com>
In-Reply-To: <20220325161140.11906-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_modified_to_drm=5Finfo_in_dsb=5Fprepare=28=29_=28r?=
 =?utf-8?q?ev3=29?=
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

--===============7924736334195511474==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsb: modified to drm_info in dsb_prepare() (rev3)
URL   : https://patchwork.freedesktop.org/series/101723/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11407 -> Patchwork_22688
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html

Participating hosts (48 -> 47)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22688 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-adl-ddr5:        NOTRUN -> [SKIP][1] ([i915#2575]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-adl-ddr5/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-hsw-g3258:       [PASS][2] -> [INCOMPLETE][3] ([i915#5441])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-hsw-g3258/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-hsw-g3258/igt@core_hotunplug@unbind-rebind.html
    - fi-glk-dsi:         [PASS][4] -> [INCOMPLETE][5] ([i915#5441])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +9 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@gem_render_linear_blits@basic:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][7] ([i915#5441])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@gem_render_linear_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-cfl-8109u:       [PASS][8] -> [INCOMPLETE][9] ([i915#5441])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
    - fi-kbl-7567u:       [PASS][10] -> [INCOMPLETE][11] ([i915#5441])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-7567u/igt@gem_tiled_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-kbl-7567u/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          NOTRUN -> ([INCOMPLETE][12], [INCOMPLETE][13]) ([i915#4418])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-bwr-2160:        NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#5341])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-bwr-2160:        NOTRUN -> [SKIP][15] ([fdo#109271]) +45 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][16] ([i915#2403] / [i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][17] ([i915#4312] / [k.org#202321])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-glk-dsi/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][18] ([i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-adl-ddr5:        [INCOMPLETE][19] ([i915#5441]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
    - bat-dg1-6:          [INCOMPLETE][21] ([i915#5441]) -> ([PASS][22], [PASS][23])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html
    - {bat-hsw-1}:        [INCOMPLETE][24] ([i915#5441]) -> ([PASS][25], [PASS][26])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-hsw-1/igt@core_hotunplug@unbind-rebind.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-hsw-1/igt@core_hotunplug@unbind-rebind.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-hsw-1/igt@core_hotunplug@unbind-rebind.html
    - {bat-jsl-1}:        [INCOMPLETE][27] ([i915#1373]) -> ([PASS][28], [PASS][29])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_tiled_blits@basic:
    - {bat-rpls-2}:       [INCOMPLETE][30] ([i915#5441]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-rpls-2/igt@gem_render_tiled_blits@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-rpls-2/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-bwr-2160:        [INCOMPLETE][32] ([i915#5441]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bwr-2160/igt@gem_tiled_blits@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@gem_tiled_blits@basic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-bsw-kefka:       [FAIL][34] ([i915#2122]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-8700k:       [INCOMPLETE][36] ([i915#5441]) -> [INCOMPLETE][37] ([i915#1982])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_tiled_blits@basic:
    - fi-cfl-guc:         [INCOMPLETE][38] ([i915#5441]) -> [INCOMPLETE][39] ([i915#1982])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-guc/igt@gem_tiled_blits@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-guc/igt@gem_tiled_blits@basic.html

  * igt@runner@aborted:
    - bat-dg1-6:          [FAIL][40] ([i915#4312]) -> ([FAIL][41], [FAIL][42]) ([i915#4312] / [i915#5257])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-dg1-6/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342
  [i915#5414]: https://gitlab.freedesktop.org/drm/intel/issues/5414
  [i915#5441]: https://gitlab.freedesktop.org/drm/intel/issues/5441
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11407 -> Patchwork_22688

  CI-20190529: 20190529
  CI_DRM_11407: a2fff1c90d9587c65608497d5bf5781c073bf46a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22688: 5aa1c98833312737630d6b922fc8613e0dce08cc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5aa1c9883331 drm/i915/dsb: modified to drm_info in dsb_prepare()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html

--===============7924736334195511474==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsb: modified to drm_info in dsb_prepare() (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101723/">https://patchwork.freedesktop.org/series/101723/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11407 -&gt; Patchwork_22688</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/index.html</p>
<h2>Participating hosts (48 -&gt; 47)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22688 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-adl-ddr5/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-hsw-g3258/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-hsw-g3258/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-kbl-7567u/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-kbl-7567u/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
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
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">PASS</a>)</p>
</li>
<li>
<p>{bat-hsw-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-hsw-1/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-hsw-1/igt@core_hotunplug@unbind-rebind.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-hsw-1/igt@core_hotunplug@unbind-rebind.html">PASS</a>)</p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-jsl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-rpls-2/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-rpls-2/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bwr-2160/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bwr-2160/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/fi-cfl-guc/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/fi-cfl-guc/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11407/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22688/bat-dg1-6/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11407 -&gt; Patchwork_22688</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11407: a2fff1c90d9587c65608497d5bf5781c073bf46a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22688: 5aa1c98833312737630d6b922fc8613e0dce08cc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5aa1c9883331 drm/i915/dsb: modified to drm_info in dsb_prepare()</p>

</body>
</html>

--===============7924736334195511474==--
