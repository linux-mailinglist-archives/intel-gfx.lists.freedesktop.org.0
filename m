Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3F0434F38
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 17:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D16EE6E9C3;
	Wed, 20 Oct 2021 15:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B8AB56E30C;
 Wed, 20 Oct 2021 15:41:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AEBB4A0096;
 Wed, 20 Oct 2021 15:41:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3863174295298474483=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Claudio Suarez" <cssk@net-c.es>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Oct 2021 15:41:27 -0000
Message-ID: <163474448767.27358.17401184660608118712@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211016184226.3862-1-cssk@net-c.es>
In-Reply-To: <20211016184226.3862-1-cssk@net-c.es>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgcmVw?=
 =?utf-8?q?lace_drm=5Fdetect=5Fhdmi=5Fmonitor=28=29_with_drm=5Fdisplay=5Fi?=
 =?utf-8?b?bmZvLmlzX2hkbWkgKHJldjUp?=
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

--===============3863174295298474483==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi (rev5)
URL   : https://patchwork.freedesktop.org/series/95880/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10762_full -> Patchwork_21384_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_21384_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@gem_create@create-massive.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][4] ([i915#280])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][7] ([i915#2842]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][14] -> [SKIP][15] ([i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][16] ([i915#2658])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@gem_pread@exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl4/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#4270])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][19] ([i915#2724])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][20] ([i915#3318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#109289])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#2856])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_getparams_basic@basic-eu-total:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl8/igt@i915_getparams_basic@basic-eu-total.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl2/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         NOTRUN -> [WARN][25] ([i915#2681] / [i915#2684])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([i915#2411] / [i915#456])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb6/igt@i915_suspend@forcewake.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb7/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][28] ([i915#4272])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl6/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][30] ([i915#3743]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111614])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#2705])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_big_joiner@basic.html

  * igt@kms_bw@linear-tiling-1-displays-3840x2160p:
    - shard-tglb:         NOTRUN -> [FAIL][35] ([i915#1385])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_bw@linear-tiling-1-displays-3840x2160p.html

  * igt@kms_bw@linear-tiling-3-displays-2560x1440p:
    - shard-snb:          NOTRUN -> [FAIL][36] ([i915#4299])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb5/igt@kms_bw@linear-tiling-3-displays-2560x1440p.html
    - shard-apl:          NOTRUN -> [DMESG-FAIL][37] ([i915#4298])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl3/igt@kms_bw@linear-tiling-3-displays-2560x1440p.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [i915#3886])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689] / [i915#3886]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +11 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3689]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
    - shard-snb:          NOTRUN -> [SKIP][44] ([fdo#109271]) +338 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +31 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3116])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#111828])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3319]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3359]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +46 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109278])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#109279] / [i915#3359]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#72])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#4103])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-tglb:         [PASS][61] -> [INCOMPLETE][62] ([i915#456])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2672])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +296 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#111825]) +19 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109280])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +165 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane@plane-position-hole@pipe-b-planes:
    - shard-tglb:         [PASS][71] -> [INCOMPLETE][72] ([i915#3590])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb3/igt@kms_plane@plane-position-hole@pipe-b-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb8/igt@kms_plane@plane-position-hole@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265]) +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][74] ([i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265]) +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][76] ([fdo#108145] / [i915#265])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][77] -> [FAIL][78] ([fdo#108145] / [i915#265]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#3536])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +6 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#2920])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@page_flip:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#1911])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-tglb:         NOTRUN -> [FAIL][87] ([i915#132] / [i915#3467]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][88] -> [DMESG-WARN][89] ([i915#180]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][90] ([i915#180])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2437])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl2/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2437]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl2/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#2530])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@prime_nv_api@nv_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#109291]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@prime_nv_api@nv_self_import.html

  * igt@prime_nv_api@nv_self_import_to_different_fd:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109291])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb2/igt@prime_nv_api@nv_self_import_to_different_fd.html

  * igt@prime_vgem@fence-write-hang:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109295])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@prime_vgem@fence-write-hang.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994]) +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-10:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2994]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl4/igt@sysfs_clients@sema-10.html

  * igt@sysfs_clients@sema-50:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#2994])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][101] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb8/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [TIMEOUT][103] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][105] ([i915#2842]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][107] ([i915#2842]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][109] ([i915#2842]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][111] ([i915#2842]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [INCOMPLETE][113] ([i915#1895]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_spin_batch@resubmit-new-all@vecs0:
    - shard-skl:          [DMESG-WARN][115] ([i915#1982]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl5/igt@gem_spin_batch@resubmit-new-all@vecs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl3/igt@gem_spin_batch@resubmit-new-all@vecs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [INCOMPLETE][117] ([i915#198]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl2/igt@gem_workarounds@suspend-resume.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl6/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][119] ([i915#1436] / [i915#716]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@perf@region:
    - shard-iclb:         [INCOMPLETE][121] -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb4/igt@i915_selftest@perf@region.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb5/igt@i915_selftest@perf@region.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-snb:          [SKIP][123] ([fdo#109271]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-snb7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][125] ([i915#2411] / [i915#456]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][127] ([i915#2411] / [i915#4211]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][129] ([i915#2122]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132] +7 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
    - shard-apl:          [DMESG-WARN][133] ([i915#180]) -> [PASS][134] +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][135] ([i915#2122]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl8/igt@kms_flip@plai

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/index.html

--===============3863174295298474483==
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
<tr><td><b>Series:</b></td><td>replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95880/">https://patchwork.freedesktop.org/series/95880/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10762_full -&gt; Patchwork_21384_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21384_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl4/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@gem_pxp@create-regular-context-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@gen7_exec_parse@chained-batch.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl8/igt@i915_getparams_basic@basic-eu-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl2/igt@i915_getparams_basic@basic-eu-total.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb6/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl6/igt@kms_async_flips@crc.html">FAIL</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> ([fdo#111615]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_bw@linear-tiling-1-displays-3840x2160p:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_bw@linear-tiling-1-displays-3840x2160p.html">FAIL</a> ([i915#1385])</li>
</ul>
</li>
<li>
<p>igt@kms_bw@linear-tiling-3-displays-2560x1440p:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb5/igt@kms_bw@linear-tiling-3-displays-2560x1440p.html">FAIL</a> ([i915#4299])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl3/igt@kms_bw@linear-tiling-3-displays-2560x1440p.html">DMESG-FAIL</a> ([i915#4298])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html">SKIP</a> ([i915#3689]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html">SKIP</a> ([fdo#109271]) +338 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_content_protection@mei_interface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html">SKIP</a> ([i915#3319]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([fdo#109271]) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +296 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#111825]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +165 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole@pipe-b-planes:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb3/igt@kms_plane@plane-position-hole@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb8/igt@kms_plane@plane-position-hole@pipe-b-planes.html">INCOMPLETE</a> ([i915#3590])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_psr2_su@page_flip.html">SKIP</a> ([i915#1911])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_psr@psr2_sprite_render.html">FAIL</a> ([i915#132] / [i915#3467]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl2/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl2/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@nouveau_crc@pipe-a-source-outp-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@prime_nv_api@nv_self_import.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import_to_different_fd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb2/igt@prime_nv_api@nv_self_import_to_different_fd.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl3/igt@sysfs_clients@fair-7.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl4/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@sysfs_clients@sema-50.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb8/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb1/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority.html">INCOMPLETE</a> ([i915#1895]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@resubmit-new-all@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl5/igt@gem_spin_batch@resubmit-new-all@vecs0.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl3/igt@gem_spin_batch@resubmit-new-all@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl2/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl6/igt@gem_workarounds@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl5/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl7/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@region:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-iclb4/igt@i915_selftest@perf@region.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-iclb5/igt@i915_selftest@perf@region.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-snb7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-snb2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#4211]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +7 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10762/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21384/shard-skl8/igt@kms_flip@plai">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============3863174295298474483==--
