Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 672B8156C5D
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 21:20:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C05786E87E;
	Sun,  9 Feb 2020 20:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6113A6E87E;
 Sun,  9 Feb 2020 20:20:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58CA6A0093;
 Sun,  9 Feb 2020 20:20:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sun, 09 Feb 2020 20:20:00 -0000
Message-ID: <158127960033.18125.17459985442725317478@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Fix_g4x+_sprite_dotcloc?=
 =?utf-8?q?k_limit_for_upscaling?=
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

Series: series starting with [1/2] drm/i915: Fix g4x+ sprite dotclock limit for upscaling
URL   : https://patchwork.freedesktop.org/series/73115/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7878_full -> Patchwork_16469_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16469_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#570] / [i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl8/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl9/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_wait@wait-bcs0:
    - shard-hsw:          [PASS][11] -> [INCOMPLETE][12] ([CI#80] / [i915#61])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-hsw1/igt@gem_wait@wait-bcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-hsw6/igt@gem_wait@wait-bcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#447])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-apl:          [PASS][17] -> [DMESG-FAIL][18] ([fdo#112406])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-apl2/igt@i915_selftest@live_gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-apl7/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_selftest@live_gtt:
    - shard-kbl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-kbl3/igt@i915_selftest@live_gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-kbl3/igt@i915_selftest@live_gtt.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-hsw:          [PASS][23] -> [DMESG-WARN][24] ([i915#44])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-hsw7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-hsw5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#177] / [i915#52] / [i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#221])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl10/igt@kms_flip_tiling@flip-yf-tiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl1/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#69])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145] / [i915#265])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#173])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb2/igt@kms_psr@no_drrs.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#31])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-apl1/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-apl3/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#31])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl8/igt@kms_setmode@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl8/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109276]) +19 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +16 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-hsw:          [FAIL][53] ([i915#694]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][55] ([i915#716]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][57] ([i915#413]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb5/igt@i915_pm_rps@reset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][61] ([i915#93] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-kbl6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-kbl3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][67] ([i915#69]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][69] ([i915#899]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_pwrite_crc:
    - shard-snb:          [SKIP][73] ([fdo#109271]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-snb5/igt@kms_pwrite_crc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-snb5/igt@kms_pwrite_crc.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-hsw8/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-hsw7/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][77] ([i915#31]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-kbl4/igt@kms_setmode@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-kbl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][79] ([fdo#112080]) -> [PASS][80] +5 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][81] ([i915#831]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_mmap_coherency@read:
    - shard-hsw:          [FAIL][83] ([i915#914]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-hsw1/igt@prime_mmap_coherency@read.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-hsw7/igt@prime_mmap_coherency@read.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [FAIL][86] ([IGT#28])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][87] ([i915#818]) -> [FAIL][88] ([i915#694])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][89] ([i915#563]) -> [DMESG-FAIL][90] ([i915#725])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7878/shard-hsw2/igt@i915_selftest@live_blt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/shard-hsw5/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7878 -> Patchwork_16469

  CI-20190529: 20190529
  CI_DRM_7878: b641da00ab129bfb28b11190cd5e9a4b4ed1e1ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5423: 02ef996e76b3bae1c62d6a1298462aba0b7ac51a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16469: dbea9afb5f77aaa365d7a3438275f97bf597cb7b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16469/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
