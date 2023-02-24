Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE51D6A17ED
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 09:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D9E10E0A9;
	Fri, 24 Feb 2023 08:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 589C210E0A9;
 Fri, 24 Feb 2023 08:27:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F28AAADE6;
 Fri, 24 Feb 2023 08:27:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8901778360175204183=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 24 Feb 2023 08:27:52 -0000
Message-ID: <167722727208.4564.12201046821989264106@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224012009.3594691-1-matthew.d.roper@intel.com>
In-Reply-To: <20230224012009.3594691-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_engine_TLB_invalidation_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8901778360175204183==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Add engine TLB invalidation (rev2)
URL   : https://patchwork.freedesktop.org/series/114159/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12774_full -> Patchwork_114159v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 10)
------------------------------

  Additional (1): shard-tglu-9 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114159v2_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - {shard-tglu}:       [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-3/igt@i915_pm_rpm@gem-evict-pwrite.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-2/igt@i915_pm_rpm@gem-evict-pwrite.html

  * {igt@i915_selftest@live@gt_tlb}:
    - {shard-tglu}:       [PASS][3] -> [DMESG-WARN][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-3/igt@i915_selftest@live@gt_tlb.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-2/igt@i915_selftest@live@gt_tlb.html

  
Known issues
------------

  Here are the changes found in Patchwork_114159v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu-10:      NOTRUN -> [SKIP][5] ([i915#7456])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu-10:      NOTRUN -> [SKIP][6] ([i915#7701])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_buddy@all-tests:
    - shard-tglu-9:       NOTRUN -> [SKIP][7] ([i915#6433])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@drm_buddy@all-tests.html

  * igt@feature_discovery@chamelium:
    - shard-tglu-9:       NOTRUN -> [SKIP][8] ([fdo#111827]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@feature_discovery@chamelium.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu-9:       NOTRUN -> [SKIP][9] ([i915#7697])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-tglu-10:      NOTRUN -> [SKIP][10] ([fdo#109314])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu-10:      NOTRUN -> [SKIP][11] ([i915#6344])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-tglu-10:      NOTRUN -> [SKIP][12] ([i915#7697])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglu-10:      NOTRUN -> [SKIP][13] ([fdo#112283])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu-10:      NOTRUN -> [ABORT][14] ([i915#7975])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-tglu-9:       NOTRUN -> [SKIP][15] ([i915#4613])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu-10:      NOTRUN -> [SKIP][17] ([i915#4613]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-tglu-9:       NOTRUN -> [SKIP][18] ([i915#1850])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglu-10:      NOTRUN -> [SKIP][21] ([i915#4270])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +53 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu-9:       NOTRUN -> [SKIP][23] ([i915#3323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-tglu-10:      NOTRUN -> [FAIL][24] ([i915#3318])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-tglu-9:       NOTRUN -> [SKIP][25] ([i915#2527] / [i915#2856])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu-10:      NOTRUN -> [SKIP][26] ([i915#2527] / [i915#2856]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_hwmon@hwmon-read:
    - shard-tglu-10:      NOTRUN -> [SKIP][27] ([i915#7707])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@i915_hwmon@hwmon-read.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-tglu-9:       NOTRUN -> [SKIP][28] ([i915#658])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglu-10:      NOTRUN -> [SKIP][29] ([fdo#109289]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [PASS][30] -> [FAIL][31] ([i915#6537])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl7/igt@i915_pm_rps@engine-order.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl7/igt@i915_pm_rps@engine-order.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-tglu-10:      NOTRUN -> [SKIP][32] ([i915#5286]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-tglu-9:       NOTRUN -> [SKIP][33] ([fdo#111615] / [i915#1845] / [i915#7651]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu-10:      NOTRUN -> [SKIP][34] ([fdo#111615]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-tglu-10:      NOTRUN -> [SKIP][35] ([i915#2705])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][36] ([fdo#111615] / [i915#3689]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][38] ([i915#3689] / [i915#6095]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][39] ([i915#6095]) +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][40] ([i915#3689] / [i915#3886]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
    - shard-tglu-10:      NOTRUN -> [SKIP][41] ([i915#3689]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-tglu-9:       NOTRUN -> [SKIP][42] ([i915#1845] / [i915#7651]) +24 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu-10:      NOTRUN -> [SKIP][43] ([i915#3742])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_color@gamma:
    - shard-tglu-10:      NOTRUN -> [SKIP][44] ([fdo#111827])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
    - shard-tglu-9:       NOTRUN -> [SKIP][45] ([i915#7828])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-tglu-10:      NOTRUN -> [SKIP][46] ([i915#7828]) +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@type1:
    - shard-tglu-10:      NOTRUN -> [SKIP][47] ([i915#6944] / [i915#7116] / [i915#7118])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_content_protection@type1.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-tglu-9:       NOTRUN -> [SKIP][48] ([i915#1845]) +5 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#2346])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu-10:      NOTRUN -> [SKIP][51] ([i915#3840])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-tglu-9:       NOTRUN -> [SKIP][52] ([fdo#109274] / [i915#3637]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-tglu-10:      NOTRUN -> [SKIP][53] ([fdo#109274] / [i915#3637])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-tglu-10:      NOTRUN -> [SKIP][54] ([i915#2587] / [i915#2672]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu-9:       NOTRUN -> [SKIP][55] ([i915#3555]) +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu-10:      NOTRUN -> [SKIP][56] ([fdo#109280]) +21 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu-9:       NOTRUN -> [SKIP][57] ([i915#1849]) +16 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglu-10:      NOTRUN -> [SKIP][58] ([fdo#110189]) +18 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglu-10:      NOTRUN -> [SKIP][59] ([i915#3555]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-tglu-9:       NOTRUN -> [SKIP][60] ([fdo#109289]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-tglu-10:      NOTRUN -> [SKIP][61] ([fdo#109274]) +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-hdmi-a-1:
    - shard-tglu-10:      NOTRUN -> [SKIP][62] ([i915#5176]) +7 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][63] ([fdo#109271]) +19 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-snb5/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1.html

  * igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling:
    - shard-tglu-9:       NOTRUN -> [SKIP][64] ([i915#3555] / [i915#6953])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-10:      NOTRUN -> [SKIP][65] ([i915#658]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-tglu-9:       NOTRUN -> [SKIP][66] ([fdo#111068] / [i915#658])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-tglu-9:       NOTRUN -> [SKIP][67] ([fdo#110189])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][68] ([i915#5465]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html

  * igt@kms_universal_plane@universal-plane-pipe-b-functional:
    - shard-tglu-9:       NOTRUN -> [SKIP][69] ([fdo#109274])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_universal_plane@universal-plane-pipe-b-functional.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-snb:          [PASS][70] -> [DMESG-WARN][71] ([i915#5090])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-snb2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-snb4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@prime_vgem@basic-userptr:
    - shard-tglu-9:       NOTRUN -> [SKIP][72] ([fdo#109295] / [i915#3301])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@prime_vgem@basic-userptr.html

  * igt@v3d/v3d_perfmon@create-single-perfmon:
    - shard-tglu-10:      NOTRUN -> [SKIP][73] ([fdo#109315] / [i915#2575])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@v3d/v3d_perfmon@create-single-perfmon.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable-twice:
    - shard-tglu-10:      NOTRUN -> [SKIP][74] ([i915#2575]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@vc4/vc4_purgeable_bo@mark-purgeable-twice.html

  * igt@vc4/vc4_tiling@get-bad-flags:
    - shard-tglu-9:       NOTRUN -> [SKIP][75] ([i915#2575])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@vc4/vc4_tiling@get-bad-flags.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@idle@rcs0:
    - {shard-rkl}:        [FAIL][76] ([i915#7742]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html

  * igt@fbdev@pan:
    - {shard-tglu}:       [SKIP][78] ([i915#2582]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@fbdev@pan.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-3/igt@fbdev@pan.html

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][80] ([i915#2582]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@fbdev@write.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@fbdev@write.html

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][82] ([i915#658]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@feature_discovery@psr1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][84] ([i915#2842]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - {shard-rkl}:        [SKIP][86] ([i915#3281]) -> [PASS][87] +6 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_set_tiling_vs_pwrite:
    - {shard-rkl}:        [SKIP][88] ([i915#3282]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [ABORT][90] ([i915#5566]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@secure-batches:
    - {shard-rkl}:        [SKIP][92] ([i915#2527]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-2/igt@gen9_exec_parse@secure-batches.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-rkl}:        [SKIP][94] ([i915#3361]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][96] ([fdo#109308]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@i915_pm_rpm@pm-tiling.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - {shard-tglu}:       [SKIP][98] ([i915#1845]) -> [PASS][99] +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-4/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_fbcon_fbt@fbc:
    - {shard-rkl}:        [SKIP][100] ([i915#4098]) -> [PASS][101] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][102] ([i915#3955]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [FAIL][104] ([i915#79]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - {shard-tglu}:       [SKIP][106] ([i915#1849]) -> [PASS][107] +5 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][108] ([i915#1849] / [i915#4098]) -> [PASS][109] +21 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdmi_inject@inject-audio:
    - {shard-rkl}:        [SKIP][110] ([i915#433]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-2/igt@kms_hdmi_inject@inject-audio.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-1/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_plane@plane-panning-top-left@pipe-a-planes:
    - {shard-rkl}:        [SKIP][112] ([i915#1849]) -> [PASS][113] +6 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html

  * igt@kms_plane@plane-position-hole@pipe-b-planes:
    - {shard-tglu}:       [SKIP][114] ([i915#1849] / [i915#3558]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-4/igt@kms_plane@plane-position-hole@pipe-b-planes.html

  * igt@kms_psr@primary_render:
    - {shard-rkl}:        [SKIP][116] ([i915#1072]) -> [PASS][117] +3 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@kms_psr@primary_render.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_psr@primary_render.html

  * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
    - {shard-tglu}:       [SKIP][118] ([fdo#109274]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-4/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        [SKIP][120] ([i915#1845] / [i915#4098]) -> [PASS][121] +35 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@kms_vblank@pipe-d-wait-forked-busy:
    - {shard-tglu}:       [SKIP][122] ([i915#1845] / [i915#7651]) -> [PASS][123] +21 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_vblank@pipe-d-wait-forked-busy.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-3/igt@kms_vblank@pipe-d-wait-forked-busy.html

  * igt@perf@gen12-mi-rpc:
    - {shard-rkl}:        [SKIP][124] ([fdo#109289]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@perf@gen12-mi-rpc.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-4/igt@perf@gen12-mi-rpc.html

  * igt@prime_vgem@basic-fence-read:
    - {shard-rkl}:        [SKIP][126] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-2/igt@prime_vgem@basic-fence-read.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5431]: https://gitlab.freedesktop.org/drm/intel/issues/5431
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6333]: https://gitlab.freedesktop.org/drm/intel/issues/6333
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7479]: https://gitlab.freedesktop.org/drm/intel/issues/7479
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8151]: https://gitlab.freedesktop.org/drm/intel/issues/8151
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8154]: https://gitlab.freedesktop.org/drm/intel/issues/8154


Build changes
-------------

  * Linux: CI_DRM_12774 -> Patchwork_114159v2

  CI-20190529: 20190529
  CI_DRM_12774: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7171: 35a09092eabf7e55aeb625720634550a0368dde6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114159v2: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/index.html

--===============8901778360175204183==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Add engine TLB invalidation (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114159/">https://patchwork.freedesktop.org/series/114159/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12774_full -&gt; Patchwork_114159v2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 10)</h2>
<p>Additional (1): shard-tglu-9 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114159v2_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@gem-evict-pwrite:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-3/igt@i915_pm_rpm@gem-evict-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-2/igt@i915_pm_rpm@gem-evict-pwrite.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@i915_selftest@live@gt_tlb}:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-3/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-2/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114159v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@all-tests:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@drm_buddy@all-tests.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6433">i915#6433</a>)</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@feature_discovery@chamelium.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_exec_gttfill@multigpu-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_exec_params@secure-non-root.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1850">i915#1850</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/644">i915#644</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gem_userptr_blits@vma-merge.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@i915_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@i915_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl7/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl7/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_big_joiner@2x-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_chamelium_color@gamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-snb5/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5465">i915#5465</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-b-functional:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-snb2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-snb4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5090">i915#5090</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@v3d/v3d_perfmon@create-single-perfmon.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable-twice:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-10/igt@vc4/vc4_purgeable_bo@mark-purgeable-twice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-flags:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-9/igt@vc4/vc4_tiling@get-bad-flags.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@fbdev@pan.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-3/igt@fbdev@pan.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@fbdev@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl7/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-apl6/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-2/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-4/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-2/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/433">i915#433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-1/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole@pipe-b-planes:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-4/igt@kms_plane@plane-position-hole@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@kms_psr@primary_render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_psr@primary_render.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-b-sanity:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-4/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-busy:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_vblank@pipe-d-wait-forked-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-tglu-3/igt@kms_vblank@pipe-d-wait-forked-busy.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@perf@gen12-mi-rpc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-4/igt@perf@gen12-mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12774 -&gt; Patchwork_114159v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12774: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7171: 35a09092eabf7e55aeb625720634550a0368dde6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114159v2: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8901778360175204183==--
