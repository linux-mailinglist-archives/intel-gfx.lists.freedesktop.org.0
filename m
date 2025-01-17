Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22288A14EF1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 13:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A0010E3BF;
	Fri, 17 Jan 2025 12:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 889F910E3BF;
 Fri, 17 Jan 2025 12:01:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1471375352196291755=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Handle_vblank?=
 =?utf-8?q?_delay_vs=2E_fastboot_and_finish_DSB_plane_update_enabling_=28rev?=
 =?utf-8?q?2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2025 12:01:39 -0000
Message-ID: <173711529955.701978.10214009658489037767@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
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

--===============1471375352196291755==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Handle vblank delay vs. fastboot and finish DSB plane update enabling (rev2)
URL   : https://patchwork.freedesktop.org/series/143633/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15974 -> Patchwork_143633v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_143633v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-pnv-d510:        [PASS][1] -> [ABORT][2] ([i915#13203])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/fi-pnv-d510/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/fi-pnv-d510/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [PASS][3] -> [FAIL][4] ([i915#13401])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12061] / [i915#12435])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-arlh-2/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-2:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [ABORT][9] ([i915#13496]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [INCOMPLETE][11] ([i915#12445]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-arlh-3/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-9}:       [DMESG-FAIL][13] ([i915#12061]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-WARN][15] ([i915#11621]) -> [DMESG-WARN][16] ([i915#11621] / [i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13496]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13496
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_15974 -> Patchwork_143633v2

  CI-20190529: 20190529
  CI_DRM_15974: 48e8781781323a28fabb378bcc79b3f48c1bcae0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8196: 824553d05138bbfa48b9e60e9c2a741497c7c627 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143633v2: 48e8781781323a28fabb378bcc79b3f48c1bcae0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/index.html

--===============1471375352196291755==
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
<tr><td><b>Series:</b></td><td>drm/i915: Handle vblank delay vs. fastboot and finish DSB plane update enabling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143633/">https://patchwork.freedesktop.org/series/143633/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15974 -&gt; Patchwork_143633v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143633v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/fi-pnv-d510/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/fi-pnv-d510/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203">i915#13203</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-arlh-2/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13496">i915#13496</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15974/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143633v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15974 -&gt; Patchwork_143633v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15974: 48e8781781323a28fabb378bcc79b3f48c1bcae0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8196: 824553d05138bbfa48b9e60e9c2a741497c7c627 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143633v2: 48e8781781323a28fabb378bcc79b3f48c1bcae0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1471375352196291755==--
