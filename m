Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 720EAA15E86
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 19:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E3F10E085;
	Sat, 18 Jan 2025 18:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804AC10E07F;
 Sat, 18 Jan 2025 18:51:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1631699117133074886=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Buiild_error_in_i915/xe_?=
 =?utf-8?q?=28was=3A_=5BPATCH_next_4/7=5D_minmax=2Eh=3A_Use_BUILD=5FBUG=5FON?=
 =?utf-8?q?=5FMSG=28=29_for_the_lo_=3C_hi_test_in_clamp=28=29=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Guenter Roeck" <linux@roeck-us.net>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jan 2025 18:51:36 -0000
Message-ID: <173722629651.1258446.12790436672109122696@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
In-Reply-To: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
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

--===============1631699117133074886==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
URL   : https://patchwork.freedesktop.org/series/143703/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15979 -> Patchwork_143703v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143703v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143703v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/index.html

Participating hosts (44 -> 41)
------------------------------

  Missing    (3): bat-apl-1 fi-kbl-guc fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143703v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arlh-3:         NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlp-6:         [PASS][2] -> [FAIL][3] +1 other test fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html
    - bat-jsl-3:          [PASS][4] -> [FAIL][5] +1 other test fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html
    - bat-twl-2:          [PASS][6] -> [FAIL][7] +1 other test fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@basic-brightness@edp-1:
    - bat-jsl-1:          [PASS][8] -> [FAIL][9] +1 other test fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-jsl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-jsl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
    - bat-mtlp-8:         [PASS][10] -> [FAIL][11] +1 other test fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness@edp-1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness@edp-1.html
    - bat-rplp-1:         [PASS][12] -> [FAIL][13] +1 other test fail
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
    - bat-arlh-3:         [PASS][14] -> [FAIL][15] +1 other test fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arlh-3/igt@kms_pm_backlight@basic-brightness@edp-1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@kms_pm_backlight@basic-brightness@edp-1.html
    - bat-twl-1:          [PASS][16] -> [FAIL][17] +1 other test fail
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-twl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-twl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [INCOMPLETE][18] ([i915#12061] / [i915#12445]) -> [DMESG-WARN][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arlh-3/igt@i915_selftest@live.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@i915_selftest@live.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@guc:
    - {bat-mtlp-9}:       [PASS][20] -> [INCOMPLETE][21] +1 other test incomplete
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-mtlp-9/igt@i915_selftest@live@guc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-mtlp-9/igt@i915_selftest@live@guc.html

  * igt@kms_pm_backlight@basic-brightness@edp-1:
    - {bat-mtlp-9}:       [PASS][22] -> [FAIL][23] +1 other test fail
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness@edp-1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness@edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_143703v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][24] -> [FAIL][25] ([i915#13401])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][26] -> [FAIL][27] ([i915#13401])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][28] -> [DMESG-FAIL][29] ([i915#12061]) +1 other test dmesg-fail
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-mtlp-8/igt@i915_selftest@live.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][30] -> [DMESG-FAIL][31] ([i915#12061]) +1 other test dmesg-fail
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][32] -> [SKIP][33] ([i915#9197]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-jsl-3:          [INCOMPLETE][34] ([i915#12445] / [i915#13241]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-jsl-3/igt@i915_selftest@live.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-jsl-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arlh-3:         [INCOMPLETE][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html
    - bat-jsl-3:          [INCOMPLETE][38] ([i915#13241]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-jsl-3/igt@i915_selftest@live@gem_contexts.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-jsl-3/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][40] ([i915#12061]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15979 -> Patchwork_143703v1

  CI-20190529: 20190529
  CI_DRM_15979: 4fc988de9f5e17d19edb5fc0a0fbc15a8fc837f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8198: 1d1ae626601119d249b530547b9e226c6a684144 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143703v1: 4fc988de9f5e17d19edb5fc0a0fbc15a8fc837f4 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/index.html

--===============1631699117133074886==
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
<tr><td><b>Series:</b></td><td>Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use BUILD_BUG_ON_MSG() for the lo &lt; hi test in clamp())</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143703/">https://patchwork.freedesktop.org/series/143703/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15979 -&gt; Patchwork_143703v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_143703v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_143703v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/index.html</p>
<h2>Participating hosts (44 -&gt; 41)</h2>
<p>Missing    (3): bat-apl-1 fi-kbl-guc fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_143703v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-adlp-6/igt@kms_pm_backlight@basic-brightness.html">FAIL</a> +1 other test fail</li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-jsl-3/igt@kms_pm_backlight@basic-brightness.html">FAIL</a> +1 other test fail</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-twl-2/igt@kms_pm_backlight@basic-brightness.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-jsl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-jsl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">FAIL</a> +1 other test fail</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-mtlp-8/igt@kms_pm_backlight@basic-brightness@edp-1.html">FAIL</a> +1 other test fail</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">FAIL</a> +1 other test fail</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arlh-3/igt@kms_pm_backlight@basic-brightness@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@kms_pm_backlight@basic-brightness@edp-1.html">FAIL</a> +1 other test fail</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-twl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-twl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@i915_selftest@live.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-mtlp-9/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-mtlp-9/igt@i915_selftest@live@guc.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-mtlp-9/igt@kms_pm_backlight@basic-brightness@edp-1.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143703v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-jsl-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241">i915#13241</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-jsl-3/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-jsl-3/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241">i915#13241</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-jsl-3/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15979/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143703v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15979 -&gt; Patchwork_143703v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15979: 4fc988de9f5e17d19edb5fc0a0fbc15a8fc837f4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8198: 1d1ae626601119d249b530547b9e226c6a684144 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143703v1: 4fc988de9f5e17d19edb5fc0a0fbc15a8fc837f4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1631699117133074886==--
