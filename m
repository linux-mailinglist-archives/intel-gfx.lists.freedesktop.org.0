Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC5087E254
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 03:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5605010F13B;
	Mon, 18 Mar 2024 02:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF1D10F13B;
 Mon, 18 Mar 2024 02:50:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1719873111725623015=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Fixed_a?=
 =?utf-8?q?_screen_flickering_when_turning_on_display_from_off_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yu, Gareth" <gareth.yu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Mar 2024 02:50:39 -0000
Message-ID: <171073023918.883671.16388629626757264192@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306031348.1344034-1-gareth.yu@intel.com>
In-Reply-To: <20240306031348.1344034-1-gareth.yu@intel.com>
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

--===============1719873111725623015==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fixed a screen flickering when turning on display from off (rev5)
URL   : https://patchwork.freedesktop.org/series/130780/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14442 -> Patchwork_130780v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/index.html

Participating hosts (37 -> 33)
------------------------------

  Missing    (4): bat-mtlp-8 bat-atsm-1 fi-snb-2520m fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130780v5:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - {bat-mtlp-9}:       [SKIP][1] ([i915#4213]) -> [SKIP][2] +1 other test skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-mtlp-9}:       [PASS][3] -> [SKIP][4] +5 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - {bat-mtlp-9}:       [SKIP][5] ([i915#3555] / [i915#3840] / [i915#9159]) -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-mtlp-9/igt@kms_dsc@dsc-basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-mtlp-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - {bat-mtlp-9}:       NOTRUN -> [SKIP][7] +7 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc.html

  
Known issues
------------

  Here are the changes found in Patchwork_130780v5 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][8] -> [FAIL][9] ([i915#10234])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-arls-3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-arls-3/boot.html
    - fi-apl-guc:         [PASS][10] -> [FAIL][11] ([i915#8293])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/fi-apl-guc/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/fi-apl-guc/boot.html
    - fi-cfl-8109u:       [PASS][12] -> [FAIL][13] ([i915#8293])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/fi-cfl-8109u/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@kms_force_connector_basic@force-edid:
    - bat-dg2-8:          [PASS][14] -> [INCOMPLETE][15] ([i915#10419])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#10419]: https://gitlab.freedesktop.org/drm/intel/issues/10419
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14442 -> Patchwork_130780v5

  CI-20190529: 20190529
  CI_DRM_14442: bb2b694350f7d997c90c0edff2d3409d9adc482a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7768: 7768
  Patchwork_130780v5: bb2b694350f7d997c90c0edff2d3409d9adc482a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f25cf2c0ef64 drm/i915/display: Fixed a screen flickering when turning on display from off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/index.html

--===============1719873111725623015==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fixed a screen flickering when turning on display from off (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130780/">https://patchwork.freedesktop.org/series/130780/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14442 -&gt; Patchwork_130780v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/index.html</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): bat-mtlp-8 bat-atsm-1 fi-snb-2520m fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130780v5:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9159">i915#9159</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-mtlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>{bat-mtlp-9}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-mtlp-9/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130780v5 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_force_connector_basic@force-edid:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14442/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v5/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10419">i915#10419</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14442 -&gt; Patchwork_130780v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14442: bb2b694350f7d997c90c0edff2d3409d9adc482a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7768: 7768<br />
  Patchwork_130780v5: bb2b694350f7d997c90c0edff2d3409d9adc482a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f25cf2c0ef64 drm/i915/display: Fixed a screen flickering when turning on display from off</p>

</body>
</html>

--===============1719873111725623015==--
