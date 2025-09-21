Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02907B8D572
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 08:04:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B8010E334;
	Sun, 21 Sep 2025 06:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AA1D10E334;
 Sun, 21 Sep 2025 06:04:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6227728563410001076=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Introduce_set=5Fcontext?=
 =?utf-8?q?=5Flatency_and_refactor_VRR/DSB_timing_logic?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 21 Sep 2025 06:04:48 -0000
Message-ID: <175843468836.351434.11442809669039027285@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

--===============6227728563410001076==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce set_context_latency and refactor VRR/DSB timing logic
URL   : https://patchwork.freedesktop.org/series/154810/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17245 -> Patchwork_154810v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_154810v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_154810v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_154810v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - bat-arls-6:         [PASS][1] -> [DMESG-WARN][2] +11 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-6/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-6/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-adls-6:         [PASS][3] -> [FAIL][4] +10 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-arls-6:         [PASS][5] -> [DMESG-FAIL][6] +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-arls-5:         [PASS][7] -> [DMESG-FAIL][8] +3 other tests dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-arls-6:         [PASS][9] -> [FAIL][10] +8 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-dg2-11:         [PASS][11] -> [FAIL][12] +10 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - bat-dg2-8:          [PASS][13] -> [FAIL][14] +10 other tests fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-tgl-1115g4:      [PASS][15] -> [FAIL][16] +10 other tests fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-adlp-6:         [PASS][17] -> [DMESG-WARN][18] +1 other test dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-dg2-8:          [PASS][19] -> [DMESG-WARN][20] +1 other test dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-8/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-8/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-adlp-9:         [PASS][21] -> [DMESG-WARN][22] +2 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - bat-rplp-1:         [PASS][23] -> [DMESG-WARN][24] +1 other test dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@basic-plain-flip:
    - bat-adlp-6:         [PASS][25] -> [FAIL][26] +4 other tests fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adlp-6/igt@kms_flip@basic-plain-flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adlp-6/igt@kms_flip@basic-plain-flip.html
    - bat-mtlp-9:         [PASS][27] -> [DMESG-FAIL][28] +1 other test dmesg-fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-9/igt@kms_flip@basic-plain-flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip.html

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - bat-adlp-9:         [PASS][29] -> [FAIL][30] +10 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - bat-rplp-1:         [PASS][31] -> [FAIL][32] +10 other tests fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_flip@basic-plain-flip@b-dp1:
    - bat-dg2-9:          [PASS][33] -> [FAIL][34] +10 other tests fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-9/igt@kms_flip@basic-plain-flip@b-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-9/igt@kms_flip@basic-plain-flip@b-dp1.html

  * igt@kms_flip@basic-plain-flip@c-dp3:
    - bat-arls-5:         [PASS][35] -> [FAIL][36] +6 other tests fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-5/igt@kms_flip@basic-plain-flip@c-dp3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-5/igt@kms_flip@basic-plain-flip@c-dp3.html

  * igt@kms_flip@basic-plain-flip@c-dp7:
    - bat-mtlp-9:         [PASS][37] -> [FAIL][38] +6 other tests fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html

  * igt@kms_flip@basic-plain-flip@c-hdmi-a2:
    - bat-dg2-14:         [PASS][39] -> [FAIL][40] +14 other tests fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-14/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-14/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html

  * igt@kms_flip@basic-plain-flip@d-hdmi-a2:
    - bat-dg1-7:          [PASS][41] -> [FAIL][42] +10 other tests fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg1-7/igt@kms_flip@basic-plain-flip@d-hdmi-a2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg1-7/igt@kms_flip@basic-plain-flip@d-hdmi-a2.html
    - bat-rpls-4:         [PASS][43] -> [FAIL][44] +14 other tests fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-rpls-4/igt@kms_flip@basic-plain-flip@d-hdmi-a2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-rpls-4/igt@kms_flip@basic-plain-flip@d-hdmi-a2.html

  * igt@kms_hdmi_inject@inject-audio:
    - bat-mtlp-8:         [PASS][45] -> [DMESG-WARN][46] +1 other test dmesg-warn
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-8/igt@kms_hdmi_inject@inject-audio.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-8/igt@kms_hdmi_inject@inject-audio.html
    - bat-arlh-3:         [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arlh-3/igt@kms_hdmi_inject@inject-audio.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arlh-3/igt@kms_hdmi_inject@inject-audio.html
    - bat-mtlp-6:         [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-6/igt@kms_hdmi_inject@inject-audio.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-6/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:
    - bat-arls-5:         [PASS][51] -> [DMESG-WARN][52] +10 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-mtlp-9:         [PASS][53] -> [DMESG-WARN][54] +12 other tests dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
Known issues
------------

  Here are the changes found in Patchwork_154810v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][55] -> [DMESG-FAIL][56] ([i915#12061]) +1 other test dmesg-fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-twl-2:          [PASS][57] -> [ABORT][58] ([i915#14365]) +1 other test abort
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-twl-2/igt@i915_selftest@live@workarounds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-twl-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][59] -> [SKIP][60] ([i915#11190]) +3 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365


Build changes
-------------

  * Linux: CI_DRM_17245 -> Patchwork_154810v1

  CI-20190529: 20190529
  CI_DRM_17245: cfa128d879d8cdea4007ddd56dcc2eac73ff2142 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8546: 8546
  Patchwork_154810v1: cfa128d879d8cdea4007ddd56dcc2eac73ff2142 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/index.html

--===============6227728563410001076==
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
<tr><td><b>Series:</b></td><td>Introduce set_context_latency and refactor VRR/DSB timing logic</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/154810/">https://patchwork.freedesktop.org/series/154810/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17245 -&gt; Patchwork_154810v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_154810v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_154810v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_154810v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-6/igt@i915_module_load@reload.html">DMESG-WARN</a> +11 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">FAIL</a> +10 other tests fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-FAIL</a> +3 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">FAIL</a> +8 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +10 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +10 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">FAIL</a> +10 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-8/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-8/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-rplp-1/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adlp-6/igt@kms_flip@basic-plain-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adlp-6/igt@kms_flip@basic-plain-flip.html">FAIL</a> +4 other tests fail</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-9/igt@kms_flip@basic-plain-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip.html">DMESG-FAIL</a> +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html">FAIL</a> +10 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html">FAIL</a> +10 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp1:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-9/igt@kms_flip@basic-plain-flip@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-9/igt@kms_flip@basic-plain-flip@b-dp1.html">FAIL</a> +10 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-5/igt@kms_flip@basic-plain-flip@c-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-5/igt@kms_flip@basic-plain-flip@c-dp3.html">FAIL</a> +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp7:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html">FAIL</a> +6 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a2:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-14/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-14/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">FAIL</a> +14 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-hdmi-a2:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg1-7/igt@kms_flip@basic-plain-flip@d-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg1-7/igt@kms_flip@basic-plain-flip@d-hdmi-a2.html">FAIL</a> +10 other tests fail</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-rpls-4/igt@kms_flip@basic-plain-flip@d-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-rpls-4/igt@kms_flip@basic-plain-flip@d-hdmi-a2.html">FAIL</a> +14 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-8/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-8/igt@kms_hdmi_inject@inject-audio.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arlh-3/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arlh-3/igt@kms_hdmi_inject@inject-audio.html">DMESG-WARN</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-6/igt@kms_hdmi_inject@inject-audio.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">DMESG-WARN</a> +12 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_154810v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-twl-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-twl-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17245/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154810v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17245 -&gt; Patchwork_154810v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17245: cfa128d879d8cdea4007ddd56dcc2eac73ff2142 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8546: 8546<br />
  Patchwork_154810v1: cfa128d879d8cdea4007ddd56dcc2eac73ff2142 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6227728563410001076==--
