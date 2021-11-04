Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3565445A7F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 20:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F136A6EAC9;
	Thu,  4 Nov 2021 19:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DEBD6EAA4;
 Thu,  4 Nov 2021 19:17:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 766EEAA01E;
 Thu,  4 Nov 2021 19:17:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0111270869530058896=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 04 Nov 2021 19:17:16 -0000
Message-ID: <163605343645.6351.5044061929175436943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_Prep_work_for_multiple_FBC_instances?=
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

--===============0111270869530058896==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: Prep work for multiple FBC instances
URL   : https://patchwork.freedesktop.org/series/96574/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10841 -> Patchwork_21518
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/index.html

Participating hosts (38 -> 35)
------------------------------

  Additional (2): fi-tgl-1115g4 fi-tgl-u2 
  Missing    (5): fi-bdw-5557u bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_21518 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][1] ([fdo#109315])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][2] ([fdo#109315] / [i915#2575]) +16 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][5] ([i915#1155])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][6] ([fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][7] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-u2:          NOTRUN -> [SKIP][8] ([i915#4103]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][9] ([i915#4103]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([fdo#109285])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][11] ([fdo#109285])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][12] -> [DMESG-WARN][13] ([i915#4269])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10841/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][14] ([i915#1072]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][15] ([i915#3301])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][16] ([i915#3301])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Build changes
-------------

  * Linux: CI_DRM_10841 -> Patchwork_21518

  CI-20190529: 20190529
  CI_DRM_10841: 0b3fc75369bff156eca0c3e208567e2ceb030391 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6273: 311a141910678cd981621d0c1beebb665137b49a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21518: 99847819aedceaacdb4cfe12121808d6990aa52d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

99847819aedc drm/1915/fbc: Replace plane->has_fbc with a pointer to the fbc instance
d1bb3d3caea2 drm/i915/fbc: Start passing around intel_fbc
1d79dbe56509 drm/i915/fbc: s/dev_priv/i915/
c057c12826b1 drm/i915: Relocate FBC_LLC_READ_CTRL
6b0b7ff03e2c drm/i915/fbc: Finish polishing FBC1 registers
a78d97623284 drm/i915/fbc: Clean up all register defines
32266e2be84c drm/i915/fbc: Nuke BDW_FBC_COMP_SEG_MASK
412acd0ad146 drm/i915/fbc: Introduce intel_fbc_set_false_color()
e55fd73632d8 drm/i915/fbc: Introduce .program_cfb() vfunc
02c4e4bb8f9d drm/i915/fbc: s/gen7/ivb/
991051ec457e drm/i915/fbc: Introduce .nuke() vfunc
05ce4c3071c0 drm/i915/fbc: Introduce intel_fbc_funcs
1390bd7243c3 drm/i915/fbc: Extract helpers to compute FBC control register values
b1275bed2070 drm/i915/fbc: Introduce intel_fbc_is_compressing()
fc541fc8c2a7 drm/i915/fbc: Just use params->fence_y_offset always
e1a5292108ab drm/i915/fbc: Extract {skl, glk}_fbc_program_cfb_stride()
7fa3e082ea85 drm/i915/fbc: Exract snb_fbc_program_fence()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/index.html

--===============0111270869530058896==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: Prep work for multiple FBC instances</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96574/">https://patchwork.freedesktop.org/series/96574/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10841 -&gt; Patchwork_21518</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (2): fi-tgl-1115g4 fi-tgl-u2 <br />
  Missing    (5): fi-bdw-5557u bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21518 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10841/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21518/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10841 -&gt; Patchwork_21518</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10841: 0b3fc75369bff156eca0c3e208567e2ceb030391 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6273: 311a141910678cd981621d0c1beebb665137b49a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21518: 99847819aedceaacdb4cfe12121808d6990aa52d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>99847819aedc drm/1915/fbc: Replace plane-&gt;has_fbc with a pointer to the fbc instance<br />
d1bb3d3caea2 drm/i915/fbc: Start passing around intel_fbc<br />
1d79dbe56509 drm/i915/fbc: s/dev_priv/i915/<br />
c057c12826b1 drm/i915: Relocate FBC_LLC_READ_CTRL<br />
6b0b7ff03e2c drm/i915/fbc: Finish polishing FBC1 registers<br />
a78d97623284 drm/i915/fbc: Clean up all register defines<br />
32266e2be84c drm/i915/fbc: Nuke BDW_FBC_COMP_SEG_MASK<br />
412acd0ad146 drm/i915/fbc: Introduce intel_fbc_set_false_color()<br />
e55fd73632d8 drm/i915/fbc: Introduce .program_cfb() vfunc<br />
02c4e4bb8f9d drm/i915/fbc: s/gen7/ivb/<br />
991051ec457e drm/i915/fbc: Introduce .nuke() vfunc<br />
05ce4c3071c0 drm/i915/fbc: Introduce intel_fbc_funcs<br />
1390bd7243c3 drm/i915/fbc: Extract helpers to compute FBC control register values<br />
b1275bed2070 drm/i915/fbc: Introduce intel_fbc_is_compressing()<br />
fc541fc8c2a7 drm/i915/fbc: Just use params-&gt;fence_y_offset always<br />
e1a5292108ab drm/i915/fbc: Extract {skl, glk}_fbc_program_cfb_stride()<br />
7fa3e082ea85 drm/i915/fbc: Exract snb_fbc_program_fence()</p>

</body>
</html>

--===============0111270869530058896==--
