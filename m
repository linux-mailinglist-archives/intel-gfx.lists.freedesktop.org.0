Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D6E487BFF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 19:18:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A22A10E2DF;
	Fri,  7 Jan 2022 18:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CECA810E2DF;
 Fri,  7 Jan 2022 18:18:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CADD6A00E8;
 Fri,  7 Jan 2022 18:18:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4166234447441135331=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 07 Jan 2022 18:18:12 -0000
Message-ID: <164157949279.24389.2773660708603593360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1641561552.git.jani.nikula@intel.com>
In-Reply-To: <cover.1641561552.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_clean_up_i915=5Fdrv=2Eh=2C_part_1?=
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

--===============4166234447441135331==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: clean up i915_drv.h, part 1
URL   : https://patchwork.freedesktop.org/series/98608/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11053_full -> Patchwork_21941_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21941_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21941_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21941_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@api_intel_allocator@fork-simple-stress:
    - {shard-rkl}:        [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-1/igt@api_intel_allocator@fork-simple-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-5/igt@api_intel_allocator@fork-simple-stress.html

  * igt@gem_exec_whisper@basic-normal-all:
    - {shard-rkl}:        ([PASS][5], [FAIL][6]) -> [INCOMPLETE][7]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-4/igt@gem_exec_whisper@basic-normal-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_whisper@basic-normal-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-5/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.html

  
Known issues
------------

  Here are the changes found in Patchwork_21941_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][9] ([i915#3002])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@gem_create@create-massive.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglb:         NOTRUN -> [SKIP][10] ([i915#280])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#232])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@gem_eio@kms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#4547])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl7/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][19] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl5/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4270])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3323])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#1436] / [i915#716])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1436] / [i915#716])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#2527] / [i915#2856])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#2856])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb5/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109303])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][34] ([i915#1886] / [i915#2291])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111614])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][36] -> [DMESG-WARN][37] ([i915#118])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         [PASS][38] -> [FAIL][39] ([i915#3743])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][40] ([i915#3743])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3777]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3689]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#111615] / [i915#3689]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3886]) +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3689] / [i915#3886])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-glk:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_concurrent@pipe-b:
    - shard-snb:          [PASS][53] -> [SKIP][54] ([fdo#109271])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-snb4/igt@kms_concurrent@pipe-b.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-snb6/igt@kms_concurrent@pipe-b.html

  * igt@kms_content_protection@legacy:
    - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271]) +38 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3359])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +183 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109279] / [i915#3359]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#72])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109274] / [fdo#109278])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#4103])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][66] -> [FAIL][67] ([i915#79])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#79])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][70] -> [INCOMPLETE][71] ([i915#180])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [PASS][72] -> [FAIL][73] ([i915#4911]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +39 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109280] / [fdo#111825]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][76] -> [DMESG-WARN][77] ([i915#180]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          NOTRUN -> [FAIL][78] ([i915#1188])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][79] ([fdo#108145] / [i915#265]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([fdo#108145] / [i915#265])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][82] ([i915#265])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3536])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2733])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#1911])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109441])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-tglb:         NOTRUN -> [FAIL][89] ([i915#132] / [i915#3467])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][90] -> [SKIP][91] ([fdo#109441])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb4/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][92] ([IGT#2])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl5/igt@kms_sysfs_edid_timing.html

  * igt@kms_vrr@flipline:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109502])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2437]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109289])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@perf@per-context-mode-unprivileged.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109291]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@prime_nv_pcopy@test3_2.html

  * igt@sysfs_clients@fair-7:
    - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@pidname:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#2994])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2994])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [TIMEOUT][100] ([i915#3063]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][102] ([i915#232]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][104] ([i915#4525]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][106] ([i915#2842]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [FAIL][108] ([i915#2842]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk8/igt@gem_exec_fair@basic-pace@vecs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - {shard-rkl}:        [INCOMPLETE][110] -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][112] ([i915#2190]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][114] ([i915#1436] / [i915#716]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl9/igt@gen9_exec_parse@allowed-all.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][116] ([i915#454]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:
    - {shard-rkl}:        [SKIP][118] ([i915#4070]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-1/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-5/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - {shard-rkl}:        [SKIP][120] ([i915#4098]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-4/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][122] ([i915#79]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125] +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][126] ([i915#1188]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl10/igt@kms_hdr@bpc-switch.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - shard-glk:          [FAIL][128] ([i915#1888] / [i915#4729]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk8/igt@kms_plane_cursor@pipe-c-overlay-size-256.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk6/igt@kms_plane_cursor@pipe-c-overlay-size-256.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][130] ([fdo#109441]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][132] ([i915#31]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk3/igt@kms_setmode@basic.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk5/igt@kms_setmode@basic.html

  * igt@perf_pmu@frequency:
    - shard-tglb:         [INCOMPLETE][134] -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb3/igt@perf_pmu@frequency.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@perf_pmu@frequency.html

  * igt@sysfs_heartbeat_interval@precise@vcs0:
    - {shard-dg1}:        [FAIL][136] ([i915#1755]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-dg1-17/igt@sysfs_heartbeat_interval@precise@vcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-dg1-15/igt@sysfs_heartbeat_interval@precise@vcs0.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][138] ([i915#4916]) -> [SKIP][139] ([i915#4525])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][140] ([i915#2842]) -> [SKIP][141] ([i915#2848])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [141]: http

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/index.html

--===============4166234447441135331==
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
<tr><td><b>Series:</b></td><td>drm/i915: clean up i915_drv.h, part 1</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98608/">https://patchwork.freedesktop.org/series/98608/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11053_full -&gt; Patchwork_21941_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21941_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21941_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21941_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_backlight@fade_with_suspend:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@api_intel_allocator@fork-simple-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-1/igt@api_intel_allocator@fork-simple-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-5/igt@api_intel_allocator@fork-simple-stress.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-4/igt@gem_exec_whisper@basic-normal-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_whisper@basic-normal-all.html">FAIL</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-5/igt@gem_exec_whisper@basic-normal-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21941_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb5/igt@gem_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl7/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +5 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@gem_lmem_swapping@random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl5/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb5/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-b:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-snb4/igt@kms_concurrent@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-snb6/igt@kms_concurrent@pipe-b.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@kms_content_protection@legacy.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([fdo#109271]) +183 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_plane_lowres@pipe-b-tiling-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#1911])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_psr@psr2_no_drrs.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb4/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl5/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@kms_vrr@flipline.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@perf@per-context-mode-unprivileged.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb2/igt@prime_nv_pcopy@test3_2.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk1/igt@sysfs_clients@fair-7.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@sysfs_clients@pidname.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl3/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb3/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl7/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-1/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-5/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-4/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl10/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-skl10/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-overlay-size-256:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk8/igt@kms_plane_cursor@pipe-c-overlay-size-256.html">FAIL</a> ([i915#1888] / [i915#4729]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk6/igt@kms_plane_cursor@pipe-c-overlay-size-256.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk3/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-glk5/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb3/igt@perf_pmu@frequency.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-tglb6/igt@perf_pmu@frequency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-dg1-17/igt@sysfs_heartbeat_interval@precise@vcs0.html">FAIL</a> ([i915#1755]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-dg1-15/igt@sysfs_heartbeat_interval@precise@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a> ([i915#4916]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21941/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="http">SKIP</a> ([i915#2848])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4166234447441135331==--
