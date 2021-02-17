Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E84331E0D3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 21:52:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE9C6E9DD;
	Wed, 17 Feb 2021 20:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 469DC6E9DD;
 Wed, 17 Feb 2021 20:52:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F94EA882E;
 Wed, 17 Feb 2021 20:52:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 17 Feb 2021 20:52:27 -0000
Message-ID: <161359514725.24999.1691737204941495614@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1613580193.git.jani.nikula@intel.com>
In-Reply-To: <cover.1613580193.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_vbt_child_device_rework?=
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
Content-Type: multipart/mixed; boundary="===============1382889671=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1382889671==
Content-Type: multipart/alternative;
 boundary="===============1936060806738339582=="

--===============1936060806738339582==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: vbt child device rework
URL   : https://patchwork.freedesktop.org/series/87165/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9782_full -> Patchwork_19696_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19696_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] ([i915#2918])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-snb2/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [PASS][4] -> [TIMEOUT][5] ([i915#3070])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb1/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][8] ([i915#2389]) +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2389])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb1/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-apl:          NOTRUN -> [TIMEOUT][10] ([i915#1729])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl2/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [PASS][11] -> [DMESG-WARN][12] ([i915#2803])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb5/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs1:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#2803])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb3/igt@gem_exec_schedule@u-fairslice@vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1610] / [i915#2803])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl2/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl7/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][18] ([i915#2658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-snb2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][19] ([i915#3002])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl2/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][20] ([i915#2724])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-snb2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1436] / [i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl1/igt@gen9_exec_parse@allowed-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][23] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1937])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          NOTRUN -> [INCOMPLETE][25] ([i915#2782])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271]) +303 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-snb2/igt@kms_ccs@pipe-a-ccs-on-another-bo.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl1/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl10/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +42 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl10/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color@pipe-invalid-gamma-lut-sizes:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#165])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-kbl1/igt@kms_color@pipe-invalid-gamma-lut-sizes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl2/igt@kms_color@pipe-invalid-gamma-lut-sizes.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-snb:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][34] ([i915#1319])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][35] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#54]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][38] -> [FAIL][39] ([i915#2370])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#533]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl1/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#2598])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][43] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-kbl:          NOTRUN -> [FAIL][44] ([i915#2641])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#2672])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2642]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-hsw:          NOTRUN -> [SKIP][47] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-hsw8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +166 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][50] ([i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][51] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
    - shard-skl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([fdo#108145] / [i915#265]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_pwrite_crc:
    - shard-kbl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180] / [i915#78])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-kbl1/igt@kms_pwrite_crc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl2/igt@kms_pwrite_crc.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2437])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +94 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@sysfs_clients@recycle:
    - shard-hsw:          [PASS][65] -> [FAIL][66] ([i915#3028]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-hsw1/igt@sysfs_clients@recycle.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-hsw1/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#3028])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-apl8/igt@sysfs_clients@recycle-many.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl3/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-kbl:          [PASS][69] -> [SKIP][70] ([fdo#109271] / [i915#3026])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-kbl4/igt@sysfs_clients@sema-10@vcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl6/igt@sysfs_clients@sema-10@vcs0.html

  * igt@sysfs_clients@split-10@bcs0:
    - shard-apl:          [PASS][71] -> [SKIP][72] ([fdo#109271] / [i915#3026])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-apl8/igt@sysfs_clients@split-10@bcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl3/igt@sysfs_clients@split-10@bcs0.html
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3026])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@sysfs_clients@split-10@bcs0.html

  * igt@testdisplay:
    - shard-kbl:          [PASS][74] -> [DMESG-WARN][75] ([i915#165] / [i915#180] / [i915#78])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-kbl6/igt@testdisplay.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl2/igt@testdisplay.html

  
#### Possible fixes ####

  * igt@gem_ctx_clone@flags:
    - shard-skl:          [DMESG-WARN][76] ([i915#1982]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl7/igt@gem_ctx_clone@flags.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl5/igt@gem_ctx_clone@flags.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][78] ([i915#1037] / [i915#3063]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_create@legacy:
    - shard-glk:          [DMESG-WARN][80] ([i915#118] / [i915#95]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-glk4/igt@gem_exec_create@legacy.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-glk6/igt@gem_exec_create@legacy.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][82] ([i915#2842]) -> [PASS][83] +4 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [FAIL][84] ([i915#2842]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl2/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][86] ([i915#1436] / [i915#716]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-skl:          [INCOMPLETE][88] ([i915#198] / [i915#2782]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl4/igt@i915_selftest@live@gem_contexts.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          [INCOMPLETE][90] ([i915#2782]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-hsw7/igt@i915_selftest@live@hangcheck.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-hsw8/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][92] ([i915#2597]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb5/igt@kms_async_flips@test-time-stamp.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb3/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][94] ([i915#54]) -> [PASS][95] +8 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-apl:          [FAIL][96] ([i915#79]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][98] ([i915#1188]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl8/igt@kms_hdr@bpc-switch.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][100] ([fdo#108145] / [i915#265]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][102] ([fdo#109441]) -> [PASS][103] +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@sysfs_clients@busy@bcs0:
    - shard-skl:          [FAIL][104] ([i915#3019]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl7/igt@sysfs_clients@busy@bcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl5/igt@sysfs_clients@busy@bcs0.html

  * igt@sysfs_clients@recycle-many:
    - shard-iclb:         [FAIL][106] ([i915#3028]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb1/igt@sysfs_clients@recycle-many.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb7/igt@sysfs_clients@recycle-many.html
    - shard-kbl:          [FAIL][108] ([i915#3028]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-kbl6/igt@sysfs_clients@recycle-many.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-25@vecs0:
    - shard-skl:          [SKIP][110] ([fdo#109271]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl8/igt@sysfs_clients@split-25@vecs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl9/igt@sysfs_clients@split-25@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][112] ([i915#2849]) -> [FAIL][113] ([i915#2842])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][114] ([i915#1804] / [i915#2684]) -> [WARN][115] ([i915#2684])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][116] ([i915#658]) -> [SKIP][117] ([i915#2920]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][118] ([i915#2920]) -> [SKIP][119] ([i915#658]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][120], [FAIL][121], [FAIL][122]) ([i915#2295] / [i915#2724] / [i915#3002]) -> ([FAIL][123], [FAIL][124], [FAIL][125]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb8/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb8/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb5/igt@runner@aborted.html
    - shard-apl:          ([FAIL][126], [FAIL][127], [FAIL][128]) ([i915#2295] / [i915#3002]) -> ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132]) ([i915#1814] / [i915#2295] / [i915#3002])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-apl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-apl1/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-apl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl8/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl1/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl2/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl2/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][133], [FAIL][134], [FAIL][135]) ([i915#2295] / [i915#2667] / [i915#3002]) -> ([FAIL][136], [FAIL][137], [FAIL][138]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803] / [i915#3002])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb8/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb7/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb6/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#1436] / [i915#2295] / [i915#3002]) -> ([FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1436] / [i915#2295] / [i915#2426] / [i915#3002])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl10/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl2/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1729]: https://gitlab.freedesktop.org/drm/intel/issues/1729
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2641]: https://gitlab.freedesktop.org/drm/intel/issues/2641
  [i915#2642]: https://gitlab.freedesktop.org/drm/intel/issues/2642
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/index.html

--===============1936060806738339582==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: vbt child device rework</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87165/">https://patchwork.freedesktop.org/series/87165/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19696/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19696/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9782_full -&gt; Patchwork_19696_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19696_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19696/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</=
a> ([i915#2918])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-snb2/igt@gem_ctx_persistence@smoketest.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1099">i915#1099</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9696/shard-iclb1/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a>=
 ([i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/sha=
rd-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@gem_exec_reloc@basic-many-acti=
ve@vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-iclb1/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl2/igt@gem_exec_reloc@basic-parallel.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1729">i915#1729</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb2/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
96/shard-iclb5/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-tglb3/igt@gem_exec_schedule@u-fairslice@vcs1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
96/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vcs1.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl2/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
96/shard-skl7/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i91=
5#2803</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl6/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-snb2/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/26=
58">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl2/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-snb2/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/27=
24">i915#2724</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard=
-skl7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / [i915#716=
])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-skl6/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-snb2/igt@kms_ccs@pipe-a-ccs-on-another-=
bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +303 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl1/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-skl10/igt@kms_chamelium@vga-hpd-without=
-ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-skl10/igt@kms_color@pipe-d-ctm-0-5.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a>) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-invalid-gamma-lut-sizes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-kbl1/igt@kms_color@pipe-invalid-gamma-lut-sizes.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19696/shard-kbl2/igt@kms_color@pipe-invalid-gamma-lut-sizes.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i915=
#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl2/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-s=
uspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19696/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAI=
L</a> ([i915#54]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19696/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#23=
70</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl1/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19696/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-skl1/igt@kms_flip@flip-vs-expired-vblan=
k@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2641">i915#2641</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2642">i915#2642</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-hsw8/igt@kms_frontbuffer_tracking@fbcps=
r-rgb101010-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +166 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl1/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19696/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-al=
pha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19696/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-al=
pha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19696/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19696/shard-apl6/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19696/shard-skl1/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-kbl4/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +4 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/s=
hard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pwrite_crc:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-kbl1/igt@kms_pwrite_crc.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl2/igt@kms=
_pwrite_crc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a> / [i915#78])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19696/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +94 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-hsw1/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-hsw1/=
igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-apl8/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-=
apl3/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-kbl4/igt@sysfs_clients@sema-10@vcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-=
kbl6/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3026])</l=
i>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@bcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9782/shard-apl8/igt@sysfs_clients@split-10@bcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-=
apl3/igt@sysfs_clients@split-10@bcs0.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3026])</=
p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19696/shard-kbl4/igt@sysfs_clients@split-10@bcs0.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#3026])</p>
</li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-kbl6/igt@testdisplay.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-kbl2/igt@testdi=
splay.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/165">i915#165</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/180">i915#180</a> / [i915#78])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_clone@flags:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl7/igt@gem_ctx_clone@flags.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/s=
hard-skl5/igt@gem_ctx_clone@flags.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> =
/ [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19696/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-glk4/igt@gem_exec_create@legacy.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> =
/ [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19696/shard-glk6/igt@gem_exec_create@legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
696/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +4 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-kbl6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
96/shard-kbl2/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i91=
5#1436</a> / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19696/shard-skl1/igt@gen9_exec_parse@allowed-single.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl4/igt@i915_selftest@live@gem_contexts.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915=
#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2782"=
>i915#2782</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19696/shard-skl6/igt@i915_selftest@live@gem_contexts.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-hsw7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2=
782</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19696/shard-hsw8/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19696/shard-tglb3/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19696/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-=
random.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19696/shard-apl3/igt@kms_flip@flip-vs-expired-vbla=
nk-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl8/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-sk=
l9/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19696/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-con=
stant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19696/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl7/igt@sysfs_clients@busy@bcs0.html">FAIL</a> ([i915#3=
019]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9696/shard-skl5/igt@sysfs_clients@busy@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9782/shard-iclb1/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i91=
5#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19696/shard-iclb7/igt@sysfs_clients@recycle-many.html">PASS</a> +1 simila=
r issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9782/shard-kbl6/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915=
#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19696/shard-kbl4/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl8/igt@sysfs_clients@split-25@vecs0.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
696/shard-skl9/igt@sysfs_clients@split-25@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"">i915#2849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19696/shard-iclb6/igt@gem_exec_fair@basic-throttle=
@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19696/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19696/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SK=
IP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKI=
P</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19696/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.htm=
l">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-iclb4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9782/shard-iclb2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a> / [i915=
#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19696/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-iclb8/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19696/shard-iclb5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</=
a> / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9782/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#3002]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/s=
hard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19696/shard-apl1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1969=
6/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19696/shard-apl2/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/181=
4">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2295">i915#2295</a> / [i915#3002])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-tglb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9782/shard-tglb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a> / [i915=
#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19696/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-tglb8/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19696/shard-tglb6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#=
2803</a> / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9782/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9782/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9782/shard-skl2/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a> / [i915#3002]) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9696/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19696/shard-skl2/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2426">i915#2426</a> / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1936060806738339582==--

--===============1382889671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1382889671==--
