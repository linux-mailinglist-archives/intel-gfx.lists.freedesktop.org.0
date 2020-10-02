Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B94281C67
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 21:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7EB6E9CA;
	Fri,  2 Oct 2020 19:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5CFE26E9C9;
 Fri,  2 Oct 2020 19:59:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55236A011C;
 Fri,  2 Oct 2020 19:59:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 02 Oct 2020 19:59:02 -0000
Message-ID: <160166874231.3609.7722963285547286399@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201002144638.3266-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201002144638.3266-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Track_the_most_recent_pulse_for_the_heartbeat_=28re?=
 =?utf-8?b?djIp?=
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
Content-Type: multipart/mixed; boundary="===============0779546332=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0779546332==
Content-Type: multipart/alternative;
 boundary="===============4963522485813288783=="

--===============4963522485813288783==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Track the most recent pulse for the heartbeat (rev2)
URL   : https://patchwork.freedesktop.org/series/82339/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9092_full -> Patchwork_18615_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18615_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@gem_eio@kms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl9/igt@gem_eio@kms.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4] ([i915#2424])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@gem_userptr_blits@sync-unmap-cycles.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl1/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb8/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-tglb1/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk7/igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-glk8/igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw1/igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2122])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#2122])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#43])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@kms_vblank@pipe-c-accuracy-idle.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl10/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Possible fixes ####

  * igt@gem_exec_create@forked:
    - shard-hsw:          [INCOMPLETE][23] ([i915#2055]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@gem_exec_create@forked.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw7/igt@gem_exec_create@forked.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [FAIL][25] ([i915#1635] / [i915#2389]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@preempt-hang@rcs0:
    - shard-tglb:         [INCOMPLETE][27] ([i915#2523]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb3/igt@gem_exec_schedule@preempt-hang@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-tglb7/igt@gem_exec_schedule@preempt-hang@rcs0.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-glk:          [FAIL][29] ([i915#2521]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk2/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_atomic_transition@2x-modeset-transitions-nonblocking:
    - shard-hsw:          [INCOMPLETE][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw4/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-apl:          [DMESG-WARN][33] ([i915#1635] / [i915#1982]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-apl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw4/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-iclb:         [FAIL][37] ([i915#79]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-iclb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][43] ([i915#1188]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl3/igt@kms_hdr@bpc-switch.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][47] ([fdo#109642] / [fdo#111068]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][51] ([i915#1635] / [i915#31]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl2/igt@kms_setmode@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-apl2/igt@kms_setmode@basic.html
    - shard-hsw:          [FAIL][53] ([i915#31]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-2@vecs0:
    - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl3/igt@perf_pmu@busy-accuracy-2@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl8/igt@perf_pmu@busy-accuracy-2@vecs0.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
    - shard-skl:          [DMESG-FAIL][57] ([i915#1982]) -> [DMESG-WARN][58] ([i915#1982])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl9/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2523]: https://gitlab.freedesktop.org/drm/intel/issues/2523
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9092 -> Patchwork_18615

  CI-20190529: 20190529
  CI_DRM_9092: 4e9a7e28ea34e4b14e66cbc53fc004e4a93f5168 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5797: 1a7ef7eb5e99c9a8f4ffbc13cdae399a01a9aa12 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18615: a6637cb8f4717bf942b5a76b56bb2dc255373fa1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/index.html

--===============4963522485813288783==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Track the most recent pulse for the heartbeat (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82339/">https://patchwork.freedesktop.org/series/82339/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9092_full -&gt; Patchwork_18615_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18615_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl9/igt@gem_eio@kms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl1/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb8/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-tglb1/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk7/igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-glk8/igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw1/igt@kms_flip@2x-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl6/igt@kms_vblank@pipe-c-accuracy-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl10/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@gem_exec_create@forked.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw7/igt@gem_exec_create@forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-hang@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb3/igt@gem_exec_schedule@preempt-hang@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2523">i915#2523</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-tglb7/igt@gem_exec_schedule@preempt-hang@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-glk2/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-glk5/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@2x-modeset-transitions-nonblocking:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw2/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw4/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-apl3/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw4/igt@kms_flip@2x-flip-vs-rmfb-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-iclb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl3/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb6/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-apl2/igt@kms_setmode@basic.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-hsw6/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-hsw6/igt@kms_setmode@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl3/igt@perf_pmu@busy-accuracy-2@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl8/igt@perf_pmu@busy-accuracy-2@vecs0.html">PASS</a> +5 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9092/shard-skl7/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18615/shard-skl9/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9092 -&gt; Patchwork_18615</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9092: 4e9a7e28ea34e4b14e66cbc53fc004e4a93f5168 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5797: 1a7ef7eb5e99c9a8f4ffbc13cdae399a01a9aa12 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18615: a6637cb8f4717bf942b5a76b56bb2dc255373fa1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4963522485813288783==--

--===============0779546332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0779546332==--
