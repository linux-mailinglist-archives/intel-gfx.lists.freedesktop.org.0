Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4330E3D7D4B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 20:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DB86EB2C;
	Tue, 27 Jul 2021 18:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 737A06E854;
 Tue, 27 Jul 2021 18:18:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6AEEFA008A;
 Tue, 27 Jul 2021 18:18:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 27 Jul 2021 18:18:20 -0000
Message-ID: <162740990043.18664.1302171531354134040@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/28=5D_drm/i915/display=3A_remove_P?=
 =?utf-8?q?ORT=5FF_workaround_for_CNL_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0111656229=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0111656229==
Content-Type: multipart/alternative;
 boundary="===============2966879840871562397=="

--===============2966879840871562397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,01/28] drm/i915/display: remove PORT_F workaround for CNL (rev2)
URL   : https://patchwork.freedesktop.org/series/93056/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10405 -> Patchwork_20719
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/index.html

Known issues
------------

  Here are the changes found in Patchwork_20719 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +25 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#579])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][4] ([i915#1888]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@migrate:
    - {fi-hsw-gt1}:       [FAIL][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/fi-hsw-gt1/igt@i915_selftest@live@migrate.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-hsw-gt1/igt@i915_selftest@live@migrate.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][8] ([i915#1372]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (41 -> 35)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10405 -> Patchwork_20719

  CI-20190529: 20190529
  CI_DRM_10405: 6db19b5e1fac016d9dffa6ce54aa21f3200c5c8d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6153: a5dffe7499a2f7189718ddf1ccf49060b7c1529d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20719: 780f9f17ba298db69780500fda0bdd7b38255a92 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

780f9f17ba29 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER
0b043f4ac3d8 drm/i915: replace random CNL comments
cd928dae0d3e drm/i915: rename/remove CNL registers
4ba93d420a70 drm/i915: remove GRAPHICS_VER == 10
4e912a6452e0 drm/i915: finish removal of CNL
7aa7558721aa drm/i915/gt: rename CNL references in intel_engine.h
6de7ed1a59e6 drm/i915: rename CNL references in intel_dram.c
80d677c2345f drm/i915/gt: remove explicit CNL handling from intel_sseu.c
393456abc7be drm/i915: remove explicit CNL handling from intel_wopcm.c
f586bf32e6ff drm/i915: remove explicit CNL handling from intel_pch.c
e17f59582390 drm/i915: remove explicit CNL handling from intel_mocs.c
1a5d634b421c drm/i915: remove explicit CNL handling from intel_pm.c
a1a4e070f933 drm/i915: remove explicit CNL handling from i915_irq.c
a81e83af78c5 drm/i915/display: rename CNL references in skl_scaler.c
8ae2070a04a2 drm/i915/display: remove CNL ddi buf translation tables
b52e50d278b9 drm/i915/display: remove explicit CNL handling from intel_display_power.c
302231afebdf drm/i915/display: remove explicit CNL handling from skl_universal_plane.c
02aea789a348 drm/i915/display: remove explicit CNL handling from intel_vdsc.c
1552f5470753 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
0933019dde76 drm/i915/display: remove explicit CNL handling from intel_dp.c
9edcd79df25c drm/i915/display: remove explicit CNL handling from intel_dmc.c
58f0263bf79d drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c
e2ad5114dd83 drm/i915/display: remove explicit CNL handling from intel_ddi.c
b0b88d826064 drm/i915/display: remove explicit CNL handling from intel_crtc.c
9cef952bf781 drm/i915/display: remove explicit CNL handling from intel_combo_phy.c
f0962a46c4db drm/i915/display: remove explicit CNL handling from intel_color.c
00ffd16fcca9 drm/i915/display: remove explicit CNL handling from intel_cdclk.c
a5e4bffd6d6f drm/i915/display: remove PORT_F workaround for CNL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/index.html

--===============2966879840871562397==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,01/28] drm/i915/display: remove PORT_F workaround for CNL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93056/">https://patchwork.freedesktop.org/series/93056/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10405 -&gt; Patchwork_20719</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20719 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/fi-hsw-gt1/igt@i915_selftest@live@migrate.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-hsw-gt1/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20719/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10405 -&gt; Patchwork_20719</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10405: 6db19b5e1fac016d9dffa6ce54aa21f3200c5c8d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6153: a5dffe7499a2f7189718ddf1ccf49060b7c1529d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20719: 780f9f17ba298db69780500fda0bdd7b38255a92 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>780f9f17ba29 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER<br />
0b043f4ac3d8 drm/i915: replace random CNL comments<br />
cd928dae0d3e drm/i915: rename/remove CNL registers<br />
4ba93d420a70 drm/i915: remove GRAPHICS_VER == 10<br />
4e912a6452e0 drm/i915: finish removal of CNL<br />
7aa7558721aa drm/i915/gt: rename CNL references in intel_engine.h<br />
6de7ed1a59e6 drm/i915: rename CNL references in intel_dram.c<br />
80d677c2345f drm/i915/gt: remove explicit CNL handling from intel_sseu.c<br />
393456abc7be drm/i915: remove explicit CNL handling from intel_wopcm.c<br />
f586bf32e6ff drm/i915: remove explicit CNL handling from intel_pch.c<br />
e17f59582390 drm/i915: remove explicit CNL handling from intel_mocs.c<br />
1a5d634b421c drm/i915: remove explicit CNL handling from intel_pm.c<br />
a1a4e070f933 drm/i915: remove explicit CNL handling from i915_irq.c<br />
a81e83af78c5 drm/i915/display: rename CNL references in skl_scaler.c<br />
8ae2070a04a2 drm/i915/display: remove CNL ddi buf translation tables<br />
b52e50d278b9 drm/i915/display: remove explicit CNL handling from intel_display_power.c<br />
302231afebdf drm/i915/display: remove explicit CNL handling from skl_universal_plane.c<br />
02aea789a348 drm/i915/display: remove explicit CNL handling from intel_vdsc.c<br />
1552f5470753 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c<br />
0933019dde76 drm/i915/display: remove explicit CNL handling from intel_dp.c<br />
9edcd79df25c drm/i915/display: remove explicit CNL handling from intel_dmc.c<br />
58f0263bf79d drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c<br />
e2ad5114dd83 drm/i915/display: remove explicit CNL handling from intel_ddi.c<br />
b0b88d826064 drm/i915/display: remove explicit CNL handling from intel_crtc.c<br />
9cef952bf781 drm/i915/display: remove explicit CNL handling from intel_combo_phy.c<br />
f0962a46c4db drm/i915/display: remove explicit CNL handling from intel_color.c<br />
00ffd16fcca9 drm/i915/display: remove explicit CNL handling from intel_cdclk.c<br />
a5e4bffd6d6f drm/i915/display: remove PORT_F workaround for CNL</p>

</body>
</html>

--===============2966879840871562397==--

--===============0111656229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0111656229==--
