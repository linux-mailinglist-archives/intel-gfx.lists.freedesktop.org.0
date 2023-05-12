Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C8D70077B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 14:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A7B10E698;
	Fri, 12 May 2023 12:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 054CD10E696;
 Fri, 12 May 2023 12:10:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFF23AADE4;
 Fri, 12 May 2023 12:10:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7805370641529699906=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 12 May 2023 12:10:47 -0000
Message-ID: <168389344797.26102.8138898360517181377@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230512102310.1398406-1-jani.nikula@intel.com>
In-Reply-To: <20230512102310.1398406-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/irq=3A_convert_gen8=5Fde?=
 =?utf-8?q?=5Firq=5Fhandler=28=29_to_void?=
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

--===============7805370641529699906==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/irq: convert gen8_de_irq_handler() to void
URL   : https://patchwork.freedesktop.org/series/117682/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13141 -> Patchwork_117682v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117682v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117682v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117682v1:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-adlm-1:         NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adlm-1/igt@dmabuf@all-tests@dma_fence.html

  * igt@gem_ctx_create@basic:
    - fi-kbl-soraka:      [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/fi-kbl-soraka/igt@gem_ctx_create@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/fi-kbl-soraka/igt@gem_ctx_create@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-adls-5:         [PASS][4] -> [DMESG-WARN][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-adls-5/igt@gem_tiled_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adls-5/igt@gem_tiled_blits@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_117682v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-adlm-1:         NOTRUN -> [ABORT][6] ([i915#8423])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adlm-1/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][7] ([i915#7077])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-jsl-3:          NOTRUN -> [SKIP][8] ([i915#7828])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-jsl-3/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][9] ([i915#1845] / [i915#5354]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - bat-adls-5:         [DMESG-WARN][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-adls-5/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adls-5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [ABORT][12] ([i915#5122]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][14] ([i915#5334] / [i915#7872]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adlm-1:         [INCOMPLETE][16] ([i915#4983] / [i915#7677]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-6}:       [ABORT][18] ([i915#4983] / [i915#7920] / [i915#7953]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-mtlp-6/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - {bat-mtlp-8}:       [DMESG-WARN][20] ([i915#6367] / [i915#7953]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-mtlp-8/igt@i915_selftest@live@slpc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-mtlp-8/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [FAIL][22] ([fdo#103375]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][24] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347]) -> [ABORT][25] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#7981] / [i915#8347])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-rpls-2/igt@i915_selftest@live@reset.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [ABORT][26] ([i915#4579] / [i915#8260]) -> [SKIP][27] ([i915#3555] / [i915#4579])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7677]: https://gitlab.freedesktop.org/drm/intel/issues/7677
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8423]: https://gitlab.freedesktop.org/drm/intel/issues/8423


Build changes
-------------

  * Linux: CI_DRM_13141 -> Patchwork_117682v1

  CI-20190529: 20190529
  CI_DRM_13141: c201176285d7a79884421d1b907ec858c5aee657 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117682v1: c201176285d7a79884421d1b907ec858c5aee657 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6d6604b9d1a0 drm/i915/irq: split out display irq handling
70be5fc5d1c5 drm/i915/irq: split out hotplug irq handling
f64fdd504a1d drm/i915/irq: convert gen8_de_irq_handler() to void

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/index.html

--===============7805370641529699906==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/irq: convert gen8_de_irq_handler() to void</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117682/">https://patchwork.freedesktop.org/series/117682/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13141 -&gt; Patchwork_117682v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117682v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117682v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117682v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adlm-1/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/fi-kbl-soraka/igt@gem_ctx_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/fi-kbl-soraka/igt@gem_ctx_create@basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-adls-5/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adls-5/igt@gem_tiled_blits@basic.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117682v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adlm-1/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8423">i915#8423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-jsl-3/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-adls-5/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adls-5/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7677">i915#7677</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-mtlp-8/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13141/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117682v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13141 -&gt; Patchwork_117682v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13141: c201176285d7a79884421d1b907ec858c5aee657 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117682v1: c201176285d7a79884421d1b907ec858c5aee657 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6d6604b9d1a0 drm/i915/irq: split out display irq handling<br />
70be5fc5d1c5 drm/i915/irq: split out hotplug irq handling<br />
f64fdd504a1d drm/i915/irq: convert gen8_de_irq_handler() to void</p>

</body>
</html>

--===============7805370641529699906==--
