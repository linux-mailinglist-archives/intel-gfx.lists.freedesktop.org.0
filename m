Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A99A396830
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 20:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6CD56E4CF;
	Mon, 31 May 2021 18:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EB5C6E432;
 Mon, 31 May 2021 18:54:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13A05A47E8;
 Mon, 31 May 2021 18:54:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 31 May 2021 18:54:43 -0000
Message-ID: <162248728304.27954.10734546029377546447@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210531140945.305041-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210531140945.305041-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Only_set_bind=5Fasync=5Fflags_when_concurrent_access_w?=
 =?utf-8?q?a_is_not_active=2C_v2=2E?=
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
Content-Type: multipart/mixed; boundary="===============0197335564=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0197335564==
Content-Type: multipart/alternative;
 boundary="===============3460757079590154268=="

--===============3460757079590154268==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Only set bind_async_flags when concurrent access wa is not active, v2.
URL   : https://patchwork.freedesktop.org/series/90795/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10152_full -> Patchwork_20239_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20239_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][1] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-snb5/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271]) +151 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][10] ([i915#2389])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-apl:          NOTRUN -> [INCOMPLETE][13] ([i915#3468])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-skl:          NOTRUN -> [INCOMPLETE][14] ([i915#198] / [i915#2910] / [i915#3468])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#307])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-apl:          [PASS][17] -> [INCOMPLETE][18] ([i915#3468])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-apl6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] ([i915#3468])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-snb:          NOTRUN -> [INCOMPLETE][21] ([i915#3468])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-snb5/igt@gem_mmap_gtt@fault-concurrent.html
    - shard-kbl:          NOTRUN -> [INCOMPLETE][22] ([i915#3468]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl3/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#768])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3323])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3323])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1937])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-glk:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk2/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl6/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl6/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_color@pipe-d-ctm-0-75:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278] / [i915#1149])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@kms_color@pipe-d-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +105 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#2346])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +129 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2672])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2642])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-skl:          NOTRUN -> [FAIL][43] ([i915#49])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271]) +19 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109280])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][51] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([fdo#108145] / [i915#265]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][54] ([i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][55] ([fdo#108145] / [i915#265]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2733])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
    - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2733])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_psr2_su@frontbuffer.html
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109642] / [fdo#111068] / [i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][65] ([IGT#2])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2437])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl2/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +111 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#1542])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl4/igt@perf@polling-parameterized.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl7/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl5/igt@sysfs_clients@recycle-many.html
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][72] ([i915#2369] / [i915#3063]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][74] ([fdo#109271]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][76] ([i915#2842]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-glk:          [FAIL][78] ([i915#307]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [INCOMPLETE][80] ([i915#2055] / [i915#3468]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-iclb:         [INCOMPLETE][82] ([i915#3468]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-apl:          [INCOMPLETE][84] ([i915#3468]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-apl7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-glk:          [INCOMPLETE][86] ([i915#3468]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][88] ([i915#1436] / [i915#716]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][90] ([i915#2346]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +5 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][94] ([i915#2122]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-iclb:         [FAIL][96] ([i915#49]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][98] ([i915#1188]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][100] ([fdo#109441]) -> [PASS][101] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - shard-iclb:         [INCOMPLETE][102] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][103] ([i915#3462])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb1/igt@i915_selftest@live@execlists.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@i915_selftest@live@execlists.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][104] ([i915#658]) -> [SKIP][105] ([i915#2920])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][106] ([i915#2920]) -> [SKIP][107] ([i915#658]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#92])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl1/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl1/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl3/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl4/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#2722] / [i915#2782] / [i915#3002]) -> ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([i915#2426] / [i915#2722] / [i915#2782] / [i915#3002])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb5/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb3/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb1/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb3/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb2/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb6/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163]) ([i915#2722] / [i915#3002] / [i915#3363] / [k.org#202321]) -> ([FAIL][164], [FAIL][165], [FAIL][166]) ([i915#3002] / [i915#3363] / [k.org#202321])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk2/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk2/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk4/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk8/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk9/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk8/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-gl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/index.html

--===============3460757079590154268==
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
<tr><td><b>Series:</b></td><td>drm/i915: Only set bind_async_flags when con=
current access wa is not active, v2.</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90795/">https://patchwork.freedesktop.org/series/90795/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20239/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10152_full -&gt; Patchwork_20239_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20239_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@gem_ctx_isolation@preservation=
-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-snb5/igt@gem_ctx_persistence@idempotent=
.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/sh=
ard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/sh=
ard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
239/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-snb6/igt@gem_exec_flush@basic-batch-ker=
nel-default-cmd.html">SKIP</a> ([fdo#109271]) +151 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-iclb1/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0239/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</=
a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-apl7/igt@gem_mmap_gtt@cpuset-basic-smal=
l-copy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl5/igt@gem_mmap_gtt@cpuset-basic-smal=
l-copy-odd.html">INCOMPLETE</a> ([i915#198] / [i915#2910] / [i915#3468])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2023=
9/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#30=
7])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-apl6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2023=
9/shard-apl3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([=
i915#3468])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_202=
39/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> =
([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-snb5/igt@gem_mmap_gtt@fault-concurrent.h=
tml">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-kbl3/igt@gem_mmap_gtt@fault-concurrent.h=
tml">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@gem_render_copy@y-tiled-mc-cc=
s-to-y-tiled-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-skl5/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_ccs@pipe-c-bad-aux-stride.=
html">SKIP</a> ([fdo#109271] / [fdo#111304]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-glk2/igt@kms_chamelium@dp-hpd-with-enab=
led-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl6/igt@kms_chamelium@hdmi-aspect-rati=
o.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-snb5/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-s=
kl6/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@kms_color@pipe-d-ctm-0-75.htm=
l">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
128x128-offscreen.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +105 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20239/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</=
a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl6/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> ([fdo#109271]) +129 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_frontbuffer_tracking@psr-1=
p-offscren-pri-shrfb-draw-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-glk2/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +19 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard=
-kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20239/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html"=
>FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-skl1/igt@kms_plane_scaling@scaler-with-c=
lipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#=
109271] / [i915#2733])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-glk2/igt@kms_plane_scaling@scaler-with-c=
lipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#=
109271] / [i915#2733])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-apl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_psr2_su@frontbuffer.html">S=
KIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-ic=
lb7/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068]=
 / [i915#658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-kbl2/igt@kms_psr2_su@frontbuffer.html">S=
KIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/sh=
ard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-skl5/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-apl2/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20239/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +111 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl4/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard=
-skl7/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-skl5/igt@sysfs_clients@recycle-many.html=
">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-kbl2/igt@sysfs_clients@recycle-many.html=
">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-tglb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20239/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20239/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20239/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915=
#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20239/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCO=
MPLETE</a> ([i915#2055] / [i915#3468]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20239/shard-glk4/igt@gem_mmap_gtt@cpuset-ba=
sic-small-copy.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-iclb3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INC=
OMPLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20239/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-co=
py.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
INCOMPLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20239/shard-apl7/igt@gem_mmap_gtt@cpuset-basic-small-=
copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOM=
PLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20239/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20239/shard-skl6/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20239/shard-skl6/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20239/shard-skl2/igt@kms_flip@plain-flip-fb-re=
create-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-msflip-blt.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@kms_frontbuffer_trac=
king@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915=
#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20239/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a=
> ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20239/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS<=
/a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb1/igt@i915_selftest@live@execlists.html">INCOMPLETE=
</a> ([i915#2782] / [i915#3462]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@i915_selftest@live@execlist=
s.html">DMESG-FAIL</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20239/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SK=
IP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20239/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.ht=
ml">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10152/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10152/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0152/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1015=
2/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shar=
d-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-k=
bl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html">FAIL</a>) ([f=
do#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3=
002] / [i915#3363] / [i915#602] / [i915#92]) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20239/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20239/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20239/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl2/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20239/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl4/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kbl7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-kb=
l4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20239/shard-kbl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard=
-kbl7/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#1436] / [i91=
5#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#92])=
</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb5/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10152/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10152/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb7/igt@runner@abor=
ted.html">FAIL</a>) ([i915#2722] / [i915#2782] / [i915#3002]) -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb7/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20239/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-ic=
lb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20239/shard-iclb5/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20239/sha=
rd-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20239/shard-iclb6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2023=
9/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20239/shard-iclb8/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20239/shard-iclb7/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / [i915#=
2722] / [i915#2782] / [i915#3002])</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10152/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk8/igt@runner@aborte=
d.html">FAIL</a>) ([i915#2722] / [i915#3002] / [i915#3363] / [k.org#202321]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2023=
9/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20239/shard-glk8/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0239/shard-gl">FAIL</a>) ([i915#3002] / [i915#3363] / [k.org#202321])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3460757079590154268==--

--===============0197335564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0197335564==--
