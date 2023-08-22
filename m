Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55752783A16
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 08:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518F710E2EA;
	Tue, 22 Aug 2023 06:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7375D10E2DB;
 Tue, 22 Aug 2023 06:38:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67B22AA01E;
 Tue, 22 Aug 2023 06:38:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2301891494107744170=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 22 Aug 2023 06:38:36 -0000
Message-ID: <169268631639.20551.6621408268173450968@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR2V0?=
 =?utf-8?q?_optimal_audio_frequency_and_channels_=28rev9=29?=
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

--===============2301891494107744170==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Get optimal audio frequency and channels (rev9)
URL   : https://patchwork.freedesktop.org/series/119121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13530 -> Patchwork_119121v9
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_119121v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-8:         NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-8:         NOTRUN -> [SKIP][4] ([i915#6621])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#1886] / [i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@objects:
    - fi-ilk-650:         [PASS][6] -> [INCOMPLETE][7] ([i915#9167])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/fi-ilk-650/igt@i915_selftest@live@objects.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-ilk-650/igt@i915_selftest@live@objects.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-adlm-1:         NOTRUN -> [INCOMPLETE][8] ([i915#7443])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][9] ([i915#6645])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][10] ([fdo#109271]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [ABORT][11] ([i915#8442] / [i915#8469] / [i915#8668])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-8:         NOTRUN -> [SKIP][12] ([i915#3708] / [i915#4077]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-mtlp-8:         NOTRUN -> [SKIP][13] ([i915#3708]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-mtlp-8:         [ABORT][14] ([i915#7977] / [i915#8668]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlm-1:         [INCOMPLETE][16] ([i915#4983]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][18] ([i915#7699]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
#### Warnings ####

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rplp-1:         [ABORT][20] ([i915#8442] / [i915#8668] / [i915#8712]) -> [SKIP][21] ([i915#1072])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#486]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/486
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8712]: https://gitlab.freedesktop.org/drm/intel/issues/8712
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879
  [i915#9167]: https://gitlab.freedesktop.org/drm/intel/issues/9167


Build changes
-------------

  * Linux: CI_DRM_13530 -> Patchwork_119121v9

  CI-20190529: 20190529
  CI_DRM_13530: d97cc063202bec7acb2e45909f45ebdecb44ff41 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7442: f6eea5a02525d62d10596408d1175c83d6f4038e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119121v9: d97cc063202bec7acb2e45909f45ebdecb44ff41 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b4eae9c6b086 drm/i915/display: Add wrapper to Compute SAD
c93e25e4cc51 drm/i915/display: Configure and initialize HDMI audio capabilities
14706fa40af7 drm/i915: Add has_audio to separate audio parameter in crtc_state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/index.html

--===============2301891494107744170==
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
<tr><td><b>Series:</b></td><td>Get optimal audio frequency and channels (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119121/">https://patchwork.freedesktop.org/series/119121/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13530 -&gt; Patchwork_119121v9</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119121v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/fi-ilk-650/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-ilk-650/igt@i915_selftest@live@objects.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9167">i915#9167</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-adlm-1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-mtlp-8/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@sprite_plane_onoff:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13530/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8712">i915#8712</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v9/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13530 -&gt; Patchwork_119121v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13530: d97cc063202bec7acb2e45909f45ebdecb44ff41 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7442: f6eea5a02525d62d10596408d1175c83d6f4038e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119121v9: d97cc063202bec7acb2e45909f45ebdecb44ff41 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b4eae9c6b086 drm/i915/display: Add wrapper to Compute SAD<br />
c93e25e4cc51 drm/i915/display: Configure and initialize HDMI audio capabilities<br />
14706fa40af7 drm/i915: Add has_audio to separate audio parameter in crtc_state</p>

</body>
</html>

--===============2301891494107744170==--
