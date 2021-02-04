Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 929DF30FFF9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 23:16:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4CDA6EE7C;
	Thu,  4 Feb 2021 22:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5360E6EE7B;
 Thu,  4 Feb 2021 22:16:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D719A00E6;
 Thu,  4 Feb 2021 22:16:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Feb 2021 22:16:01 -0000
Message-ID: <161247696128.4501.10580660445110398084@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204121121.2660-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210204121121.2660-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/3=5D_proc=3A_Show_GPU_runtimes?=
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
Content-Type: multipart/mixed; boundary="===============1085929405=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1085929405==
Content-Type: multipart/alternative;
 boundary="===============0466317013637947342=="

--===============0466317013637947342==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [RFC,1/3] proc: Show GPU runtimes
URL   : https://patchwork.freedesktop.org/series/86693/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9730_full -> Patchwork_19587_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19587_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-glk:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk8/igt@gem_create@create-massive.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][2] ([i915#3002])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl7/igt@gem_create@create-massive.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#2842]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][5] -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][7] ([i915#2389]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#2389])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb4/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#2803])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-tglb1/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-tglb6/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][12] ([i915#2658])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl9/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#768])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [PASS][14] -> [WARN][15] ([i915#1804] / [i915#2684])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2574])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-tglb7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#110725] / [fdo#111614])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#2705])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl6/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#2705])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl3/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk8/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl9/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl3/igt@kms_color@pipe-c-ctm-0-5.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl8/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl4/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109284] / [fdo#111827])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][28] ([i915#1319])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][29] ([i915#1319])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109300] / [fdo#111066])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109278] / [fdo#109279])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#54]) +5 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +8 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109274] / [fdo#109278])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2346])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#533])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +97 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#79]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +5 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#2642])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109280]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271]) +24 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][47] -> [INCOMPLETE][48] ([i915#123] / [i915#1982])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +61 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109441])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2437])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#2530])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#1542])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-glk7/igt@perf@polling-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk6/igt@perf@polling-parameterized.html
    - shard-iclb:         [PASS][65] -> [FAIL][66] ([i915#1542])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb3/igt@perf@polling-parameterized.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb4/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_double_import:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109291])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@prime_nv_api@i915_nv_double_import.html

  * igt@prime_vgem@basic-userptr:
    - shard-skl:          [PASS][68] -> [DMESG-WARN][69] ([i915#1610])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl8/igt@prime_vgem@basic-userptr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl3/igt@prime_vgem@basic-userptr.html

  * igt@sysfs_clients@busy@vcs0:
    - shard-kbl:          [PASS][70] -> [FAIL][71] ([i915#3009])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl2/igt@sysfs_clients@busy@vcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl6/igt@sysfs_clients@busy@vcs0.html

  * igt@sysfs_clients@split-10@rcs0:
    - shard-skl:          [PASS][72] -> [SKIP][73] ([fdo#109271] / [i915#3026])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl1/igt@sysfs_clients@split-10@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl10/igt@sysfs_clients@split-10@rcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][74] ([i915#1037] / [i915#180]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][76] ([i915#1895] / [i915#2295] / [i915#3031]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb4/igt@gem_exec_balancer@hang.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][78] ([i915#2842]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
    - shard-glk:          [FAIL][80] ([i915#2842]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-glk4/igt@gem_exec_fair@basic-pace@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          [DMESG-WARN][82] ([i915#1610]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-apl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-glk:          [DMESG-WARN][84] ([i915#1610] / [i915#2803]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-glk3/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk8/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][86] ([i915#1436] / [i915#716]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][88] ([i915#151]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][92] ([i915#2521]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][94] ([i915#1982]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][96] ([i915#54]) -> [PASS][97] +7 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][98] ([i915#96]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [FAIL][100] ([i915#2346]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-tglb:         [FAIL][102] ([i915#2346]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][104] ([i915#180]) -> [PASS][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][106] ([fdo#108145] / [i915#265]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][108] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][110] ([fdo#109441]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb6/igt@kms_psr@psr2_primary_blt.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@sysfs_clients@busy@bcs0:
    - shard-iclb:         [FAIL][112] ([i915#3019]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb5/igt@sysfs_clients@busy@bcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb6/igt@sysfs_clients@busy@bcs0.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          [FAIL][114] ([i915#3028]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl6/igt@sysfs_clients@recycle.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@sysfs_clients@recycle.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [FAIL][116] ([i915#1731]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html
    - shard-kbl:          [INCOMPLETE][118] ([i915#1731]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][120] ([i915#2684]) -> [WARN][121] ([i915#1804] / [i915#2684])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][122] ([i915#1226]) -> [SKIP][123] ([fdo#109349])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][124] ([i915#2920]) -> [SKIP][125] ([i915#658])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][126] ([i915#658]) -> [SKIP][127] ([i915#2920]) +3 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#2505] / [i915#3002]) -> ([FAIL][134], [FAIL][135]) ([i915#2295] / [i915#3002])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][136], [FAIL][137], [FAIL][138]) ([i915#1610] / [i915#2295] / [i915#2426] / [i915#3002]) -> ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([fdo#109271] / [i915#1814] / [i915#2295] / [i915#3002])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-apl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-apl4/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-apl4/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl7/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl8/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl1/igt@runner@aborted.html
    - shard-glk:          ([FAIL][145], [FAIL][146], [FAIL][147]) ([i915#2295] / [i915#2426] / [i915#3002] / [k.org#202321]) -> ([FAIL][148], [FAIL][149]) ([i915#2295] / [i915#3002] / [k.org#202321])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-glk2/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-glk4/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-glk3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-glk8/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][150], [FAIL][151]) ([i915#2295] / [i915#3002]) -> ([FAIL][152], [FAIL][153]) ([i915#2295] / [i915#2426] / [i915#2803] / [i915#3002])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-tglb1/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-tglb8/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-tglb6/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-tglb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][154], [FAIL][155]) ([i915#2295] / [i915#3002]) -> ([FAIL][156], [FAIL][157], [FAIL][158]) ([i915#2295] / [i915#2426] / [i915#3002] / [i915#409])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl8/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl10/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl3/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl4/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/index.html

--===============0466317013637947342==
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
<tr><td><b>Series:</b></td><td>series starting with [RFC,1/3] proc: Show GP=
U runtimes</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86693/">https://patchwork.freedesktop.org/series/86693/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19587/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9730_full -&gt; Patchwork_19587_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19587_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/shard-glk8/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/shard-apl7/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/sha=
rd-kbl1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/sha=
rd-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@gem_exec_reloc@basic-many-acti=
ve@vcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb4/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-tglb1/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
87/shard-tglb6/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> =
([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-apl3/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-skl9/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@gem_render_copy@yf-tiled-to-v=
ebox-x-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/=
shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804]=
 / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/=
shard-tglb7/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2574]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-kbl6/igt@kms_big_joiner@basic.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-apl3/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-glk8/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-skl9/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl3/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-sk=
l8/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> ([i915#1982]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-apl4/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_color_chamelium@pipe-b-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-apl7/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_content_protection@type1.=
html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19587/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAI=
L</a> ([i915#54]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-skl7/igt@kms_cursor_legacy@cursora-vs-f=
lipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_cursor_legacy@cursora-vs-=
flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / [fdo#109278])=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19587/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a=
> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-apl8/igt@kms_flip@2x-flip-vs-absolute-w=
f_vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +97 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19587/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> =
([i915#79]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/sh=
ard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180=
]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +4 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-glk2/igt@kms_frontbuffer_tracking@fbcps=
r-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +24 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
587/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a=
> ([i915#123] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_panel_fitting@legacy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +61 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-glk2/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109278]) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/shard-apl8/igt@kms_pipe_crc_basic@read-crc-pip=
e-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/shard-kbl4/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/shard-apl4/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-glk2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@kms_psr@psr2_cursor_plane_mov=
e.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/s=
hard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441])=
 +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-kbl7/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@nouveau_crc@pipe-b-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9730/shard-glk7/igt@perf@polling-parameterized.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-g=
lk6/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9730/shard-iclb3/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-=
iclb4/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_import:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@prime_nv_api@i915_nv_double_i=
mport.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl8/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-sk=
l3/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> ([i915#1610])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-kbl2/igt@sysfs_clients@busy@vcs0.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl=
6/igt@sysfs_clients@busy@vcs0.html">FAIL</a> ([i915#3009])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl1/igt@sysfs_clients@split-10@rcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard=
-skl10/igt@sysfs_clients@split-10@rcs0.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3026])=
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-kbl4/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> =
([i915#1037] / [i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19587/shard-kbl7/igt@gem_eio@in-flight-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb4/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([=
i915#1895] / [i915#2295] / [i915#3031]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19587/shard-iclb3/igt@gem_exec_balancer@ha=
ng.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9730/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19587/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9730/shard-glk4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i=
915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19587/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9730/shard-apl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-W=
ARN</a> ([i915#1610]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19587/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html=
">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9730/shard-glk3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-W=
ARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19587/shard-glk8/igt@gem_exec_schedule@u-fairs=
lice@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-glk2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a=
> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19587/shard-glk2/igt@gen9_exec_parse@allowed-all.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMP=
LETE</a> ([i915#151]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19587/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-apl4/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> =
([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19587/shard-apl3/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19587/shard-skl3/igt@kms_async_flips@alternate-sync-async-=
flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a> =
([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19587/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.ht=
ml">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19587/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-=
onscreen.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy=
.html">FAIL</a> ([i915#96]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19587/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-=
vs-flip-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19587/shard-skl2/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19587/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-togg=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19587/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-=
coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb8/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109=
642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19587/shard-iclb2/igt@kms_psr2_su@page_flip.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb6/igt@kms_psr@psr2_primary_blt.html">SKIP</a> ([fdo#=
109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19587/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb5/igt@sysfs_clients@busy@bcs0.html">FAIL</a> ([i915#=
3019]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19587/shard-iclb6/igt@sysfs_clients@busy@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-kbl6/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#302=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
87/shard-kbl7/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9730/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</=
a> ([i915#1731]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19587/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PA=
SS</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9730/shard-kbl4/igt@sysfs_heartbeat_interval@mixed@vcs0.html">INCOMP=
LETE</a> ([i915#1731]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19587/shard-kbl7/igt@sysfs_heartbeat_interval@mixed@vcs0.ht=
ml">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19587/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> ([i915#1226]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19587/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html">S=
KIP</a> ([fdo#109349])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19587/shard-iclb1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19587/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9730/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
30/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#2505] / [i915#300=
2]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
587/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>) ([i915#2295] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-apl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9730/shard-apl4/igt@runner@aborted.html">FAIL</a>) ([i915#1610] / [i915#=
2295] / [i915#2426] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19587/shard-apl1/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/s=
hard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19587/shard-apl1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1958=
7/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19587/shard-apl8/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9587/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#1814] / [=
i915#2295] / [i915#3002])</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-glk2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-glk4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9730/shard-glk3/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#=
2426] / [i915#3002] / [k.org#202321]) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19587/shard-glk1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1958=
7/shard-glk8/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#3002] =
/ [k.org#202321])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>) ([i915#2295] / [i915#3002]) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19587/shard-tglb3/igt@runner@aborted.html">FAIL</a>) ([i915#2295] /=
 [i915#2426] / [i915#2803] / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9730/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9730/shard-skl10/igt@runner@abor=
ted.html">FAIL</a>) ([i915#2295] / [i915#3002]) -&gt; (<a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19587/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19587/shard-skl4/igt@runner@ab=
orted.html">FAIL</a>) ([i915#2295] / [i915#2426] / [i915#3002] / [i915#409]=
)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============0466317013637947342==--

--===============1085929405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1085929405==--
