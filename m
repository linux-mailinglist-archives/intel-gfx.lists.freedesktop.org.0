Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76373A31D7E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 05:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0FA510E237;
	Wed, 12 Feb 2025 04:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68CA710E237;
 Wed, 12 Feb 2025 04:35:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6767488732989355970=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915=3A_some_GT_regis?=
 =?utf-8?q?ter_fixes_and_cleanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2025 04:35:22 -0000
Message-ID: <173933492242.1174791.16223738609939664751@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
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

--===============6767488732989355970==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: some GT register fixes and cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/144683/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16111 -> Patchwork_144683v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_144683v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144683v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/index.html

Participating hosts (44 -> 39)
------------------------------

  Missing    (5): bat-adlp-11 bat-adlm-1 fi-snb-2520m bat-arlh-2 bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144683v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-rplp-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-rplp-1/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-rplp-1/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_144683v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-twl-2:          NOTRUN -> [ABORT][3] ([i915#12919] / [i915#13503])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-twl-2:          NOTRUN -> [ABORT][4] ([i915#12919])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-twl-2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rplp-1:         [PASS][5] -> [ABORT][6] ([i915#13399])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-rplp-1/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-rplp-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@modeset:
    - bat-apl-1:          [PASS][9] -> [DMESG-WARN][10] ([i915#13532]) +1 other test dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-apl-1/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-apl-1/igt@kms_busy@basic@modeset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][11] -> [SKIP][12] ([i915#9197]) +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-bsw-n3050:       [ABORT][13] ([i915#12435]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/fi-bsw-n3050/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/fi-bsw-n3050/igt@i915_selftest@live.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-n3050:       [ABORT][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html

  
#### Warnings ####

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-6:         [INCOMPLETE][17] ([i915#9413]) -> [ABORT][18] ([i915#13399]) +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
  [i915#13532]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13532
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_16111 -> Patchwork_144683v2

  CI-20190529: 20190529
  CI_DRM_16111: 76120b67a3d5e7a38cbc92fc39846297130fc6d0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8228: 8228
  Patchwork_144683v2: 76120b67a3d5e7a38cbc92fc39846297130fc6d0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/index.html

--===============6767488732989355970==
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
<tr><td><b>Series:</b></td><td>drm/i915: some GT register fixes and cleanups (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/144683/">https://patchwork.freedesktop.org/series/144683/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16111 -&gt; Patchwork_144683v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_144683v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_144683v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/index.html</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): bat-adlp-11 bat-adlm-1 fi-snb-2520m bat-arlh-2 bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_144683v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-rplp-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144683v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503">i915#13503</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-twl-2/igt@i915_selftest@live@gt_timelines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-rplp-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-rplp-1/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-apl-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-apl-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13532">i915#13532</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/fi-bsw-n3050/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/fi-bsw-n3050/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16111/bat-adlp-6/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144683v2/bat-adlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>) +1 other test abort</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16111 -&gt; Patchwork_144683v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16111: 76120b67a3d5e7a38cbc92fc39846297130fc6d0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8228: 8228<br />
  Patchwork_144683v2: 76120b67a3d5e7a38cbc92fc39846297130fc6d0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6767488732989355970==--
