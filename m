Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 396BF62B09B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 02:38:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8672910E156;
	Wed, 16 Nov 2022 01:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3EF310E156;
 Wed, 16 Nov 2022 01:37:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C198A00E8;
 Wed, 16 Nov 2022 01:37:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1156782703569630801=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@linux.intel.com>
Date: Wed, 16 Nov 2022 01:37:51 -0000
Message-ID: <166856267160.29190.10290466417789801122@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221114123348.3474216-1-badal.nilawar@intel.com>
In-Reply-To: <20221114123348.3474216-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_CAGF_and_RC6_changes_for_MTL_=28rev13=29?=
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

--===============1156782703569630801==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: CAGF and RC6 changes for MTL (rev13)
URL   : https://patchwork.freedesktop.org/series/108156/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12382 -> Patchwork_108156v13
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108156v13 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108156v13, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (2): fi-hsw-4770 bat-atsm-1 
  Missing    (4): bat-rpls-1 bat-kbl-2 fi-rkl-11600 bat-dg2-11 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108156v13:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@dmabuf:
    - fi-bxt-dsi:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-bxt-dsi/igt@i915_selftest@live@dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-bxt-dsi/igt@i915_selftest@live@dmabuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_108156v13 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][3] -> [FAIL][4] ([i915#7229])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#7056])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#3012])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][8] -> [INCOMPLETE][9] ([i915#7308] / [i915#7348])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/bat-adlp-4/igt@i915_selftest@live@migrate.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][10] ([fdo#109271]) +9 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1072]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][13] ([i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/bat-adlp-4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - {bat-dg2-8}:        [FAIL][14] ([i915#7029]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-dg2-8/igt@gem_huc_copy@huc-copy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/bat-dg2-8/igt@gem_huc_copy@huc-copy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7056]: https://gitlab.freedesktop.org/drm/intel/issues/7056
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7308]: https://gitlab.freedesktop.org/drm/intel/issues/7308
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
  [i915#7355]: https://gitlab.freedesktop.org/drm/intel/issues/7355
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#7358]: https://gitlab.freedesktop.org/drm/intel/issues/7358
  [i915#7535]: https://gitlab.freedesktop.org/drm/intel/issues/7535


Build changes
-------------

  * Linux: CI_DRM_12382 -> Patchwork_108156v13

  CI-20190529: 20190529
  CI_DRM_12382: cb74864693414b221b3601572e75449558126e8b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7057: e2138d48c2c506816868c16cf3ba64f81bdead41 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108156v13: cb74864693414b221b3601572e75449558126e8b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

716c4276847d drm/i915/mtl: C6 residency and C state type for MTL SAMedia
af91ed903707 drm/i915/gt: Use RC6 residency types as arguments to residency functions
1c67f2949645 drm/i915/mtl: Modify CAGF functions for MTL
898d59a12a0c drm/i915: Use GEN12_RPSTAT register for GT freq
8bbffa644474 drm/i915/rps: Prefer REG_FIELD_GET in intel_rps_get_cagf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/index.html

--===============1156782703569630801==
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
<tr><td><b>Series:</b></td><td>i915: CAGF and RC6 changes for MTL (rev13)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108156/">https://patchwork.freedesktop.org/series/108156/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12382 -&gt; Patchwork_108156v13</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108156v13 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_108156v13, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (2): fi-hsw-4770 bat-atsm-1 <br />
  Missing    (4): bat-rpls-1 bat-kbl-2 fi-rkl-11600 bat-dg2-11 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108156v13:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@dmabuf:<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-bxt-dsi/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-bxt-dsi/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108156v13 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7056">i915#7056</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7308">i915#7308</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7348">i915#7348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_huc_copy@huc-copy:<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12382/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7029">i915#7029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108156v13/bat-dg2-8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12382 -&gt; Patchwork_108156v13</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12382: cb74864693414b221b3601572e75449558126e8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7057: e2138d48c2c506816868c16cf3ba64f81bdead41 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108156v13: cb74864693414b221b3601572e75449558126e8b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>716c4276847d drm/i915/mtl: C6 residency and C state type for MTL SAMedia<br />
af91ed903707 drm/i915/gt: Use RC6 residency types as arguments to residency functions<br />
1c67f2949645 drm/i915/mtl: Modify CAGF functions for MTL<br />
898d59a12a0c drm/i915: Use GEN12_RPSTAT register for GT freq<br />
8bbffa644474 drm/i915/rps: Prefer REG_FIELD_GET in intel_rps_get_cagf</p>

</body>
</html>

--===============1156782703569630801==--
