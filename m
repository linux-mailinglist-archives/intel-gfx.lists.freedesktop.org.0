Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DBA2645FC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 14:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A937A6E935;
	Thu, 10 Sep 2020 12:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38BFA6E926;
 Thu, 10 Sep 2020 12:28:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B1B7A0BCB;
 Thu, 10 Sep 2020 12:28:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 10 Sep 2020 12:28:00 -0000
Message-ID: <159974088017.26636.1178124046594745575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200910111225.2184193-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200910111225.2184193-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_slightly_botched_merge_in_=5F=5Freloc=5Fentry=5Fgp?=
 =?utf-8?q?u?=
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
Content-Type: multipart/mixed; boundary="===============0721926163=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0721926163==
Content-Type: multipart/alternative;
 boundary="===============1944408214234607565=="

--===============1944408214234607565==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix slightly botched merge in __reloc_entry_gpu
URL   : https://patchwork.freedesktop.org/series/81549/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8994 -> Patchwork_18468
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/index.html

Known issues
------------

  Here are the changes found in Patchwork_18468 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][1] ([i915#2417]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [INCOMPLETE][3] ([i915#2439]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-tgl-y:           [INCOMPLETE][5] ([i915#2439]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-tgl-y/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-tgl-y/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8109u:       [INCOMPLETE][7] ([i915#2439]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
    - fi-icl-y:           [INCOMPLETE][9] ([i915#2439]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-kbl-r:           [INCOMPLETE][11] ([i915#2439]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-r/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-r/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [INCOMPLETE][13] ([i915#2439]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         [INCOMPLETE][15] ([i915#2439]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-guc/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770:        [INCOMPLETE][17] ([i915#2439]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         [INCOMPLETE][19] ([i915#2439]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [INCOMPLETE][21] ([i915#2439]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8700k:       [INCOMPLETE][23] ([i915#2439]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
    - fi-ivb-3770:        [INCOMPLETE][25] ([i915#2439]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-ivb-3770/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [INCOMPLETE][27] ([i915#2439]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-cml-s:           [INCOMPLETE][29] ([i915#2439]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cml-s/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [INCOMPLETE][31] ([i915#2439]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-tgl-u2:          [INCOMPLETE][33] ([i915#2439]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-tgl-u2/igt@gem_exec_gttfill@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-tgl-u2/igt@gem_exec_gttfill@basic.html
    - {fi-ehl-1}:         [INCOMPLETE][35] ([CI#80] / [i915#2439]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-bdw-gvtdvm:      [INCOMPLETE][37] ([i915#2439]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@basic.html
    - fi-glk-dsi:         [INCOMPLETE][39] ([i915#2439]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html
    - fi-apl-guc:         [INCOMPLETE][41] ([i915#1635] / [i915#2439]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html
    - {fi-tgl-dsi}:       [INCOMPLETE][43] ([i915#2439]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-tgl-dsi/igt@gem_exec_parallel@engines@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-tgl-dsi/igt@gem_exec_parallel@engines@basic.html
    - fi-skl-6600u:       [INCOMPLETE][45] ([i915#2439]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-6600u/igt@gem_exec_parallel@engines@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-skl-6600u/igt@gem_exec_parallel@engines@basic.html
    - fi-kbl-7500u:       [INCOMPLETE][47] ([i915#2439]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-7500u/igt@gem_exec_parallel@engines@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-7500u/igt@gem_exec_parallel@engines@basic.html
    - fi-skl-lmem:        [INCOMPLETE][49] ([i915#2439]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-lmem/igt@gem_exec_parallel@engines@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-skl-lmem/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-kbl-soraka:      [INCOMPLETE][51] ([i915#2439]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-soraka/igt@gem_exec_parallel@engines@contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-soraka/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-gdg-551:         [INCOMPLETE][53] ([i915#172] / [i915#2439]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-gdg-551/igt@gem_tiled_fence_blits@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-gdg-551/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-bsw-nick:        [INCOMPLETE][55] ([i915#2439]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2600:        [INCOMPLETE][57] ([i915#2439] / [i915#82]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [INCOMPLETE][59] ([i915#2439]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-elk-e7500:       [INCOMPLETE][61] ([i915#2440] / [i915#66]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-u2:          [FAIL][63] ([i915#2439]) -> [FAIL][64] ([i915#2045] / [i915#2439])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-tgl-u2/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-tgl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2440]: https://gitlab.freedesktop.org/drm/intel/issues/2440
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (43 -> 39)
------------------------------

  Additional (1): fi-bxt-dsi 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8994 -> Patchwork_18468

  CI-20190529: 20190529
  CI_DRM_8994: a68dfd41a60420d306dcc452c6c8ee2fb7c97b21 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5780: 9c5dfeb0338d7f98ad998663a595eab71ea887f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18468: 3920ee5ddfb91758d2360266f5e095f7d292f303 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3920ee5ddfb9 drm/i915: Fix slightly botched merge in __reloc_entry_gpu

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/index.html

--===============1944408214234607565==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix slightly botched merge in __reloc_entry_gpu</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81549/">https://patchwork.freedesktop.org/series/81549/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8994 -&gt; Patchwork_18468</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18468 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-tgl-y/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-tgl-y/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-icl-y/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-icl-y/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-r/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-r/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-guc/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-skl-guc/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-hsw-4770/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-hsw-4770/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-guc/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-guc/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cml-u2/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cml-u2/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-ivb-3770/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-ivb-3770/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-icl-u2/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-icl-u2/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cml-s/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cml-s/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-cfl-guc/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-cfl-guc/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-tgl-u2/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-tgl-u2/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-ehl-1/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-ehl-1/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-tgl-dsi/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-tgl-dsi/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-6600u/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-skl-6600u/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-7500u/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-7500u/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-skl-lmem/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-skl-lmem/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-kbl-soraka/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-kbl-soraka/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-gdg-551/igt@gem_tiled_fence_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-gdg-551/igt@gem_tiled_fence_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2440">i915#2440</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/66">i915#66</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8994/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18468/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2045">i915#2045</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Additional (1): fi-bxt-dsi <br />
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8994 -&gt; Patchwork_18468</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8994: a68dfd41a60420d306dcc452c6c8ee2fb7c97b21 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5780: 9c5dfeb0338d7f98ad998663a595eab71ea887f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18468: 3920ee5ddfb91758d2360266f5e095f7d292f303 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3920ee5ddfb9 drm/i915: Fix slightly botched merge in __reloc_entry_gpu</p>

</body>
</html>

--===============1944408214234607565==--

--===============0721926163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0721926163==--
