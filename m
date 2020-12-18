Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D60162DEB08
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 22:24:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24798932A;
	Fri, 18 Dec 2020 21:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F1DA8932A;
 Fri, 18 Dec 2020 21:24:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 589FDA0118;
 Fri, 18 Dec 2020 21:24:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 18 Dec 2020 21:24:47 -0000
Message-ID: <160832668733.27182.12489429056756647283@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201218184701.111857-1-jose.souza@intel.com>
In-Reply-To: <20201218184701.111857-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv9=2C1/5=5D_drm=3A_Add_function_to_convert?=
 =?utf-8?q?_rect_in_16=2E16_fixed_format_to_regular_format?=
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
Content-Type: multipart/mixed; boundary="===============1076827783=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1076827783==
Content-Type: multipart/alternative;
 boundary="===============5797212785548799393=="

--===============5797212785548799393==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v9,1/5] drm: Add function to convert rect in 16.16 fixed format to regular format
URL   : https://patchwork.freedesktop.org/series/85092/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9506 -> Patchwork_19181
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19181 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19181, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19181:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-tgl-u2:          [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
Known issues
------------

  Here are the changes found in Patchwork_19181 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-apl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-apl-guc/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#402]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-tgl-u2:          [PASS][8] -> [DMESG-WARN][9] ([i915#402])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-apl-guc:         [INCOMPLETE][12] ([i915#2750]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2750]: https://gitlab.freedesktop.org/drm/intel/issues/2750
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9506 -> Patchwork_19181

  CI-20190529: 20190529
  CI_DRM_9506: fe289d6c234d4e7ed53d0df1b7c7330f195f3689 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5910: 67b56a31dcb10a2301d818c8641b5f6b53b272e7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19181: f2e2c14d1cbc725cb3af49363a8303e86305dd4a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f2e2c14d1cbc HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing
a476ea73ddef drm/i915/display/psr: Program plane's calculated offset to plane SF register
e1037ef26961 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()
6e7dbde66422 drm/i915/display/psr: Use plane damage clips to calculate damaged area
9f59d653af13 drm: Add function to convert rect in 16.16 fixed format to regular format

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/index.html

--===============5797212785548799393==
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
<tr><td><b>Series:</b></td><td>series starting with [v9,1/5] drm: Add function to convert rect in 16.16 fixed format to regular format</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85092/">https://patchwork.freedesktop.org/series/85092/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9506 -&gt; Patchwork_19181</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19181 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19181, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19181:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19181 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-apl-guc/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@double-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-y/igt@gem_flink_basic@double-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-y/igt@gem_flink_basic@double-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2750">i915#2750</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19181/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9506 -&gt; Patchwork_19181</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9506: fe289d6c234d4e7ed53d0df1b7c7330f195f3689 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5910: 67b56a31dcb10a2301d818c8641b5f6b53b272e7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19181: f2e2c14d1cbc725cb3af49363a8303e86305dd4a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f2e2c14d1cbc HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing<br />
a476ea73ddef drm/i915/display/psr: Program plane's calculated offset to plane SF register<br />
e1037ef26961 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()<br />
6e7dbde66422 drm/i915/display/psr: Use plane damage clips to calculate damaged area<br />
9f59d653af13 drm: Add function to convert rect in 16.16 fixed format to regular format</p>

</body>
</html>

--===============5797212785548799393==--

--===============1076827783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1076827783==--
