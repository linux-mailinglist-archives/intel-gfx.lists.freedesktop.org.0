Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 941956C2867
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 03:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40D910E6BA;
	Tue, 21 Mar 2023 02:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2550810E6BA;
 Tue, 21 Mar 2023 02:59:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B081A0169;
 Tue, 21 Mar 2023 02:59:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7248039998834544968=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 21 Mar 2023 02:59:21 -0000
Message-ID: <167936756110.18680.7287040980596701017@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230320124429.786985-1-jani.nikula@intel.com>
In-Reply-To: <20230320124429.786985-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/debugfs=3A_switch_crt?=
 =?utf-8?q?c_debugfs_to_struct_intel=5Fcrtc?=
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

--===============7248039998834544968==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/debugfs: switch crtc debugfs to struct intel_crtc
URL   : https://patchwork.freedesktop.org/series/115384/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12884_full -> Patchwork_115384v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (8 -> 7)
------------------------------

  Missing    (1): shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115384v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs:
    - {shard-rkl}:        [SKIP][1] ([fdo#109315]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - {shard-rkl}:        [SKIP][3] ([i915#4098]) -> [SKIP][4] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][5] ([i915#1845] / [i915#4098]) -> [SKIP][6] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_plane@pixel-format:
    - {shard-tglu}:       NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-9/igt@kms_plane@pixel-format.html

  * igt@kms_plane@plane-panning-top-left:
    - {shard-rkl}:        NOTRUN -> [SKIP][8] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-3/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - {shard-tglu}:       [SKIP][9] ([i915#1845]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-1/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_115384v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_spin_batch@legacy@vebox:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#2898])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-apl6/igt@gem_spin_batch@legacy@vebox.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-apl3/igt@gem_spin_batch@legacy@vebox.html

  * igt@kms_cursor_crc@cursor-onscreen-128x128:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-snb4/igt@kms_cursor_crc@cursor-onscreen-128x128.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#2346])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][16] -> [ABORT][17] ([i915#180])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - {shard-rkl}:        [FAIL][20] ([i915#4778]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@virtual-idle:
    - {shard-rkl}:        [FAIL][22] ([i915#7742]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][24] ([i915#2582]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-1/igt@fbdev@unaligned-read.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@fbdev@unaligned-read.html

  * {igt@gem_barrier_race@remote-request@rcs0}:
    - {shard-tglu}:       [ABORT][26] ([i915#8211]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@gem_barrier_race@remote-request@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-10/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][28] ([i915#6268]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@smoketest:
    - {shard-tglu}:       [FAIL][30] ([i915#5099]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-8/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][32] ([i915#6259]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-rkl}:        [FAIL][34] ([i915#2842]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - {shard-rkl}:        [SKIP][36] ([i915#3281]) -> [PASS][37] +12 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - {shard-rkl}:        [SKIP][38] ([i915#3282]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - {shard-rkl}:        [SKIP][40] ([i915#2527]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-4/igt@gen9_exec_parse@batch-invalid-length.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-tglu}:       [FAIL][42] ([i915#3989] / [i915#454]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-tglu}:       [SKIP][44] ([i915#1397]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@i915_pm_rpm@dpms-lpsp.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-7/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@fences:
    - {shard-rkl}:        [SKIP][46] ([i915#1849]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@i915_pm_rpm@fences.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@i915_pm_rpm@fences.html

  * igt@i915_pm_rpm@i2c:
    - {shard-tglu}:       [SKIP][48] ([i915#3547]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@i915_pm_rpm@i2c.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-7/igt@i915_pm_rpm@i2c.html

  * {igt@i915_power@sanity}:
    - {shard-rkl}:        [SKIP][50] ([i915#7984]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-2/igt@i915_power@sanity.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@i915_power@sanity.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - {shard-tglu}:       [SKIP][52] ([i915#1845]) -> [PASS][53] +38 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-10/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][54] ([i915#2346]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][56] ([i915#1257]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_dp_aux_dev.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_fbcon_fbt@psr:
    - {shard-rkl}:        [SKIP][58] ([fdo#110189] / [i915#3955]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - {shard-tglu}:       [SKIP][60] ([i915#1849]) -> [PASS][61] +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - {shard-rkl}:        [SKIP][62] ([i915#1849] / [i915#4098]) -> [PASS][63] +17 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - {shard-rkl}:        [SKIP][64] ([fdo#109315]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * {igt@kms_plane@invalid-pixel-format-settings}:
    - {shard-tglu}:       [SKIP][66] ([i915#8152]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@kms_plane@invalid-pixel-format-settings.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-7/igt@kms_plane@invalid-pixel-format-settings.html

  * igt@kms_psr@cursor_render:
    - {shard-rkl}:        [SKIP][68] ([i915#1072]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-1/igt@kms_psr@cursor_render.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_psr@cursor_render.html

  * igt@kms_rotation_crc@exhaust-fences:
    - {shard-rkl}:        [SKIP][70] ([i915#1845] / [i915#4098]) -> [PASS][71] +21 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-1/igt@kms_rotation_crc@exhaust-fences.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset:
    - {shard-tglu}:       [SKIP][72] ([i915#1845] / [i915#7651]) -> [PASS][73] +13 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@kms_vblank@pipe-b-ts-continuation-modeset.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-7/igt@kms_vblank@pipe-b-ts-continuation-modeset.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][74] ([i915#1722]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-4/igt@perf@polling-small-buf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@perf@polling-small-buf.html

  * igt@perf_pmu@idle@rcs0:
    - {shard-rkl}:        [FAIL][76] ([i915#4349]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-4/igt@perf_pmu@idle@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@perf_pmu@idle@rcs0.html

  * igt@prime_vgem@basic-write:
    - {shard-rkl}:        [SKIP][78] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-2/igt@prime_vgem@basic-write.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@prime_vgem@basic-write.html

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
    - {shard-rkl}:        [SKIP][80] ([i915#2575]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4778]: https://gitlab.freedesktop.org/drm/intel/issues/4778
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8282]: https://gitlab.freedesktop.org/drm/intel/issues/8282


Build changes
-------------

  * Linux: CI_DRM_12884 -> Patchwork_115384v1

  CI-20190529: 20190529
  CI_DRM_12884: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7208: f327c5d77b6ea6adff1ef6d08f21f232dfe093e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115384v1: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/index.html

--===============7248039998834544968==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/debugfs: switch crtc debugfs to struct intel_crtc</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115384/">https://patchwork.freedesktop.org/series/115384/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12884_full -&gt; Patchwork_115384v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (8 -&gt; 7)</h2>
<p>Missing    (1): shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115384v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-9/igt@kms_plane@pixel-format.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-3/igt@kms_plane@plane-panning-top-left.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-1/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115384v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_spin_batch@legacy@vebox:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-apl6/igt@gem_spin_batch@legacy@vebox.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-apl3/igt@gem_spin_batch@legacy@vebox.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2898">i915#2898</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-snb4/igt@kms_cursor_crc@cursor-onscreen-128x128.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4778">i915#4778</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@device_reset@unbind-reset-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-1/igt@fbdev@unaligned-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_barrier_race@remote-request@rcs0}:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-10/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5099">i915#5099</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-8/igt@gem_ctx_persistence@smoketest.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-4/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-7/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@i915_pm_rpm@fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@i915_pm_rpm@fences.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@i915_pm_rpm@i2c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3547">i915#3547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-7/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@i915_power@sanity}:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-2/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-10/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html">PASS</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#1257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane@invalid-pixel-format-settings}:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@kms_plane@invalid-pixel-format-settings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-7/igt@kms_plane@invalid-pixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-1/igt@kms_psr@cursor_render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_psr@cursor_render.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-1/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-modeset:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-tglu-9/igt@kms_vblank@pipe-b-ts-continuation-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-tglu-7/igt@kms_vblank@pipe-b-ts-continuation-modeset.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-4/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-4/igt@perf_pmu@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@perf_pmu@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-5/igt@prime_vgem@basic-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/shard-rkl-5/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115384v1/shard-rkl-6/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12884 -&gt; Patchwork_115384v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12884: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7208: f327c5d77b6ea6adff1ef6d08f21f232dfe093e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115384v1: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7248039998834544968==--
