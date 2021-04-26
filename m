Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B879236B7D3
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 19:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9B16E852;
	Mon, 26 Apr 2021 17:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04AC86E0BA;
 Mon, 26 Apr 2021 17:14:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDC76A00C9;
 Mon, 26 Apr 2021 17:14:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 26 Apr 2021 17:14:39 -0000
Message-ID: <161945727993.18666.12462475917753957500@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426101821.42147-1-matthew.auld@intel.com>
In-Reply-To: <20210426101821.42147-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/dg1=3A_Fix_mapping_type_fo?=
 =?utf-8?q?r_default_state_object?=
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
Content-Type: multipart/mixed; boundary="===============1870031425=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1870031425==
Content-Type: multipart/alternative;
 boundary="===============3566455797320475769=="

--===============3566455797320475769==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915/dg1: Fix mapping type for default state object
URL   : https://patchwork.freedesktop.org/series/89484/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10008_full -> Patchwork_19988_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19988_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-snb5/igt@gem_ctx_persistence@engines-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][2] -> [TIMEOUT][3] ([i915#2369] / [i915#3063])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][4] ([i915#2846])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#2849])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2389])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][13] -> [INCOMPLETE][14] ([i915#1895])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#307])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][18] ([i915#2658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-snb:          NOTRUN -> [FAIL][19] ([i915#3324])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-snb2/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][20] ([i915#3318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +187 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl1/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#454])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          NOTRUN -> [FAIL][24] ([i915#454])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#1937])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#2705])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl4/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl1/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-snb6/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][32] ([i915#1319]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109278]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278] / [fdo#109279])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +98 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271]) +257 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][37] ([i915#2346] / [i915#533])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#79])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2642])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2642])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#2672])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([i915#2546] / [i915#49])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109280]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_invalid_dotclock:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109310])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_invalid_dotclock.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265]) +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][51] ([i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109441]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +47 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl1/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2437]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2437])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#1542])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl9/igt@perf@polling-parameterized.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl10/igt@perf@polling-parameterized.html

  * igt@prime_nv_test@i915_import_pread_pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109291])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@prime_nv_test@i915_import_pread_pwrite.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2994]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl1/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2994]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [INCOMPLETE][67] ([i915#3316]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl1/igt@gem_ctx_ringsize@active@bcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl1/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][69] ([i915#2842]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][71] ([i915#2842]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [DMESG-WARN][73] ([i915#118] / [i915#95]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-glk3/igt@gem_exec_whisper@basic-forked.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-glk1/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-iclb:         [INCOMPLETE][75] ([i915#1895]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority-all.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-glk:          [FAIL][77] ([i915#307]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy.html
    - shard-iclb:         [FAIL][79] ([i915#307]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [FAIL][81] ([i915#2428]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [FAIL][83] ([i915#2822]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-tglb8/igt@gem_vm_create@destroy-race.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-tglb6/igt@gem_vm_create@destroy-race.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][85] ([i915#1982]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][87] ([i915#54]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][91] ([i915#72]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-glk1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-glk3/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:
    - shard-skl:          [FAIL][93] ([i915#52] / [i915#54]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][95] ([i915#123]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][97] ([i915#1188]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:
    - shard-skl:          [FAIL][99] ([i915#1036]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][103] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][107] ([i915#2851]) -> [FAIL][108] ([i915#2842])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][109] ([i915#2684]) -> [WARN][110] ([i915#2681] / [i915#2684])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][111] ([fdo#109349]) -> [DMESG-WARN][112] ([i915#1226])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][113] ([i915#2920]) -> [SKIP][114] ([i915#658]) +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][115] ([i915#658]) -> [SKIP][116] ([i915#2920]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002]) -> ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#1436] / [i915#180] / [i915#3002])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl7/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl4/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl3/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl4/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl4/igt@runner@aborted.html
    - shard-skl:          ([FAIL][130], [FAIL][131]) ([i915#2029] / [i915#3002]) -> ([FAIL][132], [FAIL][133]) ([i915#1814] / [i915#2029] / [i915#3002])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109310]: https://bugs.freedesktop.org/show_bug.cgi?id=109310
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2428]: https://gitlab.freedesktop.org/drm/intel/issues/2428
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2642]: https://gitlab.freedesktop.org/drm/intel/issues/2642
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2822]: https://gitlab.freedesktop.org/drm/intel/issues/2822
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#307]: https://gitlab.freedesktop.org/drm/intel/issues/307
  [i915#3316]:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/index.html

--===============3566455797320475769==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915/dg1: Fix=
 mapping type for default state object</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89484/">https://patchwork.freedesktop.org/series/89484/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19988/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19988/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10008_full -&gt; Patchwork_19988_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19988_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-snb5/igt@gem_ctx_persistence@engines-qu=
eued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-tg=
lb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_199=
88/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/sh=
ard-glk8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_199=
88/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-iclb1/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19988/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked-all.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
95">i915#1895</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-kbl2/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1998=
8/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/307">i915#307</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-kbl2/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/26=
58">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-snb2/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl7/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl1/igt@gen7_exec_parse@basic-offset.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) +187 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10008/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-iclb6/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19988/shard-skl4/igt@i915_pm_dc@dc6-psr.html">FAIL</=
a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-skl4/igt@kms_big_joiner@basic.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_chamelium@hdmi-cmp-planar=
-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl8/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-skl1/igt@kms_color_chamelium@pipe-a-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-snb6/igt@kms_color_chamelium@pipe-c-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl1/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1319">i915#1319</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-=
32x10-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109279">fdo#109279</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +98 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +257 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-skl4/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19988/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FA=
IL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19988/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2642">i915#2642</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2642">i915#2642</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl8/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-i=
ndfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19988/shard-kbl6/igt@kms_frontbuffer_tracking@fbc=
-1p-primscrn-spr-indfb-draw-mmap-wc.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2546">i915#2546</a> / [i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_dotclock:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@kms_invalid_dotclock.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109310">f=
do#109310</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl7/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl1/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +4 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-skl4/igt@kms_psr2_su@frontbuffer.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/=
shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-skl1/igt@kms_vblank@pipe-d-query-forked=
-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl1/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl9/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard=
-skl10/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-iclb4/igt@prime_nv_test@i915_import_pre=
ad_pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-apl1/igt@sysfs_clients@pidname.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19988/shard-kbl3/igt@sysfs_clients@sema-50.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl1/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE<=
/a> (<a href=3D"">i915#3316</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19988/shard-skl1/igt@gem_ctx_ringsize@active@bcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9988/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
988/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-glk3/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#=
118</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19988/shard-glk1/igt@gem_exec_whisper@basic-forked.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority-all.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1895">i915#1895</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19988/shard-iclb4/igt@gem_exec_whisper@basic-queues-prior=
ity-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10008/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/307">i915#307</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/=
shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10008/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/307">i915#307</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988=
/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2428">i915=
#2428</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19988/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-tglb8/igt@gem_vm_create@destroy-race.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2822">i915#2822</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1998=
8/shard-tglb6/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#198=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19988/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.=
html">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19988/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-256x=
85-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19988/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PA=
SS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-glk1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">FAIL</a> ([i915#72]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19988/shard-glk3/igt@kms_cursor_legacy@2x-flip-vs-cursor-a=
tomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xti=
led.html">FAIL</a> ([i915#52] / [i915#54]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-skl10/igt@kms_draw_crc@draw=
-method-xrgb8888-mmap-cpu-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123=
">i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19988/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1998=
8/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe=
-c.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1036">i915#1036</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19988/shard-skl8/igt@kms_pipe_crc_basic@disable-crc-after-=
crtc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19988/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverag=
e-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb1/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> /=
 <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#1110=
68</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19988/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/s=
hard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2851">i915#=
2851</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19988/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19988/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#10=
9349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19988/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1=
226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19988/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-d=
mg-area-2.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
3.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19988/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2920">i915#2920</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10008/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10008/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0008/shard-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19988/shard-kbl7/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988=
/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
988/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19988/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3002">i915#3002</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10008/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/shard-skl4/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19988/shard-skl2/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/sha=
rd-skl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>)</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3566455797320475769==--

--===============1870031425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1870031425==--
