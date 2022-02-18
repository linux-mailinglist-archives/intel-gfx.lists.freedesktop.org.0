Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F594BB759
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 11:56:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4F210F16B;
	Fri, 18 Feb 2022 10:56:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E4D310F168;
 Fri, 18 Feb 2022 10:56:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B27AAA0EB;
 Fri, 18 Feb 2022 10:56:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8671122348427051870=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Fri, 18 Feb 2022 10:56:27 -0000
Message-ID: <164518178716.25459.10748848051118127803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220217152248.1016134-1-alexander.usyskin@intel.com>
In-Reply-To: <20220217152248.1016134-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_driver_for_GSC_controller_=28rev9=29?=
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

--===============8671122348427051870==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add driver for GSC controller (rev9)
URL   : https://patchwork.freedesktop.org/series/98066/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11243_full -> Patchwork_22318_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22318_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22318_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22318_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-skl10/igt@i915_selftest@mock@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl2/igt@i915_selftest@mock@requests.html

  * igt@perf@stress-open-close:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl6/igt@perf@stress-open-close.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@perf@stress-open-close.html

  
Known issues
------------

  Here are the changes found in Patchwork_22318_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#658])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb2/igt@feature_discovery@psr2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb4/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-snb2/igt@gem_ctx_persistence@file.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][12] -> [DMESG-WARN][13] ([i915#118])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl2/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@verify:
    - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl3/igt@gem_lmem_swapping@verify.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][16] ([i915#2658])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl3/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#4270])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#768]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#3323])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3323])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#3297])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][22] ([i915#3318])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl1/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#109289])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1436] / [i915#716])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-skl2/igt@gen9_exec_parse@allowed-single.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-skl:          NOTRUN -> [INCOMPLETE][26] ([i915#151])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl3/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#110892])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-snb:          [PASS][28] -> [SKIP][29] ([fdo#109271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-snb7/igt@i915_suspend@fence-restore-untiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-snb6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110725] / [fdo#111614])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][31] ([i915#3743])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +26 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-apl4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111615])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-tglb7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#2705])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +12 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [i915#3886]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl3/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-apl4/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278] / [i915#1149])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109300] / [fdo#111066])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3359])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278]) +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +87 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2346])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#3528])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109274]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#79])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#79])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][64] -> [DMESG-WARN][65] ([i915#180]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([i915#3701])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-iclb:         [PASS][68] -> [DMESG-WARN][69] ([i915#4391])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb8/igt@kms_force_connector_basic@prune-stale-modes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109280]) +7 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][72] ([i915#123])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][73] ([i915#1188])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#1187])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl10/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#533])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265]) +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][79] ([i915#265])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([fdo#108145] / [i915#265])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109441])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][84] -> [SKIP][85] ([fdo#109441])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +278 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl9/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#5030]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#31])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-glk2/igt@kms_setmode@basic.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-snb:          NOTRUN -> [SKIP][90] ([fdo#109271]) +80 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-snb2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#2530])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         NOTRUN -> [FAIL][92] ([i915#5136])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@perf_pmu@module-unload.html

  * igt@prime_nv_test@i915_import_cpu_mmap:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109291])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@prime_nv_test@i915_import_cpu_mmap.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl9/igt@sysfs_clients@fair-3.html
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#2994])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-apl4/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [DMESG-WARN][98] ([i915#180]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [DMESG-WARN][100] ([i915#118]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-glk2/igt@gem_exec_whisper@basic-normal-all.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [INCOMPLETE][102] ([i915#1895]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb4/igt@gem_exec_whisper@basic-queues-priority.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][104] ([i915#180]) -> [PASS][105] +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][106] ([i915#3921]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-snb2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][108] ([i915#2122]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][110] ([i915#3701]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][112] ([fdo#108145] / [i915#265]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [DMESG-WARN][116] ([i915#5076]) -> [SKIP][117] ([i915#4525])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb1/igt@gem_exec_balancer@parallel.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][118] ([i915#4525]) -> [DMESG-WARN][119] ([i915#5076])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][120] ([i915#2842]) -> [FAIL][121] ([i915#2852])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][122] ([i915#1804] / [i915#2684]) -> [WARN][123] ([i915#2684])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][124] ([i915#180]) -> [INCOMPLETE][125] ([i915#636])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl7/igt@i915_suspend@forcewake.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [INCOMPLETE][126] ([i915#636]) -> [DMESG-WARN][127] ([i915#180])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][128] ([i915#4148]) -> [SKIP][129] ([fdo#109642] / [fdo#111068] / [i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#4312] / [i915#602]) -> ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#2722] / [i915#4312])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tre

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/index.html

