Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 363091F6D1F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 20:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880C26E92C;
	Thu, 11 Jun 2020 18:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F38B6E929;
 Thu, 11 Jun 2020 18:02:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68759A47DA;
 Thu, 11 Jun 2020 18:02:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Jun 2020 18:02:23 -0000
Message-ID: <159189854342.22714.820880482519091336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200611123038.91855-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200611123038.91855-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/vblank=3A_Estimate_sample_time_?=
 =?utf-8?b?KHJldjIp?=
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

Series: series starting with [v2] drm/vblank: Estimate sample time (rev2)
URL   : https://patchwork.freedesktop.org/series/78223/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8617_full -> Patchwork_17927_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17927_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#95]) +20 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl2/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl4/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-glk9/igt@gem_exec_whisper@basic-fds-priority.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-glk5/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_softpin@overlap:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +14 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-skl3/igt@gem_softpin@overlap.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-skl7/igt@gem_softpin@overlap.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl6/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl7/igt@kms_big_fb@linear-8bpp-rotate-180.html
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl7/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl3/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#402]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#93] / [i915#95]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-apl:          [FAIL][23] ([i915#1528]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][25] ([i915#402]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][27] ([i915#1982]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-skl4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-skl3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-apl:          [DMESG-FAIL][29] ([i915#54] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@dpms-off-confusion@a-hdmi-a1:
    - shard-glk:          [DMESG-WARN][31] ([i915#1982]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-glk9/igt@kms_flip@dpms-off-confusion@a-hdmi-a1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-glk7/igt@kms_flip@dpms-off-confusion@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +10 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][35] ([i915#198]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-dp1:
    - shard-kbl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl6/igt@kms_flip@plain-flip-ts-check@a-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl7/igt@kms_flip@plain-flip-ts-check@a-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-kbl:          [DMESG-WARN][41] ([i915#93] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - shard-tglb:         [DMESG-WARN][43] ([i915#1982]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-tglb1/igt@kms_frontbuffer_tracking@psr-slowdraw.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-tglb2/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-iclb8/igt@kms_psr@psr2_suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][47] ([i915#1542]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-iclb7/igt@perf@blocking-parameterized.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-iclb3/igt@perf@blocking-parameterized.html

  * igt@syncobj_wait@invalid-wait-illegal-handle:
    - shard-apl:          [DMESG-WARN][49] ([i915#95]) -> [PASS][50] +13 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl1/igt@syncobj_wait@invalid-wait-illegal-handle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl8/igt@syncobj_wait@invalid-wait-illegal-handle.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][51] ([i915#1319]) -> [TIMEOUT][52] ([i915#1319] / [i915#1958])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl2/igt@kms_content_protection@atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][53] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][54] ([i915#1319] / [i915#1635])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl7/igt@kms_content_protection@legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [DMESG-FAIL][55] ([fdo#110321] / [i915#95]) -> [TIMEOUT][56] ([i915#1319])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl2/igt@kms_content_protection@srm.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [INCOMPLETE][58] ([i915#155])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [DMESG-FAIL][59] ([fdo#108145] / [i915#95]) -> [FAIL][60] ([fdo#108145] / [i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][61] ([i915#1911]) -> [SKIP][62] ([fdo#109642] / [fdo#111068])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8617/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8617 -> Patchwork_17927

  CI-20190529: 20190529
  CI_DRM_8617: 2100025f87587a1dcf07985174c79a68c4a550eb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5702: d16ad07e7f2a028e14d61f570931c87fa5ce404c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17927: 5372d180bd94d77cc77bbf902f8479fbf11d2959 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17927/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
