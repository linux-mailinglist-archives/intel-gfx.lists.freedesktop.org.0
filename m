Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F4F9D3418
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 08:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B4910E04C;
	Wed, 20 Nov 2024 07:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA3210E04C;
 Wed, 20 Nov 2024 07:27:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7779882124545176102=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Consider_joiner_calculation?=
 =?utf-8?q?_for_panel_fitting_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2024 07:27:39 -0000
Message-ID: <173208765921.631563.421568246137599656@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
In-Reply-To: <20241120053838.3794419-1-nemesa.garg@intel.com>
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

--===============7779882124545176102==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Consider joiner calculation for panel fitting (rev5)
URL   : https://patchwork.freedesktop.org/series/136561/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15722 -> Patchwork_136561v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/index.html

Participating hosts (46 -> 43)
------------------------------

  Missing    (3): fi-glk-j4005 bat-mtlp-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_136561v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2] ([i915#12903])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-dg2-11/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - bat-dg2-13:         NOTRUN -> [SKIP][3] ([Intel XE#484] / [i915#4550]) +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-dg2-13/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@runner@aborted:
    - bat-dg2-14:         NOTRUN -> [FAIL][4] ([i915#12658])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-dg2-14/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-rpls-4:         [FAIL][5] ([i915#12903]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - {bat-arls-6}:       [ABORT][7] ([i915#12829]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/bat-arls-6/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-arls-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - {bat-arls-6}:       [ABORT][9] ([i915#12061]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#484]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/484
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12658
  [i915#12829]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12829
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#4550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550


Build changes
-------------

  * Linux: CI_DRM_15722 -> Patchwork_136561v5

  CI-20190529: 20190529
  CI_DRM_15722: ccf64319402f90f68549e2047a7f985a46436e41 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8118: 17707095f1e5d3c30f463b43022f01c0160579b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_136561v5: ccf64319402f90f68549e2047a7f985a46436e41 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/index.html

--===============7779882124545176102==
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
<tr><td><b>Series:</b></td><td>Consider joiner calculation for panel fitting (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136561/">https://patchwork.freedesktop.org/series/136561/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15722 -&gt; Patchwork_136561v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/index.html</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Missing    (3): fi-glk-j4005 bat-mtlp-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136561v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903">i915#12903</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-dg2-13/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/484">Intel XE#484</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4550">i915#4550</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-dg2-14/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12658">i915#12658</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903">i915#12903</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>{bat-arls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/bat-arls-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12829">i915#12829</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-arls-6/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-arls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15722/bat-arls-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136561v5/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15722 -&gt; Patchwork_136561v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15722: ccf64319402f90f68549e2047a7f985a46436e41 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8118: 17707095f1e5d3c30f463b43022f01c0160579b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_136561v5: ccf64319402f90f68549e2047a7f985a46436e41 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7779882124545176102==--
