Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A66F34249C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 19:27:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130006EA7B;
	Fri, 19 Mar 2021 18:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 579456EA7B;
 Fri, 19 Mar 2021 18:27:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FAF4A882E;
 Fri, 19 Mar 2021 18:27:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 19 Mar 2021 18:27:14 -0000
Message-ID: <161617843431.8630.14473495582624907010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210319143021.21823-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210319143021.21823-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Read_C0DRB3/C1DRB3_as_1?=
 =?utf-8?q?6_bits_again?=
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
Content-Type: multipart/mixed; boundary="===============1382831739=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1382831739==
Content-Type: multipart/alternative;
 boundary="===============7360109647458807694=="

--===============7360109647458807694==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Read C0DRB3/C1DRB3 as 16 bits again
URL   : https://patchwork.freedesktop.org/series/88179/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9875_full -> Patchwork_19813_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19813_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19813_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19813_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl10/igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl1/igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c.html

  
Known issues
------------

  Here are the changes found in Patchwork_19813_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all@insert_range:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3] ([i915#2485])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@drm_mm@all@insert_range.html

  * igt@feature_discovery@display-3x:
    - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271]) +28 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk2/igt@feature_discovery@display-3x.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl8/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +5 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-snb7/igt@gem_ctx_persistence@clone.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][7] -> [TIMEOUT][8] ([i915#2369] / [i915#2481] / [i915#3070])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb8/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][9] ([i915#2846])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2851])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2842]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2842]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2389])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-iclb:         [PASS][19] -> [DMESG-WARN][20] ([i915#2803])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb2/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb3/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#2190])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#307])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk3/igt@gem_mmap_gtt@big-copy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk7/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][24] ([i915#2658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-snb7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][25] ([i915#3002])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk2/igt@gem_userptr_blits@input-checking.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-snb5/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][27] ([fdo#109271]) +323 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][28] ([i915#454])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][29] ([i915#1886] / [i915#2291])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#2705])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl2/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl8/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl1/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk2/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][35] ([i915#2105])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#54]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          NOTRUN -> [FAIL][38] ([i915#2346])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][39] -> [INCOMPLETE][40] ([i915#155] / [i915#180] / [i915#636])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#79])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2122])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#2122])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk7/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk8/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2672])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +39 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_invalid_dotclock:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +26 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl2/igt@kms_invalid_dotclock.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][56] ([i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#109441])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][63] ([i915#31])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-snb5/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][64] ([IGT#2])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl8/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +181 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2437]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl2/igt@kms_writeback@writeback-fb-id.html

  * igt@sysfs_clients@busy@bcs0:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#3019])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk6/igt@sysfs_clients@busy@bcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk1/igt@sysfs_clients@busy@bcs0.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          [PASS][69] -> [FAIL][70] ([i915#3028])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl4/igt@sysfs_clients@recycle.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-iclb:         [PASS][71] -> [FAIL][72] ([i915#3028])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb8/igt@sysfs_clients@recycle-many.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb7/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          [PASS][73] -> [INCOMPLETE][74] ([i915#1731] / [i915#198])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl6/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Possible fixes ####

  * igt@drm_mm@all@replace:
    - shard-skl:          [INCOMPLETE][75] ([i915#2485]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl4/igt@drm_mm@all@replace.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@drm_mm@all@replace.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][77] ([i915#658]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb7/igt@feature_discovery@psr2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][79] ([i915#2369] / [i915#3063]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [FAIL][81] ([i915#2842]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][83] ([i915#2849]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-skl:          [DMESG-WARN][85] ([i915#1610] / [i915#2803]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl2/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [FAIL][87] ([i915#307]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@i915_selftest@live@client:
    - shard-glk:          [DMESG-FAIL][89] ([i915#3047]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk2/igt@i915_selftest@live@client.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk6/igt@i915_selftest@live@client.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl4/igt@i915_suspend@forcewake.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][95] ([i915#2122]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][97] ([fdo#108145] / [i915#265]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][99] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][103] ([i915#155]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [FAIL][105] ([i915#1542]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-tglb8/igt@perf@polling-parameterized.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-tglb7/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@recycle:
    - shard-glk:          [FAIL][107] ([i915#3028]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk4/igt@sysfs_clients@recycle.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk6/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-tglb:         [FAIL][109] ([i915#3028]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-tglb5/igt@sysfs_clients@recycle-many.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-tglb7/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [FAIL][111] ([i915#307]) -> [FAIL][112] ([i915#2428])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][113] ([i915#1804] / [i915#2684]) -> [FAIL][114] ([i915#2680] / [i915#2681])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-iclb:         [SKIP][115] ([fdo#109300] / [fdo#111066]) -> [FAIL][116] ([i915#3137])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb2/igt@kms_content_protection@atomic-dpms.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         [SKIP][117] ([i915#3116]) -> [FAIL][118] ([i915#3144])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb6/igt@kms_content_protection@dp-mst-type-1.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb1/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         [FAIL][119] ([i915#3144]) -> [SKIP][120] ([fdo#109300] / [fdo#111066])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb1/igt@kms_content_protection@legacy.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb5/igt@kms_content_protection@legacy.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][121] ([i915#658]) -> [SKIP][122] ([i915#2920]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][123] ([i915#2920]) -> [SKIP][124] ([i915#658]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#2724] / [i915#3002]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#2724] / [i915#3002] / [i915#92])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl2/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl6/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl4/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#2724] / [i915#3002]) -> ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#180] / [i915#1814] / [i915#2724] / [i915#3002])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl3/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl3/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl8/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl3/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl6/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl8/igt@runner@aborted.html
    - shard-glk:          ([FAIL][149], [FAIL][150]) ([i915#2724] / [i915#3002] / [k.org#202321]) -> ([FAIL][151], [FAIL][152], [FAIL][153]) ([i915#1814] / [i915#2724] / [i915#3002] / [k.org#202321])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk6/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk9/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk4/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk2/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159]) ([i915#1814] / [i915#2029] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163]) ([i915#1814] / [i915#2029] / [i915#2724] / [i915#3002])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl7/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl8/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl5/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl2/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl2/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl9/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl9/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl6/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/index.html

--===============7360109647458807694==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Read C0=
DRB3/C1DRB3 as 16 bits again</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/88179/">https://patchwork.freedesktop.org/series/88179/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19813/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19813/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9875_full -&gt; Patchwork_19813_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19813_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19813_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19813_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl10/igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19813/shard-skl1/igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c.html">FA=
IL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19813_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all@insert_range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-skl8/igt@drm_mm@all@insert_range.html">=
INCOMPLETE</a> ([i915#2485])</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-glk2/igt@feature_discovery@display-3x.h=
tml">SKIP</a> ([fdo#109271]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl8/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-snb7/igt@gem_ctx_persistence@clone.html=
">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-icl=
b3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] =
/ [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-skl8/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/sha=
rd-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2851])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/sh=
ard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/sh=
ard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813=
/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#284=
2]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-iclb2/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb2/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_198=
13/shard-iclb3/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> =
([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-glk2/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk3/igt@gem_mmap_gtt@big-copy.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk7/=
igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-snb7/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19813/shard-glk2/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19813/shard-snb5/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-snb7/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> ([fdo#109271]) +323 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-skl8/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-skl8/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl2/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl8/igt@kms_chamelium@dp-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-kbl1/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-glk2/igt@kms_color_chamelium@pipe-c-ctm=
-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl1/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19813/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.htm=
l">FAIL</a> ([i915#54]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-skl6/igt@kms_cursor_legacy@flip-vs-curs=
or-legacy.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-k=
bl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#=
180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-h=
dmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19813/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ac-h=
dmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19813/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> =
([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19813/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk7/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19813/shard-glk8/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">FAI=
L</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +39 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_dotclock:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-skl2/igt@kms_invalid_dotclock.html">SKI=
P</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-skl2/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl7/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19813/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">D=
MESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-kbl1/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/sha=
rd-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-snb5/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl8/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl7/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +181 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19813/shard-apl2/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@bcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk6/igt@sysfs_clients@busy@bcs0.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk=
1/igt@sysfs_clients@busy@bcs0.html">FAIL</a> ([i915#3019])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-kbl4/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl2/=
igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb8/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard=
-iclb7/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl6/igt@sysfs_heartbeat_interval@mixed@bcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_198=
13/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html">INCOMPLETE</a> =
([i915#1731] / [i915#198])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_mm@all@replace:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl4/igt@drm_mm@all@replace.html">INCOMPLETE</a> ([i915#=
2485]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19813/shard-skl8/igt@drm_mm@all@replace.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> ([i915#6=
58]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
813/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19813/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19813/shard-glk6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19813/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl2/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-=
WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@gem_exec_schedule@u-fair=
slice@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a>=
 ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19813/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk2/igt@i915_selftest@live@client.html">DMESG-FAIL</a> =
([i915#3047]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19813/shard-glk6/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-kbl4/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i=
915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19813/shard-kbl1/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19813/shard-apl1/igt@kms_flip@flip-vs-suspend-inte=
rruptible@c-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19813/shard-skl8/igt@kms_plane_alpha_blend@=
pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#1=
09642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19813/shard-iclb2/igt@kms_psr2_su@frontbuffer.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19813/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> ([i915#155]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19813/shard-kbl2/igt@kms_vblank@pipe-a-ts-contin=
uation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-tglb8/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19813/shard-tglb7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk4/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#302=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_198=
13/shard-glk6/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-tglb5/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i9=
15#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19813/shard-tglb7/igt@sysfs_clients@recycle-many.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([=
i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19813/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i91=
5#2428])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19813/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.h=
tml">FAIL</a> ([i915#2680] / [i915#2681])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb2/igt@kms_content_protection@atomic-dpms.html">SKIP<=
/a> ([fdo#109300] / [fdo#111066]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19813/shard-iclb1/igt@kms_content_protection@ato=
mic-dpms.html">FAIL</a> ([i915#3137])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb6/igt@kms_content_protection@dp-mst-type-1.html">SKI=
P</a> ([i915#3116]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19813/shard-iclb1/igt@kms_content_protection@dp-mst-type-1.htm=
l">FAIL</a> ([i915#3144])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb1/igt@kms_content_protection@legacy.html">FAIL</a> (=
[i915#3144]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19813/shard-iclb5/igt@kms_content_protection@legacy.html">SKIP</a> ([=
fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKI=
P</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19813/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html=
">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19813/shard-iclb8/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9875/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-kbl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_98=
75/shard-kbl4/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1814] =
/ [i915#2505] / [i915#2724] / [i915#3002]) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19813/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl6/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19813/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19813/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-kbl4/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19813/shard-kbl4/igt@runner@aborted.html">FAIL</a>) ([i915#180] /=
 [i915#1814] / [i915#2505] / [i915#2724] / [i915#3002] / [i915#92])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9875/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_98=
75/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-apl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/sh=
ard-apl8/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#180] / [i=
915#1814] / [i915#2724] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl3/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_198=
13/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-apl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19813/shard-apl8/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#181=
4] / [i915#2724] / [i915#3002])</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-glk9/igt@runner@abort=
ed.html">FAIL</a>) ([i915#2724] / [i915#3002] / [k.org#202321]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-glk4/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19813/shard-glk2/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-gl=
k7/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2724] / [i915#30=
02] / [k.org#202321])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9875/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9875/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_98=
75/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9875/shard-skl9/igt@runner@aborted.html">F=
AIL</a>) ([i915#1814] / [i915#2029] / [i915#2426] / [i915#2724] / [i915#300=
2]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
813/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19813/shard-skl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm">FAIL</a>, [F=
AIL][163]) ([i915#1814] / [i915#2029] / [i915#2724] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7360109647458807694==--

--===============1382831739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1382831739==--
