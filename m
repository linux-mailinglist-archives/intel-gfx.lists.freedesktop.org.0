Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCBA5BA126
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 21:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFD3D10E238;
	Thu, 15 Sep 2022 19:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E7DB10E221;
 Thu, 15 Sep 2022 19:15:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F14CEA0BCB;
 Thu, 15 Sep 2022 19:15:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6784656728378419051=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 15 Sep 2022 19:15:45 -0000
Message-ID: <166326934594.11971.3704507071047367094@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220914220427.3091448-1-matthew.d.roper@intel.com>
In-Reply-To: <20220914220427.3091448-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRnVy?=
 =?utf-8?q?ther_multi-gt_handling?=
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

--===============6784656728378419051==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Further multi-gt handling
URL   : https://patchwork.freedesktop.org/series/108577/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12139_full -> Patchwork_108577v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108577v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108577v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108577v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_108577v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [FAIL][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#4392]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([i915#5608]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@drm_fdinfo@all-busy-check-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@drm_fdinfo@all-busy-check-all.html

  * igt@gem_create@create-massive:
    - shard-glk:          NOTRUN -> [DMESG-WARN][54] ([i915#4991])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk6/igt@gem_create@create-massive.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][55] -> [FAIL][56] ([i915#5784])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-tglb6/igt@gem_eio@kms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([i915#4525]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2846])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109315]) +16 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@gem_exec_flush@basic-wb-prw-default.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_params@invalid-bsd2-flag-on-blt:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109276] / [fdo#109315])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@gem_exec_params@invalid-bsd2-flag-on-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@gem_exec_params@invalid-bsd2-flag-on-blt.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][65] -> [SKIP][66] ([i915#2190])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][68] ([i915#2658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][69] ([fdo#109271]) +51 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [PASS][70] -> [FAIL][71] ([i915#4171])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-tglb1/igt@gem_softpin@evict-single-offset.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-tglb7/igt@gem_softpin@evict-single-offset.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3886]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3886])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl7/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_concurrent@pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#2575]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_concurrent@pipe-c.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271]) +16 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl7/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [PASS][78] -> [FAIL][79] ([i915#79])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2587] / [i915#2672])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][81] -> [SKIP][82] ([i915#3555])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#2672]) +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109315]) +5 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
    - shard-glk:          [PASS][86] -> [FAIL][87] ([i915#1888])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [PASS][89] -> [SKIP][90] ([fdo#109642] / [fdo#111068] / [i915#658])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][91] -> [SKIP][92] ([fdo#109441]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][93] -> [SKIP][94] ([i915#5519])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][95] -> [DMESG-WARN][96] ([i915#180])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@syncobj_wait@multi-wait-for-submit-unsubmitted-signaled:
    - shard-iclb:         [PASS][97] -> [SKIP][98] ([i915#2575]) +6 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@syncobj_wait@multi-wait-for-submit-unsubmitted-signaled.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@syncobj_wait@multi-wait-for-submit-unsubmitted-signaled.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          [FAIL][99] ([i915#2842]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk8/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][103] ([i915#2842]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][107] ([i915#454]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][109] ([i915#2346]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][111] ([i915#2122]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][113] ([i915#79]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-glk:          [FAIL][115] ([i915#1888] / [i915#2546]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [SKIP][117] ([i915#5235]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-inplace:
    - shard-iclb:         [SKIP][121] ([i915#5327]) -> [SKIP][122] ([fdo#109315])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@gem_ccs@block-copy-inplace.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@gem_ccs@block-copy-inplace.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][123] ([i915#3063]) -> [FAIL][124] ([i915#5784])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][125] ([i915#6117]) -> [SKIP][126] ([i915#4525])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-iclb:         [SKIP][127] ([i915#4270]) -> [SKIP][128] ([fdo#109315])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@gem_pxp@reject-modify-context-protection-off-3.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglb:         [FAIL][129] ([i915#2681] / [i915#3591]) -> [WARN][130] ([i915#2681])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-tglb3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-iclb:         [FAIL][131] ([i915#2684]) -> [WARN][132] ([i915#2684])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-iclb:         [SKIP][133] ([fdo#110725] / [fdo#111614]) -> [SKIP][134] ([fdo#109315]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-iclb:         [SKIP][135] ([fdo#109278]) -> [SKIP][136] ([fdo#109315])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-iclb:         [SKIP][137] ([fdo#109284] / [fdo#111827]) -> [SKIP][138] ([i915#2575])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_chamelium@dp-hpd-with-enabled-mode.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_content_protection@type1:
    - shard-iclb:         [SKIP][139] ([fdo#109300] / [fdo#111066]) -> [SKIP][140] ([i915#2575])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_content_protection@type1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_content_protection@type1.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-iclb:         [SKIP][141] ([fdo#109274]) -> [SKIP][142] ([i915#2575]) +2 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
    - shard-iclb:         [SKIP][143] ([fdo#109280]) -> [SKIP][144] ([fdo#109315]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-iclb:         [SKIP][145] ([fdo#109289]) -> [SKIP][146] ([fdo#109315])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][147] ([i915#658]) -> [SKIP][148] ([i915#2920])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][149] ([fdo#111068] / [i915#658]) -> [SKIP][150] ([i915#2920])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][151] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [SKIP][152] ([fdo#109315])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][153] ([fdo#109441]) -> [SKIP][154] ([fdo#109315])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_psr@psr2_sprite_render.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-iclb:         [SKIP][155] ([i915#3555]) -> [SKIP][156] ([i915#2575])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_setmode@invalid-clone-single-crtc.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
    - shard-iclb:         [SKIP][157] ([fdo#109278]) -> [SKIP][158] ([fdo#109278] / [i915#2575])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html

  * igt@nouveau_crc@pipe-b-source-outp-inactive:
    - shard-iclb:         [SKIP][159] ([i915#2530]) -> [SKIP][160] ([i915#2575])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@nouveau_crc@pipe-b-source-outp-inactive.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@nouveau_crc@pipe-b-source-outp-inactive.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-iclb:         [SKIP][161] ([fdo#109278] / [i915#2530]) -> [SKIP][162] ([fdo#109278] / [i915#2575])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-iclb6/igt@nouveau_crc@pipe-d-source-outp-complete.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([fdo#109271] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-apl8/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-apl1/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-apl3/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-apl7/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl6/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl1/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl3/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12139 -> Patchwork_108577v1

  CI-20190529: 20190529
  CI_DRM_12139: 139145da628d79344121b5e1b46648059388683b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108577v1: 139145da628d79344121b5e1b46648059388683b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/index.html

--===============6784656728378419051==
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
<tr><td><b>Series:</b></td><td>Further multi-gt handling</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/108577/">https://patchwork.freedesktop.org/series/108577/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108577v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108577v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12139_full -&gt; Patchwork_108577v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108577v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_108577v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
108577v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/sha=
rd-iclb3/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108577v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12139/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk1/boot.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12139/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12139/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/sha=
rd-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12139/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12139/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12139/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12139/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2139/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12139/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shar=
d-glk9/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108577v1/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk1=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108577v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk2/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/s=
hard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_108577v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08577v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108577v1/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108577v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108577v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8577v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108577v1/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108577v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108577v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8577v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108577v1/shard-glk9/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@drm_fdinfo@all-busy-check-all.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v=
1/shard-iclb3/igt@drm_fdinfo@all-busy-check-all.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-glk6/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-tglb1/igt@=
gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08577v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/=
shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@gem_exec_flush@basic-wb-prw-default.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08577v1/shard-iclb3/igt@gem_exec_flush@basic-wb-prw-default.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#1093=
15</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@gem_exec_params@invalid-bsd2-flag-on-blt.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108577v1/shard-iclb3/igt@gem_exec_params@invalid-bsd2-flag-on-blt.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109276=
">fdo#109276</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@gem_render_copy@y-tiled-ccs=
-to-y-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-tglb1/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10857=
7v1/shard-tglb7/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_ccs@pipe-a-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_chamelium@common-hpd-af=
ter-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-apl7/igt@kms_chamelium@hdmi-edid-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_concurrent@pipe-c.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575=
">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-apl7/igt@kms_flip@2x-nonexisting-fb.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_108577v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bp=
p-linear-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb2/igt@k=
ms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-def=
ault-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>) +5 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_plane_alpha_blend@pipe-=
c-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108577v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888"=
>i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108577v1/shard-glk7/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577=
v1/shard-iclb1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> /=
 <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#1110=
68</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i9=
15#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1=
/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb2/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_108577v1/shard-iclb1/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108577v1/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@multi-wait-for-submit-unsubmitted-signaled:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@syncobj_wait@multi-wait-for-submit-unsubmitte=
d-signaled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108577v1/shard-iclb3/igt@syncobj_wait@multi-wait-for-sub=
mit-unsubmitted-signaled.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2575">i915#2575</a>) +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk8/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_108577v1/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_108577v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108577v1/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-apl3/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10857=
7v1/shard-apl7/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/sh=
ard-iclb2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108577v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-curso=
r@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108577v1/shard-glk7/igt@kms_flip@flip-vs-blocking-wf-vblank@a=
-hdmi-a1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">=
i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108577v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-i=
ndfb-draw-render.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2546">i915#2546</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-glk5/igt@kms_frontbuffe=
r_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html">PASS</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb1/igt@kms_plan=
e_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108577v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-inplace:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@gem_ccs@block-copy-inplace.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5327">i915#5327</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1085=
77v1/shard-iclb3/igt@gem_ccs@block-copy-inplace.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10857=
7v1/shard-tglb1/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_108577v1/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@gem_pxp@reject-modify-context-protection-off-=
3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4270">i915#4270</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_108577v1/shard-iclb3/igt@gem_pxp@reject-modify-context-prot=
ection-off-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i91=
5#2681</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/359=
1">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108577v1/shard-tglb3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.htm=
l">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/268=
1">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_108577v1/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110725">fdo=
#110725</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
614">fdo#111614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108577v1/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-90.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9315">fdo#109315</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tile=
d_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109278">fdo#109278</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_ccs@pipe-c-crc-sp=
rite-planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_chamelium@dp-hpd-with-enabled-mode.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109284"=
>fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_chamelium@dp-hpd-with-enab=
led-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109300">fdo#10930=
0</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111066">f=
do#111066</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108577v1/shard-iclb3/igt@kms_content_protection@type1.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#25=
75</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
274">fdo#109274</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108577v1/shard-iclb3/igt@kms_cursor_legacy@2x-cursor-vs-flip-=
legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-i=
ndfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109280">fdo#109280</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_frontbuffer_tr=
acking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe=
-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_pipe_b_c_ivb@pipe-b-dpms-o=
ff-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_108577v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-co=
ntinuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108577v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#1=
09642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11106=
8">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_108577v1/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8577v1/shard-iclb3/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_setmode@invalid-clone-single-crtc.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_108577v1/shard-iclb3/igt@kms_setmode@invalid-clone-single-crtc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575"=
>i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109278">fdo#109278</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108577v1/shard-iclb3/igt@kms_vblank@pipe-d-ts-continuation=
-modeset-rpm.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@nouveau_crc@pipe-b-source-outp-inactive.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2530"=
>i915#2530</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108577v1/shard-iclb3/igt@nouveau_crc@pipe-b-source-outp-inactive.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12139/shard-iclb6/igt@nouveau_crc@pipe-d-source-outp-complete.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278=
">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2530">i915#2530</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108577v1/shard-iclb3/igt@nouveau_crc@pipe-d-source-outp-co=
mplete.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12139/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12139/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12139/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-apl6/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_108577v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v1/shard-ap=
l3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_108577v1/shard-apl4/igt@runner@aborted.html">FAIL<=
/a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/30=
02">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/6599">i915#6599</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12139 -&gt; Patchwork_108577v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12139: 139145da628d79344121b5e1b46648059388683b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108577v1: 139145da628d79344121b5e1b46648059388683b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6784656728378419051==--
