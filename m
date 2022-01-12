Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2337348BC41
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 02:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C2D10E2B2;
	Wed, 12 Jan 2022 01:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D76C10E2C7;
 Wed, 12 Jan 2022 01:14:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B3ADAA0EB;
 Wed, 12 Jan 2022 01:14:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8780957366332927398=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Wed, 12 Jan 2022 01:14:59 -0000
Message-ID: <164195009930.21760.8276464642517013920@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220111163019.13694-1-matthew.brost@intel.com>
In-Reply-To: <20220111163019.13694-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Flip_guc=5Fid_allocation_partition?=
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

--===============8780957366332927398==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Flip guc_id allocation partition
URL   : https://patchwork.freedesktop.org/series/98751/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11066_full -> Patchwork_21970_full
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

  Here are the changes found in Patchwork_21970_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#658])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb2/igt@feature_discovery@psr2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-tglb:         [PASS][4] -> [DMESG-WARN][5] ([i915#2411] / [i915#2867]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-tglb6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb5/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#232])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#4525]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][10] ([i915#4547])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl9/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#118]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk2/igt@gem_exec_whisper@basic-forked.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk2/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl2/igt@gem_lmem_swapping@random.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][18] ([i915#2658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk7/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#4270]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +35 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl2/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271]) +37 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#3323])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#3323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#3297])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#2527] / [i915#2856]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb6/igt@gen9_exec_parse@shadow-peek.html
    - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#2856])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#1937])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#109289] / [fdo#111719])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111614])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][30] ([i915#3743])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3689] / [i915#3886])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +20 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111615] / [i915#3689]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk7/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#1063])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3359]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#109279] / [i915#3359])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3319])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#4103])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2346] / [i915#533])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#79])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109274])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#109274] / [fdo#111825]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#2122])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([i915#2587])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109280] / [fdo#111825]) +8 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +90 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl4/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][68] -> [INCOMPLETE][69] ([i915#2828])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#3536])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_plane_lowres@pipe-b-tiling-none.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111615] / [fdo#112054])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#2920])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl9/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_primary_render:
    - shard-tglb:         NOTRUN -> [FAIL][79] ([i915#132] / [i915#3467])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_psr@psr2_primary_render.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#31])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk3/igt@kms_setmode@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk2/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][82] ([IGT#2])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl4/igt@kms_sysfs_edid_timing.html
    - shard-skl:          NOTRUN -> [FAIL][83] ([IGT#2])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl9/igt@kms_sysfs_edid_timing.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#2530])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109289])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#1542])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl10/igt@perf@polling-parameterized.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl2/igt@perf@polling-parameterized.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109291]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@prime_nv_test@i915_nv_sharing.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-1:
    - shard-glk:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk7/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@sema-10:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#2994])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][92] ([i915#2410]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][94] ([i915#4525]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][96] ([i915#2842]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][98] ([i915#2842]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [FAIL][100] ([i915#2842]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][102] ([i915#2849]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_parallel@engines@basic:
    - shard-glk:          [DMESG-WARN][104] ([i915#118]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk5/igt@gem_exec_parallel@engines@basic.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk8/igt@gem_exec_parallel@engines@basic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][106] ([i915#2346]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [FAIL][112] ([i915#4911]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][116] ([i915#4525]) -> [FAIL][117] ([i915#4916])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][118] ([i915#2851]) -> [FAIL][119] ([i915#2842])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][120] ([i915#1804] / [i915#2684]) -> [WARN][121] ([i915#2684])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][122] ([fdo#111068] / [i915#658]) -> [SKIP][123] ([i915#2920])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl4/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][134], [FAIL][135], [FAIL][136]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][137], [FAIL][138], [FAIL][139]) ([i915#180] / [i915#3002] / [i915#4312])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-apl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-apl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-apl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1814] / [i915#2029] / [i915#3002] / [i915#4312]) -> ([FAIL][145], [FAIL][146]) ([i915#3002] / [i915#4312])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl4/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl3/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl3/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl8/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-skl9/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.o

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/index.html

--===============8780957366332927398==
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
<tr><td><b>Series:</b></td><td>drm/i915: Flip guc_id allocation partition</=
td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98751/">https://patchwork.freedesktop.org/series/98751/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21970/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11066_full -&gt; Patchwork_21970_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21970_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-ic=
lb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-apl2/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-tglb6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21970/shard-tglb5/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-=
WARN</a> ([i915#2411] / [i915#2867]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-tg=
lb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21970/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (=
[i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-skl9/igt@gem_exec_capture@pi@vcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-glk7/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2197=
0/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk2/igt@gem_exec_whisper@basic-forked.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/sh=
ard-glk2/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> ([i915#118]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-skl4/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-apl2/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-glk7/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@gem_pxp@verify-pxp-execution-=
after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-apl2/igt@gem_render_copy@linear-to-vebo=
x-y-tiled.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-glk7/igt@gem_render_copy@y-tiled-to-veb=
ox-x-tiled.html">SKIP</a> ([fdo#109271]) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-iclb5/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([i915#3323])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-tglb6/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@gem_userptr_blits@unsync-over=
lap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-tglb6/igt@gen9_exec_parse@shadow-peek.ht=
ml">SKIP</a> ([i915#2527] / [i915#2856]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-iclb5/igt@gen9_exec_parse@shadow-peek.ht=
ml">SKIP</a> ([i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@i915_pm_rc6_residency@media-r=
c6-accuracy.html">SKIP</a> ([fdo#109289] / [fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_big_fb@y-tiled-8bpp-rotat=
e-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride=
-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-apl2/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_ccs@pipe-d-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@kms_ccs@pipe-d-bad-pixel-forma=
t-yf_tiled_ccs.html">SKIP</a> ([fdo#109271]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-apl4/igt@kms_chamelium@common-hpd-after=
-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-glk7/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues=
</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues=
</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_content_protection@srm.ht=
ml">SKIP</a> ([i915#1063])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-=
32x10-sliding.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_cursor_legacy@basic-busy-=
flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21970/shard-skl6/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21970/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-=
hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-iclb5/igt@kms_flip@2x-flip-vs-panning-i=
nterruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_flip@2x-plain-flip-fb-rec=
reate.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/s=
hard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> ([i915#18=
0])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-=
edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21970/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptibl=
e@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bp=
p-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280] / [fdo#=
111825]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-skl4/igt@kms_hdr@static-toggle-dpms.htm=
l">SKIP</a> ([fdo#109271]) +90 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-glk7/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21970/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">=
INCOMPLETE</a> ([i915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21970/shard-kbl4/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_plane_lowres@pipe-b-tilin=
g-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_plane_lowres@pipe-c-tilin=
g-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_psr2_sf@overlay-plane-upd=
ate-continuous-sf.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-skl9/igt@kms_psr2_su@page_flip-p010.htm=
l">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-i=
clb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@kms_psr@psr2_primary_render.h=
tml">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk2/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-apl4/igt@kms_sysfs_edid_timing.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.o">IGT#2</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21970/shard-skl9/igt@kms_sysfs_edid_timing.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.o">IGT#2</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@nouveau_crc@pipe-a-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@perf@gen8-unprivileged-single=
-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-skl10/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shar=
d-skl2/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@prime_nv_test@i915_nv_sharing=
.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-skl7/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-glk7/igt@sysfs_clients@fair-1.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21970/shard-tglb7/igt@sysfs_clients@sema-10.html">S=
KIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21970/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21970/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21970/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21970/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21970/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21970/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk5/igt@gem_exec_parallel@engines@basic.html">DMESG-WA=
RN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21970/shard-glk8/igt@gem_exec_parallel@engines@basic.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21970/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-tog=
gle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21970/shard-apl2/igt@kms_flip@flip-vs-suspend-int=
erruptible@b-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21970/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS<=
/a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64b=
pp-ytile-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/shard-glk1/igt@kms_flip_scal=
ed_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb8/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109=
441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1970/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21970/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html=
">FAIL</a> ([i915#4916])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2851]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21970/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21970/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> ([fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21970/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-d=
mg-area.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11066/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11066/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1=
814] / [i915#3002] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21970/shard-kbl6/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21970/shard-kbl4/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970=
/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21970/shard-kbl4/igt@runner@aborted.html"=
>FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#43=
12])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11066/shard-apl4/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i91=
5#1814] / [i915#3002] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21970/shard-apl7/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970=
/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21970/shard-apl1/igt@runner@aborted.html"=
>FAIL</a>) ([i915#180] / [i915#3002] / [i915#4312])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11066/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-skl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11066/shard-skl3/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#=
2029] / [i915#3002] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21970/shard-skl8/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21970/s=
hard-skl9/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8780957366332927398==--
