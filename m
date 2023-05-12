Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0070670016A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 09:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3830310E4BF;
	Fri, 12 May 2023 07:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2285310E107;
 Fri, 12 May 2023 07:26:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13DDCA73C7;
 Fri, 12 May 2023 07:26:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3634977223474601655=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 12 May 2023 07:26:08 -0000
Message-ID: <168387636807.26102.6714761899715129396@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230512062417.2584427-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230512062417.2584427-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRFND?=
 =?utf-8?q?_misc_fixes?=
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

--===============3634977223474601655==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DSC misc fixes
URL   : https://patchwork.freedesktop.org/series/117662/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13140 -> Patchwork_117662v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117662v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117662v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/index.html

Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-kbl-soraka fi-snb-2520m bat-rpls-2 fi-bsw-nick bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117662v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@bad-pitch-0:
    - bat-adls-5:         [PASS][1] -> [DMESG-WARN][2] +37 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-adls-5/igt@kms_addfb_basic@bad-pitch-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-adls-5/igt@kms_addfb_basic@bad-pitch-0.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@basic:
    - bat-jsl-3:          [SKIP][3] ([i915#4613]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-jsl-3/igt@gem_lmem_swapping@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_117662v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][5] ([i915#7077])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-adls-5:         [PASS][6] -> [SKIP][7] ([i915#668]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-adls-5/igt@kms_psr@sprite_plane_onoff.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-adls-5/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         NOTRUN -> [SKIP][8] ([i915#3555] / [i915#4579])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_engines:
    - bat-atsm-1:         [FAIL][9] ([i915#6268]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-atsm-1/igt@i915_selftest@live@gt_engines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-atsm-1/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-6}:       [ABORT][11] ([i915#4983] / [i915#7920] / [i915#7953]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         [ABORT][13] -> [SKIP][14] ([i915#1072])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953


Build changes
-------------

  * Linux: CI_DRM_13140 -> Patchwork_117662v1

  CI-20190529: 20190529
  CI_DRM_13140: 42375f267a2451a1b2a1d5dc753785d7f1b7d9b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117662v1: 42375f267a2451a1b2a1d5dc753785d7f1b7d9b3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9f2cf8e6c6d0 drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
6c98712ec3bc drm/i915/dp: Get optimal link config to have best compressed bpp
e536dc197be2 drm/i915/dp: Rename helpers to get DSC max pipe_bpp/output_bpp
a3dbd498a32d drm/i915/dp: Avoid left shift of DSC output bpp by 4
420858a01dc8 drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also
36131a9f8402 drm/i915/dp: Avoid forcing DSC BPC for MST case
e0d5f2a104a4 drm/display/dp: Fix the DP DSC Receiver cap size
295f9cf7ca12 drm/i915/dp: Remove extra logs for printing DSC info
34acd13cf9c1 drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck
363dffb6000f drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp
a6c8d78eb6ee drm/i915/dp: Use consistent name for link bpp and compressed bpp
747bfc2f0c97 drm/i915/dp_mst: Use output_format to get the final link bpp
7592e0e9ee29 drm/i915/dp: Consider output_format while computing dsc bpp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/index.html

--===============3634977223474601655==
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
<tr><td><b>Series:</b></td><td>DSC misc fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117662/">https://patchwork.freedesktop.org/series/117662/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13140 -&gt; Patchwork_117662v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117662v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117662v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/index.html</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-kbl-soraka fi-snb-2520m bat-rpls-2 fi-bsw-nick bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117662v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_addfb_basic@bad-pitch-0:<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-adls-5/igt@kms_addfb_basic@bad-pitch-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-adls-5/igt@kms_addfb_basic@bad-pitch-0.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_lmem_swapping@basic:<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117662v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-adls-5/igt@kms_psr@sprite_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-adls-5/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/668">i915#668</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-atsm-1/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_mmap_gtt:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13140/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v1/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13140 -&gt; Patchwork_117662v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13140: 42375f267a2451a1b2a1d5dc753785d7f1b7d9b3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117662v1: 42375f267a2451a1b2a1d5dc753785d7f1b7d9b3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9f2cf8e6c6d0 drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info<br />
6c98712ec3bc drm/i915/dp: Get optimal link config to have best compressed bpp<br />
e536dc197be2 drm/i915/dp: Rename helpers to get DSC max pipe_bpp/output_bpp<br />
a3dbd498a32d drm/i915/dp: Avoid left shift of DSC output bpp by 4<br />
420858a01dc8 drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also<br />
36131a9f8402 drm/i915/dp: Avoid forcing DSC BPC for MST case<br />
e0d5f2a104a4 drm/display/dp: Fix the DP DSC Receiver cap size<br />
295f9cf7ca12 drm/i915/dp: Remove extra logs for printing DSC info<br />
34acd13cf9c1 drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck<br />
363dffb6000f drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp<br />
a6c8d78eb6ee drm/i915/dp: Use consistent name for link bpp and compressed bpp<br />
747bfc2f0c97 drm/i915/dp_mst: Use output_format to get the final link bpp<br />
7592e0e9ee29 drm/i915/dp: Consider output_format while computing dsc bpp</p>

</body>
</html>

--===============3634977223474601655==--
