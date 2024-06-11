Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310F3903C13
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE4910E61E;
	Tue, 11 Jun 2024 12:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96D110E603;
 Tue, 11 Jun 2024 12:39:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6261263663484975354=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Send_vr?=
 =?utf-8?q?r_vsync_params_whne_vrr_is_enabled?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2024 12:39:06 -0000
Message-ID: <171810954682.67051.4185551703911319750@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240611120151.147778-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240611120151.147778-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============6261263663484975354==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Send vrr vsync params whne vrr is enabled
URL   : https://patchwork.freedesktop.org/series/134714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14919 -> Patchwork_134714v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/index.html

Participating hosts (43 -> 40)
------------------------------

  Additional (1): bat-arlh-2 
  Missing    (4): fi-glk-j4005 bat-dg2-11 bat-adlp-6 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_134714v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@fbdev@eof:
    - {bat-arlh-2}:       NOTRUN -> [SKIP][1] +38 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-arlh-2/igt@fbdev@eof.html

  
Known issues
------------

  Here are the changes found in Patchwork_134714v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - {bat-twl-1}:        [INCOMPLETE][2] ([i915#10886]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14919/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adlp-9:         [ABORT][4] ([i915#10021]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14919/bat-adlp-9/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-adlp-9/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-arls-1:         [DMESG-WARN][6] ([i915#10341]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14919/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6:
    - {bat-mtlp-9}:       [DMESG-WARN][8] ([i915#11009]) -> [PASS][9] +2 other tests pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14919/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10021]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10021
  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
  [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
  [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#10911]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10911
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#11060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11060
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_14919 -> Patchwork_134714v1

  CI-20190529: 20190529
  CI_DRM_14919: 46852067df1514110bfc9c514d2610447376f1b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134714v1: 46852067df1514110bfc9c514d2610447376f1b7 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/index.html

--===============6261263663484975354==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Send vrr vsync params whne vrr is enabled</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134714/">https://patchwork.freedesktop.org/series/134714/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14919 -&gt; Patchwork_134714v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Additional (1): bat-arlh-2 <br />
  Missing    (4): fi-glk-j4005 bat-dg2-11 bat-adlp-6 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_134714v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@fbdev@eof:<ul>
<li>{bat-arlh-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-arlh-2/igt@fbdev@eof.html">SKIP</a> +38 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134714v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-twl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14919/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886">i915#10886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14919/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10021">i915#10021</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14919/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14919/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134714v1/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-6.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14919 -&gt; Patchwork_134714v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14919: 46852067df1514110bfc9c514d2610447376f1b7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7880: 73618605b4370cf902267aaf1d25666ff5e26112 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134714v1: 46852067df1514110bfc9c514d2610447376f1b7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6261263663484975354==--
