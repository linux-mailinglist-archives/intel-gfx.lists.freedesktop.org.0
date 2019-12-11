Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8038311A11B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 03:12:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622D46EA3D;
	Wed, 11 Dec 2019 02:12:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB0B36EA39;
 Wed, 11 Dec 2019 02:12:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4716A0096;
 Wed, 11 Dec 2019 02:12:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Dec 2019 02:12:46 -0000
Message-ID: <157603036678.30693.14084219675874217722@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210115502.3767070-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191210115502.3767070-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Show_the_i915=5Factive_on_failure?=
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

Series: drm/i915/selftests: Show the i915_active on failure
URL   : https://patchwork.freedesktop.org/series/70683/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7532_full -> Patchwork_15666_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15666_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15666_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15666_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][1] -> [SKIP][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  
Known issues
------------

  Here are the changes found in Patchwork_15666_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb5/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_exec_basic@basic-vcs1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112080]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb1/igt@gem_exec_basic@basic-vcs1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb7/igt@gem_exec_basic@basic-vcs1.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb6/igt@gem_exec_schedule@independent-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb4/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +13 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#463])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb6/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [PASS][15] -> [TIMEOUT][16] ([fdo#112126] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][17] -> [DMESG-WARN][18] ([fdo#111870])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb7/igt@gem_userptr_blits@sync-unmap-cycles.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_rpm@debugfs-read:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#151])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl5/igt@i915_pm_rpm@debugfs-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl6/igt@i915_pm_rpm@debugfs-read.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22] ([i915#747])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb1/igt@i915_selftest@mock_sanitycheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-snb4/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#559])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([fdo#111842])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb5/igt@kms_psr2_su@frontbuffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#460])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [INCOMPLETE][41] ([i915#456]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb1/igt@gem_ctx_isolation@vcs0-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb4/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb6/igt@gem_ctx_isolation@vcs1-clean.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][45] ([i915#679]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl4/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * {igt@gem_exec_balancer@bonded-semaphore}:
    - shard-iclb:         [FAIL][47] ([i915#669]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb2/igt@gem_exec_balancer@bonded-semaphore.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb5/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-kbl:          [DMESG-WARN][49] ([i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl7/igt@gem_exec_parse_blt@allowed-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-kbl4/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_schedule@out-order-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb1/igt@gem_exec_schedule@out-order-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb8/igt@gem_exec_schedule@out-order-bsd.html

  * igt@gem_exec_schedule@preempt-other-bsd1:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb7/igt@gem_exec_schedule@preempt-other-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb2/igt@gem_exec_schedule@preempt-other-bsd1.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][55] ([fdo#112080]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb7/igt@gem_exec_store@cachelines-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb2/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][59] ([i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb6/igt@gem_sync@basic-store-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][61] ([fdo#111870]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb6/igt@gem_userptr_blits@sync-unmap-after-close.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-snb5/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][63] ([i915#747]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-tglb:         [DMESG-FAIL][65] ([i915#402]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [FAIL][67] ([i915#54]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-apl:          [DMESG-WARN][69] -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [INCOMPLETE][73] ([i915#123] / [i915#667]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [INCOMPLETE][75] ([i915#456] / [i915#460]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][77] ([fdo#103665]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][79] ([fdo#112391] / [i915#648] / [i915#667]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][81] ([fdo#108145]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][83] ([fdo#109642] / [fdo#111068]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][85] ([i915#31]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-apl1/igt@kms_setmode@basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][89] ([IGT#28]) -> [SKIP][90] ([fdo#109276] / [fdo#112080])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][91] ([i915#444]) -> [INCOMPLETE][92] ([i915#82])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb1/igt@gem_eio@kms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-snb2/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][93] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][94] ([fdo#112347] / [i915#648] / [i915#667])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][95], [FAIL][96]) ([i915#716] / [k.org#204565]) -> [FAIL][97] ([k.org#204565])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl7/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-kbl7/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-kbl2/igt@runner@aborted.html
    - shard-snb:          [FAIL][98] ([i915#436]) -> [FAIL][99] ([fdo#111249] / [k.org#204565])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7532/shard-snb1/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/shard-snb4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111249]: https://bugs.freedesktop.org/show_bug.cgi?id=111249
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#669]: https://gitlab.freedesktop.org/drm/intel/issues/669
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7532 -> Patchwork_15666

  CI-20190529: 20190529
  CI_DRM_7532: 2004c1c9d9669c6722274d5cf62f8f2b00720d57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15666: 3a82512b4bafdf9227357d2a77bf6798c92deabe @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15666/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
