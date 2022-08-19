Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A72FE599CAF
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 15:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 917CA10EDA0;
	Fri, 19 Aug 2022 13:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1C3F10EDCA;
 Fri, 19 Aug 2022 13:15:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B139AAA914;
 Fri, 19 Aug 2022 13:15:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4079438108385368518=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wolfram Sang" <wsa+renesas@sang-engineering.com>
Date: Fri, 19 Aug 2022 13:15:37 -0000
Message-ID: <166091493768.23793.14641028956132175748@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220818210008.6721-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20220818210008.6721-1-wsa+renesas@sang-engineering.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZ3B1?=
 =?utf-8?q?=3A_move_from_strlcpy_with_unused_retval_to_strscpy?=
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

--===============4079438108385368518==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: gpu: move from strlcpy with unused retval to strscpy
URL   : https://patchwork.freedesktop.org/series/107501/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12003 -> Patchwork_107501v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107501v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107501v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/index.html

Participating hosts (30 -> 39)
------------------------------

  Additional (9): fi-rkl-11600 bat-dg2-8 bat-adlm-1 bat-dg2-10 bat-adlp-6 bat-adln-1 bat-jsl-3 bat-rpls-1 bat-rpls-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107501v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_basic@bad-close:
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-5/igt@gem_basic@bad-close.html
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-6/igt@gem_basic@bad-close.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - bat-dg1-6:          [INCOMPLETE][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/bat-dg1-6/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-6/igt@debugfs_test@read_all_entries.html
    - bat-dg1-5:          [INCOMPLETE][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/bat-dg1-5/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-5/igt@debugfs_test@read_all_entries.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-elk-e7500:       [INCOMPLETE][7] ([i915#6598] / [i915#6601]) -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-adln-1}:       NOTRUN -> [TIMEOUT][9] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-adln-1/igt@debugfs_test@read_all_entries.html
    - {bat-dg2-8}:        NOTRUN -> [TIMEOUT][10] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html
    - {bat-rpls-1}:       NOTRUN -> [TIMEOUT][11] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rpls-1/igt@debugfs_test@read_all_entries.html
    - {bat-rpls-2}:       NOTRUN -> [TIMEOUT][12] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rpls-2/igt@debugfs_test@read_all_entries.html
    - {bat-rplp-1}:       [INCOMPLETE][13] -> [TIMEOUT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/bat-rplp-1/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rplp-1/igt@debugfs_test@read_all_entries.html
    - {bat-dg2-9}:        [INCOMPLETE][15] -> [TIMEOUT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/bat-dg2-9/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html

  * igt@gem_basic@bad-close:
    - {bat-adln-1}:       NOTRUN -> [INCOMPLETE][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-adln-1/igt@gem_basic@bad-close.html
    - {bat-dg2-8}:        NOTRUN -> [INCOMPLETE][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-8/igt@gem_basic@bad-close.html
    - {bat-rplp-1}:       NOTRUN -> [INCOMPLETE][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rplp-1/igt@gem_basic@bad-close.html
    - {bat-rpls-1}:       NOTRUN -> [INCOMPLETE][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rpls-1/igt@gem_basic@bad-close.html
    - {bat-dg2-9}:        NOTRUN -> [INCOMPLETE][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-9/igt@gem_basic@bad-close.html
    - {bat-rpls-2}:       NOTRUN -> [INCOMPLETE][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rpls-2/igt@gem_basic@bad-close.html

  * igt@i915_selftest@live@uncore:
    - {bat-dg2-10}:       NOTRUN -> [INCOMPLETE][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-10/igt@i915_selftest@live@uncore.html

  * igt@runner@aborted:
    - {bat-adlm-1}:       NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-adlm-1/igt@runner@aborted.html
    - {bat-adlp-6}:       NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-adlp-6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_107501v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@read:
    - bat-dg1-5:          NOTRUN -> [SKIP][26] ([i915#2582]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-5/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][27] ([i915#6179])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-rkl-11600:       NOTRUN -> [SKIP][28] ([i915#2190])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-rkl-11600:       NOTRUN -> [SKIP][29] ([i915#4613]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - fi-rkl-11600:       NOTRUN -> [SKIP][30] ([i915#3282])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-11600:       NOTRUN -> [SKIP][31] ([i915#3012])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       NOTRUN -> [FAIL][32] ([fdo#103375])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][33] ([i915#6598] / [i915#6601])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][34] ([i915#4817] / [i915#6598])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-hsw-4770/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-rkl-11600:       NOTRUN -> [SKIP][35] ([fdo#111827]) +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-rkl-11600:       NOTRUN -> [SKIP][36] ([i915#4103])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-11600:       NOTRUN -> [SKIP][37] ([fdo#109285] / [i915#4098])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-rkl-11600:       NOTRUN -> [SKIP][38] ([i915#1072]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-rkl-11600:       NOTRUN -> [SKIP][39] ([i915#3555] / [i915#4098])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-read:
    - fi-rkl-11600:       NOTRUN -> [SKIP][40] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - fi-rkl-11600:       NOTRUN -> [SKIP][41] ([fdo#109295] / [i915#3301] / [i915#3708])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][42] ([i915#4785]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][44] ([i915#4528]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6179]: https://gitlab.freedesktop.org/drm/intel/issues/6179
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601
  [i915#6627]: https://gitlab.freedesktop.org/drm/intel/issues/6627


Build changes
-------------

  * Linux: CI_DRM_12003 -> Patchwork_107501v1

  CI-20190529: 20190529
  CI_DRM_12003: 5852b759ca0d67530d1dae6ab66c351e796fe39d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6632: a0ac4d449e551fd5c78b56f85cd534330ea60507 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107501v1: 5852b759ca0d67530d1dae6ab66c351e796fe39d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

49e5ce80b278 gpu: move from strlcpy with unused retval to strscpy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/index.html

--===============4079438108385368518==
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
<tr><td><b>Series:</b></td><td>gpu: move from strlcpy with unused retval to strscpy</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107501/">https://patchwork.freedesktop.org/series/107501/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12003 -&gt; Patchwork_107501v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107501v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107501v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/index.html</p>
<h2>Participating hosts (30 -&gt; 39)</h2>
<p>Additional (9): fi-rkl-11600 bat-dg2-8 bat-adlm-1 bat-dg2-10 bat-adlp-6 bat-adln-1 bat-jsl-3 bat-rpls-1 bat-rpls-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107501v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-5/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-6/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/bat-dg1-6/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-6/igt@debugfs_test@read_all_entries.html">TIMEOUT</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/bat-dg1-5/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-5/igt@debugfs_test@read_all_entries.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-adln-1/igt@debugfs_test@read_all_entries.html">TIMEOUT</a> +2 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html">TIMEOUT</a> +2 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rpls-1/igt@debugfs_test@read_all_entries.html">TIMEOUT</a> +1 similar issue</p>
</li>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rpls-2/igt@debugfs_test@read_all_entries.html">TIMEOUT</a> +1 similar issue</p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/bat-rplp-1/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rplp-1/igt@debugfs_test@read_all_entries.html">TIMEOUT</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/bat-dg2-9/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-adln-1/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-8/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rplp-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rplp-1/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rpls-1/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-9/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-rpls-2/igt@gem_basic@bad-close.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>{bat-dg2-10}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg2-10/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-adlm-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-adlp-6/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107501v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/bat-dg1-5/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6179">i915#6179</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-hsw-4770/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12003/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107501v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12003 -&gt; Patchwork_107501v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12003: 5852b759ca0d67530d1dae6ab66c351e796fe39d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6632: a0ac4d449e551fd5c78b56f85cd534330ea60507 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107501v1: 5852b759ca0d67530d1dae6ab66c351e796fe39d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>49e5ce80b278 gpu: move from strlcpy with unused retval to strscpy</p>

</body>
</html>

--===============4079438108385368518==--
