Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B645829CE3
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 15:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65BB910E5E4;
	Wed, 10 Jan 2024 14:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1744110E5F9;
 Wed, 10 Jan 2024 14:54:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5923423108510780096=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_series_starting_with_=5B1/2?=
 =?utf-8?q?=5D_mm=3A_add_a_mapping=5Fclear=5Flarge=5Ffolios_helper?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Wed, 10 Jan 2024 14:54:33 -0000
Message-ID: <170489847309.216241.10133445272001043885@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240110092109.1950011-1-hch@lst.de>
In-Reply-To: <20240110092109.1950011-1-hch@lst.de>
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

--===============5923423108510780096==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] mm: add a mapping_clear_large_folios helper
URL   : https://patchwork.freedesktop.org/series/128420/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14108 -> Patchwork_128420v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128420v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128420v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (1): bat-mtlp-8 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128420v1:

### CI changes ###

#### Possible regressions ####

  * boot:
    - bat-rpls-2:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/bat-rpls-2/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-rpls-2/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_128420v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/fi-bsw-n3050/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-mtlp-8:         NOTRUN -> [SKIP][5] ([i915#9318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-mtlp-8:         NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][7] ([i915#4083])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][8] ([i915#4077]) +2 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][9] ([i915#4079]) +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-mtlp-8:         NOTRUN -> [SKIP][10] ([i915#6621])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][11] ([i915#6645])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][12] ([i915#5190])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][13] ([i915#4212]) +8 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-mtlp-8:         NOTRUN -> [SKIP][14] ([i915#4213]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-mtlp-8:         NOTRUN -> [SKIP][15] ([i915#3555] / [i915#3840] / [i915#9159])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-mtlp-8:         NOTRUN -> [SKIP][16] ([fdo#109285])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-mtlp-8:         NOTRUN -> [SKIP][17] ([i915#5274])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][18] ([i915#1836])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-mtlp-8:         NOTRUN -> [SKIP][19] ([i915#3555] / [i915#8809])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-mtlp-8:         NOTRUN -> [SKIP][20] ([i915#3708] / [i915#4077]) +1 other test skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-mtlp-8:         NOTRUN -> [SKIP][21] ([i915#3708]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - bat-atsm-1:         [ABORT][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9159]: https://gitlab.freedesktop.org/drm/intel/issues/9159
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688


Build changes
-------------

  * Linux: CI_DRM_14108 -> Patchwork_128420v1

  CI-20190529: 20190529
  CI_DRM_14108: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7666: 5f97adfd0e1636788a6af5b592f0d15b4f1027c8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128420v1: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7691534a4217 xfs: disable large folio support in xfile_create
e80c21ce38cb mm: add a mapping_clear_large_folios helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/index.html

--===============5923423108510780096==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] mm: add a mapping_clear_large_folios helper</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128420/">https://patchwork.freedesktop.org/series/128420/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14108 -&gt; Patchwork_128420v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128420v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_128420v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (1): bat-mtlp-8 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128420v1:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/bat-rpls-2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-rpls-2/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128420v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9159">i915#9159</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@lmem0:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128420v1/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14108 -&gt; Patchwork_128420v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14108: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7666: 5f97adfd0e1636788a6af5b592f0d15b4f1027c8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128420v1: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7691534a4217 xfs: disable large folio support in xfile_create<br />
e80c21ce38cb mm: add a mapping_clear_large_folios helper</p>

</body>
</html>

--===============5923423108510780096==--
