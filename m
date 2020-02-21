Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA16C16835B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 17:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6756E37C;
	Fri, 21 Feb 2020 16:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40B3E6E37C;
 Fri, 21 Feb 2020 16:29:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39B9DA0087;
 Fri, 21 Feb 2020 16:29:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 21 Feb 2020 16:29:43 -0000
Message-ID: <158230258320.7919.17629025529885190962@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219154542.19574-1-jani.nikula@intel.com>
In-Reply-To: <20200219154542.19574-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_make_dbuf_configurations_const?=
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

Series: drm/i915: make dbuf configurations const
URL   : https://patchwork.freedesktop.org/series/73659/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7966_full -> Patchwork_16627_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16627_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16627_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16627_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb5/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb1/igt@gem_busy@close-race.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl9/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-skl7/igt@gem_ctx_persistence@close-replace-race.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7966_full and Patchwork_16627_full:

### New IGT tests (2) ###

  * igt@gem_eio@context-create:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.17] s

  * igt@kms_mmap_write_crc@main:
    - Statuses : 8 pass(s)
    - Exec time: [3.80, 21.48] s

  

Known issues
------------

  Here are the changes found in Patchwork_16627_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +14 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([fdo#103665])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl7/igt@gem_ctx_isolation@bcs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-kbl2/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#694])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][17] -> [INCOMPLETE][18] ([i915#58] / [k.org#198133])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@universal-planes-dpms:
    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([fdo#112126] / [fdo#112271]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb1/igt@i915_pm_rpm@universal-planes-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-tglb3/igt@i915_pm_rpm@universal-planes-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#39])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk5/igt@i915_pm_rps@reset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-glk9/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_gtt:
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#111732] / [fdo#112271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl5/igt@i915_selftest@live_gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-skl8/igt@i915_selftest@live_gtt.html

  * igt@kms_color@pipe-a-degamma:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#71])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl5/igt@kms_color@pipe-a-degamma.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-skl5/igt@kms_color@pipe-a-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][29] -> [FAIL][30] ([i915#96])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#52] / [i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - shard-hsw:          [PASS][33] -> [INCOMPLETE][34] ([CI#80] / [i915#61])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw8/igt@kms_flip@basic-flip-vs-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-hsw5/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-panning-vs-hang-interruptible:
    - shard-tglb:         [PASS][35] -> [TIMEOUT][36] ([fdo#112271] / [i915#561]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb6/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-tglb2/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#34])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][39] -> [SKIP][40] ([i915#668]) +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#899])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109276]) +21 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][51] ([fdo#112080]) -> [PASS][52] +10 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [i915#677]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd}:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html

  * {igt@gem_exec_whisper@basic-contexts-forked}:
    - shard-apl:          [INCOMPLETE][59] ([fdo#103927]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl3/igt@gem_exec_whisper@basic-contexts-forked.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-apl2/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a:
    - shard-snb:          [SKIP][63] ([fdo#109271]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-snb5/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-a.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - shard-apl:          [FAIL][65] ([i915#54]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][67] ([i915#300]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [SKIP][71] ([i915#668]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * {igt@kms_hdr@bpc-switch}:
    - shard-skl:          [FAIL][73] ([i915#1188]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl1/igt@kms_hdr@bpc-switch.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][81] ([fdo#109276]) -> [PASS][82] +19 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb2/igt@prime_busy@hang-bsd2.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][83] ([i915#831]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][85] ([i915#694]) -> [FAIL][86] ([i915#818])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-hsw2/igt@gem_tiled_blits@normal.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][87] ([i915#82]) -> [SKIP][88] ([fdo#109271])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-snb6/igt@i915_pm_rpm@gem-idle.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-snb2/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [DMESG-FAIL][89] ([i915#1233]) -> [INCOMPLETE][90] ([i915#1233])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-tglb1/igt@i915_selftest@live_gt_lrc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-tglb6/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][91] ([fdo#109349]) -> [DMESG-WARN][92] ([i915#1226])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#561]: https://gitlab.freedesktop.org/drm/intel/issues/561
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7966 -> Patchwork_16627

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16627: 1521946da24f338192379c9b079321d232437e76 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16627/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
