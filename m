Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C517C526085
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 13:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD4D10F272;
	Fri, 13 May 2022 11:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33B1710F270;
 Fri, 13 May 2022 11:01:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1EC2EA01BB;
 Fri, 13 May 2022 11:01:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3394506972601168363=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Fri, 13 May 2022 11:01:24 -0000
Message-ID: <165243968409.9638.8499264393528164988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220513084754.10601-1-nirmoy.das@intel.com>
In-Reply-To: <20220513084754.10601-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_Tile4_tiling_mode_=28rev3=29?=
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

--===============3394506972601168363==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Enable Tile4 tiling mode (rev3)
URL   : https://patchwork.freedesktop.org/series/103881/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11646_full -> Patchwork_103881v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_103881v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103881v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_103881v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_103881v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#2846])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-snb:          [PASS][9] -> [SKIP][10] ([fdo#109271]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@gem_lmem_swapping@heavy-verify-random.html
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([i915#4270])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_pxp@display-protected-crc.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#3297])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#5566] / [i915#716])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#2527] / [i915#2856])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#658])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#110892])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#109506] / [i915#2411])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#4387])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109302])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@i915_query@query-topology-unsupported.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-glk:          [PASS][25] -> [SKIP][26] ([fdo#109271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#1769])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#5286]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271]) +53 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110723]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689] / [i915#3886]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#3689])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-snb:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +74 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3319]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3359]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278]) +9 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +27 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109279] / [i915#3359])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2346])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#5287])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([i915#5287])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109274] / [fdo#111825])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#79])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#4939])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#2587])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#2587])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109280] / [fdo#111825]) +5 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109289])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([fdo#108145] / [i915#265])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-none:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#3536])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_plane_lowres@pipe-b-tiling-none.html

  * igt@kms_plane_lowres@pipe-d-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#5288])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-4.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111615]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([i915#5176]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb7/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#3555])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#2437])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#2530])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf@polling:
    - shard-snb:          NOTRUN -> [SKIP][84] ([fdo#109271]) +46 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@perf@polling.html

  * igt@prime_nv_pcopy@test3_1:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109291])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@prime_nv_pcopy@test3_1.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#109291])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@prime_nv_test@i915_nv_sharing.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109295])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-apl:          NOTRUN -> [DMESG-WARN][88] ([i915#5098])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-3:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@sysfs_clients@fair-3.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-skl:          [INCOMPLETE][90] ([i915#4793]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][92] ([i915#2842]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][94] ([i915#2842]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - {shard-tglu}:       [INCOMPLETE][96] ([i915#5966]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglu-6/igt@gem_exec_whisper@basic-fds-forked-all.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglu-3/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][98] ([i915#4939]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl7/igt@i915_suspend@debugfs-reader.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][100] ([i915#4817]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl8/igt@i915_suspend@forcewake.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-snb:          [INCOMPLETE][102] -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][104] ([i915#180] / [i915#1982]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][106] ([i915#2122]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk2/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][112] -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
    - shard-iclb:         [SKIP][114] ([i915#5235]) -> [PASS][115] +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][116] ([fdo#109441]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][118] ([i915#5519]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [SKIP][120] ([i915#5519]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][122] ([i915#5639]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl2/igt@perf@polling-parameterized.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][124] ([i915#4525]) -> [DMESG-WARN][125] ([i915#5614])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [DMESG-WARN][126] ([i915#5614]) -> [SKIP][127] ([i915#4525])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][128] ([i915#2920]) -> [SKIP][129] ([i915#658])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [SKIP][130] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][131] ([i915#5939])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl7/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl6/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl3/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4793]: https://gitlab.freedesktop.org/drm/intel/issues/4793
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#5966]: https://gitlab.freedesktop.org/drm/intel/issues/5966
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11646 -> Patchwork_103881v3

  CI-20190529: 20190529
  CI_DRM_11646: 8e5417afe580e2eac869c09e1454d174078523fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103881v3: 8e5417afe580e2eac869c09e1454d174078523fd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/index.html

--===============3394506972601168363==
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
<tr><td><b>Series:</b></td><td>drm/i915: Enable Tile4 tiling mode (rev3)</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/103881/">https://patchwork.freedesktop.org/series/103881/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_103881v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_103881v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11646_full -&gt; Patchwork_103881v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_103881v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_103881v3_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
103881v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_crc@pipe-a-cursor-dpms:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103=
881v3/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">INCOMPLETE</a=
></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103881v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/=
shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3=
/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v=
3/shard-glk1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_103881v3/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_lmem_swapping@heavy-ra=
ndom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@gem_lmem_swapping@heavy-veri=
fy-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@gem_lmem_swapping@heavy-veri=
fy-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk4/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v=
3/shard-glk1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gen9_exec_parse@bb-start-c=
md.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D110892">fdo#110892</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@i915_pm_rpm@modeset-pc8-re=
sidency-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109506">fdo#109506</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103881v3/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_atomic_transition@plan=
e-all-modeset-transition.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_big_fb@4-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_ccs@pipe-a-missing-ccs=
-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@kms_ccs@pipe-c-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotatio=
n-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@kms_chamelium@dp-hpd-storm-=
disable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_chamelium@vga-hpd-afte=
r-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@kms_chamelium@vga-hpd-with-=
enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@kms_color@pipe-d-ctm-0-5.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +74 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@kms_color_chamelium@pipe-a-=
ctm-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_color_chamelium@pipe-b=
-ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_color_chamelium@pipe-c-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_content_protection@lic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-a-curs=
or-32x32-rapid-movement.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3319">i915#3319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-a-curs=
or-max-size-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3359">i915#3359</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_cursor_crc@pipe-a-curs=
or-max-size-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109278">fdo#109278</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_cursor_crc@pipe-b-curso=
r-32x10-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-b-curs=
or-512x170-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103881v3/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i9=
15#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_draw_crc@draw-method-r=
gb565-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_draw_crc@draw-method-x=
rgb2101010-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_flip@2x-blocking-absol=
ute-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_103881v3/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@=
ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_103881v3/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_103881v3/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-ed=
p1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_103881v3/shard-skl7/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_pipe_b_c_ivb@enable-pi=
pe-c-while-b-has-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103881v3/shard-apl3/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@kms_plane_alpha_blend@pipe-=
a-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@kms_plane_alpha_blend@pipe=
-a-constant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103881v3/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-none:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_plane_lowres@pipe-b-ti=
ling-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3536">i915#3536</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane_lowres@pipe-d-ti=
ling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5288">i915#5288</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane_multiple@atomic-=
pipe-b-tiling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-do=
wnscale-with-modifier:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb7/igt@kms_plane_scaling@downscale-with-modifier-fac=
tor-0-5@pipe-c-edp-1-downscale-with-modifier.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2=
/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-down=
scale-with-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v=
3/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@nouveau_crc@pipe-c-source-=
outp-inactive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@perf@polling.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109=
271</a>) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@prime_nv_pcopy@test3_1.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
91">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@prime_nv_test@i915_nv_shar=
ing.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@syncobj_timeline@invalid-tr=
ansfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
793">i915#4793</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_103881v3/shard-skl8/igt@gem_ctx_isolation@preservation-s3@bcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103881v3/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_103881v3/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglu-6/igt@gem_exec_whisper@basic-fds-forked-all.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5966">i915#5966</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_103881v3/shard-tglu-3/igt@gem_exec_whisper@basic-fds-forked-a=
ll.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl7/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4=
939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_103881v3/shard-skl6/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl8/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103=
881v3/shard-skl10/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INC=
OMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103881v3/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915=
#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103881v3/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-glk1/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-=
a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_103881v3/shard-glk2/igt@kms_flip@2x-flip-vs-wf_vblank@ab-h=
dmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_103881v3/shard-apl4/igt@kms_flip@flip-vs-suspend-interrupt=
ible@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_103881v3/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a-planes.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane@plane-pannin=
g-bottom-right-suspend@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3=
/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-=
5@pipe-a-edp-1-planes-upscale-downscale.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb6/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v=
3/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103881v3/shard-tglb7/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_103881v3/shard-iclb8/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-skl2/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10388=
1v3/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_103881v3/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/561=
4">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5614">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_103881v3/shard-iclb3/igt@gem_exec_balancer@parallel-kee=
p-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_103881v3/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-conti=
nuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11646/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642<=
/a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_103881v3/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#59=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11646/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11646/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11646/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11646/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.htm=
l">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_103881v3/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl6/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_103881v3/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/sh=
ard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11646 -&gt; Patchwork_103881v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11646: 8e5417afe580e2eac869c09e1454d174078523fd @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103881v3: 8e5417afe580e2eac869c09e1454d174078523fd @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3394506972601168363==--
