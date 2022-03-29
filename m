Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6F44EA5C0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 05:10:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89DFD10E196;
	Tue, 29 Mar 2022 03:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F29A910E18A;
 Tue, 29 Mar 2022 03:10:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE4FEAADDC;
 Tue, 29 Mar 2022 03:10:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8349673709295493832=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 29 Mar 2022 03:10:44 -0000
Message-ID: <164852344493.5797.32936272422410292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220329000822.1323195-1-matthew.d.roper@intel.com>
In-Reply-To: <20220329000822.1323195-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/ats-m=3A_add_ATS-M_platfor?=
 =?utf-8?q?m_info?=
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

--===============8349673709295493832==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/ats-m: add ATS-M platform info
URL   : https://patchwork.freedesktop.org/series/101907/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11415 -> Patchwork_22711
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/index.html

Participating hosts (44 -> 32)
------------------------------

  Missing    (12): fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_22711 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][1] ([i915#5441])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-WARN][3] ([i915#1982] / [i915#262])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  * igt@gem_render_linear_blits@basic:
    - fi-bsw-kefka:       [PASS][4] -> [INCOMPLETE][5] ([i915#5441])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-bsw-kefka/igt@gem_render_linear_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bsw-kefka/igt@gem_render_linear_blits@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-kbl-soraka:      [PASS][6] -> [INCOMPLETE][7] ([i915#5441])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][8] ([i915#5441])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
    - fi-kbl-7567u:       [PASS][9] -> [INCOMPLETE][10] ([i915#5441])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-7567u/igt@gem_render_tiled_blits@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-7567u/igt@gem_render_tiled_blits@basic.html
    - fi-kbl-guc:         [PASS][11] -> [INCOMPLETE][12] ([i915#5441])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-cfl-guc:         [PASS][13] -> [INCOMPLETE][14] ([i915#1982] / [i915#5441])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-cfl-guc/igt@gem_tiled_blits@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-cfl-guc/igt@gem_tiled_blits@basic.html
    - fi-cfl-8109u:       [PASS][15] -> [INCOMPLETE][16] ([i915#5441])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
    - fi-kbl-8809g:       [PASS][17] -> [INCOMPLETE][18] ([i915#5441])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
    - fi-bwr-2160:        [PASS][19] -> [INCOMPLETE][20] ([i915#5441])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-bwr-2160/igt@gem_tiled_blits@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bwr-2160/igt@gem_tiled_blits@basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3012])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-blb-e6850:       NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#5341])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-blb-e6850:       NOTRUN -> [SKIP][24] ([fdo#109271]) +47 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#533])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-hsw-4770:        NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1072]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-hsw-4770:        NOTRUN -> [SKIP][27] ([fdo#109271]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bwr-2160:        NOTRUN -> [FAIL][28] ([i915#4312])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][29] ([i915#4312])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_render_linear_blits@basic:
    - fi-bsw-n3050:       [INCOMPLETE][30] ([i915#5441]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-bsw-n3050/igt@gem_render_linear_blits@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bsw-n3050/igt@gem_render_linear_blits@basic.html
    - {fi-tgl-dsi}:       [INCOMPLETE][32] ([i915#5441]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-tgl-dsi/igt@gem_render_linear_blits@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-tgl-dsi/igt@gem_render_linear_blits@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-blb-e6850:       [INCOMPLETE][34] ([i915#5441]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-hsw-4770:        [INCOMPLETE][36] ([i915#5441]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-hsw-4770/igt@gem_tiled_blits@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@gem_tiled_blits@basic.html
    - {fi-ehl-2}:         [INCOMPLETE][38] ([i915#5441]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-ehl-2/igt@gem_tiled_blits@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-ehl-2/igt@gem_tiled_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - {fi-jsl-1}:         [DMESG-WARN][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-jsl-1/igt@i915_pm_rps@basic-api.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-jsl-1/igt@i915_pm_rps@basic-api.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-n3050:       [FAIL][42] ([i915#4312]) -> [FAIL][43] ([i915#3428] / [i915#4312])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-bsw-n3050/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bsw-n3050/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5441]: https://gitlab.freedesktop.org/drm/intel/issues/5441


Build changes
-------------

  * Linux: CI_DRM_11415 -> Patchwork_22711

  CI-20190529: 20190529
  CI_DRM_11415: a7a8e278572965d6f5e66a31b64b96b07f94551f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6399: 9ba6cb16f04319226383b57975db203561c75781 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22711: aa5b9f1e59760af9f8831fc0554dfea0d9516e6a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

aa5b9f1e5976 topic/core-for-CI: Add ATS-M PCI IDs
c04b9a2f4ad0 drm/i915/ats-m: add ATS-M platform info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/index.html

--===============8349673709295493832==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/ats-m: add ATS-M platform info</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101907/">https://patchwork.freedesktop.org/series/101907/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11415 -&gt; Patchwork_22711</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/index.html</p>
<h2>Participating hosts (44 -&gt; 32)</h2>
<p>Missing    (12): fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22711 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-bsw-kefka/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bsw-kefka/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-soraka/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-7567u/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-7567u/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-cfl-guc/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-cfl-guc/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-bwr-2160/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bwr-2160/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +47 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-bsw-n3050/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bsw-n3050/igt@gem_render_linear_blits@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-tgl-dsi/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-tgl-dsi/igt@gem_render_linear_blits@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-blb-e6850/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-hsw-4770/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-hsw-4770/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-ehl-2/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-ehl-2/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-jsl-1/igt@i915_pm_rps@basic-api.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-jsl-1/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11415 -&gt; Patchwork_22711</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11415: a7a8e278572965d6f5e66a31b64b96b07f94551f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6399: 9ba6cb16f04319226383b57975db203561c75781 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22711: aa5b9f1e59760af9f8831fc0554dfea0d9516e6a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>aa5b9f1e5976 topic/core-for-CI: Add ATS-M PCI IDs<br />
c04b9a2f4ad0 drm/i915/ats-m: add ATS-M platform info</p>

</body>
</html>

--===============8349673709295493832==--
