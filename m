Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F35B80C451
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 10:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13EE810E373;
	Mon, 11 Dec 2023 09:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1867A10E373;
 Mon, 11 Dec 2023 09:20:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF0CCAADD5;
 Mon, 11 Dec 2023 09:20:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0216183514284536141=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5Bv3?=
 =?utf-8?q?=2C1/3=5D_drm/i915/dp=3A_Use_LINK=5FQUAL=5FPATTERN=5F*_Phy_test_p?=
 =?utf-8?q?attern_names?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Date: Mon, 11 Dec 2023 09:20:26 -0000
Message-ID: <170228642693.19581.18941846628656977@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231206235319.3205232-1-khaled.almahallawy@intel.com>
In-Reply-To: <20231206235319.3205232-1-khaled.almahallawy@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0216183514284536141==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v3,1/3] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names
URL   : https://patchwork.freedesktop.org/series/127465/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13990 -> Patchwork_127465v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/index.html

Participating hosts (37 -> 34)
------------------------------

  Missing    (3): bat-dg2-9 fi-snb-2520m bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_127465v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [PASS][1] -> [DMESG-FAIL][2] ([i915#9780])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-jsl-1:          [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][5] ([i915#9826]) +2 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][6] ([i915#8668])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-dpms@d-dp6:
    - bat-adlp-11:        [DMESG-FAIL][7] ([i915#6868]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp6:
    - bat-adlp-11:        [DMESG-WARN][9] ([i915#9782]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][11] ([i915#8668]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9780]: https://gitlab.freedesktop.org/drm/intel/issues/9780
  [i915#9782]: https://gitlab.freedesktop.org/drm/intel/issues/9782
  [i915#9826]: https://gitlab.freedesktop.org/drm/intel/issues/9826


Build changes
-------------

  * Linux: CI_DRM_13990 -> Patchwork_127465v1

  CI-20190529: 20190529
  CI_DRM_13990: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7626: 154b7288552cd7ed3033f8ef396e88d0bd1b7646 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127465v1: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

de17784582b4 drm/i915/dp: Fix passing the correct DPCD_REV for drm_dp_set_phy_test_pattern
501373f5cb6c drm/i915/dp: Add TPS4 PHY test pattern support
87bde8c90318 drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/index.html

--===============0216183514284536141==
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
<tr><td><b>Series:</b></td><td>series starting with [v3,1/3] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127465/">https://patchwork.freedesktop.org/series/127465/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13990 -&gt; Patchwork_127465v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): bat-dg2-9 fi-snb-2520m bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127465v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9780">i915#9780</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-jsl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9826">i915#9826</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9782">i915#9782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127465v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13990 -&gt; Patchwork_127465v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13990: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7626: 154b7288552cd7ed3033f8ef396e88d0bd1b7646 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127465v1: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>de17784582b4 drm/i915/dp: Fix passing the correct DPCD_REV for drm_dp_set_phy_test_pattern<br />
501373f5cb6c drm/i915/dp: Add TPS4 PHY test pattern support<br />
87bde8c90318 drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names</p>

</body>
</html>

--===============0216183514284536141==--
