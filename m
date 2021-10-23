Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B38EA438116
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Oct 2021 02:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E17AA6E4DD;
	Sat, 23 Oct 2021 00:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B2A1C6E03D;
 Sat, 23 Oct 2021 00:43:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F65DAA914;
 Sat, 23 Oct 2021 00:43:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1734986236461635062=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 23 Oct 2021 00:43:45 -0000
Message-ID: <163494982555.6910.17236522694984538317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211022120655.22173-1-songkai01@inspur.com>
In-Reply-To: <20211022120655.22173-1-songkai01@inspur.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_fix_inconsistent_IS=5FERR_and_PTR=5FERR_=28r?=
 =?utf-8?q?ev3=29?=
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

--===============1734986236461635062==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: fix inconsistent IS_ERR and PTR_ERR (rev3)
URL   : https://patchwork.freedesktop.org/series/38366/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10780_full -> Patchwork_21422_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21422_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl1/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb5/igt@gem_ctx_persistence@file.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#2842]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-apl:          NOTRUN -> [FAIL][6] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [PASS][12] -> [INCOMPLETE][13] ([i915#1895])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb6/igt@gem_exec_whisper@basic-queues-forked.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@coherency:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([fdo#111656])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@gem_mmap_gtt@coherency.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#644])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#4270])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([fdo#110542])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#3297])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#109289]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#658])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-skl:          NOTRUN -> [INCOMPLETE][25] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl9/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][26] ([i915#2373])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb2/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][27] ([i915#1759])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb2/igt@i915_selftest@live@gt_pm.html
    - shard-skl:          NOTRUN -> [DMESG-FAIL][28] ([i915#1886] / [i915#2291])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl9/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][29] -> [INCOMPLETE][30] ([i915#3921])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +82 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl4/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111614])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111615])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][39] ([i915#3743])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886]) +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3689] / [i915#3886]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3689]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl6/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_color_chamelium@pipe-b-ctm-max.html
    - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb5/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][51] ([i915#1319]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#111828])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180] / [i915#203] / [i915#62]) +18 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3359]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3319]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109279] / [i915#3359])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +112 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-apl:          [PASS][59] -> [SKIP][60] ([fdo#109271]) +107 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl1/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][61] -> [SKIP][62] ([fdo#109271] / [i915#533])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][63] -> [DMESG-FAIL][64] ([i915#180] / [i915#62])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [PASS][65] -> [INCOMPLETE][66] ([i915#180] / [i915#636])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#79])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#79])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#2122])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2672])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-snb:          [PASS][74] -> [SKIP][75] ([fdo#109271])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - shard-apl:          [PASS][76] -> [DMESG-WARN][77] ([i915#203] / [i915#62]) +6 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl3/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][78] ([fdo#109271]) +26 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111825]) +9 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          NOTRUN -> [DMESG-WARN][80] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#533])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][82] ([i915#265])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-d-tiling-yf:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +65 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_plane_lowres@pipe-d-tiling-yf.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#112054])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#1836])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb2/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#2920])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#658])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][91] -> [SKIP][92] ([fdo#109441]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@sprite_blt:
    - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271]) +6 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk2/igt@kms_psr@sprite_blt.html

  * igt@kms_vblank@pipe-b-query-busy-hang:
    - shard-apl:          [PASS][94] -> [SKIP][95] ([fdo#109271] / [i915#3149])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl6/igt@kms_vblank@pipe-b-query-busy-hang.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_vblank@pipe-b-query-busy-hang.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2437]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2437])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@kms_writeback@writeback-pixel-formats.html
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2437])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#2530])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#1542])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl9/igt@perf@polling-parameterized.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl6/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test1_micro:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109291]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@prime_nv_pcopy@test1_micro.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl6/igt@sysfs_clients@recycle-many.html
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#2994])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-25:
    - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2994])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          [FAIL][106] ([i915#2842]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][108] ([i915#2842]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [SKIP][110] ([fdo#109271]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][112] ([i915#2849]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-snb:          [INCOMPLETE][114] -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-snb4/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][116] ([i915#1436] / [i915#716]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][118] ([i915#456]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][120] ([i915#2346] / [i915#533]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][122] ([i915#2346]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
    - shard-kbl:          [INCOMPLETE][124] -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][126] ([i915#79]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-iclb:         [SKIP][128] ([i915#3701]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [DMESG-WARN][130] ([i915#1982]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][132] ([i915#1188]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl5/igt@kms_hdr@bpc-switch.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][134] ([i915#180]) -> [PASS][135] +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [DMESG-WARN][136] ([i915#180]) -> [PASS][137] +3 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][138] ([fdo#108145] / [i915#265]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/index.html

--===============1734986236461635062==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: fix inconsistent IS_ERR and PTR_ERR (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/38366/">https://patchwork.freedesktop.org/series/38366/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10780_full -&gt; Patchwork_21422_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21422_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl1/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb5/igt@gem_ctx_persistence@file.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl1/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl1/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb6/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb8/igt@gem_exec_whisper@basic-queues-forked.html">INCOMPLETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@gem_mmap_gtt@coherency.html">SKIP</a> ([fdo#111656])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#644])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([fdo#110542])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl9/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1759])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl9/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl4/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#109271]) +82 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl6/igt@kms_chamelium@hdmi-audio-edid.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@kms_chamelium@vga-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb5/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl7/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@kms_content_protection@uevent.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html">DMESG-WARN</a> ([i915#180] / [i915#203] / [i915#62]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +112 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl1/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> ([fdo#109271]) +107 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">DMESG-FAIL</a> ([i915#180] / [i915#62])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl3/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">DMESG-WARN</a> ([i915#203] / [i915#62]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-yf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_plane_lowres@pipe-d-tiling-yf.html">SKIP</a> ([fdo#109271]) +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html">SKIP</a> ([fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb2/igt@kms_prime@basic-crc@first-to-second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#2920])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb6/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk2/igt@kms_psr@sprite_blt.html">SKIP</a> ([fdo#109271]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-busy-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl6/igt@kms_vblank@pipe-b-query-busy-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl1/igt@kms_vblank@pipe-b-query-busy-hang.html">SKIP</a> ([fdo#109271] / [i915#3149])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl4/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@nouveau_crc@pipe-a-source-outp-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl9/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl6/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_micro:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@prime_nv_pcopy@test1_micro.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl6/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@sysfs_clients@recycle-many.html">SKIP</a> ([i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-snb4/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-snb5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl6/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> ([i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-skl5/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-skl7/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21422/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10780/shard-s">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; [PASS][139]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1734986236461635062==--
