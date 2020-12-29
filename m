Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A182E7297
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 18:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4098938C;
	Tue, 29 Dec 2020 17:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCE5D8936E;
 Tue, 29 Dec 2020 17:24:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B560CA9932;
 Tue, 29 Dec 2020 17:24:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 29 Dec 2020 17:24:17 -0000
Message-ID: <160926265770.17549.12881359374679681994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201229141626.4773-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201229141626.4773-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Taint_the_reset_mutex_with_the_shrinker?=
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
Content-Type: multipart/mixed; boundary="===============1775607919=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1775607919==
Content-Type: multipart/alternative;
 boundary="===============0644037347329371563=="

--===============0644037347329371563==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Taint the reset mutex with the shrinker
URL   : https://patchwork.freedesktop.org/series/85297/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9530_full -> Patchwork_19222_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19222_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-glk1/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][3] -> [SKIP][4] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2597])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-tglb5/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][10] ([fdo#109271]) +52 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:
    - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-snb6/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          NOTRUN -> [FAIL][15] ([i915#54]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-apl:          [PASS][16] -> [FAIL][17] ([i915#54])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#79])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-dp1:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180] / [i915#78])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate@a-dp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][22] ([i915#2122])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2672])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][24] ([fdo#109271]) +66 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-snb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-kbl:          NOTRUN -> [FAIL][25] ([i915#2641])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#53])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl10/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][28] ([fdo#108145] / [i915#265])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][29] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#165] / [i915#180] / [i915#78]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-kbl4/igt@kms_plane_lowres@pipe-b-tiling-y.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#165] / [i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-kbl3/igt@kms_plane_lowres@pipe-c-tiling-y.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109642] / [fdo#111068])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +25 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@waits:
    - shard-kbl:          [INCOMPLETE][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-kbl2/igt@gem_exec_balancer@waits.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@gem_exec_balancer@waits.html

  * {igt@gem_exec_fair@basic-pace-share@rcs0}:
    - shard-glk:          [FAIL][41] ([i915#2842]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@gem_exec_fair@basic-pace-solo@rcs0}:
    - shard-tglb:         [FAIL][43] ([i915#2842]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vecs0}:
    - shard-iclb:         [FAIL][45] ([i915#2842]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * {igt@gem_exec_schedule@u-fairslice@vecs0}:
    - shard-skl:          [DMESG-WARN][47] ([i915#1610]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl10/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl8/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][49] ([i915#198] / [i915#2405]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl2/igt@gem_workarounds@suspend-resume-fd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][51] ([i915#151]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl2/igt@i915_pm_rpm@system-suspend-execbuf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          [SKIP][53] ([fdo#109271]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-snb7/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][55] ([i915#54]) -> [PASS][56] +6 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][57] ([i915#2598]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
    - shard-glk:          [FAIL][59] ([i915#2122]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-glk9/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-iclb7/igt@kms_psr@psr2_primary_blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][65] ([i915#2681] / [i915#2684]) -> [WARN][66] ([i915#1804] / [i915#2684])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][67], [FAIL][68]) ([i915#1814] / [i915#2295] / [i915#2724] / [i915#483]) -> ([FAIL][69], [FAIL][70], [FAIL][71]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2724] / [i915#483])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-iclb1/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-iclb4/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb7/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb6/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb1/igt@runner@aborted.html
    - shard-glk:          ([FAIL][72], [FAIL][73]) ([i915#1814] / [i915#2295] / [i915#483] / [k.org#202321]) -> ([FAIL][74], [FAIL][75]) ([i915#1814] / [i915#2295] / [k.org#202321])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-glk5/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-glk3/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-glk8/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-glk1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][76], [FAIL][77], [FAIL][78]) ([i915#2295] / [i915#2426]) -> ([FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82]) ([i915#1436] / [i915#2029] / [i915#2295] / [i915#483])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl10/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl1/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl10/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl4/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl3/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl8/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-skl5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2641]: https://gitlab.freedesktop.org/drm/intel/issues/2641
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2733]: https://gitlab.freedesktop.org/drm/intel/issues/2733
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9530 -> Patchwork_19222

  CI-20190529: 20190529
  CI_DRM_9530: 4b094e30c7d79e59faef5ce793d6ebbcdbede5a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5926: c81567cf1c05050f7becd4d78ebe349dfb2f9520 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19222: f3c8a6ea3cd110c323628c42e6d592859cdf3a58 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/index.html

--===============0644037347329371563==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Taint the reset mutex with the =
shrinker</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85297/">https://patchwork.freedesktop.org/series/85297/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19222/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19222/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9530_full -&gt; Patchwork_19222_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19222_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
22/shard-glk1/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl7/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/sh=
ard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/=
shard-tglb5/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_chamelium@hdmi-hpd.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_color@pipe-d-ctm-max.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-snb6/igt@kms_color_chamelium@pipe-inval=
id-gamma-lut-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19222/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
54">i915#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-2=
56x85-random.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/54">i915#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19222/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i91=
5#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-h=
dmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19222/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-h=
dmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate@a-dp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9222/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate@a-dp1.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#1=
80</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/78">i91=
5#78</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_flip@plain-flip-ts-check-i=
nterruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-snb6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +66 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-16bpp-ytile.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2641">i915#2641</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19222/shard-skl10/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/53">i915=
#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-kbl4/igt@kms_plane_lowres@pipe-b-tiling-y.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/=
shard-kbl2/igt@kms_plane_lowres@pipe-b-tiling-y.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-y:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-kbl3/igt@kms_plane_lowres@pipe-c-tiling-y.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/=
shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-ic=
lb4/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/s=
hard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19222/shard-kbl3/igt@kms_universal_plane@disable-pr=
imary-vs-flip-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@waits:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-kbl2/igt@gem_exec_balancer@waits.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/sha=
rd-kbl3/igt@gem_exec_balancer@waits.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-share@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19222/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-solo@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19222/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vecs0}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9222/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vecs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl10/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610=
">i915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19222/shard-skl8/igt@gem_exec_schedule@u-fairslice@vecs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl2/igt@gem_workarounds@suspend-resume-fd.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i9=
15#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/240=
5">i915#2405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19222/shard-skl2/igt@gem_workarounds@suspend-resume-fd.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl2/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i=
915#151</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19222/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-snb7/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19222/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-256x256-on=
screen.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19222/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">P=
ASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19222/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-glk9/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i9=
15#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19222/shard-glk6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19222/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage=
-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-iclb7/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222=
/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> +1 similar issue</=
li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19222/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-iclb4/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2724">i915#2724</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19222/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-iclb1/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2724">i915#2724</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-glk3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kernel.org/=
show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-glk8/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19222/shard-glk1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)=
</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9530/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9530/shard-skl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9530/shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shard-s=
kl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19222/shard-skl3/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19222/shar=
d-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19222/shard-skl5/igt@runner@aborted.html">FAIL=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i91=
5#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/202=
9">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/483">i915#483</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9530 -&gt; Patchwork_19222</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9530: 4b094e30c7d79e59faef5ce793d6ebbcdbede5a2 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5926: c81567cf1c05050f7becd4d78ebe349dfb2f9520 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19222: f3c8a6ea3cd110c323628c42e6d592859cdf3a58 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0644037347329371563==--

--===============1775607919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1775607919==--
