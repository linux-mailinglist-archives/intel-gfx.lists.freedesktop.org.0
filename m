Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B41A336EC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 05:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB4C10E9E6;
	Thu, 13 Feb 2025 04:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF7C410E39E;
 Thu, 13 Feb 2025 04:29:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2770804044871285323=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm=3A_Fix_DSC_BPP_incre?=
 =?utf-8?q?ment_decoding?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2025 04:29:04 -0000
Message-ID: <173942094476.1538625.9323017743540631211@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250212161851.4007005-1-imre.deak@intel.com>
In-Reply-To: <20250212161851.4007005-1-imre.deak@intel.com>
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

--===============2770804044871285323==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Fix DSC BPP increment decoding
URL   : https://patchwork.freedesktop.org/series/144741/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16121_full -> Patchwork_144741v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_144741v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144741v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144741v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs1:
    - shard-mtlp:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-mtlp-6/igt@gem_ctx_persistence@engines-mixed-process@vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-process@vcs1.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-mtlp:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-mtlp-6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg1:          [PASS][5] -> [SKIP][6] +59 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-19/igt@kms_flip@flip-vs-suspend-interruptible.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible.html

  
#### Warnings ####

  * igt@kms_atomic_interruptible@universal-setplane-cursor:
    - shard-dg1:          [DMESG-WARN][7] ([i915#4423]) -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_atomic_interruptible@universal-setplane-cursor.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_atomic_interruptible@universal-setplane-cursor.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          [SKIP][9] ([i915#4538] / [i915#5286]) -> [SKIP][10] +4 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg1:          [SKIP][11] ([i915#3638]) -> [SKIP][12] +2 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          [SKIP][13] ([i915#4538]) -> [SKIP][14] +5 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg1:          [SKIP][15] ([i915#12313]) -> [SKIP][16] +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-dg1:          [SKIP][17] ([i915#6095]) -> [SKIP][18] +13 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_content_protection@srm:
    - shard-dg1:          [SKIP][19] ([i915#7116]) -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_content_protection@srm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg1:          [SKIP][21] ([i915#4103] / [i915#4213]) -> [SKIP][22] +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-19/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg1:          [SKIP][23] ([i915#9723]) -> [SKIP][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg1:          [SKIP][25] ([i915#3840]) -> [SKIP][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          [SKIP][27] ([i915#3555] / [i915#3840]) -> [SKIP][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-19/igt@kms_dsc@dsc-with-bpc-formats.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg1:          [SKIP][29] ([i915#3555] / [i915#8228]) -> [SKIP][30] +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_hdr@invalid-metadata-sizes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg1:          [SKIP][31] ([i915#4884]) -> [SKIP][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_rotation_crc@exhaust-fences.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-dg1:          [SKIP][33] ([i915#5289]) -> [SKIP][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-dg1:          [SKIP][35] ([i915#3555]) -> [SKIP][36] +5 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_scaling_modes@scaling-mode-center.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          [SKIP][37] ([i915#8623]) -> [SKIP][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@lobf:
    - shard-dg1:          [SKIP][39] ([i915#11920]) -> [SKIP][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_vrr@lobf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg1:          [SKIP][41] ([i915#9906]) -> [SKIP][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_vrr@seamless-rr-switch-virtual.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-virtual.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16121_full and Patchwork_144741v1_full:

### New IGT tests (37) ###

  * igt@kms_cursor_edge_walk@128x128-left-edge@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.33] s

  * igt@kms_cursor_edge_walk@128x128-left-edge@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.11] s

  * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.31] s

  * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-b-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [3.36, 3.63] s

  * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.11] s

  * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.25] s

  * igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.69] s

  * igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.34] s

  * igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.12] s

  * igt@kms_cursor_edge_walk@128x128-top-edge@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.33] s

  * igt@kms_cursor_edge_walk@128x128-top-edge@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.10] s

  * igt@kms_cursor_edge_walk@256x256-left-edge@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.33] s

  * igt@kms_cursor_edge_walk@256x256-right-edge@pipe-b-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [3.35, 3.64] s

  * igt@kms_cursor_edge_walk@256x256-right-edge@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.12] s

  * igt@kms_cursor_edge_walk@256x256-top-bottom@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.70] s

  * igt@kms_cursor_edge_walk@256x256-top-bottom@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.12] s

  * igt@kms_cursor_edge_walk@256x256-top-edge@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.69] s

  * igt@kms_cursor_edge_walk@256x256-top-edge@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.33] s

  * igt@kms_cursor_edge_walk@256x256-top-edge@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.10] s

  * igt@kms_cursor_edge_walk@64x64-left-edge@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.67] s

  * igt@kms_cursor_edge_walk@64x64-left-edge@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.36] s

  * igt@kms_cursor_edge_walk@64x64-left-edge@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.09] s

  * igt@kms_cursor_edge_walk@64x64-right-edge@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [3.45] s

  * igt@kms_cursor_edge_walk@64x64-right-edge@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.69] s

  * igt@kms_cursor_edge_walk@64x64-right-edge@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.31] s

  * igt@kms_cursor_edge_walk@64x64-right-edge@pipe-d-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [3.33] s

  * igt@kms_cursor_edge_walk@64x64-right-edge@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.10] s

  * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.47] s

  * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-b-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [3.35, 3.63] s

  * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.10] s

  * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.31] s

  * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-b-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [3.33, 3.61] s

  * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.08] s

  * igt@kms_cursor_edge_walk@64x64-top-edge@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [3.23] s

  * igt@kms_draw_crc@draw-method-mmap-cpu@rgb565-4tiled:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_draw_crc@draw-method-mmap-cpu@xrgb2101010-4tiled:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_draw_crc@draw-method-mmap-cpu@xrgb8888-4tiled:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_144741v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#8411])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#8411]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu-1:       NOTRUN -> [SKIP][45] ([i915#9318])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#11078])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#8414]) +7 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@busy@rcs0:
    - shard-dg2-9:        NOTRUN -> [SKIP][48] ([i915#8414]) +16 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@drm_fdinfo@busy@rcs0.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#8414]) +15 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@fbdev@unaligned-write:
    - shard-dg1:          [PASS][50] -> [SKIP][51] ([i915#2582])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@fbdev@unaligned-write.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@fbdev@unaligned-write.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#9323])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#3555] / [i915#9323])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#7697])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_compute@compute-square:
    - shard-dg2-9:        NOTRUN -> [FAIL][55] ([i915#13665])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_compute@compute-square.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#8555])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8555]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#8555])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#280])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#280])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4812]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#4525])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#4525])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#4525]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#6334]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][66] ([i915#3539] / [i915#4852])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#3539] / [i915#4852])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3539]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3539] / [i915#4852]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#5107])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#3281]) +7 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3281])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3281]) +4 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3281]) +3 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-engines@vecs0:
    - shard-rkl:          [PASS][75] -> [DMESG-WARN][76] ([i915#12964]) +15 other tests dmesg-warn
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-rkl-5/igt@gem_exec_schedule@preempt-engines@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-4/igt@gem_exec_schedule@preempt-engines@vecs0.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4537] / [i915#4812]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][78] -> [INCOMPLETE][79] ([i915#11441] / [i915#13304]) +1 other test incomplete
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4860])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4860])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg2-9:        NOTRUN -> [SKIP][82] ([i915#4860])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#4613] / [i915#7582])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#4613]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#4613])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][86] ([i915#4613]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk6/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#4613]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#8289])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4077]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_mmap_gtt@basic-write.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4077]) +4 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4077])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-dg2-9:        NOTRUN -> [SKIP][92] ([i915#4083]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4083]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_mmap_wc@pf-nonblock.html

  * igt@gem_mmap_wc@read:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#4083])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_mmap_wc@read.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#3282]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3282]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2-9:        NOTRUN -> [SKIP][97] ([i915#3282]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3282]) +5 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][99] ([i915#2658])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [TIMEOUT][100] ([i915#12964])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          [PASS][101] -> [TIMEOUT][102] ([i915#12917] / [i915#12964])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-rkl-8/igt@gem_pxp@display-protected-crc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-5/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          [PASS][103] -> [TIMEOUT][104] ([i915#12964]) +1 other test timeout
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-dg2-9:        NOTRUN -> [SKIP][105] ([i915#4270])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4270])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#5190] / [i915#8428]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][108] ([i915#5190] / [i915#8428]) +2 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#8428]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#4079]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4079])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2-9:        NOTRUN -> [SKIP][112] ([i915#4885])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-tglu:         [PASS][113] -> [FAIL][114] ([i915#12941])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2-9:        NOTRUN -> [SKIP][115] ([i915#4879])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3297])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#3297])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#3297])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#3297]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3281] / [i915#3297])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_userptr_blits@relocations.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2-9:        NOTRUN -> [SKIP][121] +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          NOTRUN -> [SKIP][122] +10 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-5/igt@gen7_exec_parse@bitmasks.html
    - shard-dg1:          NOTRUN -> [SKIP][123]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#2856])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#2856])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2-9:        NOTRUN -> [SKIP][126] ([i915#2856]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gen9_exec_parse@shadow-peek.html
    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#2527] / [i915#2856])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#2527] / [i915#2856]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_hangman@detector:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][129] ([i915#12964]) +8 other tests dmesg-warn
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@i915_hangman@detector.html

  * igt@i915_module_load@load:
    - shard-dg2:          ([PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150], [PASS][151]) -> ([PASS][152], [PASS][153], [PASS][154], [PASS][155], [PASS][156], [PASS][157], [PASS][158], [PASS][159], [PASS][160], [DMESG-WARN][161], [PASS][162], [PASS][163], [PASS][164], [PASS][165], [PASS][166], [PASS][167], [PASS][168], [PASS][169], [PASS][170], [PASS][171], [PASS][172], [PASS][173]) ([i915#13368])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-7/igt@i915_module_load@load.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-7/igt@i915_module_load@load.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-10/igt@i915_module_load@load.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-6/igt@i915_module_load@load.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-10/igt@i915_module_load@load.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-7/igt@i915_module_load@load.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-6/igt@i915_module_load@load.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-5/igt@i915_module_load@load.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-11/igt@i915_module_load@load.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-8/igt@i915_module_load@load.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-5/igt@i915_module_load@load.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-8/igt@i915_module_load@load.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-4/igt@i915_module_load@load.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-11/igt@i915_module_load@load.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-4/igt@i915_module_load@load.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-3/igt@i915_module_load@load.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-1/igt@i915_module_load@load.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-3/igt@i915_module_load@load.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-1/igt@i915_module_load@load.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-2/igt@i915_module_load@load.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-1/igt@i915_module_load@load.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-2/igt@i915_module_load@load.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-10/igt@i915_module_load@load.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-10/igt@i915_module_load@load.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-10/igt@i915_module_load@load.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@i915_module_load@load.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@i915_module_load@load.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_module_load@load.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_module_load@load.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_module_load@load.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-2/igt@i915_module_load@load.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-2/igt@i915_module_load@load.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-3/igt@i915_module_load@load.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-3/igt@i915_module_load@load.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-4/igt@i915_module_load@load.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-4/igt@i915_module_load@load.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-5/igt@i915_module_load@load.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-5/igt@i915_module_load@load.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-6/igt@i915_module_load@load.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-6/igt@i915_module_load@load.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-7/igt@i915_module_load@load.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-7/igt@i915_module_load@load.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-8/igt@i915_module_load@load.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-8/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [PASS][174] -> [ABORT][175] ([i915#9820])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#7178])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          [PASS][177] -> [FAIL][178] ([i915#12942]) +1 other test fail
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_pm_rc6_residency@rc6-accuracy.html
    - shard-rkl:          [PASS][179] -> [FAIL][180] ([i915#12942]) +1 other test fail
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          [PASS][181] -> [FAIL][182] ([i915#3591])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][183] -> [FAIL][184] ([i915#12739] / [i915#3591])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-glk:          NOTRUN -> [INCOMPLETE][185] ([i915#12797])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#11681])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_pm_rps@thresholds.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#4387])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][188] ([i915#9311]) +1 other test dmesg-warn
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@i915_selftest@mock.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][189] ([i915#9311]) +1 other test dmesg-warn
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][190] ([i915#7443])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html
    - shard-dg1:          [PASS][191] -> [DMESG-WARN][192] ([i915#4391] / [i915#4423])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-19/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][193] ([i915#4817])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk6/igt@i915_suspend@forcewake.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#7707])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][195] ([i915#4212])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#8709]) +7 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-y-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#8709]) +3 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#8709]) +15 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-dg2:          [PASS][199] -> [FAIL][200] ([i915#5956])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
    - shard-tglu:         [PASS][201] -> [FAIL][202] ([i915#11808]) +1 other test fail
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][203] ([i915#5956])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-dp-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2-9:        NOTRUN -> [SKIP][204] ([i915#1769] / [i915#3555])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#1769] / [i915#3555])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#5286]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#5286]) +3 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#5286]) +2 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#5286])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][210] +61 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3638])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-dg1:          [PASS][212] -> [DMESG-WARN][213] ([i915#4423]) +2 other tests dmesg-warn
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-13/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-19/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][214] ([i915#4538] / [i915#5190]) +5 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#4538] / [i915#5190]) +5 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#6187])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][217] ([i915#6095]) +14 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#12313])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#6095]) +14 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#12313])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-glk:          NOTRUN -> [SKIP][221] +160 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#12805])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][223] ([i915#12796]) +1 other test incomplete
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#6095]) +8 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][225] ([i915#6095]) +4 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][226] ([i915#4423])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-19/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#6095]) +87 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#10307] / [i915#6095]) +142 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][229] ([i915#10307] / [i915#6095]) +24 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#12313]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#6095]) +140 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#6095]) +54 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#11616] / [i915#7213])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][235] ([i915#7213]) +3 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#3742])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][237] ([i915#4087]) +4 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][238] ([i915#11151] / [i915#7828]) +2 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#11151] / [i915#7828])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_frames@dp-crc-multiple:
    - shard-dg2-9:        NOTRUN -> [SKIP][240] ([i915#11151] / [i915#7828]) +4 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_chamelium_frames@dp-crc-multiple.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#11151] / [i915#7828]) +3 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#11151] / [i915#7828]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#11151] / [i915#7828]) +4 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#11151] / [i915#7828]) +4 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#3116] / [i915#3299])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_content_protection@dp-mst-type-1.html
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#3299])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#7118] / [i915#9424])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#6944] / [i915#9424]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2-9:        NOTRUN -> [SKIP][249] ([i915#9424])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#7118] / [i915#9424])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#8814])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-256x85.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#13049]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#3555]) +2 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#13049]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][255] ([i915#13049])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html
    - shard-dg2-9:        NOTRUN -> [SKIP][256] ([i915#13049])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-dg2-9:        NOTRUN -> [SKIP][257] ([i915#13046] / [i915#5354]) +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#13046] / [i915#5354]) +3 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#4103]) +2 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#4103] / [i915#4213])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#9833])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#8588])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#3555]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][264] ([i915#8812])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#3840])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#3555] / [i915#3840])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#3555] / [i915#3840])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#3840] / [i915#9053])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#3840] / [i915#9053])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#1839])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu-1:       NOTRUN -> [SKIP][271] ([i915#658])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_feature_discovery@psr2.html
    - shard-dg2-9:        NOTRUN -> [SKIP][272] ([i915#658])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_feature_discovery@psr2.html

  * igt@kms_fence_pin_leak:
    - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#4881])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-tglu-1:       NOTRUN -> [SKIP][274] ([i915#3637]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#3637]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#9934]) +3 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#3637]) +2 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2-9:        NOTRUN -> [SKIP][278] ([i915#9934]) +2 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#9934]) +7 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - shard-dg1:          [PASS][280] -> [SKIP][281] ([i915#3637])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_flip@basic-flip-vs-dpms.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglu:         [PASS][282] -> [FAIL][283] ([i915#11989]) +1 other test fail
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-10/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
    - shard-dg2:          [PASS][284] -> [FAIL][285] ([i915#11989]) +2 other tests fail
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#8381])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][287] ([i915#8381])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#2672] / [i915#3555]) +2 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#2672] / [i915#3555]) +2 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#2672]) +3 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][291] ([i915#2587] / [i915#2672]) +5 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
    - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#2587] / [i915#2672]) +2 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg1:          [PASS][293] -> [SKIP][294] ([i915#3555]) +6 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#3555] / [i915#8810] / [i915#8813])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#3555] / [i915#8810])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][297] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][298] ([i915#2672]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#2672] / [i915#3555] / [i915#5190])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          [PASS][300] -> [SKIP][301] ([i915#4342]) +5 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-dg2:          [PASS][302] -> [FAIL][303] ([i915#6880]) +1 other test fail
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2:          NOTRUN -> [FAIL][304] ([i915#6880])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#5354]) +18 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][306] +30 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][307] ([i915#8708]) +6 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#3023]) +12 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][309] ([i915#8708]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][310] +7 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#8708]) +11 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][312] ([i915#3458]) +9 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][313] ([i915#1825]) +8 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][314] ([i915#5354]) +13 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#1825]) +14 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#3458]) +9 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#12713])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][318] ([i915#3555] / [i915#8228])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [PASS][319] -> [SKIP][320] ([i915#3555] / [i915#8228])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#3555] / [i915#8228])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][322] ([i915#12388])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#10656])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#12388])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][325] ([i915#12394])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#6301])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][327] +6 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][328] -> [INCOMPLETE][329] ([i915#12756])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-dg1:          [PASS][330] -> [SKIP][331] ([i915#8825])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_plane@pixel-format-source-clamping.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][332] ([i915#12178])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][333] ([i915#7862]) +1 other test fail
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][334] ([i915#10647] / [i915#12169])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][335] ([i915#10647]) +1 other test fail
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk6/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg1:          [PASS][336] -> [SKIP][337] ([i915#7294])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][338] ([i915#3555] / [i915#8821])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:
    - shard-mtlp:         NOTRUN -> [SKIP][339] ([i915#12247]) +8 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-a:
    - shard-dg1:          [PASS][340] -> [SKIP][341] ([i915#12247]) +11 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-a.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d:
    - shard-dg1:          [PASS][342] -> [SKIP][343] ([i915#8152]) +1 other test skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu-1:       NOTRUN -> [SKIP][344] ([i915#3555])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][345] ([i915#12247]) +3 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][346] ([i915#12247]) +8 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][347] ([i915#12247] / [i915#6953] / [i915#9423])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][348] ([i915#12247] / [i915#6953])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][349] ([i915#12247]) +3 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][350] ([i915#12247]) +3 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
    - shard-dg1:          [PASS][351] -> [SKIP][352] ([i915#12247] / [i915#3558] / [i915#8152])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:
    - shard-dg1:          [PASS][353] -> [SKIP][354] ([i915#12247] / [i915#8152]) +3 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg1:          [PASS][355] -> [SKIP][356] ([i915#3555] / [i915#8152])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-19/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][357] ([i915#12247] / [i915#6953])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2-9:        NOTRUN -> [SKIP][358] ([i915#12247] / [i915#3555] / [i915#9423])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:
    - shard-dg2-9:        NOTRUN -> [SKIP][359] ([i915#12247]) +3 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][360] ([i915#12247] / [i915#6953])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][361] ([i915#12343])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][362] ([i915#9812])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-dg1:          [PASS][363] -> [SKIP][364] ([i915#13441])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-12/igt@kms_pm_dc@dc5-dpms-negative.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg1:          NOTRUN -> [SKIP][365] ([i915#3828])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu-1:       NOTRUN -> [FAIL][366] ([i915#9295])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][367] ([i915#9519])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [PASS][368] -> [SKIP][369] ([i915#9519])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][370] ([i915#4077]) +3 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][371] -> [SKIP][372] ([i915#9519]) +2 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-dg1:          [PASS][373] -> [SKIP][374] ([i915#9519])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-tglu:         NOTRUN -> [SKIP][375] ([i915#9519])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][376] ([i915#11520]) +7 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][377] ([i915#12316]) +2 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][378] ([i915#11520]) +3 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk1/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][379] ([i915#11520]) +6 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][380] ([i915#9808])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][381] ([i915#11520]) +1 other test skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][382] ([i915#11520]) +3 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2-9:        NOTRUN -> [SKIP][383] ([i915#11520]) +5 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-mtlp:         NOTRUN -> [SKIP][384] ([i915#4348])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-mtlp:         NOTRUN -> [SKIP][385] ([i915#9688]) +4 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr-sprite-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][386] ([i915#1072] / [i915#9732]) +11 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html

  * igt@kms_psr@fbc-psr2-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][387] ([i915#9732]) +14 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_psr@fbc-psr2-no-drrs.html

  * igt@kms_psr@fbc-psr2-primary-page-flip:
    - shard-dg2-9:        NOTRUN -> [SKIP][388] ([i915#1072] / [i915#9732]) +8 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_psr@fbc-psr2-primary-page-flip.html

  * igt@kms_psr@pr-cursor-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][389] ([i915#9732]) +7 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-gtt.html

  * igt@kms_psr@pr-primary-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][390] ([i915#1072] / [i915#9732]) +1 other test skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_psr@pr-primary-mmap-gtt.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][391] ([i915#1072] / [i915#9732]) +12 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][392] ([i915#9685])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-mtlp:         NOTRUN -> [SKIP][393] ([i915#12755])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][394] ([i915#12755] / [i915#5190]) +1 other test skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> [SKIP][395] ([i915#5190])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
    - shard-tglu:         NOTRUN -> [SKIP][396] ([i915#5289])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][397] ([i915#5289])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-dg2-9:        NOTRUN -> [SKIP][398] ([i915#3555])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][399] ([i915#3555]) +3 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-mtlp:         NOTRUN -> [SKIP][400] ([i915#8808] / [i915#9906])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-tglu:         NOTRUN -> [SKIP][401] ([i915#9906])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output:
    - shard-glk:          NOTRUN -> [SKIP][402] ([i915#2437])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-glk8/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][403] ([i915#2437])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][404] ([i915#2437] / [i915#9412])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][405] ([i915#2434])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@perf@mi-rpc.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][406] ([i915#2435])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-hang@rcs0:
    - shard-mtlp:         [PASS][407] -> [ABORT][408] ([i915#13193]) +3 other tests abort
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-mtlp-2/igt@perf_pmu@busy-hang@rcs0.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-4/igt@perf_pmu@busy-hang@rcs0.html

  * igt@perf_pmu@invalid-init:
    - shard-tglu:         NOTRUN -> [FAIL][409] ([i915#13663])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@perf_pmu@invalid-init.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          [PASS][410] -> [INCOMPLETE][411] ([i915#13520])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-3/igt@perf_pmu@module-unload.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-10/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][412] ([i915#8516])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][413] ([i915#8516])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-mtlp:         NOTRUN -> [SKIP][414] ([i915#3708])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@prime_vgem@basic-fence-read.html

  * igt@sriov_basic@bind-unbind-vf@vf-4:
    - shard-tglu:         NOTRUN -> [FAIL][415] ([i915#12910]) +18 other tests fail
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@sriov_basic@bind-unbind-vf@vf-4.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          NOTRUN -> [SKIP][416] ([i915#9917])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-dg2:          NOTRUN -> [SKIP][417] ([i915#9917])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
#### Possible fixes ####

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [ABORT][418] ([i915#13427]) -> [PASS][419]
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-8/igt@gem_create@create-ext-cpu-access-big.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-mtlp:         [ABORT][420] ([i915#13193]) -> [PASS][421]
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-mtlp-7/igt@gem_eio@in-flight-contexts-10ms.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-mtlp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/index.html

--===============2770804044871285323==
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
<tr><td><b>Series:</b></td><td>drm: Fix DSC BPP increment decoding</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/144741/">https://patchwork.freedesktop.org/series/144741/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144741v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144741v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16121_full -&gt; Patchwork_144741v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_144741v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_144741v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
144741v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-mtlp-6/igt@gem_ctx_persistence@engines-mixed-process@vc=
s1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144741v1/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-proc=
ess@vcs1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-mtlp-6/igt@gem_ctx_persistence@engines-mixed-process@ve=
cs0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_144741v1/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-pro=
cess@vecs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-19/igt@kms_flip@flip-vs-suspend-interruptible.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144741v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible.html">S=
KIP</a> +59 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-cursor:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_atomic_interruptible@universal-setplane-=
cursor.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_atomic_int=
erruptible@universal-setplane-cursor.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotat=
e-0.html">SKIP</a> ([i915#4538] / [i915#5286]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_big_f=
b@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SK=
IP</a> ([i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144741v1/shard-dg1-15/igt@kms_big_fb@x-tiled-32bpp-rotate-270=
.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rota=
te-180.html">SKIP</a> ([i915#4538]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-=
max-hw-stride-64bpp-rotate-180.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-=
ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_ccs@crc-sprite-pla=
nes-basic-4-tiled-lnl-ccs.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-c=
c.html">SKIP</a> ([i915#6095]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs-cc.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_content_protection@srm.html">SKIP</a> ([=
i915#7116]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144741v1/shard-dg1-15/igt@kms_content_protection@srm.html">SKIP</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-19/igt@kms_cursor_legacy@basic-busy-flip-before-cur=
sor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@km=
s_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a=
> ([i915#9723]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144741v1/shard-dg1-15/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKI=
P</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SK=
IP</a> ([i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144741v1/shard-dg1-15/igt@kms_dsc@dsc-fractional-bpp-with-bpc=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-19/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> =
([i915#3555] / [i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_dsc@dsc-with-bpc-formats=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a=
> ([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_rotation_crc@exhaust-fences.html">SKIP</=
a> ([i915#4884]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144741v1/shard-dg1-15/igt@kms_rotation_crc@exhaust-fences.html">S=
KIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0=
.html">SKIP</a> ([i915#5289]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-0.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_scaling_modes@scaling-mode-center.html">=
SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_scaling_modes@scaling-mode-ce=
nter.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_tiled_display@basic-test-pattern-with-ch=
amelium.html">SKIP</a> ([i915#8623]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_tiled_display@b=
asic-test-pattern-with-chamelium.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_vrr@lobf.html">SKIP</a> ([i915#11920]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1=
/shard-dg1-15/igt@kms_vrr@lobf.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_vrr@seamless-rr-switch-virtual.html">SKI=
P</a> ([i915#9906]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144741v1/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-virtual.h=
tml">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16121_full and Patchwork_1=
44741v1_full:</p>
<h3>New IGT tests (37)</h3>
<ul>
<li>
<p>igt@kms_cursor_edge_walk@128x128-left-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-left-edge@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-right-edge@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-right-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.36, 3.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-right-edge@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-right-edge@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-bottom@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-edge@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-left-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-right-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.35, 3.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-right-edge@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-bottom@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-bottom@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-edge@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-edge@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-left-edge@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-left-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-left-edge@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-right-edge@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-right-edge@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-right-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-right-edge@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-right-edge@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.35, 3.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-edge@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.33, 3.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-edge@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-edge@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-cpu@rgb565-4tiled:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-cpu@xrgb2101010-4tiled:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-cpu@xrgb8888-4tiled:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144741v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@api_intel_bb@object-reloc-=
purge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@drm_fdinfo@all-busy-check=
-all.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@rcs0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@drm_fdinfo@busy@rcs0.html"=
>SKIP</a> ([i915#8414]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@drm_fdinfo@most-busy-check=
-all@bcs0.html">SKIP</a> ([i915#8414]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@fbdev@unaligned-write.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard=
-dg1-15/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_compute@compute-square=
.html">FAIL</a> ([i915#13665])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_ctx_persistence@heartb=
eat-close.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_ctx_persistence@heart=
beat-stop.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_balancer@bonded-f=
alse-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gem_exec_balancer@paralle=
l.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@gem_exec_balancer@paralle=
l-out-fence.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_capture@capture-i=
nvisible.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-r=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-se=
t-default.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_flush@basic-wb-pr=
w-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-=
read.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-r=
ead-noreloc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-rkl-5/igt@gem_exec_schedule@preempt-engines@vecs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144741v1/shard-rkl-4/igt@gem_exec_schedule@preempt-engines@vecs0.html">D=
MESG-WARN</a> ([i915#12964]) +15 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741=
v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> ([i9=
15#11441] / [i915#13304]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_fence_thrash@bo-write-=
verify-y.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@2-=
spare-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gem_lmem_evict@dontneed-e=
vict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@gem_lmem_swapping@heavy-m=
ulti.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_lmem_swapping@paralle=
l-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk6/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_media_fill@media-fill.=
html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_mmap_gtt@basic-write.h=
tml">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-odd.html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@gem_mmap_gtt@fault-concur=
rent-x.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_mmap_wc@bad-offset.htm=
l">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_mmap_wc@pf-nonblock.ht=
ml">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_mmap_wc@read.html">SK=
IP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_partial_pwrite_pread@=
reads-display.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@gem_partial_pwrite_pread@w=
rite.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_partial_pwrite_pread@w=
rite-uncached.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_pread@snoop.html">SKIP=
</a> ([i915#3282]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gem_pwrite@basic-exhausti=
on.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@gem_pxp@create-protected-b=
uffer.html">TIMEOUT</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-rkl-8/igt@gem_pxp@display-protected-crc.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v=
1/shard-rkl-5/igt@gem_pxp@display-protected-crc.html">TIMEOUT</a> ([i915#12=
917] / [i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-contex=
t-refcounted.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144741v1/shard-rkl-2/igt@gem_pxp@dmabuf-shared-protect=
ed-dst-is-context-refcounted.html">TIMEOUT</a> ([i915#12964]) +1 other test=
 timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_pxp@fail-invalid-prote=
cted-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_pxp@reject-modify-cont=
ext-protection-off-3.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_render_copy@linear-to-=
vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_render_copy@y-tiled-cc=
s-to-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-c=
cs-to-yf-tiled-mc-ccs.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1447=
41v1/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html">FAIL</a> ([i915=
#12941])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-5/igt@gen7_exec_parse@bitmasks.h=
tml">SKIP</a> +10 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@gen7_exec_parse@bitmasks.=
html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@gen9_exec_parse@bb-large.h=
tml">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@detector:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@i915_hangman@detector.html=
">DMESG-WARN</a> ([i915#12964]) +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16121/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-7/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_16121/shard-dg2-10/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/sh=
ard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-10/igt@i915_module_load=
@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_16121/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-6/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_16121/shard-dg2-5/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shar=
d-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-8/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_16121/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-8/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_16121/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg=
2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-4/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
16121/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-1/igt@i915_modu=
le_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_16121/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-1/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_16121/shard-dg2-2/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121=
/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16121/shard-dg2-2/igt@i915_module_lo=
ad@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144741v1/shard-dg2-10/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741=
v1/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-10/igt@i915=
_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
741v1/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4741v1/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-2/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144741v1/shard-dg2-2/igt@i915_module_load@load.html"=
>DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_144741v1/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-3=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-4/igt@i915_module_load@loa=
d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144741v1/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-5=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-5/igt@i915_module_load@loa=
d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144741v1/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-6=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-7/igt@i915_module_load@loa=
d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144741v1/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-8=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144741v1/shard-dg2-8/igt@i915_module_load@loa=
d.html">PASS</a>) ([i915#13368])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144741v1/shard-dg1-19/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@i915_module_load@resize-b=
ar.html">SKIP</a> ([i915#7178])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4741v1/shard-dg2-1/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> ([=
i915#12942]) +1 other test fail</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4741v1/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> ([=
i915#12942]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14474=
1v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#3=
591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144741v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> ([i915#12739] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk2/igt@i915_pm_rpm@system-suspend-=
execbuf.html">INCOMPLETE</a> ([i915#12797])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_pm_rps@thresholds.htm=
l">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@i915_selftest@mock.html">=
DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@i915_suspend@basic-s3-wit=
hout-i915.html">INCOMPLETE</a> ([i915#7443])</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44741v1/shard-dg1-19/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WAR=
N</a> ([i915#4391] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk6/igt@i915_suspend@forcewake.html=
">INCOMPLETE</a> ([i915#4817])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_addfb_basic@addfb25-x-=
tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-=
a-3-y-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-12/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html">SKIP</a> (=
[i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-=
a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-c-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (=
[i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-cc=
s-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-10/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc.html">SKIP</a> ([i915#8709]=
) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing.html">FAIL</a> ([i915#5956])</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-tra=
nsition-fencing.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-4/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">FAIL</a> ([i915#11808]) +1 other te=
st fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-dp=
-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing@pipe-a-dp-3.html">FAIL</a> ([i915#5956])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i91=
5#3555])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-=
rotate-0.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_big_fb@4-tiled-32bpp-=
rotate-270.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-=
size-overflow.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_big_fb@linear-16bpp-r=
otate-90.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_big_fb@linear-32bpp-ro=
tate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-13/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
741v1/shard-dg1-19/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WARN</a=
> ([i915#4423]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-r=
otate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i91=
5#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb=
-size-overflow.html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4=
-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +14 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html">SKIP</a> ([i915#6095]) +14 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk8/igt@kms_ccs@crc-primary-suspend=
-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> +160 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk1/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs@pipe-a-hdmi-a-2.html">INCOMPLETE</a> ([i915#12796]) +1 other t=
est incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#6095]) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-19/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4.html">DMESG-WARN</a> ([i915#4423])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs.html">SKIP</a> ([i915#6095]) +87 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i9=
15#6095]) +142 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-=
a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#10307] =
/ [i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_ccs@random-ccs-data-4-=
tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#6095]) +140 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_ccs@random-ccs-data-4=
-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf=
-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i=
915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cdclk@mode-transition.=
html">SKIP</a> ([i915#11616] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_cdclk@plane-scaling.h=
tml">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cdclk@plane-scaling@pi=
pe-d-hdmi-a-2.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> ([i915#11151] / [i915#7828]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_chamelium_edid@dp-edi=
d-stress-resolution-4k.html">SKIP</a> ([i915#11151] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-multiple:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_chamelium_frames@dp-cr=
c-multiple.html">SKIP</a> ([i915#11151] / [i915#7828]) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> ([i915#11151] / [i915#7828]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd=
-with-enabled-mode.html">SKIP</a> ([i915#11151] / [i915#7828]) +4 other tes=
ts skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_chamelium_hpd@vga-hpd-=
with-enabled-mode.html">SKIP</a> ([i915#11151] / [i915#7828]) +4 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_content_protection@leg=
acy.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> ([i915#6944] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-256x85.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onsc=
reen-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#13049])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic-transitions.html">SKIP</a> ([i915#13046] / [i915#5354]) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> ([i915#13046] / [i915#5354]) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103]) +2 o=
ther tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i91=
5#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_dirtyfb@drrs-dirtyfb-i=
octl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_feature_discovery@psr=
2.html">SKIP</a> ([i915#658])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_feature_discovery@psr2=
.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_fence_pin_leak.html">=
SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_flip@2x-blocking-wf_v=
blank.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a> ([i915#9934]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-suspe=
nd-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_flip@2x-modeset-vs-vbl=
ank-race.html">SKIP</a> ([i915#9934]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_flip@2x-plain-flip-int=
erruptible.html">SKIP</a> ([i915#9934]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1=
/shard-dg1-15/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> ([i915#3637])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144741v1/shard-tglu-10/igt@kms_flip@flip-vs-absolute-wf_vblan=
k-interruptible.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144741v1/shard-dg2-4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdm=
i-a1.html">FAIL</a> ([i915#11989]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip@flip-vs-fences.ht=
ml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_flip@flip-vs-fences-in=
terruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i=
915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 ([i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +5 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bp=
p-ytilegen12rcccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_flip_scal=
ed_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (=
[i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> ([i915#3555] / [i91=
5#8810] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a>=
 ([i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#355=
5] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915=
#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#2672] / [i=
915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri=
-shrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_frontbuffer_trac=
king@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#4342]) +=
5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-mul=
tidraw.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144741v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-pri=
-indfb-multidraw.html">FAIL</a> ([i915#6880]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-spr-indfb-fullscreen.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-rte.html">SKIP</a> ([i915#5354]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> +30 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3023]) +12 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +1 o=
ther test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +11 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +9 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +8 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +13 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +14 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +9 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_hdr@brightness-with-hd=
r.html">SKIP</a> ([i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741=
v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555=
] / [i915#8228])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_joiner@invalid-modese=
t-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_joiner@invalid-modese=
t-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_pipe_b_c_ivb@pipe-b-d=
ouble-modeset-then-modeset-pipe-c.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdm=
i-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144741v1/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@p=
ipe-a-hdmi-a-1.html">INCOMPLETE</a> ([i915#12756])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_plane@pixel-format-source-clamping.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144741v1/shard-dg1-15/igt@kms_plane@pixel-format-source-clamping.html">S=
KIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk8/igt@kms_plane_alpha_blend@alpha=
-basic.html">FAIL</a> ([i915#12178])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk8/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk6/igt@kms_plane_alpha_blend@alpha=
-opaque-fb.html">FAIL</a> ([i915#10647] / [i915#12169])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk6/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#10647]) +1 other test fail=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_plane_alpha_blend@constant-alpha-max.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144741v1/shard-dg1-15/igt@kms_plane_alpha_blend@constant-alpha-max.htm=
l">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) +8=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-a:<=
/p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-5=
-with-modifiers@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@=
plane-downscale-factor-0-5-with-modifiers@pipe-a.html">SKIP</a> ([i915#1224=
7]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d:<=
/p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-unity-scaling=
-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@=
plane-scaler-unity-scaling-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152=
]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> ([i915#12247]) =
+3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +8 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#94=
23])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#1224=
7]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-=
75-unity-scaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@planes=
-downscale-factor-0-75-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#3=
558] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:=
</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-=
75-unity-scaling@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling=
@planes-downscale-factor-0-75-unity-scaling@pipe-d.html">SKIP</a> ([i915#12=
247] / [i915#8152]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-19/igt@kms_plane_scaling@planes-scaler-unity-scalin=
g.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144741v1/shard-dg1-15/igt@kms_plane_scaling@planes-scaler-unity-s=
caling.html">SKIP</a> ([i915#3555] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#695=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#355=
5] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#69=
53])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-12/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1=
/shard-dg1-15/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> ([i915#13441])=
</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/sha=
rd-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_pm_rpm@fences-dpms.htm=
l">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4741v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([=
i915#9519]) +2 other tests skip</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44741v1/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> =
([i915#9519])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-update-sf.html">SKIP</a> ([i915#11520]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#12316]) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk1/igt@kms_psr2_sf@fbc-pr-overlay-=
plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +6 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-sf@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_psr2_sf@pr-cursor-plan=
e-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_psr2_sf@psr2-primary-p=
lane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +5 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#4348])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_psr@fbc-psr-no-drrs.h=
tml">SKIP</a> ([i915#9688]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_psr@fbc-psr-sprite-mma=
p-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_psr@fbc-psr2-no-drrs.=
html">SKIP</a> ([i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-page-flip:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_psr@fbc-psr2-primary-p=
age-flip.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-gt=
t.html">SKIP</a> ([i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg1-17/igt@kms_psr@pr-primary-mmap-g=
tt.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_psr@psr2-cursor-blt.ht=
ml">SKIP</a> ([i915#1072] / [i915#9732]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_rotation_crc@primary-=
rotation-270.html">SKIP</a> ([i915#12755])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-270.html">SKIP</a> ([i915#12755] / [i915#5190]) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-0.html">SKIP</a> ([i915#5190])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-7/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-9/igt@kms_scaling_modes@scaling-=
mode-center.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@kms_scaling_modes@scaling=
-mode-full.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-glk8/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@perf@mi-rpc.html">SKIP</a>=
 ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-3/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> ([i915#2435])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-mtlp-2/igt@perf_pmu@busy-hang@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/sha=
rd-mtlp-4/igt@perf_pmu@busy-hang@rcs0.html">ABORT</a> ([i915#13193]) +3 oth=
er tests abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-3/igt@perf_pmu@invalid-init.htm=
l">FAIL</a> ([i915#13663])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-3/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144741v1/shard=
-dg2-10/igt@perf_pmu@module-unload.html">INCOMPLETE</a> ([i915#13520])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-mtlp-5/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-tglu-2/igt@sriov_basic@bind-unbind-v=
f@vf-4.html">FAIL</a> ([i915#12910]) +18 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-rkl-8/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144741v1/shard-dg2-1/igt@sriov_basic@enable-vfs-bin=
d-unbind-each.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-dg2-8/igt@gem_create@create-ext-cpu-access-big.html">AB=
ORT</a> ([i915#13427]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144741v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-=
big.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16121/shard-mtlp-7/igt@gem_eio@in-flight-contexts-10ms.html">ABORT<=
/a> ([i915#13193]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_144741v1/shard-mtlp">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============2770804044871285323==--
