Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 649EF2F8BF2
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jan 2021 07:57:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095156E500;
	Sat, 16 Jan 2021 06:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49F756E500;
 Sat, 16 Jan 2021 06:57:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 441C3A47E2;
 Sat, 16 Jan 2021 06:57:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sat, 16 Jan 2021 06:57:14 -0000
Message-ID: <161078023424.2343.12168540460367949291@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?-buf=3A_Add_debug_option_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============1705146845=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1705146845==
Content-Type: multipart/alternative;
 boundary="===============5624423357588341801=="

--===============5624423357588341801==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm-buf: Add debug option (rev6)
URL   : https://patchwork.freedesktop.org/series/85813/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9625_full -> Patchwork_19377_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19377_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19377_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19377_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_texture_multisample@texelfetch fs sampler2dms 4 1x71-501x71 (NEW):
    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][1] +3 similar issues
   [1]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_9625_full and Patchwork_19377_full:

### New Piglit tests (3) ###

  * spec@arb_texture_multisample@texelfetch fs sampler2dms 4 1x130-501x130:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_multisample@texelfetch fs sampler2dms 4 1x71-501x71:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_multisample@texelfetch fs sampler2dmsarray 4 1x129x9-98x129x9:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19377_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][2] ([i915#454])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl5/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl3/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#54]) +6 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
    - shard-skl:          NOTRUN -> [FAIL][10] ([i915#54])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#2346])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2598])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][15] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +46 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][19] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#1542])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-glk2/igt@perf@polling-parameterized.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-glk3/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-apl:          [SKIP][24] ([fdo#109271]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-pace@rcs0}:
    - shard-kbl:          [FAIL][26] ([i915#2842]) -> [PASS][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vcs0}:
    - shard-kbl:          [SKIP][28] ([fdo#109271]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][30] ([i915#118] / [i915#95]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][32] ([i915#2597]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-tglb5/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][34] ([i915#54]) -> [PASS][35] +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][36] ([i915#79]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][38] ([i915#2122]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][40] ([fdo#108145] / [i915#265]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][42] ([fdo#109441]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][44] ([i915#1804] / [i915#2684]) -> [WARN][45] ([i915#2681] / [i915#2684])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][46], [FAIL][47]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2295]) -> [FAIL][48] ([i915#1436] / [i915#2295])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl5/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl5/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9625 -> Patchwork_19377

  CI-20190529: 20190529
  CI_DRM_9625: f16cd30b79c29b1ec7035479787b44b3190bda63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19377: cd675d2b9e93030e40df9a1828af201f7c5733d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/index.html

--===============5624423357588341801==
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
<tr><td><b>Series:</b></td><td>drm-buf: Add debug option (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85813/">https://patchwork.freedesktop.org/series/85813/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9625_full -&gt; Patchwork_19377_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19377_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19377_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19377_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_texture_multisample@texelfetch fs sampler2dms 4 1x71-501x71 (NEW):<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href="None">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9625_full and Patchwork_19377_full:</p>
<h3>New Piglit tests (3)</h3>
<ul>
<li>
<p>spec@arb_texture_multisample@texelfetch fs sampler2dms 4 1x130-501x130:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_multisample@texelfetch fs sampler2dms 4 1x71-501x71:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_multisample@texelfetch fs sampler2dmsarray 4 1x129x9-98x129x9:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19377_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl5/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl5/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl3/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-glk2/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-glk3/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs0}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9625/shard-skl5/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19377/shard-skl7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9625 -&gt; Patchwork_19377</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9625: f16cd30b79c29b1ec7035479787b44b3190bda63 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19377: cd675d2b9e93030e40df9a1828af201f7c5733d7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5624423357588341801==--

--===============1705146845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1705146845==--
