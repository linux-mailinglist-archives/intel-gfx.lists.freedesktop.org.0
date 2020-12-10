Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC87D2D54CA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 08:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048106E2B8;
	Thu, 10 Dec 2020 07:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 967436E2B8;
 Thu, 10 Dec 2020 07:41:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8FCFDA9A42;
 Thu, 10 Dec 2020 07:41:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Thu, 10 Dec 2020 07:41:27 -0000
Message-ID: <160758608756.19115.864966027153663100@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210041755.29088-1-airlied@gmail.com>
In-Reply-To: <20201210041755.29088-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915/display=3A_move_needs=5Fmo?=
 =?utf-8?q?deset_to_an_inline_in_header?=
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
Content-Type: multipart/mixed; boundary="===============0579798131=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0579798131==
Content-Type: multipart/alternative;
 boundary="===============4094913928642036576=="

--===============4094913928642036576==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/9] drm/i915/display: move needs_modeset to an inline in header
URL   : https://patchwork.freedesktop.org/series/84761/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9467_full -> Patchwork_19104_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19104_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][1] ([fdo#110426] / [i915#1704])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][2] -> [FAIL][3] ([i915#454])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2521])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-tglb8/igt@kms_async_flips@alternate-sync-async-flip.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][6] ([fdo#110723])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-skl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111304])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl6/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_color_chamelium@pipe-c-gamma:
    - shard-skl:          NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl8/igt@kms_color_chamelium@pipe-c-gamma.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-iclb:         NOTRUN -> [SKIP][9] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@srm:
    - shard-iclb:         NOTRUN -> [SKIP][10] ([fdo#109300] / [fdo#111066])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][11] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-rapid-movement:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#165] / [i915#180])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-rapid-movement.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#54])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][18] ([i915#2346])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109274]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2122])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#198])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +23 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109280]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#1188]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][28] ([fdo#108145] / [i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-d-primary-size-128:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109278]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_plane_cursor@pipe-d-primary-size-128.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb7/igt@kms_psr@psr2_sprite_render.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278] / [i915#2530])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109289]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@perf@per-context-mode-unprivileged.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109295])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@prime_vgem@fence-flip-hang.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-glk9/igt@gem_exec_whisper@basic-fds-forked.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [FAIL][39] ([i915#1149]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-tglb8/igt@kms_color@pipe-a-gamma.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-tglb6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][41] ([i915#54]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-kbl:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][45] ([i915#2598]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-iclb:         [INCOMPLETE][55] ([i915#1185]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [DMESG-WARN][57] -> [INCOMPLETE][58] ([i915#155] / [i915#794])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][59], [FAIL][60]) ([i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][61], [FAIL][62]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-kbl1/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-kbl7/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-kbl7/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-kbl1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110426]: https://bugs.freedesktop.org/show_bug.cgi?id=110426
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1704]: https://gitlab.freedesktop.org/drm/intel/issues/1704
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9467 -> Patchwork_19104

  CI-20190529: 20190529
  CI_DRM_9467: 97bdde324e46e276a88de5d2d0c759b4309173c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5886: c65fd1fbc26e9f65756d130d33b0ed56bc8faec7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19104: 6a72e6f856364a3f11c5b4be843e81acc4b7f6fe @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/index.html

--===============4094913928642036576==
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
<tr><td><b>Series:</b></td><td>series starting with [1/9] drm/i915/display:=
 move needs_modeset to an inline in header</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84761/">https://patchwork.freedesktop.org/series/84761/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19104/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19104/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9467_full -&gt; Patchwork_19104_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19104_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@gem_userptr_blits@readonly-pw=
rite-unsync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D110426">fdo#110426</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1704">i915#1704</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-iclb4/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-tglb8/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19104/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i=
915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-skl6/igt@kms_ccs@pipe-c-crc-primary-bas=
ic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-gamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-skl8/igt@kms_color_chamelium@pipe-c-gam=
ma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_color_chamelium@pipe-inva=
lid-ctm-matrix-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_content_protection@srm.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-2=
56x256-offscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-rapid-move=
ment.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19104/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-rapi=
d-movement.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/165">i915#165</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19104/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
104/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-skl6/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_flip@2x-flip-vs-wf_vblank=
-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109274">fdo#109274</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@a=
b-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19104/shard-glk2/igt@kms_flip@2x-plain-flip-ts-ch=
eck-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/s=
hard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +23 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard-=
skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19104/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-primary-size-128:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_plane_cursor@pipe-d-prima=
ry-size-128.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109278">fdo#109278</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/shard=
-iclb7/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@nouveau_crc@pipe-d-source-rg.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@perf@per-context-mode-unprivi=
leged.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19104/shard-iclb2/igt@prime_vgem@fence-flip-hang.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
295">fdo#109295</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-glk9/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19104/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-gamma:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-tglb8/igt@kms_color@pipe-a-gamma.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/sha=
rd-tglb6/igt@kms_color@pipe-a-gamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19104/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.h=
tml">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19104/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i=
915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19104/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-in=
dfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19104/shard-snb2/igt@kms_frontbuffer_trac=
king@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/sha=
rd-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19104/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9104/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-iclb3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1185">i915#1185</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19104/shard-iclb2/igt@kms_vblank@pipe-b-ts-continuatio=
n-dpms-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9467/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html">=
DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19104/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/155">i915#155</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9467/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/shard-kbl7/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19104/shard-kbl7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19104/=
shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9467 -&gt; Patchwork_19104</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9467: 97bdde324e46e276a88de5d2d0c759b4309173c6 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5886: c65fd1fbc26e9f65756d130d33b0ed56bc8faec7 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19104: 6a72e6f856364a3f11c5b4be843e81acc4b7f6fe @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4094913928642036576==--

--===============0579798131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0579798131==--
