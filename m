Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9378AAEBD
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C73510E6F7;
	Fri, 19 Apr 2024 12:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3220F10E6F7;
 Fri, 19 Apr 2024 12:43:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1089966210171566663=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Panel_replay_selective_upda?=
 =?utf-8?q?te_support_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Apr 2024 12:43:03 -0000
Message-ID: <171353058320.1520059.15517637175203663574@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
In-Reply-To: <20240419121141.2665945-1-jouni.hogander@intel.com>
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

--===============1089966210171566663==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Panel replay selective update support (rev7)
URL   : https://patchwork.freedesktop.org/series/128193/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14612 -> Patchwork_128193v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128193v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128193v7, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): bat-adlp-9 
  Missing    (2): fi-kbl-8809g bat-arls-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128193v7:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2] +31 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_128193v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-9:         NOTRUN -> [SKIP][3] ([i915#9318])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@basic:
    - bat-adlp-9:         NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@gem_lmem_swapping@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-9:         NOTRUN -> [SKIP][5] ([i915#3282])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-9:         NOTRUN -> [SKIP][6] ([i915#6621])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@i915_pm_rps@basic-api.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - bat-adlp-9:         NOTRUN -> [SKIP][7] ([i915#4103]) +1 other test skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - bat-adlp-9:         NOTRUN -> [SKIP][8] ([i915#3555] / [i915#3840])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-WARN][10] ([i915#10875] / [i915#8585]) +3 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#1982] / [i915#8585])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlp-9:         NOTRUN -> [SKIP][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlp-9:         NOTRUN -> [SKIP][14] ([i915#9812])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][15] -> [DMESG-WARN][16] ([i915#8585]) +78 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-adlp-9:         NOTRUN -> [SKIP][17] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-9:         NOTRUN -> [SKIP][18] ([i915#3555])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-9:         NOTRUN -> [SKIP][19] ([i915#3291] / [i915#3708]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [FAIL][20] ([i915#10378]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp6:
    - {bat-mtlp-9}:       [DMESG-WARN][22] ([i915#10435]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#10875]: https://gitlab.freedesktop.org/drm/intel/issues/10875
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812


Build changes
-------------

  * Linux: CI_DRM_14612 -> Patchwork_128193v7

  CI-20190529: 20190529
  CI_DRM_14612: a6272ececd0c019dbb4b9e20dfd2026b7e299724 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7814: 7814
  Patchwork_128193v7: a6272ececd0c019dbb4b9e20dfd2026b7e299724 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/index.html

--===============1089966210171566663==
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
<tr><td><b>Series:</b></td><td>Panel replay selective update support (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128193/">https://patchwork.freedesktop.org/series/128193/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14612 -&gt; Patchwork_128193v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128193v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_128193v7, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): bat-adlp-9 <br />
  Missing    (2): fi-kbl-8809g bat-arls-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128193v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +31 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128193v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp1:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10875">i915#10875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) +78 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-adlp-9/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14612/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10435">i915#10435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128193v7/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14612 -&gt; Patchwork_128193v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14612: a6272ececd0c019dbb4b9e20dfd2026b7e299724 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7814: 7814<br />
  Patchwork_128193v7: a6272ececd0c019dbb4b9e20dfd2026b7e299724 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1089966210171566663==--
