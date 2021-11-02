Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7255144266D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 05:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0C06F9B4;
	Tue,  2 Nov 2021 04:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F1126F9C7;
 Tue,  2 Nov 2021 04:38:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56F43A7525;
 Tue,  2 Nov 2021 04:38:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0444406139490806490=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 02 Nov 2021 04:38:36 -0000
Message-ID: <163582791632.15503.1584793053071922458@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211102021233.215980-1-jose.souza@intel.com>
In-Reply-To: <20211102021233.215980-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Exit_PSR_when_doing_async_flips_=28rev3=29?=
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

--===============0444406139490806490==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Exit PSR when doing async flips (rev3)
URL   : https://patchwork.freedesktop.org/series/96440/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10825_full -> Patchwork_21500_full
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

  Here are the changes found in Patchwork_21500_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-tglb:         NOTRUN -> [SKIP][1] ([i915#1839])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@feature_discovery@display-3x.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][2] ([i915#180])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][3] -> [TIMEOUT][4] ([i915#2369] / [i915#2481] / [i915#3070])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@gem_eio@unwedge-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][8] ([i915#2658])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-tglb:         NOTRUN -> [SKIP][9] ([i915#4270])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-iclb:         NOTRUN -> [SKIP][10] ([i915#4270])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][11] ([i915#3002])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][12] ([fdo#109289])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][13] ([i915#1436] / [i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([i915#2856])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb6/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#658]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         NOTRUN -> [FAIL][16] ([i915#454])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#1937])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         NOTRUN -> [WARN][18] ([i915#2681] / [i915#2684])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][19] ([i915#2373])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][20] ([i915#1759])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#111614]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110725] / [fdo#111614])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#3763])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][25] ([i915#3743])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#111615]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#3689]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278] / [i915#3886])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +6 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689] / [i915#3886]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-snb:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-snb4/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_color@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278] / [i915#1149])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_color@pipe-d-gamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl1/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#111828])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3319]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109279] / [i915#3359]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3359]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +81 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#111825]) +20 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          NOTRUN -> [FAIL][46] ([i915#2346])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2346] / [i915#533])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#4103]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_flip@2x-plain-flip:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [PASS][52] -> [FAIL][53] ([i915#79])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +7 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [PASS][58] -> [INCOMPLETE][59] ([i915#2411] / [i915#456])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-tglb6/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#3701])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +75 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-snb:          NOTRUN -> [SKIP][64] ([fdo#109271]) +48 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][65] ([i915#1188])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#4278])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-d-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3536])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@kms_plane_lowres@pipe-d-tiling-none.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2920])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +65 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][76] ([i915#132] / [i915#3467])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][79] -> [FAIL][80] ([i915#31])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-glk2/igt@kms_setmode@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-glk9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][81] ([i915#180] / [i915#295])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][82] ([i915#180])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2437])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2530])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@nouveau_crc@pipe-a-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#2530]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-d-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278] / [i915#2530])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@nouveau_crc@pipe-d-source-outp-inactive.html

  * igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109291])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html

  * igt@prime_nv_pcopy@test1_macro:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#109291]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@prime_nv_pcopy@test1_macro.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109295])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@prime_vgem@fence-flip-hang.html

  * igt@sysfs_clients@fair-1:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#2994])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@sema-10:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl4/igt@sysfs_clients@sema-10.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][94] ([i915#2842]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][96] ([i915#2842]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-apl:          [SKIP][98] ([fdo#109271]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][100] ([i915#2842]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][102] ([i915#3921]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-snb4/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][104] ([i915#2411] / [i915#456]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][106] ([i915#4211]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][110] ([i915#2122]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs:
    - shard-skl:          [DMESG-WARN][112] ([i915#4380]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl2/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl9/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs.html

  * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf-ccs:
    - shard-skl:          [DMESG-WARN][114] -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl2/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf-ccs.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl9/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf-ccs.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][116] ([i915#180]) -> [PASS][117] +4 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][118] ([fdo#108145] / [i915#265]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][120] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][122] ([fdo#109441]) -> [PASS][123] +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][124] ([i915#31]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl2/igt@kms_setmode@basic.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl6/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][126] ([i915#2842]) -> [FAIL][127] ([i915#2849])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [FAIL][128] ([i915#4275]) -> [SKIP][129] ([i915#4281])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][130] ([i915#658]) -> [SKIP][131] ([i915#2920]) +3 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][132] ([i915#2920]) -> [SKIP][133] ([i915#658]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/index.html

--===============0444406139490806490==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Exit PSR when doing async flips (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96440/">https://patchwork.freedesktop.org/series/96440/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10825_full -&gt; Patchwork_21500_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21500_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl4/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1759])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-snb4/igt@kms_chamelium@dp-crc-single.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_color@pipe-d-gamma.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl1/igt@kms_color_chamelium@pipe-b-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_content_protection@mei_interface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271]) +81 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> ([fdo#111825]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_flip@2x-plain-flip.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-tglb6/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_invalid_mode@clock-too-high.html">SKIP</a> ([i915#4278])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@kms_plane_lowres@pipe-d-tiling-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl2/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109271]) +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb8/igt@kms_psr@psr2_sprite_mmap_gtt.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-glk2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-glk9/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@nouveau_crc@pipe-a-ctx-flip-detection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@nouveau_crc@pipe-d-source-outp-inactive.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_macro:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb7/igt@prime_nv_pcopy@test1_macro.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb5/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@sysfs_clients@fair-1.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl4/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl10/igt@sysfs_clients@sema-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-snb4/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">INCOMPLETE</a> ([i915#4211]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl2/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs.html">DMESG-WARN</a> ([i915#4380]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl9/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-a-yf-ccs-to-y-ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf-ccs:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl2/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf-ccs.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl9/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-yf-to-yf-ccs.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb1/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-apl6/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#4275]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([i915#2920]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10825/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21500/">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0444406139490806490==--
