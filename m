Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF5811C4F5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 05:38:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB046EC41;
	Thu, 12 Dec 2019 04:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38F2A6EC41;
 Thu, 12 Dec 2019 04:38:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B2BEA47DF;
 Thu, 12 Dec 2019 04:38:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Thu, 12 Dec 2019 04:38:19 -0000
Message-ID: <157612549915.32007.2695262667848674355@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211124549.59516-1-michal.wajdeczko@intel.com>
In-Reply-To: <20191211124549.59516-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRHJv?=
 =?utf-8?q?p_some_explicit_params_in_uc=5Ffw_functions?=
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

Series: Drop some explicit params in uc_fw functions
URL   : https://patchwork.freedesktop.org/series/70758/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7543_full -> Patchwork_15690_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15690_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15690_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15690_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@processes:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk6/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-glk5/igt@gem_ctx_persistence@processes.html

  
Known issues
------------

  Here are the changes found in Patchwork_15690_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl2/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb4/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111735]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@gem_exec_nop@basic-parallel.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb4/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][15] -> [DMESG-WARN][16] ([fdo#111870])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl4/igt@gem_workarounds@suspend-resume.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-kbl7/igt@gem_workarounds@suspend-resume.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#109])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#435] / [i915#667])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb9/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#460] / [i915#516])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb6/igt@kms_flip@flip-vs-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#699])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#49]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#456] / [i915#460] / [i915#474])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-iclb:         [PASS][33] -> [INCOMPLETE][34] ([i915#123] / [i915#140])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#69])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][37] -> [INCOMPLETE][38] ([fdo#103665] / [i915#648] / [i915#667])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl6/igt@kms_plane@pixel-format-pipe-a-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][43] ([i915#570]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@gem_ctx_persistence@processes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl5/igt@gem_ctx_persistence@processes.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][45] ([i915#530]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][49] ([i915#472] / [i915#707]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@gem_sync@basic-each.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][51] ([fdo#111870]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_wait@await-vecs0:
    - shard-skl:          [DMESG-WARN][53] ([i915#109]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@gem_wait@await-vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl6/igt@gem_wait@await-vecs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][55] ([i915#447]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][57] ([i915#455]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@i915_selftest@live_gt_timelines.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb1/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][59] ([i915#747]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@i915_selftest@mock_sanitycheck.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl9/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +6 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][65] ([i915#54]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][67] ([i915#460]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb9/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-tglb:         [INCOMPLETE][69] ([i915#667]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb9/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#112393] / [i915#667]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb9/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][73] ([i915#79]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][75] ([i915#79]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [INCOMPLETE][77] ([i915#474] / [i915#667]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][81] ([i915#456] / [i915#460]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][83] ([i915#82]) -> [DMESG-WARN][84] ([i915#444])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb4/igt@gem_eio@kms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-snb4/igt@gem_eio@kms.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [INCOMPLETE][85] ([fdo#103665]) -> [DMESG-WARN][86] ([i915#180])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-kbl3/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][87] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][88] ([fdo#112347] / [i915#648] / [i915#667])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][89] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][90] ([fdo#112347] / [i915#648] / [i915#667])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][91] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][92] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7543 -> Patchwork_15690

  CI-20190529: 20190529
  CI_DRM_7543: 91752f80df9b582561be6bbac12ef780b12f606c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5345: 9e0c82b6d70065db894ececf2be8de372e983cf0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15690: e7754e7ef204ea021ac859bf33c76d9966eec920 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
