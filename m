Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C031BADC0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 21:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF826E121;
	Mon, 27 Apr 2020 19:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ADE346E11C;
 Mon, 27 Apr 2020 19:20:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C32CA0099;
 Mon, 27 Apr 2020 19:20:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 19:20:26 -0000
Message-ID: <158801522663.26355.6806219003803423083@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427154554.12736-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427154554.12736-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Fix_up_clock_frequency_=28rev5=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Fix up clock frequency (rev5)
URL   : https://patchwork.freedesktop.org/series/76512/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8373_full -> Patchwork_17481_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17481_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17481_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17481_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-normal:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-tglb1/igt@gem_exec_whisper@basic-normal.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-tglb6/igt@gem_exec_whisper@basic-normal.html

  
Known issues
------------

  Here are the changes found in Patchwork_17481_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#52] / [i915#54])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][5] -> [SKIP][6] ([i915#668]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-skl10/igt@kms_hdr@bpc-switch.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-iclb2/igt@kms_psr@psr2_basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-iclb5/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][17] -> [FAIL][18] ([i915#31])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-hsw8/igt@kms_setmode@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-hsw8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-tglb3/igt@gem_exec_schedule@smoketest-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][21] ([i915#54]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][23] ([i915#96]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1}:
    - shard-skl:          [FAIL][25] ([i915#79]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * {igt@kms_flip@plain-flip-ts-check@a-hdmi-a1}:
    - shard-glk:          [FAIL][31] ([i915#34]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-glk5/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][37] ([i915#899]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][41] ([i915#69]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-hsw8/igt@perf@polling-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-hsw7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][45] ([i915#454]) -> [INCOMPLETE][46] ([i915#198])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/shard-skl6/igt@i915_pm_dc@dc6-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/shard-skl4/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8373 -> Patchwork_17481

  CI-20190529: 20190529
  CI_DRM_8373: 9d63a10e83b2d271007e281fe875d6f650a1849e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5612: c8dc1fd926a550308b971ca7d83fe0a927a38152 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17481: 0411865923e7ac26cda739830d80717451927d8d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17481/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
