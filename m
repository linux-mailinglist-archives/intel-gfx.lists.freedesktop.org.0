Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4249044E717
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 14:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88C8789FA6;
	Fri, 12 Nov 2021 13:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E46D89F55;
 Fri, 12 Nov 2021 13:08:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67234A363C;
 Fri, 12 Nov 2021 13:08:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8707984301767280815=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 12 Nov 2021 13:08:24 -0000
Message-ID: <163672250439.27228.1209267296728546982@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211111215644.1123373-1-matthew.d.roper@intel.com>
In-Reply-To: <20211111215644.1123373-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Additional_DG2_workarounds_=28rev2=29?=
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

--===============8707984301767280815==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Additional DG2 workarounds (rev2)
URL   : https://patchwork.freedesktop.org/series/96824/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10873_full -> Patchwork_21569_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21569_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - {shard-rkl}:        [SKIP][1] ([i915#1845]) -> [SKIP][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - {shard-rkl}:        NOTRUN -> ([SKIP][3], [SKIP][4]) ([i915#1845])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - {shard-rkl}:        ([SKIP][5], [SKIP][6]) ([i915#1845]) -> [SKIP][7] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-4/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  
Known issues
------------

  Here are the changes found in Patchwork_21569_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglb:         NOTRUN -> [SKIP][8] ([i915#280])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb2/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10] ([i915#2369] / [i915#2481] / [i915#3070])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-iclb2/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][11] ([i915#2369])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][12] ([i915#2846])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][15] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
    - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][21] ([i915#2658]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#4270])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#768])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-kbl2/igt@gem_softpin@noreloc-s3.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@input-checking:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][26] ([i915#3002])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][27] ([i915#3318])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          NOTRUN -> [FAIL][28] ([i915#3318])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#1436] / [i915#716])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-skl7/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl10/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#198])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#4387])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109303])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][37] ([i915#4272])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][38] -> [DMESG-WARN][39] ([i915#118])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3777])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][42] ([i915#3743])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3777]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#110723]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +8 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886]) +6 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278] / [i915#3886]) +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3886]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278]) +11 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb7/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3689])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          NOTRUN -> [DMESG-WARN][52] ([i915#1982])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +290 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109274] / [fdo#109278])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][61] ([i915#2346])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#533]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#3528])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb2/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109274]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#79])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#2122])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][69] -> [DMESG-WARN][70] ([i915#180])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#2122])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-iclb:         [PASS][72] -> [SKIP][73] ([i915#3701])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-skl:          NOTRUN -> [INCOMPLETE][74] ([i915#3699])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2672])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][76] -> [INCOMPLETE][77] ([i915#2828] / [i915#3614])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111825]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109280]) +11 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +138 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109289]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#533])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][83] ([i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][84] ([fdo#108145] / [i915#265])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][86] ([fdo#108145] / [i915#265]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][87] ([i915#265])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][88] ([i915#265])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658]) +6 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#658])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#658]) +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109441])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][93] -> [SKIP][94] ([fdo#109441]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109309])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_vrr@flip-basic:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109502])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2437])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl7/igt@kms_writeback@writeback-check-output.html
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2437])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl3/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2437])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#2530])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb2/igt@nouveau_crc@pipe-a-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#2530])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +54 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@prime_nv_pcopy@test3_5.html

  * igt@sysfs_clients@fair-3:
    - shard-kbl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl4/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#2994]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl6/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-25:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2994]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@split-25:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#2994])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][107] ([i915#658]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-iclb3/igt@feature_discovery@psr2.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [INCOMPLETE][109] ([i915#2369]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-skl10/igt@gem_exec_capture@pi@bcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][111] ([i915#2842]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [FAIL][113] ([i915#2842]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][115] ([i915#2842]) -> [PASS][116] +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][117] ([i915#2190]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [TIMEOUT][119] ([i915#3953]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][121] ([i915#3012]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-4/igt@i915_pm_backlight@bad-brightness.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][123] ([i915#1397]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - {shard-rkl}:        [SKIP][125] ([fdo#109308]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@i915_pm_rpm@system-suspend-modeset.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][127] ([i915#1845]) -> [PASS][128] +17 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        ([SKIP][129], [SKIP][130]) ([i915#1845]) -> [PASS][131] +5 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-a-ctm-max:
    - {shard-rkl}:        [SKIP][132] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_color@pipe-a-ctm-max.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_color@pipe-a-legacy-gamma-reset:
    - {shard-rkl}:        [SKIP][134] ([i915#1849] / [i915#4070]) -> [PASS][135] +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_color@pipe-a-legacy-gamma-reset.html
   [135]: https://in

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/index.html

--===============8707984301767280815==
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
<tr><td><b>Series:</b></td><td>i915: Additional DG2 workarounds (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96824/">https://patchwork.freedesktop.org/series/96824/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10873_full -&gt; Patchwork_21569_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): pig-snb-2600 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21569_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a>) ([i915#1845])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-4/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21569_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb2/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-iclb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@gem_pxp@create-protected-buffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-kbl2/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl7/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-skl7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl10/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_async_flips@crc.html">FAIL</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb7/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_color@pipe-a-ctm-blue-to-red.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_color_chamelium@pipe-c-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_color_chamelium@pipe-d-ctm-0-5.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([fdo#109271]) +290 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb2/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">INCOMPLETE</a> ([i915#3699])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> ([i915#2828] / [i915#3614])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +138 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_tv_load_detect@load-detect.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@kms_vrr@flip-basic.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl7/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl3/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb2/igt@nouveau_crc@pipe-a-ctx-flip-detection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@nouveau_crc@pipe-a-source-rg.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@prime_nv_pcopy@test3_5.html">SKIP</a> ([fdo#109271]) +54 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl4/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl6/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-apl2/igt@sysfs_clients@sema-25.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb4/igt@sysfs_clients@split-25.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-iclb3/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-skl10/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#2369]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-skl8/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html">TIMEOUT</a> ([i915#3953]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-4/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_color@pipe-a-ctm-max.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21569/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-legacy-gamma-reset:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10873/shard-rkl-1/igt@kms_color@pipe-a-legacy-gamma-reset.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://in">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8707984301767280815==--
