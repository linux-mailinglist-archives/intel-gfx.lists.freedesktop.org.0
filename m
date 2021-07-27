Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5ED3D70BF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 10:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC9A6E9D5;
	Tue, 27 Jul 2021 08:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9CF176E876;
 Tue, 27 Jul 2021 08:02:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95765A8832;
 Tue, 27 Jul 2021 08:02:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 27 Jul 2021 08:02:46 -0000
Message-ID: <162737296658.18665.2787155874930613964@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/28=5D_drm/i915/display=3A_remove_P?=
 =?utf-8?q?ORT=5FF_workaround_for_CNL?=
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
Content-Type: multipart/mixed; boundary="===============0255948869=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0255948869==
Content-Type: multipart/alternative;
 boundary="===============1782106778204934843=="

--===============1782106778204934843==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,01/28] drm/i915/display: remove PORT_F workaround for CNL
URL   : https://patchwork.freedesktop.org/series/93056/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10399 -> Patchwork_20713
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/index.html

Known issues
------------

  Here are the changes found in Patchwork_20713 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2] ([i915#3194])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][3] -> [FAIL][4] ([i915#1888])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +48 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][6] ([i915#1602] / [i915#2029])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [INCOMPLETE][7] ([i915#299]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10399 -> Patchwork_20713

  CI-20190529: 20190529
  CI_DRM_10399: 669037414c99bf454019d7e2497fe29995e31e61 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6151: c3170c2d3744521b8351a4b9c579792bc9a5f835 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20713: f12c2ebdf907dd009bc6310516ca98e3ba14c8d8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f12c2ebdf907 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER
78303adaa154 drm/i915: replace random CNL comments
3a0814c0a9f4 drm/i915: rename/remove CNL registers
0916dd775911 drm/i915: remove GRAPHICS_VER == 10
544b72f54be6 drm/i915: finish removal of CNL
e65974c74595 drm/i915/gt: rename CNL references in intel_engine.h
765c88769c02 drm/i915: rename CNL references in intel_dram.c
98f26f380fc4 drm/i915/gt: remove explicit CNL handling from intel_sseu.c
87f4dc291f49 drm/i915: remove explicit CNL handling from intel_wopcm.c
708e28316b93 drm/i915: remove explicit CNL handling from intel_pch.c
4541a36b1fa9 drm/i915: remove explicit CNL handling from intel_mocs.c
58364762cb69 drm/i915: remove explicit CNL handling from intel_pm.c
68fcd2f1f506 drm/i915: remove explicit CNL handling from i915_irq.c
506c792c86b3 drm/i915/display: rename CNL references in skl_scaler.c
8df58456158c drm/i915/display: remove CNL ddi buf translation tables
222000469bb1 drm/i915/display: remove explicit CNL handling from intel_display_power.c
4f34aa14a702 drm/i915/display: remove explicit CNL handling from skl_universal_plane.c
98fa787acbd9 drm/i915/display: remove explicit CNL handling from intel_vdsc.c
6e7cf4e004f5 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
dc12f36ad994 drm/i915/display: remove explicit CNL handling from intel_dp.c
e8d98b29fd9d drm/i915/display: remove explicit CNL handling from intel_dmc.c
ce0001293c11 drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c
40cbd5fc3c1d drm/i915/display: remove explicit CNL handling from intel_ddi.c
015b23d3e34e drm/i915/display: remove explicit CNL handling from intel_crtc.c
16b255a7143e drm/i915/display: remove explicit CNL handling from intel_combo_phy.c
6011233fbc7e drm/i915/display: remove explicit CNL handling from intel_color.c
2237799b400a drm/i915/display: remove explicit CNL handling from intel_cdclk.c
84aa6c05f713 drm/i915/display: remove PORT_F workaround for CNL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/index.html

--===============1782106778204934843==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,01/28] drm/i915/display: remove PORT_F workaround for CNL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93056/">https://patchwork.freedesktop.org/series/93056/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10399 -&gt; Patchwork_20713</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20713 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10399/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20713/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-dpms@a-dsi1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10399 -&gt; Patchwork_20713</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10399: 669037414c99bf454019d7e2497fe29995e31e61 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6151: c3170c2d3744521b8351a4b9c579792bc9a5f835 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20713: f12c2ebdf907dd009bc6310516ca98e3ba14c8d8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f12c2ebdf907 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER<br />
78303adaa154 drm/i915: replace random CNL comments<br />
3a0814c0a9f4 drm/i915: rename/remove CNL registers<br />
0916dd775911 drm/i915: remove GRAPHICS_VER == 10<br />
544b72f54be6 drm/i915: finish removal of CNL<br />
e65974c74595 drm/i915/gt: rename CNL references in intel_engine.h<br />
765c88769c02 drm/i915: rename CNL references in intel_dram.c<br />
98f26f380fc4 drm/i915/gt: remove explicit CNL handling from intel_sseu.c<br />
87f4dc291f49 drm/i915: remove explicit CNL handling from intel_wopcm.c<br />
708e28316b93 drm/i915: remove explicit CNL handling from intel_pch.c<br />
4541a36b1fa9 drm/i915: remove explicit CNL handling from intel_mocs.c<br />
58364762cb69 drm/i915: remove explicit CNL handling from intel_pm.c<br />
68fcd2f1f506 drm/i915: remove explicit CNL handling from i915_irq.c<br />
506c792c86b3 drm/i915/display: rename CNL references in skl_scaler.c<br />
8df58456158c drm/i915/display: remove CNL ddi buf translation tables<br />
222000469bb1 drm/i915/display: remove explicit CNL handling from intel_display_power.c<br />
4f34aa14a702 drm/i915/display: remove explicit CNL handling from skl_universal_plane.c<br />
98fa787acbd9 drm/i915/display: remove explicit CNL handling from intel_vdsc.c<br />
6e7cf4e004f5 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c<br />
dc12f36ad994 drm/i915/display: remove explicit CNL handling from intel_dp.c<br />
e8d98b29fd9d drm/i915/display: remove explicit CNL handling from intel_dmc.c<br />
ce0001293c11 drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c<br />
40cbd5fc3c1d drm/i915/display: remove explicit CNL handling from intel_ddi.c<br />
015b23d3e34e drm/i915/display: remove explicit CNL handling from intel_crtc.c<br />
16b255a7143e drm/i915/display: remove explicit CNL handling from intel_combo_phy.c<br />
6011233fbc7e drm/i915/display: remove explicit CNL handling from intel_color.c<br />
2237799b400a drm/i915/display: remove explicit CNL handling from intel_cdclk.c<br />
84aa6c05f713 drm/i915/display: remove PORT_F workaround for CNL</p>

</body>
</html>

--===============1782106778204934843==--

--===============0255948869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0255948869==--
