Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 556C94EB540
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 23:26:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8F810EEF1;
	Tue, 29 Mar 2022 21:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C73B110EEEB;
 Tue, 29 Mar 2022 21:26:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2F0CA47EB;
 Tue, 29 Mar 2022 21:26:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1391121374813548853=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 29 Mar 2022 21:26:32 -0000
Message-ID: <164858919278.5798.12482904532901447897@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1648578814.git.jani.nikula@intel.com>
In-Reply-To: <cover.1648578814.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_cleanup_and_refactoring_around_validity_checks?=
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

--===============1391121374813548853==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: cleanup and refactoring around validity checks
URL   : https://patchwork.freedesktop.org/series/101931/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11416_full -> Patchwork_22724_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 10)
------------------------------

  Missing    (1): shard-tglu 

Known issues
------------

  Here are the changes found in Patchwork_22724_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-apl:          NOTRUN -> [FAIL][2] ([i915#5099])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl6/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglb:         NOTRUN -> [SKIP][3] ([i915#280])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [PASS][4] -> [TIMEOUT][5] ([i915#3063])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#2481] / [i915#3070])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb1/igt@gem_eio@unwedge-stress.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#4547])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl2/igt@gem_exec_capture@pi@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl3/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_schedule@submit-early-slice@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][14] ([i915#3797])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@gem_exec_schedule@submit-early-slice@vcs0.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([i915#4613])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-snb2/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#4270])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#4270])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#109289]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1436] / [i915#716])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2856])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#2527] / [i915#2856])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][28] ([i915#2373])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][29] ([i915#1759])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#4817])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl6/igt@i915_suspend@sysfs-reader.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#4272])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#5286])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111614])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110725] / [fdo#111614])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][36] ([i915#3743])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl10/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +35 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111615])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3689] / [i915#3886])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +5 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#111615] / [i915#3689])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl6/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#3689]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +9 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl7/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3116] / [i915#3299])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3359]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#4103])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [PASS][57] -> [FAIL][58] ([i915#2346])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#5287])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#79])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#4911]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109280])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +218 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109280] / [fdo#111825]) +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][70] ([i915#1188])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][72] -> [DMESG-WARN][73] ([i915#180]) +4 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][75] ([i915#265])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-a-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#5288])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_plane_lowres@pipe-a-tiling-4.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#3536])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109642] / [fdo#111068] / [i915#658])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][81] ([i915#132] / [i915#3467])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][82] -> [SKIP][83] ([fdo#109441]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb8/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-snb:          NOTRUN -> [SKIP][84] ([fdo#109271]) +73 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-snb2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][85] -> [INCOMPLETE][86] ([i915#2828])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2437])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2530])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][89] ([i915#180])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl7/igt@perf_pmu@rc6-suspend.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109291])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109291])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@prime_nv_pcopy@test3_2.html

  * igt@sysfs_clients@fair-7:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#2994])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-10:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@sysfs_clients@sema-10.html

  * igt@sysfs_clients@split-25:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#2994])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@sysfs_clients@split-25.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109307])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_caching@reads:
    - shard-glk:          [DMESG-WARN][96] ([i915#118]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-glk5/igt@gem_caching@reads.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-glk1/igt@gem_caching@reads.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [DMESG-WARN][98] ([i915#180]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][100] ([i915#4525]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][104] ([i915#2521]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [SKIP][106] ([i915#3701]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][108] ([i915#123]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][112] ([fdo#109441]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][114] ([i915#1722]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl8/igt@perf@polling-small-buf.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][116] ([i915#4525]) -> [DMESG-WARN][117] ([i915#5076]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb8/igt@gem_exec_balancer@parallel.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [DMESG-WARN][118] ([i915#5076]) -> [SKIP][119] ([i915#4525])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          [SKIP][120] ([fdo#109271]) -> [SKIP][121] ([fdo#109271] / [i915#1888])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl9/igt@gem_exec_fair@basic-flow@rcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][122] ([i915#658]) -> [SKIP][123] ([i915#588])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][124] ([i915#1804] / [i915#2684]) -> [WARN][125] ([i915#2684])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-skl:          [SKIP][126] ([fdo#109271] / [fdo#111827] / [i915#1888]) -> [SKIP][127] ([fdo#109271] / [fdo#111827])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl1/igt@kms_color_chamelium@pipe-c-degamma.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl2/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][128] ([i915#2920]) -> [SKIP][129] ([i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][130] ([i915#2920]) -> [SKIP][131] ([fdo#111068] / [i915#658])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][132] ([i915#4148]) -> [SKIP][133] ([fdo#109642] / [fdo#111068] / [i915#658])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl7/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/index.html

--===============1391121374813548853==
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
<tr><td><b>Series:</b></td><td>drm/edid: cleanup and refactoring around validity checks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101931/">https://patchwork.freedesktop.org/series/101931/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11416_full -&gt; Patchwork_22724_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 10)</h2>
<p>Missing    (1): shard-tglu </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22724_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl6/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#5099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb1/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl2/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl3/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@gem_exec_schedule@submit-early-slice@vcs0.html">INCOMPLETE</a> ([i915#3797])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-snb2/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@gem_render_copy@linear-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gen7_exec_parse@basic-allowed.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl9/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1759])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl6/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> ([i915#4817])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@kms_async_flips@crc.html">FAIL</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl10/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl6/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl7/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl7/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_color_chamelium@pipe-c-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +218 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_plane_lowres@pipe-a-tiling-4.html">SKIP</a> ([i915#5288])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl8/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_psr@psr2_primary_mmap_gtt.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb8/igt@kms_psr@psr2_sprite_render.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-snb2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> ([fdo#109271]) +73 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">INCOMPLETE</a> ([i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl7/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@prime_nv_api@i915_nv_import_twice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@prime_nv_pcopy@test3_2.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@sysfs_clients@fair-7.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl1/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@sysfs_clients@split-25.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-tglb6/igt@tools_test@sysfs_l3_parity.html">SKIP</a> ([fdo#109307])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-glk5/igt@gem_caching@reads.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-glk1/igt@gem_caching@reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> ([i915#123]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl8/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl4/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb8/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb2/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> ([i915#5076]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html">DMESG-WARN</a> ([i915#5076]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl9/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl2/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#588])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1804] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-skl1/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827] / [i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-skl2/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> ([i915#4148]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22724/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11416/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-">FAIL</a>, [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257]) -&gt; ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#5257])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1391121374813548853==--
