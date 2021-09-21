Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F042F4136E7
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 18:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BCD6EA76;
	Tue, 21 Sep 2021 16:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4650E6EA75;
 Tue, 21 Sep 2021 16:03:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C118A8830;
 Tue, 21 Sep 2021 16:03:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4478190551496463239=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 16:03:20 -0000
Message-ID: <163224020023.15888.10378422114983842646@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921110121.3783395-1-matthew.auld@intel.com>
In-Reply-To: <20210921110121.3783395-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C01/14=5D_drm/ttm=3A_stop_calling_tt?=
 =?utf-8?q?=5Fswapin_in_vm=5Faccess?=
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

--===============4478190551496463239==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v4,01/14] drm/ttm: stop calling tt_swapin in vm_access
URL   : https://patchwork.freedesktop.org/series/94886/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10619_full -> Patchwork_21107_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21107_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-apl:          NOTRUN -> [INCOMPLETE][1] ([i915#4130] / [i915#4136])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl6/igt@core_hotunplug@unbind-rebind.html
    - shard-kbl:          [PASS][2] -> [INCOMPLETE][3] ([i915#4130] / [i915#4136])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl3/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl2/igt@core_hotunplug@unbind-rebind.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#658])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb2/igt@feature_discovery@psr2.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +5 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-snb6/igt@gem_ctx_persistence@process.html

  * igt@gem_ctx_shared@q-in-order:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271]) +364 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-snb2/igt@gem_ctx_shared@q-in-order.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#2369] / [i915#3063] / [i915#3648])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@submit-golden-slice@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][14] ([i915#3797])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl9/igt@gem_exec_schedule@submit-golden-slice@vcs0.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][15] ([i915#2658])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl6/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][16] ([i915#2658]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-snb5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][17] ([i915#3002])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl8/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][18] ([i915#2724])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-snb5/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][19] ([i915#3318])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#2856]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload:
    - shard-snb:          [PASS][21] -> [INCOMPLETE][22] ([i915#4179])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-snb5/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-snb7/igt@i915_module_load@reload.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][23] ([i915#3526] / [i915#4130] / [i915#4136] / [i915#4179])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl6/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][27] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#110725] / [fdo#111614])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111614])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#118] / [i915#95])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +31 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#2705])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl4/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3689] / [i915#3886])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +9 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl1/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [i915#3886])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb8/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl1/igt@kms_chamelium@vga-hpd-without-ddc.html
    - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-snb6/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl3/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl5/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][50] ([i915#1319])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([i915#3116])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][52] ([i915#2105])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3319])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-snb:          NOTRUN -> [FAIL][54] ([i915#4024])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
    - shard-apl:          NOTRUN -> [FAIL][55] ([i915#3444])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-tglb:         [PASS][56] -> [INCOMPLETE][57] ([i915#2411] / [i915#2828] / [i915#456])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278] / [fdo#109279])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][59] -> [INCOMPLETE][60] ([i915#155])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109279] / [i915#3359])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#2346])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#3528])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109274])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][66] -> [FAIL][67] ([i915#2122])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +7 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#2587])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#111825]) +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109280]) +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#1188])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][75] -> [DMESG-WARN][76] ([i915#180]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][77] ([i915#456])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][78] ([i915#265])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][79] ([fdo#108145] / [i915#265])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2733])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#1836])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-tglb:         NOTRUN -> [FAIL][84] ([i915#132] / [i915#3467])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278]) +4 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#533]) +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2437])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2437])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#1542])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl6/igt@perf@blocking.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl7/igt@perf@blocking.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109289])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271]) +179 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109291]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-apl2/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-skl:          [TIMEOUT][99] ([i915#3063]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl6/igt@gem_eio@in-flight-contexts-10ms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl6/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-kbl:          [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][103] ([i915#2842]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [INCOMPLETE][105] ([i915#4130] / [i915#4136]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb4/igt@i915_module_load@reload.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@i915_module_load@reload.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [INCOMPLETE][107] ([i915#2411] / [i915#4173] / [i915#456]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][109] ([i915#79]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][111] ([i915#4182]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][113] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-iclb:         [INCOMPLETE][117] ([i915#4130]) -> [INCOMPLETE][118] ([i915#4130] / [i915#4136])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb5/igt@core_hotunplug@unbind-rebind.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb4/igt@core_hotunplug@unbind-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-glk:          [INCOMPLETE][119] -> [INCOMPLETE][120] ([i915#4130] / [i915#4136])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-glk1/igt@device_reset@unbind-reset-rebind.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-glk4/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][121] ([i915#2852]) -> [FAIL][122] ([i915#2842])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_module_load@reload:
    - shard-skl:          [INCOMPLETE][123] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][124] ([i915#4136])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-skl6/igt@i915_module_load@reload.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl7/igt@i915_module_load@reload.html
    - shard-kbl:          [INCOMPLETE][125] ([i915#4130] / [i915#4136] / [i915#4179]) -> [INCOMPLETE][126] ([i915#4136])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@i915_module_load@reload.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl6/igt@i915_module_load@reload.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][127] ([i915#2684]) -> [WARN][128] ([i915#1804] / [i915#2684])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][129] ([i915#658]) -> [SKIP][130] ([i915#2920]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][131] ([i915#2920]) -> [SKIP][132] ([i915#658]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl6/igt@

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/index.html

--===============4478190551496463239==
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
<tr><td><b>Series:</b></td><td>series starting with [v4,01/14] drm/ttm: sto=
p calling tt_swapin in vm_access</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/94886/">https://patchwork.freedesktop.org/series/94886/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21107/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10619_full -&gt; Patchwork_21107_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21107_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-apl6/igt@core_hotunplug@unbind-rebind.ht=
ml">INCOMPLETE</a> ([i915#4130] / [i915#4136])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10619/shard-kbl3/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shar=
d-kbl2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> ([i915#4130] /=
 [i915#4136])</p>
</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-ic=
lb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-snb6/igt@gem_ctx_persistence@process.ht=
ml">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-snb2/igt@gem_ctx_shared@q-in-order.html=
">SKIP</a> ([fdo#109271]) +364 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tg=
lb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]=
 / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/sha=
rd-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2110=
7/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
42]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-skl9/igt@gem_exec_schedule@submit-golde=
n-slice@vcs0.html">INCOMPLETE</a> ([i915#3797])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl6/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-snb5/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl8/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-snb5/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-apl6/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10619/shard-snb5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-snb=
7/igt@i915_module_load@reload.html">INCOMPLETE</a> ([i915#4179])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-apl6/igt@i915_module_load@reload.html">I=
NCOMPLETE</a> ([i915#3526] / [i915#4130] / [i915#4136] / [i915#4179])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulati=
on.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-iclb4/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-kbl6/igt@i915_suspend@debugfs-reader.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_big_fb@linear-16bpp-rotat=
e-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107=
/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i91=
5#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271]) +31 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_big_joiner@2x-modeset.htm=
l">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-skl4/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +9 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-kbl1/igt@kms_ccs@pipe-b-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_ccs@pipe-c-crc-sprite-pla=
nes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886=
])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb8/igt@kms_chamelium@hdmi-audio-edid=
.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-kbl1/igt@kms_chamelium@vga-hpd-without-d=
dc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-snb6/igt@kms_chamelium@vga-hpd-without-d=
dc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-skl3/igt@kms_color@pipe-c-ctm-red-to-blue.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107=
/shard-skl5/igt@kms_color@pipe-c-ctm-red-to-blue.html">DMESG-WARN</a> ([i91=
5#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_color_chamelium@pipe-a-de=
gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_color_chamelium@pipe-d-de=
gamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_content_protection@dp-mst=
-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl6/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-size-change:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-si=
ze-change.html">FAIL</a> ([i915#4024])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-si=
ze-change.html">FAIL</a> ([i915#3444])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21107/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE=
</a> ([i915#2411] / [i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1107/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</=
a> ([i915#155])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21107/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</=
a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_flip@2x-flip-vs-panning.h=
tml">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdm=
i-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21107/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a=
1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21107/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#111825]) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +6 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-sk=
l10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21107/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">=
DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb7/igt@kms_plane@plane-panning-botto=
m-right-suspend@pipe-b-planes.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_prime@basic-crc@first-to-=
second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_psr@psr2_cursor_render.ht=
ml">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/s=
hard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@kms_vblank@pipe-d-ts-continua=
tion-modeset-rpm.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-kbl7/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl6/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-skl6/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-skl7/igt@per=
f@blocking.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb3/igt@perf@gen12-unprivileged-singl=
e-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl1/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +179 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_gtt_mmap_read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@prime_nv_test@nv_write_i915_g=
tt_mmap_read.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-apl2/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21107/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@=
vcs0.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-skl6/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT<=
/a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21107/shard-skl6/igt@gem_eio@in-flight-contexts-10ms.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-kbl3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21107/shard-kbl2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21107/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb4/igt@i915_module_load@reload.html">INCOMPLETE</a> =
([i915#4130] / [i915#4136]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21107/shard-iclb3/igt@i915_module_load@reload.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a=
> ([i915#2411] / [i915#4173] / [i915#456]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb2/igt@kms_fbcon_fbt@psr=
-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21107/shard-skl10/igt@kms_flip@flip-vs-expired-v=
blank-interruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a-planes.html">INCOMPLETE</a> ([i915#4182]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard-tglb7/igt@kms_plane@p=
lane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#=
109642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21107/shard-iclb2/igt@kms_psr2_su@frontbuffer=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21107/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb5/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE=
</a> ([i915#4130]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21107/shard-iclb4/igt@core_hotunplug@unbind-rebind.html">INCOMP=
LETE</a> ([i915#4130] / [i915#4136])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-glk1/igt@device_reset@unbind-reset-rebind.html">INCOMPL=
ETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21107/shard-glk4/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a>=
 ([i915#4130] / [i915#4136])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2852]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21107/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10619/shard-skl6/igt@i915_module_load@reload.html">INCOMPLETE</a> ([=
i915#4130] / [i915#4136]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21107/shard-skl7/igt@i915_module_load@reload.html">INCOM=
PLETE</a> ([i915#4136])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10619/shard-kbl4/igt@i915_module_load@reload.html">INCOMPLETE</a> ([=
i915#4130] / [i915#4136] / [i915#4179]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21107/shard-kbl6/igt@i915_module_load@relo=
ad.html">INCOMPLETE</a> ([i915#4136])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21107/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
5.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21107/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10619/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
4.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21107/shard-iclb7/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10619/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10619/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10619/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl7/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10619/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10619/shard-kbl4/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_106=
19/shard-kbl4/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] =
/ [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363] / [i915#602]) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21107/shard=
-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21107/shard-kbl6/igt@">FAIL</a>, [FAIL][144], [=
FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]=
, [FAIL][151]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i91=
5#3363] / [i915#602])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4478190551496463239==--
