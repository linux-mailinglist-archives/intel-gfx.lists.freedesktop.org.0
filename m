Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 218E222218A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 13:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D9A06EC48;
	Thu, 16 Jul 2020 11:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05E366EC45;
 Thu, 16 Jul 2020 11:35:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6D6EA3ECB;
 Thu, 16 Jul 2020 11:35:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jul 2020 11:35:02 -0000
Message-ID: <159489930293.25376.1874078067389559890@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200716094643.31410-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200716094643.31410-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Provide_the_perf_pmu=2Emodule?=
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
Content-Type: multipart/mixed; boundary="===============0516586675=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0516586675==
Content-Type: multipart/alternative;
 boundary="===============8265212807733978388=="

--===============8265212807733978388==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Provide the perf pmu.module
URL   : https://patchwork.freedesktop.org/series/79547/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8753_full -> Patchwork_18187_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18187_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb8/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb3/igt@i915_module_load@reload.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-kbl3/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-kbl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk7/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk9/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#1982]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-apl3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-apl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#648])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#31])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-kbl3/igt@kms_setmode@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-kbl1/igt@kms_setmode@basic.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#1731])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk2/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk9/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [DMESG-WARN][25] ([i915#402]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb7/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-snb:          [INCOMPLETE][27] ([i915#82]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-snb2/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][29] ([i915#454]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][31] ([i915#118] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][33] ([i915#1982]) -> [PASS][34] +10 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][37] ([i915#407]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk3/igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk5/igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][39] ([i915#198]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][41] ([i915#2122]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-tglb:         [SKIP][45] ([i915#668]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-skl:          [FAIL][47] ([i915#49]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][49] ([i915#123] / [i915#69]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][51] ([i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][57] ([i915#1542]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb3/igt@perf@blocking-parameterized.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb6/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-glk:          [INCOMPLETE][59] ([i915#1958] / [i915#58] / [k.org#198133]) -> [INCOMPLETE][60] ([i915#1958])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_selftest@mock@requests:
    - shard-glk:          [INCOMPLETE][61] ([i915#2179] / [i915#58] / [k.org#198133]) -> [INCOMPLETE][62] ([i915#2179])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk4/igt@i915_selftest@mock@requests.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk5/igt@i915_selftest@mock@requests.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][63] ([i915#1226]) -> [SKIP][64] ([fdo#109349])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2179]: https://gitlab.freedesktop.org/drm/intel/issues/2179
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8753 -> Patchwork_18187

  CI-20190529: 20190529
  CI_DRM_8753: 62f01b776240c4586b3cbbdbe6065d4473d45429 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5737: c18a9c1083ce9344ff71ae405b9f2deaa82b6702 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18187: aac9351f733c22db2c0c7637a3a4120c319eb23f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/index.html

--===============8265212807733978388==
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
<tr><td><b>Series:</b></td><td>drm/i915: Provide the perf pmu.module</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79547/">https://patchwork.freedesktop.org/series/79547/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8753_full -&gt; Patchwork_18187_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18187_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk3/igt@gem_exec_whisper@basic-queues-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb3/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-kbl3/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-kbl3/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk7/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk9/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-apl3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-apl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/648">i915#648</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb1/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-kbl3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-kbl1/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk2/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk9/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb7/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb8/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-snb2/igt@gem_fenced_exec_thrash@no-spare-fences.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk3/igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/407">i915#407</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk5/igt@kms_flip@dpms-vs-vblank-race-interruptible@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/668">i915#668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-tglb8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/69">i915#69</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl6/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/69">i915#69</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb3/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb6/igt@perf@blocking-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/58">i915#58</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=198133">k.org#198133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-glk4/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2179">i915#2179</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/58">i915#58</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=198133">k.org#198133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-glk5/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2179">i915#2179</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8753/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18187/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8753 -&gt; Patchwork_18187</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8753: 62f01b776240c4586b3cbbdbe6065d4473d45429 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5737: c18a9c1083ce9344ff71ae405b9f2deaa82b6702 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18187: aac9351f733c22db2c0c7637a3a4120c319eb23f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8265212807733978388==--

--===============0516586675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0516586675==--
