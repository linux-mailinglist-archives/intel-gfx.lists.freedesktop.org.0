Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BED6D258F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 18:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0943C10E066;
	Fri, 31 Mar 2023 16:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9942E10E066;
 Fri, 31 Mar 2023 16:32:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90EB8A7DFF;
 Fri, 31 Mar 2023 16:32:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4570865662486109283=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 31 Mar 2023 16:32:42 -0000
Message-ID: <168028036256.14984.12912267029821778303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSGFu?=
 =?utf-8?q?dle_BPC_for_HDMI2=2E1_PCON_without_DSC1=2E2_sink_and_other_fixe?=
 =?utf-8?b?cyAocmV2MTMp?=
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

--===============4570865662486109283==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev13)
URL   : https://patchwork.freedesktop.org/series/107550/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12951 -> Patchwork_107550v13
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_107550v13 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-dg2-8:          [PASS][1] -> [SKIP][2] ([i915#2582]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-8/igt@fbdev@info.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6600u:       [PASS][5] -> [DMESG-FAIL][6] ([i915#5334])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][7] ([i915#1886])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [PASS][8] -> [ABORT][9] ([i915#4983] / [i915#7913])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-rpls-2/igt@i915_selftest@live@reset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-rpls-2/igt@i915_selftest@live@reset.html
    - bat-rpls-1:         [PASS][10] -> [ABORT][11] ([i915#4983])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-rpls-1/igt@i915_selftest@live@reset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][12] ([fdo#109271]) +16 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-11:         NOTRUN -> [SKIP][13] ([i915#7828])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - bat-dg2-8:          [PASS][14] -> [SKIP][15] ([i915#5354]) +6 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][16] ([i915#5354]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-dg2-8:          NOTRUN -> [SKIP][17] ([i915#5354]) +11 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [DMESG-WARN][18] ([i915#8073]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-11:         [ABORT][20] ([i915#7913]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-8:          [SKIP][22] ([i915#4103] / [i915#4213]) -> [SKIP][23] ([i915#5354]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-8:          [SKIP][24] ([i915#3708]) -> [SKIP][25] ([i915#3708] / [i915#5354])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8073]: https://gitlab.freedesktop.org/drm/intel/issues/8073


Build changes
-------------

  * Linux: CI_DRM_12951 -> Patchwork_107550v13

  CI-20190529: 20190529
  CI_DRM_12951: f128906b94b25a0f0c12dc8c647b8adc8d934d8c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7230: f0485204004305dd3ee8f8bbbb9c552e53a4e050 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107550v13: f128906b94b25a0f0c12dc8c647b8adc8d934d8c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2515cdc75765 drm/i915/dp: Use consistent name for link bpp and compressed bpp
f97350c08c46 drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints
62eed15665fc drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
08bd833c23bb drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
1e255d381fc7 drm/i915/dp_mst: Use output_format to get the final link bpp
f9e3af1813ab drm/i915/dp: Consider output_format while computing dsc bpp
a713b58cf018 drm/i915/dp: Rearrange check for illegal mode and comments in mode_valid
ee5aaf9f407a drm/i915/dp: Add helper to get sink_format
8cb844470546 drm/i915/display: Use sink_format instead of ycbcr420_output flag
f7d09bdb43e1 drm/i915/dp: Configure PCON for conversion of output_format to YCbCr444
fc2d575155a5 drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format
249bf42e3a9c drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap
e983993c337c drm/i915/display: Add new member to configure PCON color conversion

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/index.html

--===============4570865662486109283==
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
<tr><td><b>Series:</b></td><td>Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev13)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107550/">https://patchwork.freedesktop.org/series/107550/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12951 -&gt; Patchwork_107550v13</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107550v13 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-8/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +11 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073">i915#8073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107550v13/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12951 -&gt; Patchwork_107550v13</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12951: f128906b94b25a0f0c12dc8c647b8adc8d934d8c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7230: f0485204004305dd3ee8f8bbbb9c552e53a4e050 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107550v13: f128906b94b25a0f0c12dc8c647b8adc8d934d8c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2515cdc75765 drm/i915/dp: Use consistent name for link bpp and compressed bpp<br />
f97350c08c46 drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints<br />
62eed15665fc drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP<br />
08bd833c23bb drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC<br />
1e255d381fc7 drm/i915/dp_mst: Use output_format to get the final link bpp<br />
f9e3af1813ab drm/i915/dp: Consider output_format while computing dsc bpp<br />
a713b58cf018 drm/i915/dp: Rearrange check for illegal mode and comments in mode_valid<br />
ee5aaf9f407a drm/i915/dp: Add helper to get sink_format<br />
8cb844470546 drm/i915/display: Use sink_format instead of ycbcr420_output flag<br />
f7d09bdb43e1 drm/i915/dp: Configure PCON for conversion of output_format to YCbCr444<br />
fc2d575155a5 drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format<br />
249bf42e3a9c drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap<br />
e983993c337c drm/i915/display: Add new member to configure PCON color conversion</p>

</body>
</html>

--===============4570865662486109283==--
