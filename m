Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86506699D26
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 20:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F161A10E36B;
	Thu, 16 Feb 2023 19:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E83210E36B;
 Thu, 16 Feb 2023 19:47:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18ECAAADF0;
 Thu, 16 Feb 2023 19:47:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7713923582522579446=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Thu, 16 Feb 2023 19:47:37 -0000
Message-ID: <167657685709.17989.11360092732572482935@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230216162729.219979-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230216162729.219979-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Add_a_gpu_page-table_walker?=
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

--===============7713923582522579446==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Add a gpu page-table walker
URL   : https://patchwork.freedesktop.org/series/114109/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12751 -> Patchwork_114109v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_114109v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114109v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/index.html

Participating hosts (38 -> 39)
------------------------------

  Additional (2): bat-atsm-1 fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114109v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      [DMESG-FAIL][3] ([i915#1886]) -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_114109v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@eof:
    - bat-atsm-1:         NOTRUN -> [SKIP][5] ([i915#2582]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@fbdev@eof.html

  * igt@gem_mmap@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][6] ([i915#4083])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@gem_mmap@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][7] ([i915#4077]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][8] ([i915#4079]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-atsm-1:         NOTRUN -> [SKIP][9] ([i915#6621])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg2-11:         [PASS][10] -> [INCOMPLETE][11] ([i915#7609] / [i915#7913])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][12] -> [DMESG-FAIL][13] ([i915#4258])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][14] -> [DMESG-WARN][15] ([i915#8073])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][16] -> [ABORT][17] ([i915#4983])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/bat-rpls-1/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-atsm-1:         NOTRUN -> [SKIP][18] ([i915#6645])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@size-max:
    - bat-atsm-1:         NOTRUN -> [SKIP][19] ([i915#6077]) +36 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-n3050:       [PASS][20] -> [FAIL][21] ([i915#6298])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor:
    - bat-atsm-1:         NOTRUN -> [SKIP][22] ([i915#6078]) +14 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor.html

  * igt@kms_flip@basic-plain-flip:
    - bat-atsm-1:         NOTRUN -> [SKIP][23] ([i915#6166]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-atsm-1:         NOTRUN -> [SKIP][24] ([i915#6093]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][25] ([i915#1836]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][26] ([i915#3546]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_prop_blob@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][27] ([i915#7357])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_prop_blob@basic.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][28] ([fdo#109271]) +44 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-atsm-1:         NOTRUN -> [SKIP][29] ([i915#1072]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-atsm-1:         NOTRUN -> [SKIP][30] ([i915#6094])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-atsm-1:         NOTRUN -> [SKIP][31] ([fdo#109295] / [i915#6078])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-atsm-1:         NOTRUN -> [SKIP][32] ([fdo#109295] / [i915#4077]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-atsm-1:         NOTRUN -> [SKIP][33] ([fdo#109295]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@prime_vgem@basic-write.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8073]: https://gitlab.freedesktop.org/drm/intel/issues/8073


Build changes
-------------

  * Linux: CI_DRM_12751 -> Patchwork_114109v1

  CI-20190529: 20190529
  CI_DRM_12751: b6ba15d59cdc7e7d488646370f9ca6b0a36f9db5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7161: 5574f110ae838031eef6db5236bad02e8c2d2dee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114109v1: b6ba15d59cdc7e7d488646370f9ca6b0a36f9db5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

55bda49b1ace drm: Add a gpu page-table walker helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/index.html

--===============7713923582522579446==
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
<tr><td><b>Series:</b></td><td>drm: Add a gpu page-table walker</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114109/">https://patchwork.freedesktop.org/series/114109/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12751 -&gt; Patchwork_114109v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_114109v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114109v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/index.html</p>
<h2>Participating hosts (38 -&gt; 39)</h2>
<p>Additional (2): bat-atsm-1 fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114109v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114109v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073">i915#8073</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6077">i915#6077</a>) +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12751/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6166">i915#6166</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6093">i915#6093</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_prop_blob@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7357">i915#7357</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6094">i915#6094</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114109v1/bat-atsm-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12751 -&gt; Patchwork_114109v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12751: b6ba15d59cdc7e7d488646370f9ca6b0a36f9db5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7161: 5574f110ae838031eef6db5236bad02e8c2d2dee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114109v1: b6ba15d59cdc7e7d488646370f9ca6b0a36f9db5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>55bda49b1ace drm: Add a gpu page-table walker helper</p>

</body>
</html>

--===============7713923582522579446==--
