Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E915638A4
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 19:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3A718A036;
	Fri,  1 Jul 2022 17:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B58D18A038;
 Fri,  1 Jul 2022 17:38:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20DE5AA0EA;
 Fri,  1 Jul 2022 17:38:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2189277934071007507=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stuart Summers" <stuart.summers@intel.com>
Date: Fri, 01 Jul 2022 17:38:43 -0000
Message-ID: <165669712310.30284.8472639581559813411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1491b2707b092f324e05d694886d4aa82cec50c9.1656692065.git.stuart.summers@intel.com>
In-Reply-To: <1491b2707b092f324e05d694886d4aa82cec50c9.1656692065.git.stuart.summers@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_NPD_in_PMU_during_driver_teardown_=28rev4=29?=
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

--===============2189277934071007507==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix NPD in PMU during driver teardown (rev4)
URL   : https://patchwork.freedesktop.org/series/105790/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11841 -> Patchwork_105790v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/index.html

Participating hosts (41 -> 43)
------------------------------

  Additional (3): fi-hsw-4770 bat-dg2-9 bat-jsl-1 
  Missing    (1): fi-icl-u2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105790v4:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {bat-adln-1}:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adln-1/igt@i915_suspend@basic-s2idle-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_105790v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-apl-guc/igt@gem_lmem_swapping@basic.html
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][3] ([fdo#109271]) +31 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bdw-gvtdvm/igt@gem_lmem_swapping@basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        NOTRUN -> [SKIP][4] ([fdo#109271]) +9 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@gem_softpin@safe-alignment:
    - fi-bsw-n3050:       [PASS][5] -> [DMESG-WARN][6] ([i915#6310])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-bsw-n3050/igt@gem_softpin@safe-alignment.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bsw-n3050/igt@gem_softpin@safe-alignment.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#3012])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-4:         [PASS][8] -> [DMESG-WARN][9] ([i915#3576]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adlp-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][10] ([i915#4785])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [PASS][11] -> [DMESG-FAIL][12] ([i915#4494] / [i915#4957])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][13] ([i915#4817])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bdw-gvtdvm/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-apl-guc:         NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [PASS][17] -> [FAIL][18] ([i915#6298])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - fi-tgl-u2:          [PASS][19] -> [DMESG-WARN][20] ([i915#402])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-apl-guc:         NOTRUN -> [SKIP][21] ([fdo#109271]) +11 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-apl-guc/igt@kms_psr@sprite_plane_onoff.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#1072]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][23] ([fdo#109295] / [i915#3301])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][24] ([fdo#109271] / [i915#4312] / [i915#5594] / [i915#6246])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][25] ([i915#3690] / [i915#4312])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@fds:
    - fi-bdw-gvtdvm:      [INCOMPLETE][26] -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@fds.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [INCOMPLETE][28] ([i915#6274]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@i915_module_load@reload:
    - {bat-adln-1}:       [DMESG-WARN][30] ([i915#6297]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-adln-1/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adln-1/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][32] ([i915#3576]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-adlp-6/igt@kms_busy@basic@flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adlp-6/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - {bat-adln-1}:       [DMESG-WARN][34] ([i915#3576]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-adln-1/igt@kms_busy@basic@modeset.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adln-1/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6274]: https://gitlab.freedesktop.org/drm/intel/issues/6274
  [i915#6297]: https://gitlab.freedesktop.org/drm/intel/issues/6297
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6310]: https://gitlab.freedesktop.org/drm/intel/issues/6310


Build changes
-------------

  * Linux: CI_DRM_11841 -> Patchwork_105790v4

  CI-20190529: 20190529
  CI_DRM_11841: 5ad538f9740c12845ca64cdf7148c2b3e6d993e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6554: 2824470eeed46d448ccc8111f96736da3abe66b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105790v4: 5ad538f9740c12845ca64cdf7148c2b3e6d993e9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4adac8916acb drm/i915: Fix NPD in PMU during driver teardown

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/index.html

--===============2189277934071007507==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix NPD in PMU during driver teardown (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105790/">https://patchwork.freedesktop.org/series/105790/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11841 -&gt; Patchwork_105790v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/index.html</p>
<h2>Participating hosts (41 -&gt; 43)</h2>
<p>Additional (3): fi-hsw-4770 bat-dg2-9 bat-jsl-1 <br />
  Missing    (1): fi-icl-u2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105790v4:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_suspend@basic-s2idle-without-i915:<ul>
<li>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adln-1/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105790v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bdw-gvtdvm/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@safe-alignment:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-bsw-n3050/igt@gem_softpin@safe-alignment.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bsw-n3050/igt@gem_softpin@safe-alignment.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6310">i915#6310</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bdw-gvtdvm/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bdw-gvtdvm/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-apl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6274">i915#6274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-adln-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6297">i915#6297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adln-1/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11841/bat-adln-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105790v4/bat-adln-1/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11841 -&gt; Patchwork_105790v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11841: 5ad538f9740c12845ca64cdf7148c2b3e6d993e9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6554: 2824470eeed46d448ccc8111f96736da3abe66b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105790v4: 5ad538f9740c12845ca64cdf7148c2b3e6d993e9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4adac8916acb drm/i915: Fix NPD in PMU during driver teardown</p>

</body>
</html>

--===============2189277934071007507==--
