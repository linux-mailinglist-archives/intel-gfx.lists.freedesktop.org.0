Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 540B61EF863
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 14:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B619A6E103;
	Fri,  5 Jun 2020 12:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9EF646E042;
 Fri,  5 Jun 2020 12:53:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97E75A00E6;
 Fri,  5 Jun 2020 12:53:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 12:53:58 -0000
Message-ID: <159136163859.18509.16185250988031168662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200605105646.24300-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605105646.24300-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Discard_a_misplaced_GGT?=
 =?utf-8?q?T_vma?=
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

Series: series starting with [1/2] drm/i915: Discard a misplaced GGTT vma
URL   : https://patchwork.freedesktop.org/series/78033/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8590_full -> Patchwork_17884_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17884_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_tiled_pread_basic:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#95]) +15 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl3/igt@gem_tiled_pread_basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-apl7/igt@gem_tiled_pread_basic.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          [PASS][5] -> [INCOMPLETE][6] ([i915#58] / [k.org#198133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk8/igt@i915_suspend@forcewake.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-glk8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-apl3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-skl2/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#49])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#173])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb3/igt@kms_psr@no_drrs.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_rmfb@rmfb-ioctl:
    - shard-snb:          [PASS][25] -> [SKIP][26] ([fdo#109271]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-snb2/igt@kms_rmfb@rmfb-ioctl.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-snb1/igt@kms_rmfb@rmfb-ioctl.html

  * igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#402])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-tglb6/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-tglb8/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * {igt@gem_exec_schedule@preempt@vecs0}:
    - shard-skl:          [DMESG-WARN][31] ([i915#1982]) -> [PASS][32] +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl8/igt@gem_exec_schedule@preempt@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-skl8/igt@gem_exec_schedule@preempt@vecs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][33] ([i915#118] / [i915#95]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk9/igt@gem_exec_whisper@basic-queues-forked-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][35] ([i915#1436] / [i915#716]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl3/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][37] ([i915#93] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl4/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-skl:          [DMESG-WARN][39] ([i915#128]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl10/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-skl6/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][41] ([i915#79]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [DMESG-WARN][45] ([i915#95]) -> [PASS][46] +18 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl7/igt@kms_flip_tiling@flip-x-tiled.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-apl8/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl6/igt@kms_hdr@bpc-switch.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-iclb6/igt@kms_psr@psr2_suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][53] ([i915#31]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl6/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl2/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][55] ([i915#1542]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-hsw6/igt@perf@polling-parameterized.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-hsw5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [DMESG-FAIL][57] ([fdo#110321]) -> [TIMEOUT][58] ([i915#1319])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl3/igt@kms_content_protection@legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl6/igt@kms_content_protection@legacy.html
    - shard-apl:          [TIMEOUT][59] ([i915#1319] / [i915#1635]) -> [FAIL][60] ([fdo#110321] / [fdo#110336])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl3/igt@kms_content_protection@legacy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-apl2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [DMESG-FAIL][61] ([fdo#110321] / [i915#95]) -> [TIMEOUT][62] ([i915#1319] / [i915#1635]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-apl2/igt@kms_content_protection@lic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-apl1/igt@kms_content_protection@lic.html
    - shard-kbl:          [TIMEOUT][63] ([i915#1319]) -> [TIMEOUT][64] ([i915#1319] / [i915#1958])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_content_protection@lic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [DMESG-FAIL][65] ([fdo#110321] / [i915#95]) -> [TIMEOUT][66] ([i915#1319])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl2/igt@kms_content_protection@srm.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][68] ([i915#93] / [i915#95])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [DMESG-WARN][69] ([i915#1982]) -> [FAIL][70] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8590/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8590 -> Patchwork_17884

  CI-20190529: 20190529
  CI_DRM_8590: 91c6f0274b54c89679cd23f6fc65e9fe5922971f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17884: 8f309332415b32d03c96f11a8a4b451ac66f2742 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17884/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
