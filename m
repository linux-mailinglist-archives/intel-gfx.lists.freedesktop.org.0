Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 327AF4C9814
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 23:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1D810E5F0;
	Tue,  1 Mar 2022 22:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C6B010E5F0;
 Tue,  1 Mar 2022 22:00:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A37FA0118;
 Tue,  1 Mar 2022 22:00:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2104866970107997633=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 01 Mar 2022 22:00:21 -0000
Message-ID: <164617202141.8599.1539649507930642056@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220301170835.682715-1-matthew.auld@intel.com>
In-Reply-To: <20220301170835.682715-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gtt=3A_reduce_overzea?=
 =?utf-8?q?lous_alignment_constraints_for_GGTT?=
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

--===============2104866970107997633==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/gtt: reduce overzealous alignment constraints for GGTT
URL   : https://patchwork.freedesktop.org/series/100898/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11306 -> Patchwork_22449
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22449 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22449, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/index.html

Participating hosts (50 -> 42)
------------------------------

  Missing    (8): fi-kbl-soraka shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 bat-jsl-2 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22449:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-cml-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-cml-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@flip:
    - {bat-dg2-9}:        [INCOMPLETE][3] ([i915#5194]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/bat-dg2-9/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/bat-dg2-9/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_22449 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][5] -> [FAIL][6] ([i915#4547])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-ivb-3770:        NOTRUN -> [SKIP][7] ([fdo#109271]) +35 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-ivb-3770/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [PASS][8] -> [DMESG-FAIL][9] ([i915#4494] / [i915#4957])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ivb-3770:        NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - bat-adlp-4:         [PASS][11] -> [DMESG-WARN][12] ([i915#3576])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [FAIL][13] ([i915#3194]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@eof:
    - {bat-dg2-9}:        [FAIL][15] ([i915#5186]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/bat-dg2-9/igt@fbdev@eof.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/bat-dg2-9/igt@fbdev@eof.html

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [DMESG-FAIL][17] ([i915#1886]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][19] ([i915#3303]) -> [INCOMPLETE][20] ([i915#4785])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][21] ([i915#1436] / [i915#4312]) -> [FAIL][22] ([i915#4312])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-skl-6600u/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-skl-6600u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5186]: https://gitlab.freedesktop.org/drm/intel/issues/5186
  [i915#5194]: https://gitlab.freedesktop.org/drm/intel/issues/5194


Build changes
-------------

  * Linux: CI_DRM_11306 -> Patchwork_22449

  CI-20190529: 20190529
  CI_DRM_11306: 0eb492df610222f39eb2ad5a903626dd3ad9aea2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6361: 2372a4beb6a33c5f0799a4a8ccbb93794f52dbca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22449: 5ba0a226203a591fd784e820075855f68fc3b157 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5ba0a226203a drm/i915: Use i915_gem_object_pin_map_unlocked function for lmem allocation
4144e1582c9f drm/i915/fbdev: fixup setting screen_size
61b713195d33 drm/i915/gtt: reduce overzealous alignment constraints for GGTT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/index.html

--===============2104866970107997633==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/gtt: reduce overzealous alignment constraints for GGTT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100898/">https://patchwork.freedesktop.org/series/100898/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11306 -&gt; Patchwork_22449</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22449 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22449, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/index.html</p>
<h2>Participating hosts (50 -&gt; 42)</h2>
<p>Missing    (8): fi-kbl-soraka shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 bat-jsl-2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22449:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-cml-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-cml-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_busy@basic@flip:<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/bat-dg2-9/igt@kms_busy@basic@flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5194">i915#5194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/bat-dg2-9/igt@kms_busy@basic@flip.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22449 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-ivb-3770/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-ivb-3770/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/bat-dg2-9/igt@fbdev@eof.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5186">i915#5186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/bat-dg2-9/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11306/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22449/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11306 -&gt; Patchwork_22449</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11306: 0eb492df610222f39eb2ad5a903626dd3ad9aea2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6361: 2372a4beb6a33c5f0799a4a8ccbb93794f52dbca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22449: 5ba0a226203a591fd784e820075855f68fc3b157 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5ba0a226203a drm/i915: Use i915_gem_object_pin_map_unlocked function for lmem allocation<br />
4144e1582c9f drm/i915/fbdev: fixup setting screen_size<br />
61b713195d33 drm/i915/gtt: reduce overzealous alignment constraints for GGTT</p>

</body>
</html>

--===============2104866970107997633==--
