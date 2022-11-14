Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1845628C2F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 23:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF1110E10B;
	Mon, 14 Nov 2022 22:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A6FDF10E10B;
 Mon, 14 Nov 2022 22:39:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9F6B9AADE2;
 Mon, 14 Nov 2022 22:39:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3419293378522198007=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mateusz Kwiatkowski" <kfyatek@gmail.com>
Date: Mon, 14 Nov 2022 22:39:38 -0000
Message-ID: <166846557862.32750.7707413964987600964@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728-rpi-analog-tv-properties-v9-0-24b168e5bcd5@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v9-0-24b168e5bcd5@cerno.tech>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Analog_TV_Improvements_=28rev10=29?=
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

--===============3419293378522198007==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Analog TV Improvements (rev10)
URL   : https://patchwork.freedesktop.org/series/107892/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12378 -> Patchwork_107892v10
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107892v10 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107892v10, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (1): bat-rpls-2 
  Missing    (1): fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107892v10:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_107892v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][3] ([i915#6179])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][4] -> [INCOMPLETE][5] ([i915#4418])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][6] ([i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-apl-guc/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][7] ([i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/bat-dg1-6/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-8}:        [FAIL][8] ([i915#7029]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/bat-dg2-8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][10] ([i915#5334]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][12] ([i915#6298]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][14] ([i915#4817]) -> [FAIL][15] ([fdo#103375])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6179]: https://gitlab.freedesktop.org/drm/intel/issues/6179
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456


Build changes
-------------

  * Linux: CI_DRM_12378 -> Patchwork_107892v10

  CI-20190529: 20190529
  CI_DRM_12378: adf57aa9c15f55b7c544ff211e9e9f6a6f37ac10 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7056: 05096a6754048f4b5a2de798ab4bea32012b556a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107892v10: adf57aa9c15f55b7c544ff211e9e9f6a6f37ac10 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

da2c1eec70a7 drm/sun4i: tv: Convert to the new TV mode property
47d0321de3ff drm/vc4: vec: Add support for more analog TV standards
bebb2dbf86ff drm/vc4: vec: Convert to the new TV mode property
20769a588dd4 drm/vc4: vec: Check for VEC output constraints
d3b0bfeeee65 drm/vc4: vec: Use TV Reset implementation
9de2d027edc7 drm/atomic-helper: Add an analog TV atomic_check implementation
eb50e9d01366 drm/atomic-helper: Add a TV properties reset helper
2162dcfdaf44 drm/probe-helper: Provide a TV get_modes helper
d122d140b07c drm/modes: Introduce more named modes
687a833c25bd drm/client: Remove match on mode name
3c9bc1177a0f drm/modes: Properly generate a drm_display_mode from a named mode
92e2544882c9 drm/modes: Introduce the tv_mode property as a command-line option
f0100bc83e31 drm/connector: Add a function to lookup a TV mode by its name
49bbf5a8615b drm/connector: Add pixel clock to cmdline mode
8a6c510f7c52 drm/modes: Fill drm_cmdline mode from named modes
32e1e701ab0c drm/modes: Switch to named mode descriptors
afcbce8baadd drm/modes: Move named modes parsing to a separate function
cd4cf164a207 drm/client: Add some tests for drm_connector_pick_cmdline_mode()
7eb01099d1e2 drm/modes: Add a function to generate analog display modes
edb0845ce89c drm/connector: Add TV standard property
45d8ace1a381 drm/connector: Rename drm_mode_create_tv_properties
5a8f15a63c78 drm/connector: Only register TV mode property if present
3e7088a391c6 drm/connector: Rename legacy TV property
dcb82a29d636 drm/tests: Add Kunit Helpers
38a11c272910 docs/fb: Document current named modes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/index.html

--===============3419293378522198007==
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
<tr><td><b>Series:</b></td><td>drm: Analog TV Improvements (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107892/">https://patchwork.freedesktop.org/series/107892/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12378 -&gt; Patchwork_107892v10</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107892v10 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107892v10, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): bat-rpls-2 <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107892v10:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107892v10 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6179">i915#6179</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12378/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107892v10/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12378 -&gt; Patchwork_107892v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12378: adf57aa9c15f55b7c544ff211e9e9f6a6f37ac10 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7056: 05096a6754048f4b5a2de798ab4bea32012b556a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107892v10: adf57aa9c15f55b7c544ff211e9e9f6a6f37ac10 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>da2c1eec70a7 drm/sun4i: tv: Convert to the new TV mode property<br />
47d0321de3ff drm/vc4: vec: Add support for more analog TV standards<br />
bebb2dbf86ff drm/vc4: vec: Convert to the new TV mode property<br />
20769a588dd4 drm/vc4: vec: Check for VEC output constraints<br />
d3b0bfeeee65 drm/vc4: vec: Use TV Reset implementation<br />
9de2d027edc7 drm/atomic-helper: Add an analog TV atomic_check implementation<br />
eb50e9d01366 drm/atomic-helper: Add a TV properties reset helper<br />
2162dcfdaf44 drm/probe-helper: Provide a TV get_modes helper<br />
d122d140b07c drm/modes: Introduce more named modes<br />
687a833c25bd drm/client: Remove match on mode name<br />
3c9bc1177a0f drm/modes: Properly generate a drm_display_mode from a named mode<br />
92e2544882c9 drm/modes: Introduce the tv_mode property as a command-line option<br />
f0100bc83e31 drm/connector: Add a function to lookup a TV mode by its name<br />
49bbf5a8615b drm/connector: Add pixel clock to cmdline mode<br />
8a6c510f7c52 drm/modes: Fill drm_cmdline mode from named modes<br />
32e1e701ab0c drm/modes: Switch to named mode descriptors<br />
afcbce8baadd drm/modes: Move named modes parsing to a separate function<br />
cd4cf164a207 drm/client: Add some tests for drm_connector_pick_cmdline_mode()<br />
7eb01099d1e2 drm/modes: Add a function to generate analog display modes<br />
edb0845ce89c drm/connector: Add TV standard property<br />
45d8ace1a381 drm/connector: Rename drm_mode_create_tv_properties<br />
5a8f15a63c78 drm/connector: Only register TV mode property if present<br />
3e7088a391c6 drm/connector: Rename legacy TV property<br />
dcb82a29d636 drm/tests: Add Kunit Helpers<br />
38a11c272910 docs/fb: Document current named modes</p>

</body>
</html>

--===============3419293378522198007==--
