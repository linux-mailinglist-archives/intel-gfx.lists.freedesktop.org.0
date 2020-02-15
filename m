Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEB415FF1F
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 17:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37CA6E203;
	Sat, 15 Feb 2020 16:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C42636E203;
 Sat, 15 Feb 2020 16:06:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B48CAA011A;
 Sat, 15 Feb 2020 16:06:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 15 Feb 2020 16:06:24 -0000
Message-ID: <158178278470.4010.6228888286083265889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQ29t?=
 =?utf-8?q?mit_early_to_GuC_=28rev3=29?=
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

Series: Commit early to GuC (rev3)
URL   : https://patchwork.freedesktop.org/series/72031/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7925_full -> Patchwork_16535_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7925_full and Patchwork_16535_full:

### New IGT tests (3) ###

  * igt@kms_content_protection@atomic-dpms:
    - Statuses : 2 fail(s) 5 skip(s)
    - Exec time: [0.0, 125.61] s

  * igt@kms_psr2_su@frontbuffer:
    - Statuses : 2 pass(s) 6 skip(s)
    - Exec time: [0.0, 0.34] s

  * igt@kms_psr2_su@page_flip:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 0.49] s

  

Known issues
------------

  Here are the changes found in Patchwork_16535_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112146]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-hsw:          [PASS][3] -> [DMESG-WARN][4] ([IGT#6])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-hsw1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-snb:          [PASS][5] -> [SKIP][6] ([fdo#109271]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#52] / [i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-glk4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-glk1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#46])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#34])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#699])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl1/igt@kms_flip_tiling@flip-x-tiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl9/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#49]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#53])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276]) +9 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd}:
    - shard-skl:          [FAIL][33] ([i915#679]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1}:
    - shard-skl:          [INCOMPLETE][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][37] ([i915#677]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-hsw:          [FAIL][41] ([i915#694]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-hsw1/igt@gem_partial_pwrite_pread@reads.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-hsw5/igt@gem_partial_pwrite_pread@reads.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [SKIP][43] ([fdo#112080]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb5/igt@i915_hangman@error-state-capture-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb2/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][45] ([i915#454]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][47] ([i915#413]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_gtt:
    - shard-hsw:          [TIMEOUT][49] ([fdo#112271]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-hsw5/igt@i915_selftest@live_gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-hsw6/igt@i915_selftest@live_gtt.html

  * igt@i915_suspend@debugfs-reader:
    - shard-iclb:         [INCOMPLETE][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb3/igt@i915_suspend@debugfs-reader.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb5/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [FAIL][53] ([i915#1149]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-tglb3/igt@kms_color@pipe-a-gamma.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-tglb6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][55] ([i915#54]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][63] ([i915#221]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * {igt@kms_hdr@bpc-switch}:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl4/igt@kms_hdr@bpc-switch.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][67] ([fdo#108145]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer (NEW):
    - shard-iclb:         [SKIP][71] ([fdo#109642] / [fdo#111068]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@primary_mmap_cpu:
    - shard-tglb:         [SKIP][73] ([i915#668]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-tglb3/igt@kms_psr@primary_mmap_cpu.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-tglb6/igt@kms_psr@primary_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][77] ([i915#31]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-kbl6/igt@kms_setmode@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-kbl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][79] ([fdo#112080]) -> [FAIL][80] ([IGT#28])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][81] ([i915#818]) -> [FAIL][82] ([i915#694])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7925/shard-hsw7/igt@gem_tiled_blits@normal.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/shard-hsw1/igt@gem_tiled_blits@normal.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7925 -> Patchwork_16535

  CI-20190529: 20190529
  CI_DRM_7925: b266b79c3de9874e0f991b6a9cc284a424094649 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16535: 70b2b644b94a9a333ba373ea47c758c7d581368f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16535/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