--===============8671122348427051870==
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
<tr><td><b>Series:</b></td><td>Add driver for GSC controller (rev9)</td></t=
r>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98066/">https://patchwork.freedesktop.org/series/98066/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22318/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22318/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11243_full -&gt; Patchwork_22318_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22318_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22318_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22318_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-skl10/igt@i915_selftest@mock@requests.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/sha=
rd-skl2/igt@i915_selftest@mock@requests.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-kbl6/igt@perf@stress-open-close.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-kbl=
6/igt@perf@stress-open-close.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22318_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-ic=
lb4/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-snb2/igt@gem_ctx_persistence@file.html"=
>SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2231=
8/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2318/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22318/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html">DMES=
G-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl2/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-kbl3/igt@gem_lmem_swapping@verify.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl3/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@gem_pxp@fail-invalid-protecte=
d-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gem_render_copy@y-tiled-to-ve=
box-linear.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22318/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gem_userptr_blits@readonly-un=
sync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl1/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@gen7_exec_parse@bitmasks.html=
">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-skl2/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/s=
hard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#14=
36] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@debugfs-forcewake-user:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl3/igt@i915_pm_rpm@debugfs-forcewake-=
user.html">INCOMPLETE</a> ([i915#151])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp.=
html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-snb7/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
18/shard-snb6/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> ([fdo#1=
09271])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_big_fb@linear-8bpp-rotate=
-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-apl4/igt@kms_big_fb@y-tiled-8bpp-rotate=
-270.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-tglb7/igt@kms_big_fb@yf-tiled-16bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_big_joiner@2x-modeset.htm=
l">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_ccs@pipe-b-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl3/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +12 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl3/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-apl4/igt@kms_chamelium@vga-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_color@pipe-d-ctm-0-5.html=
">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm=
-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_color_chamelium@pipe-c-ct=
m-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_content_protection@legacy=
.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-onscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-=
256x256-rapid-movement.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_cursor_legacy@cursora-vs-=
flipb-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22318/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL=
</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@kms_flip@2x-absolute-wf_vblan=
k-interruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22318/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-=
hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22318/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a=
> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22318/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/s=
hard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22318/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb8/igt@kms_force_connector_basic@prune-stale-modes.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22318/shard-iclb8/igt@kms_force_connector_basic@prune-stale-modes.ht=
ml">DMESG-WARN</a> ([i915#4391])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-tglb7/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280] / [fdo#=
111825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +7 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl10/igt@kms_frontbuffer_tracking@psr-=
suspend.html">INCOMPLETE</a> ([i915#123])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl3/igt@kms_hdr@bpc-switch.html">FAIL<=
/a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl10/igt@kms_pipe_crc_basic@read-crc-p=
ipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22318/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22318/shard-apl4/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-=
constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22318/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl2/igt@kms_psr2_sf@cursor-plane-updat=
e-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@kms_psr@psr2_basic.html">SKIP=
</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-i=
clb5/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-skl9/igt@kms_scaling_modes@scaling-mode=
-none@edp-1-pipe-a.html">SKIP</a> ([fdo#109271]) +278 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb8/igt@kms_scaling_modes@scaling-mod=
e-none@edp-1-pipe-c.html">SKIP</a> ([i915#5030]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-glk2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-glk3/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-snb2/igt@kms_universal_plane@disable-pr=
imary-vs-flip-pipe-d.html">SKIP</a> ([fdo#109271]) +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@nouveau_crc@ctx-flip-threshol=
d-reset-after-capture.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@perf_pmu@module-unload.html">=
FAIL</a> ([i915#5136])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_cpu_mmap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-iclb7/igt@prime_nv_test@i915_import_cpu=
_mmap.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22318/shard-skl9/igt@sysfs_clients@fair-3.html">SKIP=
</a> ([fdo#109271] / [i915#2994]) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22318/shard-iclb8/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-apl4/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22318/shard-apl1/igt@gem_ctx_isolation@preservation-s3@=
rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-glk2/igt@gem_exec_whisper@basic-normal-all.html">DMESG-=
WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22318/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb4/igt@gem_exec_whisper@basic-queues-priority.html">=
INCOMPLETE</a> ([i915#1895]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22318/shard-iclb8/igt@gem_exec_whisper@basic-queues-p=
riority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html">DMESG-=
WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22318/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#3921]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22318/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@b-h=
dmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22318/shard-glk4/igt@kms_flip@plain-flip-ts-ch=
eck-interruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22318/shard-iclb4/igt@kms_flip_=
scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22318/shard-skl9/igt@kms_plane_alpha_blend=
@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22318/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a></l=
i>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb1/igt@gem_exec_balancer@parallel.html">DMESG-WARN</=
a> ([i915#5076]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22318/shard-iclb7/igt@gem_exec_balancer@parallel.html">SKIP</a> (=
[i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22318/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html=
">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22318/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2852])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22318/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-kbl7/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22318/shard-kbl4/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915=
#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">INCOMPLETE</a> ([i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22318/shard-kbl6/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11243/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> ([i=
915#4148]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22318/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([fdo#1=
09642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11243/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11243/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11243/shard-kbl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11243/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tre">FAIL</a>, [FAIL][136], [FAIL][137], [FAIL][138], [F=
AIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144],=
 [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([fdo#109=
271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#4312] /=
 [i915#602]) -&gt; ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FA=
IL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], =
[FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165=
], [FAIL][166], [FAIL][167]) ([fdo#109271] / [i915#1436] / [i915#180] / [i9=
15#1814] / [i915#2426] / [i915#2722] / [i915#4312])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8671122348427051870==--
