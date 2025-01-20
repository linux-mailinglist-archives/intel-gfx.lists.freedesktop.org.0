Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1716A16924
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 10:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3884410E37F;
	Mon, 20 Jan 2025 09:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C845010E37F;
 Mon, 20 Jan 2025 09:20:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1402287591760147749=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Use_spin?=
 =?utf-8?q?=5Flock=5Firqsave=28=29_in_interruptible_context?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2025 09:20:35 -0000
Message-ID: <173736483581.2030316.4798114636940175868@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <pusppq5ybyszau2oocboj3mtj5x574gwij323jlclm5zxvimmu@mnfg6odxbpsv>
In-Reply-To: <pusppq5ybyszau2oocboj3mtj5x574gwij323jlclm5zxvimmu@mnfg6odxbpsv>
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

--===============1402287591760147749==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Use spin_lock_irqsave() in interruptible context
URL   : https://patchwork.freedesktop.org/series/143600/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15966 -> Patchwork_143600v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-blb-e6850 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_143600v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][1] -> [FAIL][2] ([i915#13401])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061] / [i915#12435])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-arlh-3/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12061])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@modeset:
    - bat-apl-1:          [PASS][9] -> [DMESG-WARN][10] ([i915#13532]) +1 other test dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-apl-1/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-apl-1/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#13436])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-1:          [INCOMPLETE][15] ([i915#9413]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [SKIP][17] -> [ABORT][18] ([i915#13169])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#13436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13436
  [i915#13532]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13532
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15966 -> Patchwork_143600v1

  CI-20190529: 20190529
  CI_DRM_15966: 2334d1179d652eb4032fcb0d8e6f53cbc6a1011c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8194: c505b5e9853c3270751f264b0d4055d4d7ae13ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143600v1: 2334d1179d652eb4032fcb0d8e6f53cbc6a1011c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/index.html

--===============1402287591760147749==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Use spin_lock_irqsave() in interruptible context</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143600/">https://patchwork.freedesktop.org/series/143600/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15966 -&gt; Patchwork_143600v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-blb-e6850 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143600v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-apl-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-apl-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13532">i915#13532</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13436">i915#13436</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169">i915#13169</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15966 -&gt; Patchwork_143600v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15966: 2334d1179d652eb4032fcb0d8e6f53cbc6a1011c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8194: c505b5e9853c3270751f264b0d4055d4d7ae13ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143600v1: 2334d1179d652eb4032fcb0d8e6f53cbc6a1011c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1402287591760147749==--
