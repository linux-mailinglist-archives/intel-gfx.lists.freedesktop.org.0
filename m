Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E90B4CBA0A1
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Dec 2025 00:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4DF310E982;
	Fri, 12 Dec 2025 23:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E7C10E982;
 Fri, 12 Dec 2025 23:13:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6564300957995072893=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915=3A_Some_DSB/fli?=
 =?utf-8?q?pq_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Dec 2025 23:13:11 -0000
Message-ID: <176558119171.82816.2351642042255370652@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6564300957995072893==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Some DSB/flipq stuff
URL   : https://patchwork.freedesktop.org/series/158868/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17670_full -> Patchwork_158868v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158868v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158868v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_158868v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-rkl:          [PASS][1] -> [FAIL][2] +2 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-2/igt@gem_ctx_persistence@smoketest.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-7/igt@gem_ctx_persistence@smoketest.html

  * igt@i915_selftest@live:
    - shard-dg1:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@i915_selftest@live.html

  * igt@kms_color@degamma:
    - shard-tglu-1:       NOTRUN -> [ABORT][5] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_color@degamma.html

  * igt@kms_color@degamma@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [ABORT][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-5/igt@kms_color@degamma@pipe-a-hdmi-a-3.html

  * igt@kms_color@gamma@pipe-a-hdmi-a-3:
    - shard-dg1:          [PASS][7] -> [ABORT][8] +8 other tests abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-13/igt@kms_color@gamma@pipe-a-hdmi-a-3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-13/igt@kms_color@gamma@pipe-a-hdmi-a-3.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][9] -> [ABORT][10] +6 other tests abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-tglu-5/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-7/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          [PASS][11] -> [ABORT][12] +5 other tests abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-3:
    - shard-dg2:          [PASS][13] -> [ABORT][14] +7 other tests abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-1/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-3.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-mtlp:         [PASS][15] -> [ABORT][16] +3 other tests abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [PASS][17] -> [INCOMPLETE][18] +1 other test incomplete
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_properties@colorop-properties-atomic@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [ABORT][19] +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-2/igt@kms_properties@colorop-properties-atomic@pipe-a-hdmi-a-1.html

  * igt@kms_properties@colorop-properties-atomic@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [ABORT][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-14/igt@kms_properties@colorop-properties-atomic@pipe-a-hdmi-a-4.html

  
#### Warnings ####

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][21] ([i915#3638]) -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
    - shard-dg1:          [SKIP][23] ([i915#3638]) -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-14/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-12/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
    - shard-tglu:         [SKIP][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-tglu-3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg1:          [SKIP][27] ([i915#9934]) -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-18/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17670_full and Patchwork_158868v1_full:

### New IGT tests (13) ###

  * igt@gem_userptr_blits@2x-flip-vs-dpms-on-nop-interruptible:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@basic:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@dp-mst-type-0:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@etime-multi-wait-all-for-submit-available-unsubmitted-submitted:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@illegal-fd-to-handle:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@invalid-bpp:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@invalid-wait-illegal-handle:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@mmap-unmap:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@parallel-keep-in-fence:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@psr-1p-primscrn-spr-indfb-draw-render:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@psr-2p-scndscrn-indfb-msflip-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@psr-2p-scndscrn-spr-indfb-draw-blt:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_158868v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-tglu-1:       NOTRUN -> [SKIP][29] ([i915#11078])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#11078])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_buddy@drm_buddy:
    - shard-glk:          NOTRUN -> [DMESG-WARN][31] ([i915#15095]) +1 other test dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@drm_buddy@drm_buddy.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#14544] / [i915#3555] / [i915#9323])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#9323]) +1 other test skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#7697]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][35] ([i915#13356]) +1 other test incomplete
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk9/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#14544] / [i915#280])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#280])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#14544] / [i915#4525])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#3539] / [i915#4852])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3539] / [i915#4852])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#14544] / [i915#3281]) +6 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4812]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][43] -> [INCOMPLETE][44] ([i915#13356]) +2 other tests incomplete
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [PASS][45] -> [INCOMPLETE][46] ([i915#13356]) +1 other test incomplete
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4860])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#4613])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#14544] / [i915#4613])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#4613])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-glk:          NOTRUN -> [SKIP][51] ([i915#4613]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4077])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_wc@read:
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4083])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_mmap_wc@read.html

  * igt@gem_pread@exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][54] ([i915#2658])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite_snooped:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#3282])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_pwrite_snooped.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#13717] / [i915#14544])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4270])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#14544] / [i915#3282]) +3 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_blits@basic:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4077]) +3 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_tiled_blits@basic.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][60] ([i915#3297])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#3297]) +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@process-exit-busy:
    - shard-mtlp:         [PASS][62] -> [ABORT][63] ([i915#13562])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-6/igt@gem_userptr_blits@process-exit-busy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@gem_userptr_blits@process-exit-busy.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3297] / [i915#4958])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#14544] / [i915#3297])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#2527] / [i915#2856]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#2856])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#14544] / [i915#2527]) +2 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#2527]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_module_load@reload-no-display:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][70] ([i915#13029] / [i915#14545])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-dg1:          [PASS][71] -> [SKIP][72] ([i915#4423])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@i915_pm_rpm@gem-execbuf-stress.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-glk:          NOTRUN -> [SKIP][73] +204 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#4387])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#6245])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-dg1:          [PASS][76] -> [DMESG-FAIL][77] ([i915#15433])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-glk:          NOTRUN -> [INCOMPLETE][78] ([i915#4817])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4212])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-glk:          NOTRUN -> [INCOMPLETE][80] ([i915#12761]) +1 other test incomplete
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk1/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-dg1:          [PASS][81] -> [DMESG-WARN][82] ([i915#4423]) +3 other tests dmesg-warn
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#1769] / [i915#3555])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#1769] / [i915#3555])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][85] -> [FAIL][86] ([i915#14857]) +1 other test fail
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [PASS][87] -> [FAIL][88] ([i915#5956])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][89] ([i915#5956])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#5286]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4538] / [i915#5286])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][92]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#14544] / [i915#5286]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#5286]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][95] +38 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#14544] / [i915#3638]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4538]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#14544]) +7 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#14544] / [i915#6095]) +8 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#6095]) +4 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#6095]) +52 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#12313])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#6095]) +55 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#6095]) +29 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#12313] / [i915#14544]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#12313])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#10307] / [i915#6095]) +144 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#14098] / [i915#14544] / [i915#6095]) +9 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#6095]) +97 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#6095]) +34 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#14098] / [i915#6095]) +25 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_frames@hdmi-aspect-ratio:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#11151] / [i915#7828]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_chamelium_frames@hdmi-aspect-ratio.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#11151] / [i915#7828]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#11151] / [i915#7828]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#11151] / [i915#7828]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#3555] / [i915#9979])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#14544] / [i915#3116])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][120] ([i915#7173]) +1 other test fail
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#6944] / [i915#9424])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#6944] / [i915#9424])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#6944])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_content_protection@suspend-resume.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#13049])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [PASS][126] -> [FAIL][127] ([i915#13566])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][128] ([i915#13566])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#13049] / [i915#14544]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#3555]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#13049])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#13049])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#3555])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#13046] / [i915#5354])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#14544] / [i915#4103])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#4103])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#9723])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [PASS][138] -> [SKIP][139] ([i915#3555])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dp_aux_dev:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#1257])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#13707])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#3555] / [i915#3840])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#14544] / [i915#3840])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#3469])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-mtlp:         [PASS][145] -> [FAIL][146] ([i915#4767])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-5/igt@kms_fbcon_fbt@psr-suspend.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#2065] / [i915#4854])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#14544] / [i915#9934]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#3637] / [i915#9934]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#9934])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][151] -> [TIMEOUT][152] ([i915#14033]) +1 other test timeout
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-snb4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#3637] / [i915#9934]) +2 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-dpms-on-nop:
    - shard-rkl:          [PASS][154] -> [FAIL][155] ([i915#10826]) +1 other test fail
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-4/igt@kms_flip@flip-vs-dpms-on-nop.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_flip@flip-vs-dpms-on-nop.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#14544] / [i915#2672] / [i915#3555]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#14544] / [i915#2672]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#2672] / [i915#3555])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#2672] / [i915#3555])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#2587] / [i915#2672]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#2587] / [i915#2672] / [i915#3555])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#2587] / [i915#2672] / [i915#3555])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#2587] / [i915#2672]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#2672] / [i915#3555] / [i915#4423])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#2587] / [i915#2672] / [i915#4423])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-glk10:        NOTRUN -> [SKIP][166] +91 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][167] +7 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][168] +29 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#1825])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][170] ([i915#10056])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk10/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#15104])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][172] +44 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#15102]) +7 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#15102]) +13 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#14544] / [i915#15102] / [i915#3023]) +7 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#5439])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#9766])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#14544] / [i915#15102]) +2 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#15102] / [i915#3458]) +4 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#15102] / [i915#3458])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#14544] / [i915#1825]) +19 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#5354]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-rte.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#8708]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#3555] / [i915#8228])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-hdr:
    - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#3555] / [i915#8228])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_hdr@invalid-hdr.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#14544] / [i915#15283])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#10656])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#1839])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#14544] / [i915#6301])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][190] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-glk:          NOTRUN -> [INCOMPLETE][191] ([i915#13026])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][192] ([i915#10647] / [i915#12177])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][193] ([i915#10647]) +1 other test fail
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-2-size-256:
    - shard-rkl:          NOTRUN -> [FAIL][194] ([i915#15305]) +1 other test fail
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-7/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-2-size-256.html

  * igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-2-size-64:
    - shard-rkl:          NOTRUN -> [FAIL][195] ([i915#15385])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-7/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-2-size-64.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#13958])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#13958])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#13958] / [i915#14544])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#13958])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#14259])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#14259])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#15329]) +4 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#14544] / [i915#15329]) +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#9812])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#12343] / [i915#14544])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#9812])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#5354])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#9685])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#14544] / [i915#3828])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#14544] / [i915#9685])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#4281])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][212] -> [SKIP][213] ([i915#15073]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#15073])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#6524])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#11520]) +4 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][217] ([i915#11520]) +7 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#11520]) +3 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-glk10:        NOTRUN -> [SKIP][219] ([i915#11520]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-snb:          NOTRUN -> [SKIP][220] ([i915#11520])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-snb6/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#11520]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#11520] / [i915#14544]) +4 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#9683])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#9732]) +13 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_psr@fbc-psr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#1072] / [i915#9732]) +4 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#9732]) +10 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#9685])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#14544] / [i915#5289])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][230] ([i915#5289]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#14544] / [i915#3555]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#3555] / [i915#5030] / [i915#9041])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#5030]) +2 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#5030] / [i915#9041])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#3555])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#14544] / [i915#8623]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#9906])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#3555] / [i915#8808])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#3555] / [i915#9906])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#9906])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@perf@global-sseu-config:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#7387])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@perf@global-sseu-config.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#2433])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][243] -> [FAIL][244] ([i915#4349]) +4 other tests fail
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@module-unload:
    - shard-rkl:          NOTRUN -> [FAIL][245] ([i915#14433])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-suspend:
    - shard-dg2:          [PASS][246] -> [ABORT][247] ([i915#15059] / [i915#15131])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-1/igt@perf_pmu@rc6-suspend.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-10/igt@perf_pmu@rc6-suspend.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#8516])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#14544] / [i915#3708])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-tglu:         NOTRUN -> [FAIL][250] ([i915#12910]) +9 other tests fail
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#14544] / [i915#9917])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
#### Possible fixes ####

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [ABORT][252] ([i915#14809]) -> [PASS][253] +1 other test pass
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][254] ([i915#7984]) -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-8/igt@i915_power@sanity.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-3/igt@i915_power@sanity.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg2:          [ABORT][256] ([i915#15131]) -> [PASS][257]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-10/igt@i915_suspend@basic-s2idle-without-i915.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@i915_suspend@basic-s2idle-without-i915.html
    - shard-dg1:          [DMESG-WARN][258] ([i915#4391] / [i915#4423]) -> [PASS][259]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-14/igt@i915_suspend@basic-s2idle-without-i915.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-dg2:          [FAIL][260] ([i915#5956]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         [FAIL][262] ([i915#13566]) -> [PASS][263] +1 other test pass
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-rkl:          [FAIL][264] ([i915#13566]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg1:          [FAIL][266] ([i915#4767]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_fbcon_fbt@fbc-suspend.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          [SKIP][268] ([i915#3555] / [i915#8228]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [SKIP][270] ([i915#3555] / [i915#8228]) -> [PASS][271] +2 other tests pass
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_hdr@static-toggle.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [SKIP][272] ([i915#10656] / [i915#12388]) -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
    - shard-glk:          [INCOMPLETE][274] ([i915#13026]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-glk8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-dg1:          [DMESG-WARN][276] ([i915#4423]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-13/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][278] ([i915#15073]) -> [PASS][279] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][280] ([i915#15073]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-rkl:          [INCOMPLETE][282] ([i915#14419]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html

  
#### Warnings ####

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          [SKIP][284] ([i915#11078] / [i915#14544]) -> [SKIP][285] ([i915#11078])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@device_reset@cold-reset-bound.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@device_reset@cold-reset-bound.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          [SKIP][286] ([i915#14544] / [i915#7697]) -> [SKIP][287] ([i915#7697])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-rkl:          [SKIP][288] ([i915#14544] / [i915#3281]) -> [SKIP][289] ([i915#3281]) +3 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-rkl:          [SKIP][290] ([i915#3281]) -> [SKIP][291] ([i915#14544] / [i915#3281]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@gem_exec_reloc@basic-write-wc-noreloc.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          [SKIP][292] ([i915#14544] / [i915#2190]) -> [SKIP][293] ([i915#2190])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_huc_copy@huc-copy.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          [SKIP][294] ([i915#4613]) -> [SKIP][295] ([i915#14544] / [i915#4613])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@gem_lmem_swapping@parallel-random.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][296] ([i915#14544] / [i915#4613]) -> [SKIP][297] ([i915#4613])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][298] ([i915#3282]) -> [SKIP][299] ([i915#14544] / [i915#3282]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-rkl:          [SKIP][300] ([i915#14544] / [i915#3282]) -> [SKIP][301] ([i915#3282])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_softpin@evict-snoop:
    - shard-rkl:          [SKIP][302] -> [SKIP][303] ([i915#14544]) +1 other test skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@gem_softpin@evict-snoop.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_softpin@evict-snoop.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#2527]) -> [SKIP][305] ([i915#2527])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          [SKIP][306] ([i915#8399]) -> [SKIP][307] ([i915#14544] / [i915#8399])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          [SKIP][308] ([i915#14544] / [i915#8399]) -> [SKIP][309] ([i915#8399])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][310] ([i915#14544] / [i915#4387]) -> [SKIP][311] ([i915#4387])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][312] ([i915#14544] / [i915#6245]) -> [SKIP][313] ([i915#6245])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@i915_query@hwconfig_table.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@i915_query@hwconfig_table.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          [SKIP][314] ([i915#14544] / [i915#1769] / [i915#3555]) -> [SKIP][315] ([i915#1769] / [i915#3555])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][316] ([i915#14544] / [i915#5286]) -> [SKIP][317] ([i915#5286]) +4 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][318] ([i915#5286]) -> [SKIP][319] ([i915#14544] / [i915#5286]) +1 other test skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][320] ([i915#3638]) -> [SKIP][321] ([i915#14544] / [i915#3638])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][322] ([i915#14544] / [i915#3638]) -> [SKIP][323] ([i915#3638]) +1 other test skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs:
    - shard-rkl:          [SKIP][324] ([i915#14098] / [i915#6095]) -> [SKIP][325] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][326] ([i915#6095]) -> [SKIP][327] ([i915#14544] / [i915#6095]) +3 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][328] ([i915#14544] / [i915#6095]) -> [SKIP][329] ([i915#6095]) +12 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][330] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][331] ([i915#14098] / [i915#6095]) +13 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][332] ([i915#12805]) -> [SKIP][333] ([i915#12805] / [i915#14544])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg1:          [SKIP][334] ([i915#12313]) -> [SKIP][335] ([i915#12313] / [i915#4423])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          [SKIP][336] ([i915#14544] / [i915#3742]) -> [SKIP][337] ([i915#3742])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][338] ([i915#11151] / [i915#7828]) -> [SKIP][339] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          [SKIP][340] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][341] ([i915#11151] / [i915#7828]) +3 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][342] ([i915#6944] / [i915#9424]) -> [FAIL][343] ([i915#7173])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@suspend-resume:
    - shard-dg2:          [SKIP][344] ([i915#6944]) -> [FAIL][345] ([i915#7173])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-8/igt@kms_content_protection@suspend-resume.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-10/igt@kms_content_protection@suspend-resume.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][346] ([i915#6944] / [i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][347] ([i915#6944] / [i915#7118] / [i915#9424])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-11/igt@kms_content_protection@type1.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-8/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          [SKIP][348] ([i915#13049] / [i915#14544]) -> [SKIP][349] ([i915#13049])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-dg1:          [SKIP][350] ([i915#3555]) -> [SKIP][351] ([i915#3555] / [i915#4423])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_cursor_crc@cursor-random-32x10.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][352] ([i915#14544] / [i915#3555]) -> [SKIP][353] ([i915#3555]) +1 other test skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][354] ([i915#14544]) -> [SKIP][355] +9 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          [SKIP][356] ([i915#9067]) -> [SKIP][357] ([i915#14544] / [i915#9067])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#4103]) -> [SKIP][359] ([i915#4103])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-rkl:          [SKIP][360] ([i915#13748]) -> [SKIP][361] ([i915#13748] / [i915#14544])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_dp_link_training@uhbr-mst.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#3955]) -> [SKIP][363] ([i915#3955])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          [SKIP][364] ([i915#9337]) -> [SKIP][365] ([i915#14544] / [i915#9337])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_feature_discovery@dp-mst.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][366] ([i915#14544] / [i915#9934]) -> [SKIP][367] ([i915#9934]) +4 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-dg1:          [SKIP][368] ([i915#9934]) -> [SKIP][369] ([i915#4423] / [i915#9934])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][370] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][371] ([i915#12314] / [i915#12745] / [i915#4839])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [INCOMPLETE][372] ([i915#4839]) -> [INCOMPLETE][373] ([i915#12314] / [i915#4839])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][374] ([i915#14544] / [i915#2672] / [i915#3555]) -> [SKIP][375] ([i915#2672] / [i915#3555]) +1 other test skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#2672]) -> [SKIP][377] ([i915#2672]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][378] ([i915#1825]) -> [SKIP][379] ([i915#14544] / [i915#1825]) +12 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt:
    - shard-rkl:          [SKIP][380] ([i915#15102]) -> [SKIP][381] ([i915#14544] / [i915#15102])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][382] ([i915#15102] / [i915#3458]) -> [SKIP][383] ([i915#10433] / [i915#15102] / [i915#3458])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#1825]) -> [SKIP][385] ([i915#1825]) +19 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - shard-dg1:          [SKIP][386] ([i915#4423]) -> [SKIP][387]
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][389] ([i915#15102] / [i915#3023]) +5 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][390] ([i915#15102] / [i915#3023]) -> [SKIP][391] ([i915#14544] / [i915#15102] / [i915#3023]) +3 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][392] ([i915#14544] / [i915#15102]) -> [SKIP][393] ([i915#15102]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][394] ([i915#8708]) -> [SKIP][395] ([i915#4423] / [i915#8708])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg1:          [SKIP][396] ([i915#15102] / [i915#3458]) -> [SKIP][397] ([i915#15102] / [i915#3458] / [i915#4423])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          [SKIP][398] ([i915#13331]) -> [SKIP][399] ([i915#12713])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][400] ([i915#14544] / [i915#3555] / [i915#8228]) -> [SKIP][401] ([i915#3555] / [i915#8228])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_hdr@invalid-hdr.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_hdr@invalid-hdr.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][402] ([i915#14544] / [i915#1839] / [i915#4816]) -> [SKIP][403] ([i915#1839] / [i915#4816])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#6301]) -> [SKIP][405] ([i915#6301])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_panel_fitting@legacy.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          [SKIP][406] ([i915#13958] / [i915#14544]) -> [SKIP][407] ([i915#13958])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          [SKIP][408] ([i915#13958]) -> [SKIP][409] ([i915#13958] / [i915#14544])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-yf.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][410] ([i915#14259] / [i915#14544]) -> [SKIP][411] ([i915#14259])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][412] ([i915#15329] / [i915#3555]) -> [SKIP][413] ([i915#14544] / [i915#15329] / [i915#3555])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          [SKIP][414] ([i915#15329]) -> [SKIP][415] ([i915#14544] / [i915#15329]) +2 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][416] ([i915#14544] / [i915#4281]) -> [SKIP][417] ([i915#4281])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][418] ([i915#9340]) -> [SKIP][419] ([i915#3828])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][420] ([i915#11520] / [i915#14544]) -> [SKIP][421] ([i915#11520]) +3 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][422] ([i915#11520]) -> [SKIP][423] ([i915#11520] / [i915#14544]) +1 other test skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-rkl:          [SKIP][424] ([i915#1072] / [i915#9732]) -> [SKIP][425] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_psr@pr-cursor-mmap-cpu.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-rkl:          [SKIP][426] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][427] ([i915#1072] / [i915#9732]) +10 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_psr@pr-cursor-plane-onoff.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-dg1:          [SKIP][428] ([i915#1072] / [i915#9732]) -> [SKIP][429] ([i915#1072] / [i915#4423] / [i915#9732])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_psr@psr2-cursor-mmap-gtt.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-rkl:          [SKIP][430] ([i915#3555]) -> [SKIP][431] ([i915#14544] / [i915#3555]) +1 other test skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_scaling_modes@scaling-mode-none.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_vrr@flip-suspend:
    - shard-rkl:          [SKIP][432] ([i915#15243] / [i915#3555]) -> [SKIP][433] ([i915#14544] / [i915#15243] / [i915#3555])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_vrr@flip-suspend.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          [SKIP][434] ([i915#3555] / [i915#4423] / [i915#9906]) -> [SKIP][435] ([i915#3555] / [i915#9906])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-18/igt@kms_vrr@negative-basic.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_vrr@negative-basic.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          [SKIP][436] ([i915#14544] / [i915#3708]) -> [SKIP][437] ([i915#3708])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          [SKIP][438] ([i915#14544] / [i915#9917]) -> [SKIP][439] ([i915#9917])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
  [i915#14857]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857
  [i915#15059]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15059
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15283]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15283
  [i915#15305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15305
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15385]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15385
  [i915#15433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
  [i915#5030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5030
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
  [i915#9041]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9041
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
  [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979


Build changes
-------------

  * Linux: CI_DRM_17670 -> Patchwork_158868v1

  CI-20190529: 20190529
  CI_DRM_17670: 39f65c105d5b1af093f9df6f3dc688a642f96456 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8664: 28cc709ad89c0ef569569f19f4772d4cca354963 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158868v1: 39f65c105d5b1af093f9df6f3dc688a642f96456 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/index.html

--===============6564300957995072893==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Some DSB/flipq stuff</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158868/">https://patchwork.freedesktop.org/series/158868/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17670_full -&gt; Patchwork_158868v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158868v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_158868v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_158868v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-2/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-7/igt@gem_ctx_persistence@smoketest.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@i915_selftest@live.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_color@degamma.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-5/igt@kms_color@degamma@pipe-a-hdmi-a-3.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-13/igt@kms_color@gamma@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-13/igt@kms_color@gamma@pipe-a-hdmi-a-3.html">ABORT</a> +8 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-tglu-5/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-7/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-1.html">ABORT</a> +6 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-2.html">ABORT</a> +5 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-1/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-a-hdmi-a-3.html">ABORT</a> +7 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">ABORT</a> +3 other tests abort</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_properties@colorop-properties-atomic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-2/igt@kms_properties@colorop-properties-atomic@pipe-a-hdmi-a-1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_properties@colorop-properties-atomic@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-14/igt@kms_properties@colorop-properties-atomic@pipe-a-hdmi-a-4.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">ABORT</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-14/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-12/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">ABORT</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-tglu-3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-18/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17670_full and Patchwork_158868v1_full:</p>
<h3>New IGT tests (13)</h3>
<ul>
<li>
<p>igt@gem_userptr_blits@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dp-mst-type-0:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@etime-multi-wait-all-for-submit-available-unsubmitted-submitted:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@illegal-fd-to-handle:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-bpp:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-wait-illegal-handle:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-unmap:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@parallel-keep-in-fence:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@psr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@psr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158868v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@drm_buddy@drm_buddy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095">i915#15095</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk9/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_exec_flush@basic-wb-pro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_exec_schedule@preempt-queue.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk1/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_mmap_wc@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_pwrite_snooped.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-busy:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-6/igt@gem_userptr_blits@process-exit-busy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@gem_userptr_blits@process-exit-busy.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562">i915#13562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> +204 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433">i915#15433</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_addfb_basic@clobberred-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk1/igt@kms_async_flips@async-flip-suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_atomic_transition@modeset-transition-nonblocking.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857">i915#14857</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a> +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +52 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +55 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +144 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +97 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_chamelium_frames@hdmi-aspect-ratio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979">i915#9979</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_content_protection@lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_content_protection@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-128x42.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_dp_linktrain_fallback@dsc-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-5/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-8/igt@kms_fbcon_fbt@psr-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065">i915#2065</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-snb4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-4/igt@kms_flip@flip-vs-dpms-on-nop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_flip@flip-vs-dpms-on-nop.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> +91 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk10/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15283">i915#15283</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756">i915#12756</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-2-size-256:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-7/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-2-size-256.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15305">i915#15305</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-2-size-64:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-7/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-2-size-64.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15385">i915#15385</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-snb6/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_psr@fbc-psr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_psr@pr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5030">i915#5030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9041">i915#9041</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5030">i915#5030</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5030">i915#5030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9041">i915#9041</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-4/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-1/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-10/igt@perf_pmu@rc6-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15059">i915#15059</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809">i915#14809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-mtlp-8/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-mtlp-3/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-10/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-14/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-256x85.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-128x42.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767">i915#4767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_hdr@static-toggle.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388">i915#12388</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-glk8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-13/igt@kms_plane_alpha_blend@constant-alpha-min.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_plane_alpha_blend@constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@gem_exec_reloc@basic-write-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@gem_softpin@evict-snoop.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-8/igt@kms_content_protection@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-10/igt@kms_content_protection@suspend-resume.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162">i915#7162</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-8/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331">i915#13331</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg2-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-16/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-16/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-7/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-6/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-dg1-18/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-dg1-19/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-4/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17670/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158868v1/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17670 -&gt; Patchwork_158868v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17670: 39f65c105d5b1af093f9df6f3dc688a642f96456 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8664: 28cc709ad89c0ef569569f19f4772d4cca354963 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158868v1: 39f65c105d5b1af093f9df6f3dc688a642f96456 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6564300957995072893==--
