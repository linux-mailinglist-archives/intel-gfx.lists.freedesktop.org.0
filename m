Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA46B160D3
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 14:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C1710E04A;
	Wed, 30 Jul 2025 12:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCCD410E04A;
 Wed, 30 Jul 2025 12:57:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7034116798088032572=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_User_readable_error_codes?=
 =?utf-8?q?_on_atomic=5Fioctl_failure?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Jul 2025 12:57:07 -0000
Message-ID: <175388022776.199285.5265156877783304906@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250730-atomic-v2-0-cc02ce0263dd@intel.com>
In-Reply-To: <20250730-atomic-v2-0-cc02ce0263dd@intel.com>
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

--===============7034116798088032572==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: User readable error codes on atomic_ioctl failure
URL   : https://patchwork.freedesktop.org/series/152275/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16940 -> Patchwork_152275v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_152275v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152275v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152275v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-14:         [PASS][1] -> [FAIL][2] +79 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
    - bat-adlp-6:         [PASS][3] -> [FAIL][4] +84 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:
    - bat-rpls-4:         [PASS][7] -> [FAIL][8] +79 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-adls-6:         [PASS][9] -> [FAIL][10] +79 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adls-6/igt@kms_force_connector_basic@force-connector-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adls-6/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1:
    - bat-mtlp-9:         [PASS][11] -> [FAIL][12] +95 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2:
    - fi-cfl-8109u:       [PASS][13] -> [FAIL][14] +63 other tests fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html

  
#### Warnings ####

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rpls-4:         [SKIP][15] ([i915#3555]) -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-cfl-8109u:       [SKIP][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-14:         [SKIP][19] ([i915#3555]) -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-6:         [SKIP][21] ([i915#3555]) -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-9:         [SKIP][23] ([i915#3555] / [i915#8809]) -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adls-6:         [SKIP][25] ([i915#3555]) -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html

  
Known issues
------------

  Here are the changes found in Patchwork_152275v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - bat-jsl-1:          [PASS][27] -> [DMESG-FAIL][28] ([i915#14613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-jsl-1/igt@i915_selftest@live@gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-jsl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][29] -> [DMESG-FAIL][30] ([i915#12061]) +1 other test dmesg-fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@psr-cursor-plane-move:
    - bat-adlp-6:         [PASS][31] -> [FAIL][32] ([Intel XE#4687]) +7 other tests fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-cursor-plane-move@edp-1:
    - bat-mtlp-9:         [PASS][33] -> [FAIL][34] ([Intel XE#4687]) +5 other tests fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@kms_psr@psr-cursor-plane-move@edp-1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@kms_psr@psr-cursor-plane-move@edp-1.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [DMESG-WARN][35] ([i915#13494]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@hangcheck:
    - bat-jsl-1:          [DMESG-WARN][37] ([i915#13827]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-jsl-1/igt@i915_selftest@live@hangcheck.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-jsl-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [DMESG-FAIL][39] ([i915#12061]) -> [PASS][40] +1 other test pass
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [DMESG-FAIL][41] ([i915#12061]) -> [PASS][42] +1 other test pass
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-jsl-1:          [DMESG-WARN][43] ([i915#13827]) -> [DMESG-FAIL][44] ([i915#14613])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-jsl-1/igt@i915_selftest@live.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-jsl-1/igt@i915_selftest@live.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - bat-mtlp-9:         [SKIP][45] ([i915#4077] / [i915#9688]) -> [FAIL][46] ([Intel XE#4687]) +1 other test fail
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html

  
  [Intel XE#4687]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/4687
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13827]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13827
  [i915#14613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14613
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688


Build changes
-------------

  * Linux: CI_DRM_16940 -> Patchwork_152275v1

  CI-20190529: 20190529
  CI_DRM_16940: 54ccd087aec954ea34b880223a17e4579eecedbe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8478: 3e7c2bd685397f852853878aef4d9c1e4889a28b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_152275v1: 54ccd087aec954ea34b880223a17e4579eecedbe @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/index.html

--===============7034116798088032572==
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
<tr><td><b>Series:</b></td><td>User readable error codes on atomic_ioctl failure</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152275/">https://patchwork.freedesktop.org/series/152275/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16940 -&gt; Patchwork_152275v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_152275v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152275v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Missing    (2): fi-glk-j4005 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152275v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">FAIL</a> +79 other tests fail</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">FAIL</a> +84 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html">FAIL</a> +79 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adls-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adls-6/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> +79 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1.html">FAIL</a> +95 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-2.html">FAIL</a> +63 other tests fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_setmode@basic-clone-single-crtc:<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152275v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14613">i915#14613</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-adlp-6/igt@kms_psr@psr-cursor-plane-move.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/4687">Intel XE#4687</a>) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move@edp-1:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@kms_psr@psr-cursor-plane-move@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@kms_psr@psr-cursor-plane-move@edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/4687">Intel XE#4687</a>) +5 other tests fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-jsl-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13827">i915#13827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-jsl-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13827">i915#13827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14613">i915#14613</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16940/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v1/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/xe/kernel/issues/4687">Intel XE#4687</a>) +1 other test fail</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16940 -&gt; Patchwork_152275v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16940: 54ccd087aec954ea34b880223a17e4579eecedbe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8478: 3e7c2bd685397f852853878aef4d9c1e4889a28b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_152275v1: 54ccd087aec954ea34b880223a17e4579eecedbe @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7034116798088032572==--
