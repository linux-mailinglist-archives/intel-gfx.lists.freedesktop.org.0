Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE45124C23
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 16:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FFA6E82B;
	Wed, 18 Dec 2019 15:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 497D06E82B;
 Wed, 18 Dec 2019 15:49:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 406C2A47DB;
 Wed, 18 Dec 2019 15:49:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 18 Dec 2019 15:49:33 -0000
Message-ID: <157668417324.8354.5698072393591911764@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217230529.25092-1-lucas.demarchi@intel.com>
In-Reply-To: <20191217230529.25092-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/display=3A_move_clk_o?=
 =?utf-8?q?ff_sanitize_to_its_own_function?=
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

Series: series starting with [CI,1/3] drm/i915/display: move clk off sanitize to its own function
URL   : https://patchwork.freedesktop.org/series/71073/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7590_full -> Patchwork_15819_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15819_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb5/igt@gem_ctx_shared@q-smoketest-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb9/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#435])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb2/igt@gem_exec_nop@basic-series.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb6/igt@gem_exec_nop@basic-series.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#644])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][9] -> [DMESG-WARN][10] ([fdo#110789] / [fdo#111870])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [PASS][11] -> [DMESG-WARN][12] ([fdo#111870])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][13] -> [INCOMPLETE][14] ([fdo#103927])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-apl3/igt@gem_workarounds@suspend-resume.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-apl2/igt@gem_workarounds@suspend-resume.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-iclb2/igt@i915_hangman@error-state-capture-vcs1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-iclb5/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl1/igt@kms_color@pipe-a-ctm-0-25.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl6/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#460])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#72])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([IGT#5])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][33] -> [INCOMPLETE][34] ([i915#61])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#53])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl5/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#456] / [i915#460]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-snb:          [PASS][41] -> [SKIP][42] ([fdo#109271]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-snb1/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-snb4/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-iclb5/igt@kms_psr@psr2_dpms.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][47] -> [FAIL][48] ([i915#31])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-kbl7/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-kbl7/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109276]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [INCOMPLETE][51] ([i915#456]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb5/igt@gem_ctx_isolation@vcs0-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb1/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111736]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb6/igt@gem_exec_await@wide-contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb4/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-iclb3/igt@gem_exec_schedule@fifo-bsd1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111677]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][61] ([i915#707]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb2/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [TIMEOUT][63] ([fdo#112126] / [i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472] / [i915#707]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb1/igt@gem_sync@basic-each.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][67] ([fdo#111870]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][69] ([i915#747]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl9/igt@i915_selftest@mock_sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [DMESG-WARN][71] ([i915#747]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-snb6/igt@i915_selftest@mock_sanitycheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-snb1/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-kbl2/igt@i915_suspend@debugfs-reader.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-kbl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][75] ([i915#109]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl1/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl6/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][77] ([i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-hsw:          [DMESG-WARN][81] ([IGT#6]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-hsw1/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][83] ([i915#79]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [INCOMPLETE][85] ([i915#82]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-snb6/igt@kms_flip@flip-vs-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-snb1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][87] ([i915#34]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][91] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][93] ([i915#456] / [i915#460]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][97] ([fdo#108145] / [i915#265]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-c-scaler-with-rotation:
    - shard-tglb:         [INCOMPLETE][99] ([i915#435]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb6/igt@kms_plane_scaling@pipe-c-scaler-with-rotation.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb7/igt@kms_plane_scaling@pipe-c-scaler-with-rotation.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][101] ([fdo#112080]) -> [PASS][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][103] ([fdo#112080]) -> [SKIP][104] ([fdo#111912] / [fdo#112080])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-tglb7/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][105] ([i915#82]) -> [DMESG-WARN][106] ([i915#444])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-snb5/igt@gem_eio@kms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-snb2/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][107] ([i915#648] / [i915#667]) -> [INCOMPLETE][108] ([i915#648])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-snb:          [FAIL][109] ([k.org#204565]) -> [FAIL][110] ([i915#436])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7590/shard-snb6/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/shard-snb2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7590 -> Patchwork_15819

  CI-20190529: 20190529
  CI_DRM_7590: 9d6af21a94f6b11a625d2c9034145a1e6137e621 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15819: a5ead65c2279b856cccd0db8ba69dfb2907c50d0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15819/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
