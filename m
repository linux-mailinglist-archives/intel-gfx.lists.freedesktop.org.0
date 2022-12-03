Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9082E6414FC
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Dec 2022 09:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97E610E1B4;
	Sat,  3 Dec 2022 08:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62A3610E18F;
 Sat,  3 Dec 2022 08:38:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCE65A010C;
 Sat,  3 Dec 2022 08:38:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2979007279587687308=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 03 Dec 2022 08:38:41 -0000
Message-ID: <167005672187.8387.15365994197270361052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221202223528.714491-1-matthew.d.roper@intel.com>
In-Reply-To: <20221202223528.714491-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Check_full_IP_version_when_applying_hw_steering_se?=
 =?utf-8?q?maphore?=
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

--===============2979007279587687308==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Check full IP version when applying hw steering semaphore
URL   : https://patchwork.freedesktop.org/series/111595/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12463_full -> Patchwork_111595v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (14 -> 11)
------------------------------

  Missing    (3): shard-tglu-9 shard-tglu-10 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111595v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a4:
    - {shard-dg1}:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a4.html

  * {igt@v3d/v3d_perfmon@get-values-valid-perfmon}:
    - {shard-dg1}:        NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-dg1-15/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12463_full and Patchwork_111595v1_full:

### New IGT tests (1) ###

  * igt@kms_flip_tiling:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_111595v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#6268])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][10] -> [SKIP][11] ([i915#2190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [PASS][12] -> [WARN][13] ([i915#1804])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#7156])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl4/igt@i915_selftest@live@execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl10/igt@i915_selftest@live@execlists.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +70 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([fdo#111615])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#111615] / [i915#3689])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#6095])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#3689] / [i915#6095])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#3689]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl4/igt@kms_chamelium@dp-edid-change-during-suspend.html
    - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109284] / [fdo#111827])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_color@legacy-gamma:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3546]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_color@legacy-gamma.html

  * igt@kms_color_chamelium@degamma:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_color_chamelium@degamma.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2587] / [i915#2672]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#3555])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#2672]) +5 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#2672] / [i915#3555])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109280] / [fdo#111825])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#6497]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3555])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([i915#5176]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#658])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109642] / [fdo#111068] / [i915#658])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#658])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#111615] / [i915#5289])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2994])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2994])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-50:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#2994])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][49] ([i915#4525]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][51] ([i915#2842]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][53] ([i915#5566] / [i915#716]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [FAIL][55] ([i915#6537]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl1/igt@i915_pm_rps@engine-order.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl6/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][57] ([i915#7084]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl7/igt@i915_pm_sseu@full-enable.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl10/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][59] ([i915#5591]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb3/igt@i915_selftest@live@hangcheck.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
    - shard-tglb:         [INCOMPLETE][61] ([i915#2411]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb5/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-apl:          [FAIL][63] ([i915#2346]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
    - shard-iclb:         [FAIL][65] ([i915#2346]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [FAIL][69] ([i915#2122]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][73] ([i915#5519]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-iclb:         [SKIP][75] ([i915#5519]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          [FAIL][77] ([i915#1731]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl7/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl10/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:
    - shard-skl:          [FAIL][79] ([i915#4573]) -> [DMESG-FAIL][80] ([IGT#6])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][81] ([i915#658]) -> [SKIP][82] ([i915#2920])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][83] ([i915#2920]) -> [SKIP][84] ([i915#658]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][85] ([i915#2920]) -> [SKIP][86] ([fdo#111068] / [i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][87], [FAIL][88], [FAIL][89]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][90], [FAIL][91], [FAIL][92]) ([i915#3002] / [i915#4312])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl1/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl8/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl8/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7084]: https://gitlab.freedesktop.org/drm/intel/issues/7084
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7156]: https://gitlab.freedesktop.org/drm/intel/issues/7156
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12463 -> Patchwork_111595v1

  CI-20190529: 20190529
  CI_DRM_12463: b36215855627efb694b50c6cc0ba47b0e78d5aa5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7080: 14721e0783757dfa44ca2677851c3ba508b09682 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111595v1: b36215855627efb694b50c6cc0ba47b0e78d5aa5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/index.html

--===============2979007279587687308==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Check full IP version when app=
lying hw steering semaphore</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/111595/">https://patchwork.freedesktop.org/series/111595/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111595v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111595v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12463_full -&gt; Patchwork_111595v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (14 -&gt; 11)</h2>
<p>Missing    (3): shard-tglu-9 shard-tglu-10 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
111595v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a4:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-dg1-18/igt@kms_flip@flip-vs-expired-=
vblank@b-hdmi-a4.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@v3d/v3d_perfmon@get-values-valid-perfmon}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-dg1-15/igt@v3d/v3d_perfmon@get-value=
s-valid-perfmon.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12463_full and Patchwork_1=
11595v1_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_flip_tiling:<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111595v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595=
v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11595v1/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11595v1/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-iclb1/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-=
tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1595v1/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-skl4/igt@i915_selftest@live@execlists.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/=
shard-skl10/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/7156">i915#7156</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_big_fb@y-tiled-32bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs=
-buffer-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-=
data-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-c-ccs-on-anot=
her-bo-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_ccs@pipe-c-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111595v1/shard-skl4/igt@kms_chamelium@dp-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_chamelium@dp-edid-chang=
e-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_color@legacy-gamma.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@degamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_color_chamelium@degamma=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111595v1/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#258=
7</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i9=
15#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#355=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-stridechange:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_frontbuffer_tracking@f=
bcpsr-stridechange.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/6497">i915#6497</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +5 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_plane_s=
caling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_psr2_su@page_flip-p010.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shar=
d-iclb7/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@sysfs_clients@create.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@sysfs_clients@sema-50.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111595v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111595v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-apl3/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111595v1/shard-apl1/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-apl1/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v=
1/shard-apl6/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-skl7/igt@i915_pm_sseu@full-enable.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7084">i915#7084</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v=
1/shard-skl10/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-tglb3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111595v1/shard-tglb7/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-tglb5/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2411">i915#2411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_cursor_crc@cursor-suspend@pi=
pe-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl7/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111595v1/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor@va=
rying-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111595v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915=
#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111595v1/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb8/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v=
1/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12463/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111595v1/shard-tglb5/igt@kms_psr_stress_test@invalidate=
-primary-flip-overlay.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12463/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111595v1/shard-iclb8/igt@kms_psr_stress_test@invalidate=
-primary-flip-overlay.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-skl7/igt@sysfs_heartbeat_interval@mixed@bcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915=
#1731</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_111595v1/shard-skl10/igt@sysfs_heartbeat_interval@mixed@bcs0.html">PASS=
</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4573">i915#4573</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111595v1/shard-skl1/igt@kms_plane_alpha_blend@alpha-basic@pi=
pe-c-edp-1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/igt-gpu-tools/issues/6">IGT#6</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
58">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_111595v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-mov=
e-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12463/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12463/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12463/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1595v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl8/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111595v1/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</=
li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12463 -&gt; Patchwork_111595v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12463: b36215855627efb694b50c6cc0ba47b0e78d5aa5 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7080: 14721e0783757dfa44ca2677851c3ba508b09682 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111595v1: b36215855627efb694b50c6cc0ba47b0e78d5aa5 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2979007279587687308==--
