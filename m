Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EF84BAEA9
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 01:47:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46C810E932;
	Fri, 18 Feb 2022 00:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9880D10E931;
 Fri, 18 Feb 2022 00:47:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 954D3A0BCB;
 Fri, 18 Feb 2022 00:47:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4940699120302833389=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Fri, 18 Feb 2022 00:47:19 -0000
Message-ID: <164514523957.25450.792272922375157938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220217152248.1016134-1-alexander.usyskin@intel.com>
In-Reply-To: <20220217152248.1016134-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_driver_for_GSC_controller_=28rev9=29?=
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

--===============4940699120302833389==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add driver for GSC controller (rev9)
URL   : https://patchwork.freedesktop.org/series/98066/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11243 -> Patchwork_22318
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/index.html

Participating hosts (43 -> 41)
------------------------------

  Additional (1): fi-snb-2600 
  Missing    (3): fi-bsw-cyan bat-jsl-2 shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22318 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html
    - fi-rkl-guc:         NOTRUN -> [SKIP][2] ([fdo#109315]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-skl-6600u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][6] -> [DMESG-FAIL][7] ([i915#4494] / [i915#4957])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][8] -> [DMESG-FAIL][9] ([i915#5026])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][10] ([fdo#109271]) +41 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][13] ([fdo#109271]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6600u:       NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#533])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][15] ([i915#4838])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][16] ([i915#2426] / [i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-bdw-5557u/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][17] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [INCOMPLETE][18] ([i915#4547]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][20] ([fdo#109271]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-guc:         [DMESG-FAIL][22] ([i915#2291] / [i915#541]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][24] ([i915#3303]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [DMESG-FAIL][26] ([i915#2927] / [i915#3428]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [INCOMPLETE][28] -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][30] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][31] ([i915#4957])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4838]: https://gitlab.freedesktop.org/drm/intel/issues/4838
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11243 -> Patchwork_22318

  CI-20190529: 20190529
  CI_DRM_11243: 304f9bcfce40fe3adb92232bdb91bc01b22f9689 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22318: e6a2fd91d60ce8f67eee0d46f0e5cd0531b1c509 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e6a2fd91d60c mei: gsc: retrieve the firmware version
a2c4c46bcaa5 mei: gsc: add runtime pm handlers
0769e0dc0e87 mei: gsc: setup char driver alive in spite of firmware handshake failure
85bba7a3f97b mei: add support for graphics system controller (gsc) devices
a7e6a826a5df drm/i915/gsc: add gsc as a mei auxiliary device

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/index.html

--===============4940699120302833389==
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
<tr><td><b>Series:</b></td><td>Add driver for GSC controller (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98066/">https://patchwork.freedesktop.org/series/98066/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11243 -&gt; Patchwork_22318</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Additional (1): fi-snb-2600 <br />
  Missing    (3): fi-bsw-cyan bat-jsl-2 shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22318 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4838">i915#4838</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11243 -&gt; Patchwork_22318</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11243: 304f9bcfce40fe3adb92232bdb91bc01b22f9689 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6347: 37ea4c86f97c0e05fcb6b04cff72ec927930536e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22318: e6a2fd91d60ce8f67eee0d46f0e5cd0531b1c509 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e6a2fd91d60c mei: gsc: retrieve the firmware version<br />
a2c4c46bcaa5 mei: gsc: add runtime pm handlers<br />
0769e0dc0e87 mei: gsc: setup char driver alive in spite of firmware handshake failure<br />
85bba7a3f97b mei: add support for graphics system controller (gsc) devices<br />
a7e6a826a5df drm/i915/gsc: add gsc as a mei auxiliary device</p>

</body>
</html>

--===============4940699120302833389==--
