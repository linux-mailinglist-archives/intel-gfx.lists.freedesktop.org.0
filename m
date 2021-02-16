Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2782431D134
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 20:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E7E089CA0;
	Tue, 16 Feb 2021 19:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86D3189CA0;
 Tue, 16 Feb 2021 19:52:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7ED54A8169;
 Tue, 16 Feb 2021 19:52:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 16 Feb 2021 19:52:17 -0000
Message-ID: <161350513748.32285.11436251771379925886@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210216160035.4780-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210216160035.4780-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Readout_conn=5Fstate-=3Emax=5Fbpc?=
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
Content-Type: multipart/mixed; boundary="===============1899808563=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1899808563==
Content-Type: multipart/alternative;
 boundary="===============0309313144724168937=="

--===============0309313144724168937==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Readout conn_state->max_bpc
URL   : https://patchwork.freedesktop.org/series/87132/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9779_full -> Patchwork_19687_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19687_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19687_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19687_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@perf@scheduler:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@i915_selftest@perf@scheduler.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@i915_selftest@perf@scheduler.html

  
Known issues
------------

  Here are the changes found in Patchwork_19687_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#658])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@feature_discovery@psr2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@engines-hostile:
    - shard-hsw:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@gem_ctx_persistence@engines-hostile.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][7] ([i915#2846])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][10] ([i915#2842]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-semaphore-codependency:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1610])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl5/igt@gem_exec_schedule@u-semaphore-codependency.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl6/igt@gem_exec_schedule@u-semaphore-codependency.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][16] ([i915#2658])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][18] ([fdo#109271]) +174 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][19] ([i915#3002])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@gem_userptr_blits@input-checking.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][20] ([i915#3002])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@process-exit-mmap@gtt:
    - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#1699]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl1/igt@gem_userptr_blits@process-exit-mmap@gtt.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#1699]) +7 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#109289])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@gen7_exec_parse@cmd-crossing-page.html
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109289])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#1436] / [i915#716])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-glk:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1937])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111614])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#110725] / [fdo#111614])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_joiner@basic:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#2705]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl4/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#2705])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][40] ([i915#1319]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][41] ([i915#2105])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl1/igt@kms_content_protection@uevent.html
    - shard-apl:          NOTRUN -> [FAIL][42] ([i915#2105])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#54]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271]) +213 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-random:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge:
    - shard-hsw:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#533]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl4/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][50] -> [FAIL][51] ([i915#2598])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][52] ([i915#180]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#2122])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2642])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2642])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][57] ([i915#2641])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2672])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109280]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111825]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +40 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][62] ([fdo#109271]) +25 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#1187])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@kms_hdr@static-swap.html
    - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#1187])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][69] ([i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-hsw:          NOTRUN -> [SKIP][70] ([fdo#109271]) +13 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html

  * igt@kms_psr@primary_page_flip:
    - shard-hsw:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#1072])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][76] -> [SKIP][77] ([fdo#109441]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][78] ([IGT#2])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@kms_sysfs_edid_timing.html
    - shard-kbl:          NOTRUN -> [FAIL][79] ([IGT#2])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +175 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2437])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#2530])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3026]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@sysfs_clients@sema-10@vcs0.html

  * igt@sysfs_clients@sema-25@vecs0:
    - shard-skl:          [PASS][84] -> [SKIP][85] ([fdo#109271]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl8/igt@sysfs_clients@sema-25@vecs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl7/igt@sysfs_clients@sema-25@vecs0.html

  * igt@sysfs_clients@split-10@vcs0:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3026]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@sysfs_clients@split-10@vcs0.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#1731])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl4/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][89] ([i915#1895] / [i915#2295]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@gem_exec_balancer@hang.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][91] ([i915#2842]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [FAIL][93] ([i915#2842]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][95] ([i915#2842]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-tglb:         [DMESG-WARN][97] ([i915#2803]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb8/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-iclb:         [DMESG-WARN][99] ([i915#2803]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb4/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][101] ([i915#118] / [i915#95]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          [INCOMPLETE][103] ([i915#2782]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-hsw4/igt@i915_selftest@live@hangcheck.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          [FAIL][105] ([i915#54]) -> [PASS][106] +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][109] ([i915#2598]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][111] ([i915#2122]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-skl:          [DMESG-WARN][113] ([i915#1982]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][115] ([i915#1188]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][117] ([fdo#108145] / [i915#265]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb7/igt@kms_psr@psr2_suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][121] ([i915#1542]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl8/igt@perf@polling.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl7/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][123] ([i915#1542]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk2/igt@perf@polling-parameterized.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk3/igt@perf@polling-parameterized.html
    - shard-iclb:         [FAIL][125] ([i915#1542]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb5/igt@perf@polling-parameterized.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb4/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@busy@vcs0:
    - shard-iclb:         [FAIL][127] ([i915#3019]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb8/igt@sysfs_clients@busy@vcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@sysfs_clients@busy@vcs0.html

  * igt@sysfs_clients@recycle:
    - shard-snb:          [FAIL][129] ([i915#3028]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-snb2/igt@sysfs_clients@recycle.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb2/igt@sysfs_clients@recycle.html
    - shard-hsw:          [FAIL][131] ([i915#3028]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-hsw1/igt@sysfs_clients@recycle.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw2/igt@sysfs_clients@recycle.html
    - shard-tglb:         [FAIL][133] ([i915#3028]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb1/igt@sysfs_clients@recycle.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@sysfs_clients@recycle.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-iclb:         [FAIL][135] ([i915#3028]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb5/igt@sysfs_clients@recycle-many.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb4/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][137] ([i915#588]) -> [SKIP][138] ([i915#658])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][139] ([i915#2684]) -> [WARN][140] ([i915#1804] / [i915#2684])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][141] ([i915#658]) -> [SKIP][142] ([i91

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/index.html

--===============0309313144724168937==
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
<tr><td><b>Series:</b></td><td>drm/i915: Readout conn_state-&gt;max_bpc</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87132/">https://patchwork.freedesktop.org/series/87132/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9779_full -&gt; Patchwork_19687_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19687_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19687_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19687_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@perf@scheduler:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@i915_selftest@perf@scheduler.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@i915_selftest@perf@scheduler.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19687_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@gem_ctx_persistence@engines-hostile.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-semaphore-codependency:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl5/igt@gem_exec_schedule@u-semaphore-codependency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl6/igt@gem_exec_schedule@u-semaphore-codependency.html">DMESG-WARN</a> ([i915#1610])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> ([fdo#109271]) +174 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb7/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl1/igt@gem_userptr_blits@process-exit-mmap@gtt.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@gem_userptr_blits@process-exit-mmap@wb.html">SKIP</a> ([fdo#109271] / [i915#1699]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk8/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> ([fdo#111614])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl4/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@kms_chamelium@dp-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@kms_chamelium@vga-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@kms_color_chamelium@pipe-c-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_color_chamelium@pipe-d-gamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl1/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html">FAIL</a> ([i915#54]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html">SKIP</a> ([fdo#109271]) +213 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@kms_cursor_edge_walk@pipe-d-64x64-top-edge.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl4/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +3 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#111825]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#1187])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#1187])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@kms_plane_lowres@pipe-b-tiling-yf.html">SKIP</a> ([fdo#109271]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@kms_psr@primary_page_flip.html">SKIP</a> ([fdo#109271] / [i915#1072])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb4/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109271]) +175 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-apl1/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3026]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl8/igt@sysfs_clients@sema-25@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl7/igt@sysfs_clients@sema-25@vecs0.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl4/igt@sysfs_clients@split-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3026]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl4/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL</a> ([i915#1731])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#2295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@gem_exec_balancer@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb8/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb4/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb7/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-hsw4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#2598]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb7/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-skl8/igt@perf@polling.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-skl7/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-glk2/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-glk3/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb4/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb8/igt@sysfs_clients@busy@vcs0.html">FAIL</a> ([i915#3019]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@sysfs_clients@busy@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-snb2/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-snb2/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-hsw1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-hsw2/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-tglb1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-tglb1/igt@sysfs_clients@recycle.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb5/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb4/igt@sysfs_clients@recycle-many.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#588]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9779/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19687/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         [SKIP][141] ([i915#658]) -&gt; [SKIP][142] ([i91</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0309313144724168937==--

--===============1899808563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1899808563==--
