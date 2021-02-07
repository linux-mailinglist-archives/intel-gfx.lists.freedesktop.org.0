Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8862931249E
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Feb 2021 15:15:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A9E6E195;
	Sun,  7 Feb 2021 14:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2265D6E15F;
 Sun,  7 Feb 2021 14:15:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E48BFA0118;
 Sun,  7 Feb 2021 14:15:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 07 Feb 2021 14:15:55 -0000
Message-ID: <161270735590.30295.14189431757842897383@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210207120022.2901-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210207120022.2901-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Move_submit=5Frequ?=
 =?utf-8?q?est_to_i915=5Fsched=5Fengine?=
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
Content-Type: multipart/mixed; boundary="===============0426790682=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0426790682==
Content-Type: multipart/alternative;
 boundary="===============5988803074056477174=="

--===============5988803074056477174==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm/i915: Move submit_request to i915_sched_engine
URL   : https://patchwork.freedesktop.org/series/86820/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9742_full -> Patchwork_19622_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19622_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19622_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19622_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@syncobj-invalid-flags:
    - shard-snb:          [PASS][1] -> [TIMEOUT][2] +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-snb4/igt@gem_exec_fence@syncobj-invalid-flags.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-snb4/igt@gem_exec_fence@syncobj-invalid-flags.html

  * igt@kms_flip@flip-vs-rmfb-interruptible:
    - shard-snb:          NOTRUN -> [TIMEOUT][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-snb6/igt@kms_flip@flip-vs-rmfb-interruptible.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@processes:
    - shard-snb:          [SKIP][4] ([fdo#109271] / [i915#1099]) -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-snb2/igt@gem_ctx_persistence@processes.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-snb7/igt@gem_ctx_persistence@processes.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-snb:          [SKIP][6] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-snb:          [SKIP][8] ([fdo#109271]) -> [TIMEOUT][9] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-snb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-snb4/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.50@execution@built-in-functions@gs-op-bitxor-not-int-int (NEW):
    - pig-snb-2600:       NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/pig-snb-2600/spec@glsl-1.50@execution@built-in-functions@gs-op-bitxor-not-int-int.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9742_full and Patchwork_19622_full:

### New Piglit tests (1) ###

  * spec@glsl-1.50@execution@built-in-functions@gs-op-bitxor-not-int-int:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_19622_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-hang:
    - shard-hsw:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#1099])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@gem_ctx_persistence@legacy-engines-hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][12] ([i915#2846])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][17] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2849])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#2389])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-apl8/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][22] ([i915#2389]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl6/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#2803])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb5/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#2190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#2190])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][28] ([i915#2658])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl3/igt@gem_pread@exhaustion.html
    - shard-skl:          NOTRUN -> [WARN][29] ([i915#2658])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl4/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#768]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_workarounds@suspend-resume:
    - shard-snb:          [PASS][31] -> [TIMEOUT][32] ([i915#2808])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-snb4/igt@gem_workarounds@suspend-resume.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-snb4/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#2856])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_backlight@bad-brightness:
    - shard-glk:          NOTRUN -> [SKIP][34] ([fdo#109271]) +24 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk3/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#1937])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_selftest@live@client:
    - shard-glk:          [PASS][36] -> [DMESG-FAIL][37] ([i915#3047])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-glk3/igt@i915_selftest@live@client.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk6/igt@i915_selftest@live@client.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-apl2/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-glk:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk3/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +46 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl7/igt@kms_color@pipe-d-ctm-0-5.html
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278] / [i915#1149])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-tglb1/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-hsw:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109300] / [fdo#111066])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#54]) +6 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278] / [fdo#109279])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278]) +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109274] / [fdo#109278]) +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [PASS][55] -> [DMESG-WARN][56] ([i915#1982]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109274]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#2122])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2672])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2642])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2672])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109280]) +18 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +101 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-apl6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-hsw:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533]) +5 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][69] ([i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-hsw:          NOTRUN -> [SKIP][72] ([fdo#109271]) +50 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#658]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109642] / [fdo#111068] / [i915#658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109441])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109441])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@sprite_plane_move:
    - shard-hsw:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#1072])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@kms_psr@sprite_plane_move.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +121 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2530]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109291]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@prime_nv_test@nv_i915_sharing.html

  * igt@sysfs_clients@recycle:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#3028])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-glk2/igt@sysfs_clients@recycle.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk7/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][84] ([i915#658]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb3/igt@feature_discovery@psr2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-iclb:         [INCOMPLETE][86] ([i915#1185]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][88] ([i915#1895] / [i915#2295] / [i915#3031]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb2/igt@gem_exec_balancer@hang.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][90] ([i915#2842]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
    - shard-tglb:         [FAIL][92] ([i915#2842]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][94] ([i915#2842]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-fairslice-all:
    - shard-skl:          [DMESG-WARN][96] ([i915#1610] / [i915#2803]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl7/igt@gem_exec_schedule@u-fairslice-all.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl4/igt@gem_exec_schedule@u-fairslice-all.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-glk:          [DMESG-WARN][98] ([i915#1610] / [i915#2803]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-glk3/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk3/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +8 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][102] ([i915#454]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          [INCOMPLETE][104] ([i915#2782]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-hsw2/igt@i915_selftest@live@hangcheck.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][106] ([i915#2521]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][108] ([i915#1982]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][110] ([i915#54]) -> [PASS][111] +6 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][112] ([i915#79]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][114] ([i915#2295]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][116] ([i915#180]) -> [PASS][117] +7 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [FAIL][118] ([i915#2122]) -> [PASS][119] +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][120] ([fdo#109441]) -> [PASS][121] +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][122] ([i915#1542]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-glk2/igt@perf@polling-parameterized.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk7/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@busy@bcs0:
    - shard-skl:          [FAIL][124] ([i915#3019]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-skl9/igt@sysfs_clients@busy@bcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-skl5/igt@sysfs_clients@busy@bcs0.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          [FAIL][126] ([i915#3028]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl6/igt@sysfs_clients@recycle.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl6/igt@sysfs_clients@recycle.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-glk:          [FAIL][128] ([i915#3028]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-glk9/igt@sysfs_clients@recycle-many.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk8/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][130] ([i915#2681] / [i915#2684]) -> [FAIL][131] ([i915#2680])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][132] ([i915#658]) -> [SKIP][133] ([i915#2920]) +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][134] ([i915#2920]) -> [SKIP][135] ([i915#658]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#3002] / [i915#602]) -> ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2505] / [i915#3002])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl3/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl7/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-kbl4/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/index.html

--===============5988803074056477174==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm/i915: Move=
 submit_request to i915_sched_engine</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86820/">https://patchwork.freedesktop.org/series/86820/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19622/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19622/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9742_full -&gt; Patchwork_19622_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19622_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19622_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19622_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@syncobj-invalid-flags:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-snb4/igt@gem_exec_fence@syncobj-invalid-flags.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
622/shard-snb4/igt@gem_exec_fence@syncobj-invalid-flags.html">TIMEOUT</a> +=
12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-snb6/igt@kms_flip@flip-vs-rmfb-interrup=
tible.html">TIMEOUT</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-snb2/igt@gem_ctx_persistence@processes.html">SKIP</a> ([=
fdo#109271] / [i915#1099]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19622/shard-snb7/igt@gem_ctx_persistence@processes.html=
">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-limited-range.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-snb6/igt@kms_color_chameliu=
m@pipe-a-ctm-limited-range.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-snb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html">SKIP</a=
> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19622/shard-snb4/igt@kms_plane_lowres@pipe-a-tiling-yf.html">TIME=
OUT</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@glsl-1.50@execution@built-in-functions@gs-op-bitxor-not-int-int (N=
EW):<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/pig-snb-2600/spec@glsl-1.50@execution@built-i=
n-functions@gs-op-bitxor-not-int-int.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9742_full and Patchwork_19=
622_full:</p>
<h3>New Piglit tests (1)</h3>
<ul>
<li>spec@glsl-1.50@execution@built-in-functions@gs-op-bitxor-not-int-int:<u=
l>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19622_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@gem_ctx_persistence@legacy-eng=
ines-hang.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/sh=
ard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/sha=
rd-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1962=
2/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9622/shard-apl8/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([=
i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-kbl6/igt@gem_exec_reloc@basic-many-acti=
ve@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb5/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
22/shard-iclb6/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> =
([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9742/shard-tglb7/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-tglb6=
/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19622/shard-glk3/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19622/shard-kbl3/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19622/shard-skl4/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@gem_render_copy@linear-to-veb=
ox-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-snb4/igt@gem_workarounds@suspend-resume.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/sh=
ard-snb4/igt@gem_workarounds@suspend-resume.html">TIMEOUT</a> ([i915#2808])=
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-glk3/igt@i915_pm_backlight@bad-brightne=
ss.html">SKIP</a> ([fdo#109271]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-glk3/igt@i915_selftest@live@client.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-g=
lk6/igt@i915_selftest@live@client.html">DMESG-FAIL</a> ([i915#3047])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-apl2/igt@kms_chamelium@dp-edid-change-d=
uring-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-glk3/igt@kms_chamelium@hdmi-crc-fast.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19622/shard-skl7/igt@kms_color@pipe-d-ctm-0-5.html">=
SKIP</a> ([fdo#109271]) +46 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_color@pipe-d-ctm-0-5.html"=
>SKIP</a> ([fdo#109278] / [i915#1149])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_color_chamelium@pipe-a-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-tglb1/igt@kms_color_chamelium@pipe-b-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@kms_color_chamelium@pipe-b-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-skl8/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_content_protection@uevent=
.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19622/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">F=
AIL</a> ([i915#54]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
622/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-=
dpms.html">SKIP</a> ([fdo#109278]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +4 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtil=
ed.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19622/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-=
xtiled.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_flip@2x-nonexisting-fb.ht=
ml">SKIP</a> ([fdo#109274]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19622/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> =
([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19622/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.htm=
l">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-glk3/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +18 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-kbl6/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +101 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-apl6/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +5 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html">SKIP</a> ([fdo#109271]) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_psr2_su@frontbuffer.html"=
>SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/sha=
rd-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@kms_psr@psr2_dpms.html">SKIP<=
/a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_move:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-hsw1/igt@kms_psr@sprite_plane_move.html=
">SKIP</a> ([fdo#109271] / [i915#1072])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +121 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@nouveau_crc@pipe-c-source-rg.=
html">SKIP</a> ([i915#2530]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@prime_nv_test@nv_i915_sharing=
.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-glk2/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-glk7/=
igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb3/igt@feature_discovery@psr2.html">SKIP</a> ([i915#6=
58]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
622/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">I=
NCOMPLETE</a> ([i915#1185]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19622/shard-iclb6/igt@gem_ctx_isolation@preservation-s=
3@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb2/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([=
i915#1895] / [i915#2295] / [i915#3031]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19622/shard-iclb6/igt@gem_exec_balancer@ha=
ng.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9742/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i=
915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19622/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9742/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19622/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19622/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl7/igt@gem_exec_schedule@u-fairslice-all.html">DMESG-W=
ARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19622/shard-skl4/igt@gem_exec_schedule@u-fairs=
lice-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-glk3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19622/shard-glk3/igt@gem_exec_schedule@u-fair=
slice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">DM=
ESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19622/shard-apl3/igt@gem_workarounds@suspend-resume-cont=
ext.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/=
shard-iclb8/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-hsw2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</=
a> ([i915#2782]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19622/shard-hsw1/igt@i915_selftest@live@hangcheck.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19622/shard-skl10/igt@kms_async_flips@alternate-sync-async=
-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a> =
([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19622/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19622/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-=
random.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19622/shard-skl6/igt@kms_flip@flip-vs-expired-vbl=
ank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a=
1.html">INCOMPLETE</a> ([i915#2295]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19622/shard-hsw7/igt@kms_flip@flip-vs-suspend=
-interruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN=
</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19622/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</=
a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL<=
/a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19622/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([=
fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19622/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-glk2/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19622/shard-glk7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-skl9/igt@sysfs_clients@busy@bcs0.html">FAIL</a> ([i915#3=
019]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9622/shard-skl5/igt@sysfs_clients@busy@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-kbl6/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#302=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
22/shard-kbl6/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-glk9/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i91=
5#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19622/shard-glk8/igt@sysfs_clients@recycle-many.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2681] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19622/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.h=
tml">FAIL</a> ([i915#2680])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19622/shard-iclb2/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9742/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19622/shard-iclb7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9742/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9742/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
742/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl7/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9742/shard-=
kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_9742/shard-kbl4/igt@runner@aborted.html">FAIL</a>) =
([i915#1814] / [i915#2295] / [i915#2426] / [i915#3002] / [i915#602]) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19622/shard-=
kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/">FAIL</a>, [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#1814] / =
[i915#2295] / [i915#2426] / [i915#2505] / [i915#3002])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5988803074056477174==--

--===============0426790682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0426790682==--
