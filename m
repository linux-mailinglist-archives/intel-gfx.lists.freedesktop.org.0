Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ED43D4429
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 03:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD25B6F967;
	Sat, 24 Jul 2021 01:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52C866EB97;
 Sat, 24 Jul 2021 01:10:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B447A0099;
 Sat, 24 Jul 2021 01:10:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 24 Jul 2021 01:10:42 -0000
Message-ID: <162708904228.10881.12623002086065606344@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
In-Reply-To: <20210724001114.249295-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVt?=
 =?utf-8?q?ove_CNL_support?=
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
Content-Type: multipart/mixed; boundary="===============1783854735=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1783854735==
Content-Type: multipart/alternative;
 boundary="===============3577040385330586165=="

--===============3577040385330586165==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Remove CNL support
URL   : https://patchwork.freedesktop.org/series/92969/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10383 -> Patchwork_20701
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/index.html

Known issues
------------

  Here are the changes found in Patchwork_20701 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][3] ([i915#579])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][4] -> [INCOMPLETE][5] ([i915#2782] / [i915#2940])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][6] ([i915#1886] / [i915#2291])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#533])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][9] ([fdo#109271] / [i915#1436])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [INCOMPLETE][10] ([i915#155]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][12] ([i915#1888]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [DMESG-WARN][14] ([i915#2867]) -> [PASS][15] +12 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (43 -> 36)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10383 -> Patchwork_20701

  CI-20190529: 20190529
  CI_DRM_10383: cc4f843734cc8a22416dc00f84f4841d93c75e42 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20701: 67e1ddc639702dd40528bcd4edee281174c47a7b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

67e1ddc63970 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER
3c6ba298796c drm/i915: replace random CNL comments
83a3a03bfc68 drm/i915: rename/remove CNL registers
11866a4c25c7 drm/i915: remove GRAPHICS_VER == 10
85aa4acee2d7 drm/i915: finish removal of CNL
c96bee68580b drm/i915/gt: rename CNL references in intel_engine.h
0d714eb77ee5 drm/i915: rename CNL references in intel_dram.c
33da770b8bf4 drm/i915/gt: remove explicit CNL handling from intel_sseu.c
4a321e62dc67 drm/i915: remove explicit CNL handling from intel_wopcm.c
a0e2f6ca543f drm/i915: remove explicit CNL handling from intel_pch.c
8a8d2696ed73 drm/i915: remove explicit CNL handling from intel_mocs.c
b058b944fc94 drm/i915: remove explicit CNL handling from intel_pm.c
071a58d392be drm/i915: remove explicit CNL handling from i915_irq.c
828ec76c74ef drm/i915/display: rename CNL references in skl_scaler.c
633e7f1a81a8 drm/i915/display: remove CNL ddi buf translation tables
b32eaf8c4d7e drm/i915/display: remove explicit CNL handling from intel_display_power.c
dd5b184d9cb7 drm/i915/display: remove explicit CNL handling from skl_universal_plane.c
819a20382c15 drm/i915/display: remove explicit CNL handling from intel_vdsc.c
f5c60701839b drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
dee4fc5073cd drm/i915/display: remove explicit CNL handling from intel_dp.c
10405420ea13 drm/i915/display: remove explicit CNL handling from intel_dmc.c
76af756baae1 drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c
7f8343b9406f drm/i915/display: remove explicit CNL handling from intel_ddi.c
9e5d5cfb2392 drm/i915/display: remove explicit CNL handling from intel_crtc.c
6ab58693b2da drm/i915/display: remove explicit CNL handling from intel_combo_phy.c
7bd00018c7aa drm/i915/display: remove explicit CNL handling from intel_color.c
8d7b56c07e9b drm/i915/display: remove explicit CNL handling from intel_cdclk.c
c099818fef38 drm/i915/display: remove PORT_F workaround for CNL
91073b079293 drm/i915/display: split DISPLAY_VER 9 and 10 in intel_setup_outputs()
e27adf09b131 drm/i915: fix not reading DSC disable fuse in GLK

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/index.html

--===============3577040385330586165==
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
<tr><td><b>Series:</b></td><td>Remove CNL support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92969/">https://patchwork.freedesktop.org/series/92969/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10383 -&gt; Patchwork_20701</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20701 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 36)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10383 -&gt; Patchwork_20701</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10383: cc4f843734cc8a22416dc00f84f4841d93c75e42 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20701: 67e1ddc639702dd40528bcd4edee281174c47a7b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>67e1ddc63970 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER<br />
3c6ba298796c drm/i915: replace random CNL comments<br />
83a3a03bfc68 drm/i915: rename/remove CNL registers<br />
11866a4c25c7 drm/i915: remove GRAPHICS_VER == 10<br />
85aa4acee2d7 drm/i915: finish removal of CNL<br />
c96bee68580b drm/i915/gt: rename CNL references in intel_engine.h<br />
0d714eb77ee5 drm/i915: rename CNL references in intel_dram.c<br />
33da770b8bf4 drm/i915/gt: remove explicit CNL handling from intel_sseu.c<br />
4a321e62dc67 drm/i915: remove explicit CNL handling from intel_wopcm.c<br />
a0e2f6ca543f drm/i915: remove explicit CNL handling from intel_pch.c<br />
8a8d2696ed73 drm/i915: remove explicit CNL handling from intel_mocs.c<br />
b058b944fc94 drm/i915: remove explicit CNL handling from intel_pm.c<br />
071a58d392be drm/i915: remove explicit CNL handling from i915_irq.c<br />
828ec76c74ef drm/i915/display: rename CNL references in skl_scaler.c<br />
633e7f1a81a8 drm/i915/display: remove CNL ddi buf translation tables<br />
b32eaf8c4d7e drm/i915/display: remove explicit CNL handling from intel_display_power.c<br />
dd5b184d9cb7 drm/i915/display: remove explicit CNL handling from skl_universal_plane.c<br />
819a20382c15 drm/i915/display: remove explicit CNL handling from intel_vdsc.c<br />
f5c60701839b drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c<br />
dee4fc5073cd drm/i915/display: remove explicit CNL handling from intel_dp.c<br />
10405420ea13 drm/i915/display: remove explicit CNL handling from intel_dmc.c<br />
76af756baae1 drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c<br />
7f8343b9406f drm/i915/display: remove explicit CNL handling from intel_ddi.c<br />
9e5d5cfb2392 drm/i915/display: remove explicit CNL handling from intel_crtc.c<br />
6ab58693b2da drm/i915/display: remove explicit CNL handling from intel_combo_phy.c<br />
7bd00018c7aa drm/i915/display: remove explicit CNL handling from intel_color.c<br />
8d7b56c07e9b drm/i915/display: remove explicit CNL handling from intel_cdclk.c<br />
c099818fef38 drm/i915/display: remove PORT_F workaround for CNL<br />
91073b079293 drm/i915/display: split DISPLAY_VER 9 and 10 in intel_setup_outputs()<br />
e27adf09b131 drm/i915: fix not reading DSC disable fuse in GLK</p>

</body>
</html>

--===============3577040385330586165==--

--===============1783854735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1783854735==--
