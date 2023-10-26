Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2FA7D8932
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 21:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC1210E886;
	Thu, 26 Oct 2023 19:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E24610E885;
 Thu, 26 Oct 2023 19:53:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28E61A00E6;
 Thu, 26 Oct 2023 19:53:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2131100208473411489=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Thu, 26 Oct 2023 19:53:02 -0000
Message-ID: <169834998216.20472.12317278351127701883@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231025102826.16955-1-nirmoy.das@intel.com>
In-Reply-To: <20231025102826.16955-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Apply_notify=5Fguc_to_all_GTs_=28rev2=29?=
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

--===============2131100208473411489==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Apply notify_guc to all GTs (rev2)
URL   : https://patchwork.freedesktop.org/series/125560/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13792 -> Patchwork_125560v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125560v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125560v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125560v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-9:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-dg2-9/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-dg2-9/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_125560v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][5] -> [FAIL][6] ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-jsl-1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-jsl-1/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-hsw-4770:        [FAIL][7] ([i915#8293]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/fi-hsw-4770/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#2190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg2-11:         [PASS][11] -> [INCOMPLETE][12] ([i915#9413])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][13] ([i915#1886])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#5190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271]) +9 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][16] -> [FAIL][17] ([IGT#3])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - fi-hsw-4770:        NOTRUN -> [SKIP][18] ([fdo#109271]) +12 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][19] ([i915#3546]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][20] -> [ABORT][21] ([i915#8668])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:
    - fi-hsw-4770:        NOTRUN -> [DMESG-WARN][22] ([i915#8841]) +6 other tests dmesg-warn
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#1072]) +3 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg1-5:          [ABORT][24] ([i915#9413]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-dg1-5/igt@i915_selftest@live@workarounds.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-dg1-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-nick:        [FAIL][26] ([i915#9276]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276
  [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413


Build changes
-------------

  * Linux: CI_DRM_13792 -> Patchwork_125560v2

  CI-20190529: 20190529
  CI_DRM_13792: 6653204bd711f268e80ea3d84f135a923be6b28e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7559: 62ac3d2ddb6005b16df00a36565779848c1390c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125560v2: 6653204bd711f268e80ea3d84f135a923be6b28e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2abeea3085e9 drm/i915/mtl: Apply notify_guc to all GTs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/index.html

--===============2131100208473411489==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Apply notify_guc to all GTs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125560/">https://patchwork.freedesktop.org/series/125560/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13792 -&gt; Patchwork_125560v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125560v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125560v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125560v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-dg2-9/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125560v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/bat-dg1-5/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/bat-dg1-5/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13792/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9276">i915#9276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125560v2/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13792 -&gt; Patchwork_125560v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13792: 6653204bd711f268e80ea3d84f135a923be6b28e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7559: 62ac3d2ddb6005b16df00a36565779848c1390c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125560v2: 6653204bd711f268e80ea3d84f135a923be6b28e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2abeea3085e9 drm/i915/mtl: Apply notify_guc to all GTs</p>

</body>
</html>

--===============2131100208473411489==--
