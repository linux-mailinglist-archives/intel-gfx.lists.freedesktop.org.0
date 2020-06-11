Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B611F661B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 13:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B936E8F3;
	Thu, 11 Jun 2020 11:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E5826E8F3;
 Thu, 11 Jun 2020 11:00:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80D69A011B;
 Thu, 11 Jun 2020 11:00:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 11 Jun 2020 11:00:17 -0000
Message-ID: <159187321750.22716.17510954788159350568@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200610183132.13341-1-imre.deak@intel.com>
In-Reply-To: <20200610183132.13341-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/tgl+=3A_Fix_DP_MST_ACT_sta?=
 =?utf-8?q?tus_handling?=
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

Series: series starting with [1/2] drm/i915/tgl+: Fix DP MST ACT status handling
URL   : https://patchwork.freedesktop.org/series/78193/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8611_full -> Patchwork_17921_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17921_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb3/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-tglb6/igt@i915_module_load@reload.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-apl8/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#118] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl3/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl1/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#95]) +26 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-apl7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-glk:          [PASS][21] -> [INCOMPLETE][22] ([i915#58] / [k.org#198133])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#123] / [i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][27] -> [INCOMPLETE][28] ([i915#155] / [i915#648])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl2/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@sliced:
    - shard-tglb:         [TIMEOUT][35] ([i915#1936]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb5/igt@gem_exec_balancer@sliced.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-tglb8/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-apl:          [DMESG-WARN][37] ([i915#95]) -> [PASS][38] +18 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl4/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [FAIL][39] ([fdo#103375]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl7/igt@i915_suspend@debugfs-reader.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl7/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-apl8/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][43] ([i915#118] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-tglb:         [DMESG-WARN][47] ([i915#128]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb2/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-tglb7/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_flip@busy-flip@b-edp1:
    - shard-skl:          [FAIL][49] ([i915#275]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl5/igt@kms_flip@busy-flip@b-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl9/igt@kms_flip@busy-flip@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-iclb:         [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-iclb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-dp1:
    - shard-kbl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_flip@plain-flip-ts-check@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl6/igt@kms_flip@plain-flip-ts-check@a-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl4/igt@kms_hdr@bpc-switch.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-glk:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-glk6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][63] ([i915#173]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb1/igt@kms_psr@no_drrs.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-iclb5/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][67] ([i915#1982]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb5/igt@perf_pmu@module-unload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-iclb5/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@other-init-3:
    - shard-tglb:         [DMESG-WARN][69] ([i915#402]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb6/igt@perf_pmu@other-init-3.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-tglb6/igt@perf_pmu@other-init-3.html

  * igt@syncobj_wait@single-wait-all-for-submit-signaled:
    - shard-tglb:         [TIMEOUT][71] -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-tglb5/igt@syncobj_wait@single-wait-all-for-submit-signaled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-tglb8/igt@syncobj_wait@single-wait-all-for-submit-signaled.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-glk:          [TIMEOUT][73] ([i915#1958]) -> [INCOMPLETE][74] ([i915#1958] / [i915#58] / [k.org#198133])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-glk5/igt@gem_exec_reloc@basic-concurrent16.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][75] ([i915#1515]) -> [WARN][76] ([i915#1515])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][77] ([i915#93] / [i915#95]) -> [DMESG-WARN][78] ([i915#180] / [i915#93] / [i915#95]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl7/igt@i915_suspend@forcewake.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][79] ([i915#1319] / [i915#1635]) -> [FAIL][80] ([fdo#110321] / [fdo#110336])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl7/igt@kms_content_protection@atomic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][81] ([i915#1319] / [i915#1958]) -> [TIMEOUT][82] ([i915#1319])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_content_protection@lic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl6/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][83] ([i915#1319] / [i915#1958]) -> [DMESG-FAIL][84] ([fdo#110321] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-kbl4/igt@kms_content_protection@srm.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-kbl2/igt@kms_content_protection@srm.html
    - shard-apl:          [DMESG-FAIL][85] ([fdo#110321] / [i915#95]) -> [TIMEOUT][86] ([i915#1319])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl4/igt@kms_content_protection@srm.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][87] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][88] ([fdo#108145] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8611/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1936]: https://gitlab.freedesktop.org/drm/intel/issues/1936
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#275]: https://gitlab.freedesktop.org/drm/intel/issues/275
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8611 -> Patchwork_17921

  CI-20190529: 20190529
  CI_DRM_8611: b87354483fa40fef86da19ade9bfe9349f0cf6d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5702: d16ad07e7f2a028e14d61f570931c87fa5ce404c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17921: 77a732d46697f75e67997a7b5f8a94b21ab8e556 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17921/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
