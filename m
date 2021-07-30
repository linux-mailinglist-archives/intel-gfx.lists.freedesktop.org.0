Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FDC3DB040
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 02:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B496EEA0;
	Fri, 30 Jul 2021 00:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EFAF6E209;
 Fri, 30 Jul 2021 00:28:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 882BEA73C7;
 Fri, 30 Jul 2021 00:28:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 30 Jul 2021 00:28:29 -0000
Message-ID: <162760490953.583.11611945168000828331@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVt?=
 =?utf-8?q?ove_CNL_-_for_drm-intel-next_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0641385562=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0641385562==
Content-Type: multipart/alternative;
 boundary="===============1669957083703491452=="

--===============1669957083703491452==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Remove CNL - for drm-intel-next (rev3)
URL   : https://patchwork.freedesktop.org/series/93142/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10420 -> Patchwork_20746
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/index.html

Known issues
------------

  Here are the changes found in Patchwork_20746 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +26 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][3] ([i915#579])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][4] ([i915#1886] / [i915#2291])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([i915#1372])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10420/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#533])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][9] ([i915#541]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10420/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (39 -> 33)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (7): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10420 -> Patchwork_20746

  CI-20190529: 20190529
  CI_DRM_10420: 863957775825d20952875034f22937aec4a71a23 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6158: bb1c96b29234f86cd71d9cbd019aafada9097f24 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20746: e298f2b301a7c64f1a6d36dfa4ca7d4d3b1705b4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e298f2b301a7 drm/i915: finish removal of CNL
615f1df97332 drm/i915: rename/remove CNL registers
ed92f16999c1 drm/i915: remove GRAPHICS_VER == 10
9600ecff7eb4 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER
a07dfbdfcb0a drm/i915: replace random CNL comments
dbaa66af470e drm/i915: rename CNL references in intel_dram.c
7fc19381e256 drm/i915: remove explicit CNL handling from intel_wopcm.c
408f6d7b0e34 drm/i915: remove explicit CNL handling from intel_pch.c
65bbdae36f23 drm/i915: remove explicit CNL handling from intel_pm.c
5639bec5c1d1 drm/i915: remove explicit CNL handling from i915_irq.c
0bff85fc957b drm/i915/display: rename CNL references in skl_scaler.c
5ebe54607ec6 drm/i915/display: remove CNL ddi buf translation tables
8375bd33d90a drm/i915/display: remove explicit CNL handling from intel_display_power.c
9f1057727ae9 drm/i915/display: remove explicit CNL handling from skl_universal_plane.c
39c6453f2cd8 drm/i915/display: remove explicit CNL handling from intel_vdsc.c
a92224f38fc5 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
dfbfda028423 drm/i915/display: remove explicit CNL handling from intel_dp.c
e79cc6ee2d63 drm/i915/display: remove explicit CNL handling from intel_dmc.c
85a1af136db2 drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c
5a725ae3dc2b drm/i915/display: remove explicit CNL handling from intel_ddi.c
dea51845e58f drm/i915/display: remove explicit CNL handling from intel_crtc.c
d2f939aeba7c drm/i915/display: remove explicit CNL handling from intel_combo_phy.c
e80a2e12ddc8 drm/i915/display: remove explicit CNL handling from intel_color.c
ca468dd23483 drm/i915/display: remove explicit CNL handling from intel_cdclk.c
94fd27e43bfd drm/i915/display: remove PORT_F workaround for CNL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/index.html

--===============1669957083703491452==
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
<tr><td><b>Series:</b></td><td>Remove CNL - for drm-intel-next (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93142/">https://patchwork.freedesktop.org/series/93142/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10420 -&gt; Patchwork_20746</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20746 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10420/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10420/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20746/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (7): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10420 -&gt; Patchwork_20746</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10420: 863957775825d20952875034f22937aec4a71a23 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6158: bb1c96b29234f86cd71d9cbd019aafada9097f24 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20746: e298f2b301a7c64f1a6d36dfa4ca7d4d3b1705b4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e298f2b301a7 drm/i915: finish removal of CNL<br />
615f1df97332 drm/i915: rename/remove CNL registers<br />
ed92f16999c1 drm/i915: remove GRAPHICS_VER == 10<br />
9600ecff7eb4 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER<br />
a07dfbdfcb0a drm/i915: replace random CNL comments<br />
dbaa66af470e drm/i915: rename CNL references in intel_dram.c<br />
7fc19381e256 drm/i915: remove explicit CNL handling from intel_wopcm.c<br />
408f6d7b0e34 drm/i915: remove explicit CNL handling from intel_pch.c<br />
65bbdae36f23 drm/i915: remove explicit CNL handling from intel_pm.c<br />
5639bec5c1d1 drm/i915: remove explicit CNL handling from i915_irq.c<br />
0bff85fc957b drm/i915/display: rename CNL references in skl_scaler.c<br />
5ebe54607ec6 drm/i915/display: remove CNL ddi buf translation tables<br />
8375bd33d90a drm/i915/display: remove explicit CNL handling from intel_display_power.c<br />
9f1057727ae9 drm/i915/display: remove explicit CNL handling from skl_universal_plane.c<br />
39c6453f2cd8 drm/i915/display: remove explicit CNL handling from intel_vdsc.c<br />
a92224f38fc5 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c<br />
dfbfda028423 drm/i915/display: remove explicit CNL handling from intel_dp.c<br />
e79cc6ee2d63 drm/i915/display: remove explicit CNL handling from intel_dmc.c<br />
85a1af136db2 drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c<br />
5a725ae3dc2b drm/i915/display: remove explicit CNL handling from intel_ddi.c<br />
dea51845e58f drm/i915/display: remove explicit CNL handling from intel_crtc.c<br />
d2f939aeba7c drm/i915/display: remove explicit CNL handling from intel_combo_phy.c<br />
e80a2e12ddc8 drm/i915/display: remove explicit CNL handling from intel_color.c<br />
ca468dd23483 drm/i915/display: remove explicit CNL handling from intel_cdclk.c<br />
94fd27e43bfd drm/i915/display: remove PORT_F workaround for CNL</p>

</body>
</html>

--===============1669957083703491452==--

--===============0641385562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0641385562==--
