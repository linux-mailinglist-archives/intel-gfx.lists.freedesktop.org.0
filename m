Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BFE69BA4A
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Feb 2023 14:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C02C10E1FE;
	Sat, 18 Feb 2023 13:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B60510E1FE;
 Sat, 18 Feb 2023 13:47:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12331AADD5;
 Sat, 18 Feb 2023 13:47:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7702857677844919781=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Sat, 18 Feb 2023 13:47:12 -0000
Message-ID: <167672803203.30490.9152332856602713040@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230217223350.1124232-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230217223350.1124232-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Drop_igt=5Fcs=5Ftlb_=28rev2=29?=
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

--===============7702857677844919781==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Drop igt_cs_tlb (rev2)
URL   : https://patchwork.freedesktop.org/series/114154/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12759_full -> Patchwork_114154v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_114154v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114154v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114154v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@cpu-hotplug:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk7/igt@perf_pmu@cpu-hotplug.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk3/igt@perf_pmu@cpu-hotplug.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_barrier_race@remote-request@rcs0}:
    - {shard-tglu}:       NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-1/igt@gem_barrier_race@remote-request@rcs0.html

  * {igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling}:
    - shard-tglu-9:       NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

  * {igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1}:
    - {shard-tglu}:       NOTRUN -> [SKIP][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1.html

  * {igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-edp-1}:
    - {shard-rkl}:        NOTRUN -> [SKIP][6] +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_114154v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-tglu-9:       NOTRUN -> [SKIP][7] ([i915#7701])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@device_reset@cold-reset-bound.html

  * igt@drm_read@invalid-buffer:
    - shard-tglu-9:       NOTRUN -> [SKIP][8] ([i915#1845]) +6 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@drm_read@invalid-buffer.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-10:      NOTRUN -> [SKIP][9] ([i915#5325])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-10:      NOTRUN -> [SKIP][10] ([i915#280])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglu-10:      NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-tglu-10:      NOTRUN -> [SKIP][14] ([fdo#109283])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-scanout@vcs0:
    - shard-tglu-9:       NOTRUN -> [SKIP][15] ([i915#3639]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_exec_reloc@basic-scanout@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu-10:      NOTRUN -> [SKIP][16] ([i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-tglu-10:      NOTRUN -> [SKIP][17] ([i915#4613]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_media_vme:
    - shard-tglu-10:      NOTRUN -> [SKIP][18] ([i915#284])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglu-10:      NOTRUN -> [SKIP][19] ([fdo#111656])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_mmap_gtt@coherency.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-tglu-10:      NOTRUN -> [SKIP][20] ([i915#4270]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-tglu-9:       NOTRUN -> [SKIP][21] ([i915#4270])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_userptr_blits@access-control:
    - shard-tglu-10:      NOTRUN -> [SKIP][22] ([i915#3297]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglu-9:       NOTRUN -> [SKIP][23] ([i915#3297])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-tglu-10:      NOTRUN -> [SKIP][24] ([fdo#109289]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][25] -> [ABORT][26] ([i915#5566])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu-10:      NOTRUN -> [SKIP][27] ([i915#2527] / [i915#2856]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_hwmon@hwmon-read:
    - shard-tglu-10:      NOTRUN -> [SKIP][28] ([i915#7707])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_hwmon@hwmon-read.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu-10:      NOTRUN -> [SKIP][29] ([i915#6412])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu-9:       NOTRUN -> [SKIP][30] ([fdo#111644] / [i915#1397])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-tglu-10:      NOTRUN -> [SKIP][31] ([fdo#111644] / [i915#1397])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglu-10:      NOTRUN -> [SKIP][32] ([fdo#109506])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#6537])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl6/igt@i915_pm_rps@engine-order.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl4/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu-10:      NOTRUN -> [SKIP][35] ([i915#4387])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@dmabuf:
    - shard-apl:          [PASS][36] -> [DMESG-FAIL][37] ([i915#7562])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl7/igt@i915_selftest@live@dmabuf.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl1/igt@i915_selftest@live@dmabuf.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-tglu-10:      NOTRUN -> [SKIP][38] ([i915#5286]) +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-tglu-10:      NOTRUN -> [SKIP][39] ([fdo#111614]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-tglu-10:      NOTRUN -> [SKIP][40] ([fdo#111615]) +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-tglu-10:      NOTRUN -> [SKIP][41] ([i915#2705])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglu-9:       NOTRUN -> [SKIP][42] ([fdo#111615] / [i915#1845] / [i915#7651]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][43] ([i915#3689]) +13 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][44] ([i915#3689] / [i915#3886]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][45] ([i915#3689] / [i915#6095]) +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][46] ([i915#6095]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
    - shard-tglu-10:      NOTRUN -> [SKIP][47] ([fdo#111615] / [i915#3689]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_chamelium_color@ctm-0-25:
    - shard-tglu-10:      NOTRUN -> [SKIP][48] ([fdo#111827])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_chamelium_color@ctm-0-25.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-tglu-9:       NOTRUN -> [SKIP][49] ([fdo#111827])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
    - shard-tglu-10:      NOTRUN -> [SKIP][50] ([i915#7828]) +7 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-tglu-9:       NOTRUN -> [SKIP][51] ([i915#7828]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:
    - shard-tglu-10:      NOTRUN -> [FAIL][52] ([i915#315] / [i915#6946]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_color@ctm-max@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271]) +33 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-snb1/igt@kms_color@ctm-max@pipe-a-hdmi-a-1.html

  * igt@kms_color@gamma:
    - shard-tglu-9:       NOTRUN -> [SKIP][54] ([i915#3546])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_color@gamma.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu-10:      NOTRUN -> [SKIP][55] ([fdo#109279] / [i915#3359])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu-10:      NOTRUN -> [SKIP][56] ([i915#3359]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb@atomic-transitions-varying-size:
    - shard-tglu-10:      NOTRUN -> [SKIP][57] ([fdo#109274]) +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_legacy@cursorb-vs-flipb@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-apl:          [PASS][58] -> [FAIL][59] ([i915#2346])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu-10:      NOTRUN -> [SKIP][60] ([i915#3804])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-tglu-9:       NOTRUN -> [SKIP][61] ([fdo#109274] / [i915#3637]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-tglu-10:      NOTRUN -> [SKIP][62] ([fdo#109274] / [i915#3637]) +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-tglu-9:       NOTRUN -> [SKIP][63] ([i915#3637]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-tglu-9:       NOTRUN -> [SKIP][64] ([i915#3555]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu-10:      NOTRUN -> [SKIP][65] ([i915#2587] / [i915#2672]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglu-10:      NOTRUN -> [SKIP][66] ([fdo#109280]) +32 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglu-10:      NOTRUN -> [SKIP][67] ([fdo#110189]) +32 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-9:       NOTRUN -> [SKIP][68] ([i915#1849]) +19 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu-10:      NOTRUN -> [SKIP][69] ([i915#3555]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-tglu-9:       NOTRUN -> [SKIP][70] ([i915#7128] / [i915#7294])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1:
    - shard-tglu-10:      NOTRUN -> [SKIP][71] ([i915#5176]) +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-tglu-10:      NOTRUN -> [SKIP][72] ([i915#5235]) +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-tglu-9:       NOTRUN -> [SKIP][73] ([i915#6524])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-tglu-10:      NOTRUN -> [SKIP][74] ([i915#658]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-tglu-10:      NOTRUN -> [SKIP][75] ([fdo#111068] / [i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu-10:      NOTRUN -> [SKIP][76] ([fdo#109642] / [fdo#111068] / [i915#658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_basic:
    - shard-tglu-9:       NOTRUN -> [SKIP][77] ([fdo#110189]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_psr@psr2_basic.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglu-10:      NOTRUN -> [SKIP][78] ([fdo#111615] / [i915#5289])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_selftest@all-tests:
    - shard-tglu-10:      NOTRUN -> [SKIP][79] ([i915#6433])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_selftest@all-tests.html

  * igt@kms_vblank@pipe-a-ts-continuation-idle-hang:
    - shard-tglu-9:       NOTRUN -> [SKIP][80] ([i915#1845] / [i915#7651]) +19 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglu-10:      NOTRUN -> [SKIP][81] ([i915#2437]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html

  * igt@prime_vgem@basic-userptr:
    - shard-tglu-10:      NOTRUN -> [SKIP][82] ([fdo#109295] / [i915#3301])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@prime_vgem@basic-userptr.html

  * igt@v3d/v3d_perfmon@create-perfmon-exceed:
    - shard-tglu-10:      NOTRUN -> [SKIP][83] ([fdo#109315] / [i915#2575]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@v3d/v3d_perfmon@create-perfmon-exceed.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
    - shard-tglu-9:       NOTRUN -> [SKIP][84] ([fdo#109315] / [i915#2575])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html

  * igt@vc4/vc4_perfmon@create-two-perfmon:
    - shard-tglu-10:      NOTRUN -> [SKIP][85] ([i915#2575]) +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@vc4/vc4_perfmon@create-two-perfmon.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-tglu-9:       NOTRUN -> [SKIP][86] ([i915#2575]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - {shard-rkl}:        [FAIL][87] ([i915#7742]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][89] ([i915#2582]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-3/igt@fbdev@unaligned-write.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-rkl}:        [SKIP][91] ([i915#6252]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_eio@in-flight-suspend:
    - {shard-rkl}:        [FAIL][93] ([fdo#103375]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - {shard-rkl}:        [FAIL][95] ([i915#2842]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][97] ([i915#2842]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_params@rel-constants-invalid-rel-gen5:
    - {shard-dg1}:        [DMESG-WARN][99] -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-dg1-14/igt@gem_exec_params@rel-constants-invalid-rel-gen5.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-dg1-14/igt@gem_exec_params@rel-constants-invalid-rel-gen5.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-dg1}:        [SKIP][101] ([i915#1397]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][103] ([i915#2346]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][105] ([i915#2122]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][107] ([i915#1849] / [i915#4098]) -> [PASS][108] +8 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - {shard-rkl}:        [SKIP][109] ([i915#1849]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_psr@cursor_mmap_cpu:
    - {shard-rkl}:        [SKIP][111] ([i915#1072]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_psr@cursor_mmap_cpu.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:
    - {shard-rkl}:        [SKIP][113] ([i915#4098]) -> [PASS][114] +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html

  * igt@kms_vblank@pipe-b-ts-continuation-idle:
    - {shard-rkl}:        [SKIP][115] ([i915#1845] / [i915#4098]) -> [PASS][116] +15 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_vblank@pipe-b-ts-continuation-idle.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idle.html

  
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
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
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
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
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
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7562]: https://gitlab.freedesktop.org/drm/intel/issues/7562
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152


Build changes
-------------

  * Linux: CI_DRM_12759 -> Patchwork_114154v2

  CI-20190529: 20190529
  CI_DRM_12759: 00e12ed04ecb81a67099d4c4833c86186ca7d31e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7165: 509e7e63c6377d0fe77d1bd209857fb191f4a84c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114154v2: 00e12ed04ecb81a67099d4c4833c86186ca7d31e @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html

--===============7702857677844919781==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Drop igt_cs_tlb (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114154/">https://patchwork.freedesktop.org/series/114154/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12759_full -&gt; Patchwork_114154v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_114154v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114154v2_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/index.html</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114154v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf_pmu@cpu-hotplug:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk7/igt@perf_pmu@cpu-hotplug.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk3/igt@perf_pmu@cpu-hotplug.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_barrier_race@remote-request@rcs0}:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-1/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling}:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1}:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-edp-1}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-edp-1.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114154v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_read@invalid-buffer:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@drm_read@invalid-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vcs0:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_exec_reloc@basic-scanout@vcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3639">i915#3639</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_pxp@create-regular-buffer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gen7_exec_parse@basic-allocation.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk4/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111644">fdo#111644</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111644">fdo#111644</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl6/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl4/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl7/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl1/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7562">i915#7562</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_big_joiner@2x-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-25:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_chamelium_color@ctm-0-25.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_chamelium_color@ctm-blue-to-red.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/315">i915#315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6946">i915#6946</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-snb1/igt@kms_color@ctm-max@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_color@gamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109279">fdo#109279</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb@atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_cursor_legacy@cursorb-vs-flipb@atomic-transitions-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip@dpms-off-confusion-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7128">i915#7128</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_prime@basic-crc-vgem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all-tests:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_selftest@all-tests.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6433">i915#6433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-idle-hang:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-perfmon-exceed:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@v3d/v3d_perfmon@create-perfmon-exceed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pointer:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-tglu-10:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-10/igt@vc4/vc4_perfmon@create-two-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-tglu-9:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-tglu-9/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-3/igt@fbdev@unaligned-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@gem_eio@in-flight-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-2/igt@gem_eio@in-flight-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid-rel-gen5:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-dg1-14/igt@gem_exec_params@rel-constants-invalid-rel-gen5.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-dg1-14/igt@gem_exec_params@rel-constants-invalid-rel-gen5.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_psr@cursor_mmap_cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12759/shard-rkl-4/igt@kms_vblank@pipe-b-ts-continuation-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114154v2/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idle.html">PASS</a> +15 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12759 -&gt; Patchwork_114154v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12759: 00e12ed04ecb81a67099d4c4833c86186ca7d31e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7165: 509e7e63c6377d0fe77d1bd209857fb191f4a84c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114154v2: 00e12ed04ecb81a67099d4c4833c86186ca7d31e @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7702857677844919781==--
