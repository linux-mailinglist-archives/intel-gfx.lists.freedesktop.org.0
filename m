Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0433A601B32
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 23:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45C210EE55;
	Mon, 17 Oct 2022 21:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F299C10EB8F;
 Mon, 17 Oct 2022 21:22:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8011AAA91;
 Mon, 17 Oct 2022 21:22:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6385501532516048757=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 17 Oct 2022 21:22:29 -0000
Message-ID: <166604174991.13568.5449346246933721884@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRGVm?=
 =?utf-8?q?eature_Interlace_modes_for_Display_=3E=3D_12?=
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

--===============6385501532516048757==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Defeature Interlace modes for Display >= 12
URL   : https://patchwork.freedesktop.org/series/109773/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12251_full -> Patchwork_109773v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109773v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109773v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109773v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-apl1/igt@i915_suspend@debugfs-reader.html

  
Known issues
------------

  Here are the changes found in Patchwork_109773v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [FAIL][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) ([i915#4338]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][54] -> [FAIL][55] ([i915#6268])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][56] -> [FAIL][57] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-apl1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#3743])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-snb:          NOTRUN -> [SKIP][62] ([fdo#109271]) +79 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-snb:          NOTRUN -> [FAIL][63] ([fdo#103375]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [FAIL][64] ([i915#5784]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb2/igt@gem_eio@reset-stress.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-tglb7/igt@gem_eio@reset-stress.html

  * igt@i915_selftest@mock@requests:
    - shard-snb:          [DMESG-FAIL][66] -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/igt@i915_selftest@mock@requests.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         [FAIL][68] ([i915#3743]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-snb:          [SKIP][70] ([fdo#109271]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  
#### Warnings ####

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          [INCOMPLETE][72] -> [WARN][73] ([i915#2658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl7/igt@gem_pwrite@basic-exhaustion.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-apl6/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglb:         [INCOMPLETE][74] -> [WARN][75] ([i915#2658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb7/igt@gem_pwrite@basic-exhaustion.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-tglb7/igt@gem_pwrite@basic-exhaustion.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268


Build changes
-------------

  * Linux: CI_DRM_12251 -> Patchwork_109773v1

  CI-20190529: 20190529
  CI_DRM_12251: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7016: 642f4bf44e2b42791b4d1684936a1bfbe2d099ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109773v1: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/index.html

--===============6385501532516048757==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Defeature Interlace modes for Display &gt;=
=3D 12</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109773/">https://patchwork.freedesktop.org/series/109773/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109773v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109773v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12251_full -&gt; Patchwork_109773v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109773v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109773v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109773v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109773v1/shard-tglb2/igt@i915_module_load@reload-with-fault-injecti=
on.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v1/shard-apl1/igt@i915_suspend@debugfs-reader=
.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109773v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12251/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12251/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12251/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12251/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12251/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2251/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12251/shard-snb2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4338">i915#4338</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109773v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-s=
nb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109773v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v=
1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109773v1/shard-snb6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109773v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109773v1/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109773v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109773v1/shard-snb4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109773v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109773v1/shard-snb4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109773v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_109773v1/shard-snb2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-snb2/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773=
v1/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09773v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v1/shard-apl1/igt@kms_big_fb@4-tiled-8bpp-rot=
ate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v1/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v1/shard-snb4/igt@kms_chamelium@hdmi-aspect-r=
atio.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v1/shard-snb4/igt@kms_rotation_crc@bad-pixel-=
format.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +79 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v1/shard-snb4/igt@kms_vblank@pipe-a-ts-contin=
uation-dpms-suspend.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D103375">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb2/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v1/=
shard-tglb7/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-snb4/igt@i915_selftest@mock@requests.html">DMESG-FAIL</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1097=
73v1/shard-snb4/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_109773v1/shard-tglb7/igt@kms_big_fb@y-til=
ed-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pw=
rite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109773v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-r=
gb101010-draw-pwrite.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12251/shard-apl7/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10977=
3v1/shard-apl6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12251/shard-tglb7/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1097=
73v1/shard-tglb7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12251 -&gt; Patchwork_109773v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12251: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7016: 642f4bf44e2b42791b4d1684936a1bfbe2d099ee @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109773v1: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6385501532516048757==--
