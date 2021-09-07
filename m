Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C29C402ED3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 21:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB016E0C5;
	Tue,  7 Sep 2021 19:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D84A06E0CA;
 Tue,  7 Sep 2021 19:13:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0A09AADD5;
 Tue,  7 Sep 2021 19:13:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3452338892406925045=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 19:13:04 -0000
Message-ID: <163104198485.24492.10356353895635966353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210903221036.34770-1-jose.souza@intel.com>
In-Reply-To: <20210903221036.34770-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915/display=3A_Some_code_?=
 =?utf-8?q?improvements_and_code_style_fixes_for_DRRS_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3452338892406925045==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/3] drm/i915/display: Some code improvements and code style fixes for DRRS (rev3)
URL   : https://patchwork.freedesktop.org/series/94342/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10558 -> Patchwork_20979
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/index.html

Known issues
------------

  Here are the changes found in Patchwork_20979 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][2] ([i915#3958])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][3] ([fdo#109271]) +37 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][5] ([i915#1602] / [i915#2029])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [FAIL][6] ([i915#1888]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [DMESG-FAIL][8] ([i915#1993]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-rkl-guc:         [INCOMPLETE][10] ([i915#4034]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][12] ([i915#3303]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#4034]: https://gitlab.freedesktop.org/drm/intel/issues/4034


Participating hosts (47 -> 39)
------------------------------

  Additional (1): fi-snb-2600 
  Missing    (9): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10558 -> Patchwork_20979

  CI-20190529: 20190529
  CI_DRM_10558: 64862f208feb1857d95f2633da6b135b9c3e16cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6198: 0f17f38c3e5e2139e59f1458c149bb7a93c88bbf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20979: 2d3a02d1860a80e312c6570d312233e9d3d6c417 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2d3a02d1860a drm/i915/display: Prepare DRRS for frontbuffer rendering drop
1b6d763568a2 drm/i915/display: Share code between intel_drrs_flush and intel_drrs_invalidate
8dc157054bf4 drm/i915/display: Some code improvements and code style fixes for DRRS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/index.html

--===============3452338892406925045==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/3] drm/i915/display: Some code improvements and code style fixes for DRRS (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94342/">https://patchwork.freedesktop.org/series/94342/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10558 -&gt; Patchwork_20979</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20979 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4034">i915#4034</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-rkl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20979/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 39)</h2>
<p>Additional (1): fi-snb-2600 <br />
  Missing    (9): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10558 -&gt; Patchwork_20979</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10558: 64862f208feb1857d95f2633da6b135b9c3e16cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6198: 0f17f38c3e5e2139e59f1458c149bb7a93c88bbf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20979: 2d3a02d1860a80e312c6570d312233e9d3d6c417 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2d3a02d1860a drm/i915/display: Prepare DRRS for frontbuffer rendering drop<br />
1b6d763568a2 drm/i915/display: Share code between intel_drrs_flush and intel_drrs_invalidate<br />
8dc157054bf4 drm/i915/display: Some code improvements and code style fixes for DRRS</p>

</body>
</html>

--===============3452338892406925045==--
