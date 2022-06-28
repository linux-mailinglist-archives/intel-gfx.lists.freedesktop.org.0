Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BFF55BEAE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 08:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7998113E4C;
	Tue, 28 Jun 2022 06:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DD9A11349C;
 Tue, 28 Jun 2022 06:14:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 118D3A66C9;
 Tue, 28 Jun 2022 06:14:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8771731312514649895=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 28 Jun 2022 06:14:38 -0000
Message-ID: <165639687806.14503.18048323344455916388@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220627224751.3627465-1-lucas.demarchi@intel.com>
In-Reply-To: <20220627224751.3627465-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_iosys-map=3A_Add_per-word_read?=
 =?utf-8?q?_=28rev2=29?=
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

--===============8771731312514649895==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] iosys-map: Add per-word read (rev2)
URL   : https://patchwork.freedesktop.org/series/105692/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11816 -> Patchwork_105692v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105692v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105692v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (3): fi-hsw-4770 bat-dg2-9 bat-adls-5 
  Missing    (5): fi-rkl-11600 bat-dg1-5 bat-adlp-4 bat-adln-1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105692v2:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-dg1-6:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {bat-dg2-9}:        NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
    - {bat-dg2-8}:        [DMESG-WARN][4] ([i915#5763]) -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {fi-ehl-2}:         [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-ehl-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-ehl-2/igt@i915_suspend@basic-s2idle-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_105692v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#3012])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][9] ([i915#4528])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][10] ([i915#4785])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][11] ([fdo#109271]) +9 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [PASS][13] -> [FAIL][14] ([i915#6298])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - fi-tgl-u2:          [PASS][15] -> [DMESG-WARN][16] ([i915#402])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#1072]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][18] ([fdo#109271] / [i915#4312] / [i915#5594] / [i915#6246])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][19] ([i915#4312] / [i915#5257])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-kbl-guc/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][20] ([i915#4312])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][21] ([i915#4312] / [i915#5257])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-skl-guc/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][22] ([i915#4312])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-adl-ddr5/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       [DMESG-FAIL][23] ([i915#3674]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][25] ([i915#4528]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-blb-e6850/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][27] ([i915#4312]) -> [FAIL][28] ([i915#4312] / [i915#5257])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-apl-guc/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-apl-guc/igt@runner@aborted.html
    - bat-dg1-6:          [FAIL][29] ([i915#4312] / [i915#5257]) -> [FAIL][30] ([i915#4312])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/bat-dg1-6/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/bat-dg1-6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3674]: https://gitlab.freedesktop.org/drm/intel/issues/3674
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
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298


Build changes
-------------

  * Linux: CI_DRM_11816 -> Patchwork_105692v2

  CI-20190529: 20190529
  CI_DRM_11816: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6543: 0463b607ed58ceede542f9bad6a9dad8d77d6f9c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105692v2: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a3b076cb2f99 iosys-map: Add per-word write
92439e762f0b iosys-map: Add per-word read

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/index.html

--===============8771731312514649895==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] iosys-map: Add per-word read (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105692/">https://patchwork.freedesktop.org/series/105692/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11816 -&gt; Patchwork_105692v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105692v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_105692v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (3): fi-hsw-4770 bat-dg2-9 bat-adls-5 <br />
  Missing    (5): fi-rkl-11600 bat-dg1-5 bat-adlp-4 bat-adln-1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105692v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5763">i915#5763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/bat-dg2-8/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-ehl-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-ehl-2/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105692v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3674">i915#3674</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105692v2/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11816 -&gt; Patchwork_105692v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11816: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6543: 0463b607ed58ceede542f9bad6a9dad8d77d6f9c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105692v2: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a3b076cb2f99 iosys-map: Add per-word write<br />
92439e762f0b iosys-map: Add per-word read</p>

</body>
</html>

--===============8771731312514649895==--
