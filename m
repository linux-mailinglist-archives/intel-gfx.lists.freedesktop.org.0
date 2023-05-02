Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB856F4711
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1585B10E311;
	Tue,  2 May 2023 15:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E75C10E311;
 Tue,  2 May 2023 15:25:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1774CAADDA;
 Tue,  2 May 2023 15:25:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0293562853559266484=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 02 May 2023 15:25:46 -0000
Message-ID: <168304114606.18870.13946232341988591712@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_MST+DSC_nukage_and_state_stuff?=
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

--===============0293562853559266484==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: MST+DSC nukage and state stuff
URL   : https://patchwork.freedesktop.org/series/117201/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13097 -> Patchwork_117201v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117201v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117201v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117201v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-7567u:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/fi-kbl-7567u/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-7567u/igt@kms_chamelium_frames@hdmi-crc-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_117201v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#1886] / [i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-7:          [PASS][6] -> [ABORT][7] ([i915#4983])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-dg1-7/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/bat-dg1-7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271]) +16 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@fds:
    - {bat-mtlp-8}:       [ABORT][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-mtlp-8/igt@gem_exec_parallel@engines@fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/bat-mtlp-8/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-6}:       [ABORT][11] ([i915#4983] / [i915#7920]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/bat-mtlp-6/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][13] ([i915#7932]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8368]: https://gitlab.freedesktop.org/drm/intel/issues/8368
  [i915#8379]: https://gitlab.freedesktop.org/drm/intel/issues/8379


Build changes
-------------

  * Linux: CI_DRM_13097 -> Patchwork_117201v1

  CI-20190529: 20190529
  CI_DRM_13097: 1413856e3770380da743e274a06896acabf49e0e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7277: 1cb3507f3ff28d11bd5cfabcde576fe78ddab571 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117201v1: 1413856e3770380da743e274a06896acabf49e0e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

64144f54c478 drm/i915: Reduce combo PHY log spam
1497222bf809 drm/i915: Drop some redundant eDP checks
99b827268f93 drm/i915: Stop spamming the logs with PLL state
520376fc9123 drm/i915: Introduce crtc_state->enhanced_framing
3bda143ed335 drm/i915: Split some long lines
18164c0d9115 drm/i915: Fix FEC state dump
ce9df9e342e3 drm/i915: Check lane count when determining FEC support
d73abf197659 drm/i915: Fix FEC pipe A vs. DDI A mixup
26935dadddfb drm/i915/mst: Read out FEC state
231af8fdaf87 drm/i915/mst: Remove broken MST DSC support
5f53dcd0d3d4 drm/dp_mst: Fix fractional DSC bpp handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/index.html

--===============0293562853559266484==
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
<tr><td><b>Series:</b></td><td>drm/i915: MST+DSC nukage and state stuff</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117201/">https://patchwork.freedesktop.org/series/117201/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13097 -&gt; Patchwork_117201v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117201v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117201v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117201v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium_frames@hdmi-crc-fast:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/fi-kbl-7567u/igt@kms_chamelium_frames@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-7567u/igt@kms_chamelium_frames@hdmi-crc-fast.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117201v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-dg1-7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/bat-dg1-7/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-mtlp-8/igt@gem_exec_parallel@engines@fds.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/bat-mtlp-8/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13097/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117201v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13097 -&gt; Patchwork_117201v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13097: 1413856e3770380da743e274a06896acabf49e0e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7277: 1cb3507f3ff28d11bd5cfabcde576fe78ddab571 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117201v1: 1413856e3770380da743e274a06896acabf49e0e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>64144f54c478 drm/i915: Reduce combo PHY log spam<br />
1497222bf809 drm/i915: Drop some redundant eDP checks<br />
99b827268f93 drm/i915: Stop spamming the logs with PLL state<br />
520376fc9123 drm/i915: Introduce crtc_state-&gt;enhanced_framing<br />
3bda143ed335 drm/i915: Split some long lines<br />
18164c0d9115 drm/i915: Fix FEC state dump<br />
ce9df9e342e3 drm/i915: Check lane count when determining FEC support<br />
d73abf197659 drm/i915: Fix FEC pipe A vs. DDI A mixup<br />
26935dadddfb drm/i915/mst: Read out FEC state<br />
231af8fdaf87 drm/i915/mst: Remove broken MST DSC support<br />
5f53dcd0d3d4 drm/dp_mst: Fix fractional DSC bpp handling</p>

</body>
</html>

--===============0293562853559266484==--
