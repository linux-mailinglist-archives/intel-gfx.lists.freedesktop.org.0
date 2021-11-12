Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A89B544EF46
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 23:32:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD486E0B9;
	Fri, 12 Nov 2021 22:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 369106E08E;
 Fri, 12 Nov 2021 22:32:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32649A363D;
 Fri, 12 Nov 2021 22:32:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4249952314288946975=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 12 Nov 2021 22:32:36 -0000
Message-ID: <163675635619.27231.5710533121714889588@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112190904.62920-1-imre.deak@intel.com>
In-Reply-To: <20211112190904.62920-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_fastsets_on_TypeC_ports_following_a_non-blocking_m?=
 =?utf-8?q?odeset?=
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

--===============4249952314288946975==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix fastsets on TypeC ports following a non-blocking modeset
URL   : https://patchwork.freedesktop.org/series/96867/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10877_full -> Patchwork_21578_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21578_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21578_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21578_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@busy-start@rcs0:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb5/igt@perf_pmu@busy-start@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-tglb8/igt@perf_pmu@busy-start@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_21578_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#2369] / [i915#3063] / [i915#3648])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#2369])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@gem_exec_capture@pi@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl2/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][8] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl8/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][9] ([i915#2846])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][10] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#2842] / [i915#3468])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-tglb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [PASS][19] -> [SKIP][20] ([fdo#109271]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl2/igt@gem_exec_fair@basic-sync@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#2849])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][24] ([i915#2658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][25] ([i915#3002])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][26] ([i915#3318])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#456]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb8/igt@i915_suspend@debugfs-reader.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-tglb7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][29] ([i915#3743])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3777])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl8/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl4/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb3/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][40] ([i915#1319])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][41] ([i915#1319]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][42] ([i915#2105])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#3444])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2346] / [i915#533])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#533]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2122])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#79])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#79])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#198])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][60] ([i915#2122])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#2122])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2672])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +147 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109280]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +132 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +55 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][68] -> [INCOMPLETE][69] ([i915#2411] / [i915#456])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-tglb6/igt@kms_frontbuffer_tracking@psr-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][78] -> [SKIP][79] ([fdo#109441]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb2/igt@kms_psr@psr2_basic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb7/igt@kms_psr@psr2_basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2437])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2437])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@short-reads:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#51])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@perf@short-reads.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl2/igt@perf@short-reads.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl4/igt@sysfs_clients@create.html
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2994]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl8/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][86] ([i915#2842]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][88] ([i915#118]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk9/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-glk9/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][92] ([i915#2346]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][94] ([i915#2122]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][96] ([i915#79]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [INCOMPLETE][98] ([i915#636]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][100] ([i915#1188]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl1/igt@kms_hdr@bpc-switch.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +5 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][104] ([fdo#108145] / [i915#265]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][108] ([i915#31]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl2/igt@kms_setmode@basic.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][110] ([i915#2852]) -> [FAIL][111] ([i915#2842])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][112] ([i915#4281]) -> [FAIL][113] ([i915#4275])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][114] ([i915#2684]) -> [WARN][115] ([i915#1804] / [i915#2684])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][116] ([i915#1804] / [i915#2684]) -> [WARN][117] ([i915#2684])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][118] ([i915#658]) -> [SKIP][119] ([i915#2920]) +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][120] ([i915#2920]) -> [SKIP][121] ([i915#658]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][122], [FAIL][123]) ([i915#1814] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][124], [FAIL][125], [FAIL][126]) ([i915#180] / [i915#3002] / [i915#3363] / [i915#4312])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl7/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3363] / [i915#4312]) -> ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl3/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl8/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl6/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1436] / [i915#2029] / [i915#2263] / [i915#2369] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1436] / [i915#2369] / [i915#3002] / [i915#3363] / [i915#4312])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl2/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl9/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl8/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl7/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitla

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/index.html

--===============4249952314288946975==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix fastsets on TypeC ports follow=
ing a non-blocking modeset</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96867/">https://patchwork.freedesktop.org/series/96867/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21578/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21578/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10877_full -&gt; Patchwork_21578_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21578_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21578_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21578_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf_pmu@busy-start@rcs0:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb5/igt@perf_pmu@busy-start@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-=
tglb8/igt@perf_pmu@busy-start@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21578_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-tg=
lb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]=
 / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl10/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-=
skl2/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21578/shard-skl8/igt@gem_exec_fair@basic-deadline.ht=
ml">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21578/shard-apl4/igt@gem_exec_fair@basic-deadline.ht=
ml">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/s=
hard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842] / =
[i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
578/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
578/shard-tglb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/sh=
ard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl2/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/sh=
ard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_215=
78/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl8/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb8/igt@i915_suspend@debugfs-reader.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/sha=
rd-tglb7/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> ([i915#456]) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +6 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-skl8/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +5 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl4/igt@kms_chamelium@dp-edid-change-d=
uring-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-iclb3/igt@kms_chamelium@dp-hpd-enable-d=
isable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-s=
kl8/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21578/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.=
html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21578/shard-skl10/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#=
533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl8/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21578/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21578/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21578/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FA=
IL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21578/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21578/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21578/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.=
html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptible@a-h=
dmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21578/shard-glk2/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@a-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +147 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +132 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +55 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-tglb6/igt@kms_frontbuffer_tracking@psr-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21578/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE=
</a> ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-skl7/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-=
alpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21578/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +4 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_psr2_su@frontbuffer.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-iclb7/=
igt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-apl3/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl10/igt@perf@short-reads.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-skl2/igt=
@perf@short-reads.html">FAIL</a> ([i915#51])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21578/shard-apl4/igt@sysfs_clients@create.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#2994]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21578/shard-skl8/igt@sysfs_clients@create.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#2994]) +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21578/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk9/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21578/shard-glk9/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21578/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-ato=
mic.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21578/shard-skl2/igt@kms_cursor_legacy@flip-vs-cu=
rsor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-glk4/igt@kms_flip@2=
x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21578/shard-glk7/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLET=
E</a> ([i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21578/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl1/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-s=
kl9/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a=
> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21578/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +5 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21578/shard-skl9/igt@kms_plane_alpha_blend@pipe-b=
-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21578/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/sh=
ard-apl7/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2852]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21578/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#428=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_215=
78/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#4275])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21578/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21578/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21578/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">S=
KIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21578/shard-iclb7/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-kbl3/igt@runner@abo=
rted.html">FAIL</a>) ([i915#1814] / [i915#3002] / [i915#3363] / [i915#4312]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2157=
8/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21578/shard-kbl6/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1578/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#3002=
] / [i915#3363] / [i915#4312])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10877/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10877/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-apl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0877/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#180] / [i=
915#1814] / [i915#3363] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl2/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_215=
78/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21578/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21578/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#180] / [i915#1814] / [i915#3002] / [i915#=
3363] / [i915#4312])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10877/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl9/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10877/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10877/shard-skl10/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10877/shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:/=
/gitla">i915#1436</a> / [i915#2029] / [i915#2263] / [i915#2369] / [i915#300=
2] / [i915#3363] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21578/shard-skl2/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21578/shar=
d-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21578/shard-skl7/igt@runner@aborted.html">FAIL=
</a>) (<a href=3D"https://gitla">i915#1436</a> / [i915#2369] / [i915#3002] =
/ [i915#3363] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4249952314288946975==--
