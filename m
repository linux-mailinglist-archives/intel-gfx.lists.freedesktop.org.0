Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C25664E926
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 11:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58E510E0F9;
	Fri, 16 Dec 2022 10:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4B4710E0F9;
 Fri, 16 Dec 2022 10:07:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BD22A00CC;
 Fri, 16 Dec 2022 10:07:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4846234017244596472=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 16 Dec 2022 10:07:49 -0000
Message-ID: <167118526959.5853.11483281921237252169@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221214194944.3670344-1-lucas.demarchi@intel.com>
In-Reply-To: <20221214194944.3670344-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_=5F=5Fmaybe=5Funused_from_used?=
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

--===============4846234017244596472==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove __maybe_unused from used
URL   : https://patchwork.freedesktop.org/series/111945/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12506_full -> Patchwork_111945v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (14 -> 14)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111945v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_selftest@all-tests:
    - {shard-tglu-10}:    NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-tglu-10/igt@kms_selftest@all-tests.html

  
Known issues
------------

  Here are the changes found in Patchwork_111945v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [FAIL][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#4338]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][52] ([i915#3354])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-apl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][57] -> [DMESG-FAIL][58] ([i915#5334])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][59] -> [INCOMPLETE][60] ([i915#7233])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-skl4/igt@i915_suspend@debugfs-reader.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#3886]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-snb:          NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [INCOMPLETE][64] ([i915#7096])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#79]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#2122]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#2587] / [i915#2672]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#2672]) +5 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#2672] / [i915#3555])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +34 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-glk8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271]) +70 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-vga-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +9 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-apl1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][76] -> [SKIP][77] ([fdo#109441]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb1/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [PASS][78] -> [SKIP][79] ([i915#5519])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@sysfs_clients@sema-50:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@sysfs_clients@sema-50.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [PASS][81] -> [FAIL][82] ([i915#1731])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-skl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-nonblock:
    - {shard-rkl}:        [SKIP][83] ([i915#4098]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-4/igt@drm_read@short-buffer-nonblock.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][85] ([i915#2582]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-5/igt@fbdev@write.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@fbdev@write.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][87] ([i915#6268]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
    - {shard-tglu}:       [FAIL][89] ([i915#6268]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-reset@vcs0:
    - {shard-rkl}:        [FAIL][91] ([i915#7673]) -> [PASS][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-6/igt@gem_ctx_isolation@preservation-reset@vcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-5/igt@gem_ctx_isolation@preservation-reset@vcs0.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][93] ([fdo#103375]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-3/igt@gem_eio@in-flight-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][95] ([i915#4525]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - {shard-rkl}:        [SKIP][97] ([i915#6247]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-2/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][99] ([i915#2842]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [SKIP][101] ([i915#2848]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][103] ([i915#2842]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][105] ([i915#2842]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - {shard-rkl}:        [SKIP][107] ([fdo#109313]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - {shard-rkl}:        [SKIP][109] ([i915#3281]) -> [PASS][110] +6 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_readwrite@beyond-eob:
    - {shard-rkl}:        [SKIP][111] ([i915#3282]) -> [PASS][112] +5 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-5/igt@gem_readwrite@beyond-eob.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][113] ([i915#5566] / [i915#716]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-apl1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@valid-registers:
    - {shard-rkl}:        [SKIP][115] ([i915#2527]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-dg1}:        [SKIP][117] ([i915#1937]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-dg1-15/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - {shard-dg1}:        [FAIL][119] ([i915#3591]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@cursor-dpms:
    - {shard-rkl}:        [SKIP][121] ([i915#1849]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-5/igt@i915_pm_rpm@cursor-dpms.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][123] ([fdo#109308]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-5/igt@i915_pm_rpm@i2c.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - {shard-dg1}:        [SKIP][125] ([i915#1397]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][127] -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-skl4/igt@i915_selftest@live@execlists.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl7/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][129] ([i915#5591]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-tglb5/igt@i915_selftest@live@hangcheck.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-tglb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - {shard-rkl}:        [SKIP][131] ([i915#1845] / [i915#4098]) -> [PASS][132] +25 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][133] ([fdo#110189] / [i915#3955]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][135] ([i915#79]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][137] ([i915#2122]) -> [PASS][138] +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][139] ([i915#1849] / [i915#4098]) -> [PASS][140] +17 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - {shard-rkl}:        [SKIP][141] ([i915#3558]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][143] ([i915#5235]) -> [PASS][144] +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr@primary_blt:
    - {shard-rkl}:        [SKIP][145] ([i915#1072]) -> [PASS][146] +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-4/igt@kms_psr@primary_blt.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_psr@primary_blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][147] ([fdo#109441]) -> [PASS][148] +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][149] ([i915#5519]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - {shard-rkl}:        [SKIP][151] ([i915#5461]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][153] ([i915#2436]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@stress-open-close:
    - shard-glk:          [INCOMPLETE][155] ([i915#5213]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-glk8/igt@perf@stress-open-close.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-glk8/igt@perf@stress-open-close.html

  * igt@prime_vgem@basic-fence-read:
    - {shard-rkl}:        [SKIP][157] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
#### Warnings ####

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][159] ([i915#2920]) -> [SKIP][160] ([i915#658])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][161] ([fdo#111068] / [i915#658]) -> [SKIP][162] ([i915#2920])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][163] ([i915#658]) -> [SKIP][164] ([i915#2920])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][165], [FAIL][166], [FAIL][167]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][168], [FAIL][169], [FAIL][170]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-apl8/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-apl2/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-apl3/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-apl8/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-apl3/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-apl2/igt@runner@aborted.html

  
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
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3354]: https://gitlab.freedesktop.org/drm/intel/issues/3354
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7096]: https://gitlab.freedesktop.org/drm/intel/issues/7096
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7233]: https://gitlab.freedesktop.org/drm/intel/issues/7233
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7673]: https://gitlab.freedesktop.org/drm/intel/issues/7673
  [i915#7681]: https://gitlab.freedesktop.org/drm/intel/issues/7681
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12506 -> Patchwork_111945v1

  CI-20190529: 20190529
  CI_DRM_12506: d58c07107cf979eebf3538b0b1b0539b345c66a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7094: 1763071e9d50c5e992257c9197cb26f166de6fae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111945v1: d58c07107cf979eebf3538b0b1b0539b345c66a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/index.html

--===============4846234017244596472==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove __maybe_unused from used</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111945/">https://patchwork.freedesktop.org/series/111945/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111945v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111945v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12506_full -&gt; Patchwork_111945v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (14 -&gt; 14)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111945v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_selftest@all-tests:<ul>
<li>{shard-tglu-10}:    NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-tglu-10/igt@kms_selftest@all-tests.h=
tml">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111945v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12506/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12506/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/sha=
rd-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12506/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12506/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12506/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2506/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-snb4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shar=
d-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12506/shard-snb4/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4338">i915#4338</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111945v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-s=
nb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111945v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v=
1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111945v1/shard-snb7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111945v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111945v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111945v1/shard-snb5/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb5/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111945v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111945v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111945v1/shard-snb4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-snb4/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-snb5/igt@gem_eio@unwedge-stress.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3354=
">i915#3354</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1945v1/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111945v1/shard-apl2/igt@gem_workarounds@suspend-resume-context.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945=
v1/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-skl4/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/s=
hard-skl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/7233">i915#7233</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_ccs@pipe-a-crc-primary-=
rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-snb5/igt@kms_chamelium@common-hpd-af=
ter-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_chamelium@hdmi-crc-nonp=
lanar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_cursor_legacy@cursor-vs=
-flip@atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/7096">i915#7096</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111945v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1945v1/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +34 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-glk8/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-snb5/igt@kms_plane_scaling@plane-sca=
ler-with-clipping-clamping-rotation@pipe-a-vga-1.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +70=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-=
dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-apl1/igt@kms_plane_scaling@planes-up=
scale-20x20-downscale-factor-0-75@pipe-c-dp-1.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +9 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-iclb2/igt@kms_psr@psr2_primary_render.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/=
shard-iclb1/igt@kms_psr@psr2_primary_render.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111945v1/shard-tglb1/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-skl6/igt@sysfs_clients@sema-50.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-skl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1945v1/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</=
a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-4/igt@drm_read@short-buffer-nonblock.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#409=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111945v1/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-5/igt@fbdev@write.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-=
6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12506/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11945v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12506/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111945v1/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-reset@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-6/igt@gem_ctx_isolation@preservation-reset@vcs0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/767=
3">i915#7673</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111945v1/shard-rkl-5/igt@gem_ctx_isolation@preservation-reset@vc=
s0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-3/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
945v1/shard-rkl-1/igt@gem_eio@in-flight-suspend.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111945v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6247">i915#624=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111945v1/shard-rkl-2/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11945v1/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i91=
5#2848</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111945v1/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111945v1/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111945v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-3/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109313">fdo#109313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111945v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel=
-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11945v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html">PASS</a> +6 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-6/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945=
v1/shard-rkl-5/igt@gem_readwrite@beyond-eob.html">PASS</a> +5 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-apl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111945v1/shard-apl1/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#25=
27</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111945v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-dg1-15/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1937">=
i915#1937</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_111945v1/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111945v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-5/igt@i915_pm_rpm@cursor-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v=
1/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-5/igt@i915_pm_rpm@i2c.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shar=
d-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1397">i915#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111945v1/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp-stress=
-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-skl4/igt@i915_selftest@live@execlists.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
945v1/shard-skl7/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111945v1/shard-tglb7/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111945v1/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">P=
ASS</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111945v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111945v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111945v1/shard-skl1/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +17 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a-planes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_plane@plane-pannin=
g-bottom-right-suspend@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-iclb1/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-4/igt@kms_psr@primary_blt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/=
shard-rkl-6/igt@kms_psr@primary_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111945v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12506/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111945v1/shard-tglb7/igt@kms_psr_stress_test@invalidate=
-primary-flip-overlay.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12506/shard-rkl-4/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111945v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate=
-primary-flip-overlay.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
36">i915#2436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111945v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-coun=
ters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-glk8/igt@perf@stress-open-close.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111=
945v1/shard-glk8/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i91=
5#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111945v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS<=
/a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111945v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111945v1/shard-iclb2/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12506/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_111945v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12506/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12506/shard-apl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12506/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1945v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111945v1/shard-apl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111945v1/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915=
#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12506 -&gt; Patchwork_111945v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12506: d58c07107cf979eebf3538b0b1b0539b345c66a1 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7094: 1763071e9d50c5e992257c9197cb26f166de6fae @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111945v1: d58c07107cf979eebf3538b0b1b0539b345c66a1 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4846234017244596472==--
