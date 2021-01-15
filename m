Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3722A2F855D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 20:27:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4EA6E48D;
	Fri, 15 Jan 2021 19:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D238A6E488;
 Fri, 15 Jan 2021 19:27:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CBABEA7DFB;
 Fri, 15 Jan 2021 19:27:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 15 Jan 2021 19:27:22 -0000
Message-ID: <161073884279.28529.1370326071653136125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1610622609.git.jani.nikula@intel.com>
In-Reply-To: <cover.1610622609.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgcmVi?=
 =?utf-8?q?ased_refactor_of_intel=5Fdisplay_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1489450854=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1489450854==
Content-Type: multipart/alternative;
 boundary="===============1066765030149279475=="

--===============1066765030149279475==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: rebased refactor of intel_display (rev2)
URL   : https://patchwork.freedesktop.org/series/85867/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9622_full -> Patchwork_19367_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19367_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] ([i915#2918])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-hsw:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-hsw4/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-snb:          [PASS][6] -> [INCOMPLETE][7] ([i915#2055])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-glk:          NOTRUN -> [INCOMPLETE][8] ([i915#2502] / [i915#2667])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-glk9/igt@gem_userptr_blits@vma-merge.html
    - shard-hsw:          NOTRUN -> [FAIL][9] ([i915#2724])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-hsw6/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#454])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          NOTRUN -> [FAIL][12] ([i915#454])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2574])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb3/igt@kms_async_flips@test-time-stamp.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb3/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-hsw:          NOTRUN -> [SKIP][15] ([fdo#109271]) +243 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-hsw6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111304])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-hsw:          NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-hsw6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#54]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#54]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#2346])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [PASS][26] -> [FAIL][27] ([i915#2346])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-glk:          NOTRUN -> [FAIL][28] ([i915#2628])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][29] ([fdo#109271]) +14 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271]) +52 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl3/igt@kms_hdr@bpc-switch.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][33] ([i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145] / [i915#265])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][36] ([fdo#108145] / [i915#265])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_vgem@sync@vcs0:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#409])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb2/igt@prime_vgem@sync@vcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb3/igt@prime_vgem@sync@vcs0.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#1731])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-kbl:          [PASS][43] -> [INCOMPLETE][44] ([i915#1731])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl3/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-kbl7/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Possible fixes ####

  * igt@api_intel_bb@render-ccs:
    - shard-apl:          [INCOMPLETE][45] ([i915#2405] / [i915#2499]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-apl3/igt@api_intel_bb@render-ccs.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-apl2/igt@api_intel_bb@render-ccs.html

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-tglb:         [FAIL][47] ([i915#2842]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-none@vcs0}:
    - shard-apl:          [FAIL][49] ([i915#2842]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html

  * {igt@gem_exec_fair@basic-throttle@rcs0}:
    - shard-glk:          [FAIL][51] ([i915#2842]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl4/igt@gem_exec_flush@basic-uc-set-default.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl4/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [INCOMPLETE][55] ([i915#146] / [i915#198] / [i915#2295]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl9/igt@gem_workarounds@suspend-resume-context.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl10/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][57] ([i915#1436] / [i915#716]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-glk9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][59] ([i915#151]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62] +9 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][65] ([i915#198]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180] / [i915#78]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl2/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-kbl1/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][71] ([i915#1804] / [i915#2684]) -> [WARN][72] ([i915#2684])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][73], [FAIL][74]) ([i915#1814] / [i915#2295]) -> ([FAIL][75], [FAIL][76]) ([i915#1814] / [i915#2295] / [i915#2505])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl7/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl1/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-kbl3/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-kbl6/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][77], [FAIL][78]) ([i915#1602] / [i915#2295] / [i915#2667]) -> ([FAIL][79], [FAIL][80], [FAIL][81]) ([i915#1602] / [i915#1764] / [i915#2295] / [i915#2426] / [i915#2667] / [i915#409])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb8/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb3/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb2/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb3/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2499]: https://gitlab.freedesktop.org/drm/intel/issues/2499
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#2628]: https://gitlab.freedesktop.org/drm/intel/issues/2628
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2822]: https://gitlab.freedesktop.org/drm/intel/issues/2822
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2918]: https://gitlab.freedesktop.org/drm/intel/issues/2918
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9622 -> Patchwork_19367

  CI-20190529: 20190529
  CI_DRM_9622: 1612b668c881dacf505c6f56c7b2a39d9e0d903a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19367: 08d07ca5c39955dfe0da7c54314e62d533609891 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/index.html

--===============1066765030149279475==
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
<tr><td><b>Series:</b></td><td>rebased refactor of intel_display (rev2)</td=
></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85867/">https://patchwork.freedesktop.org/series/85867/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19367/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19367/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9622_full -&gt; Patchwork_19367_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19367_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19367/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2918">i915#2=
918</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-hsw4/igt@gem_ctx_persistence@legacy-eng=
ines-persistence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19367/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
5">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19367/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2055">i91=
5#2055</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19367/shard-glk9/igt@gem_userptr_blits@vma-merge.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2502">i915#2502</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2667">i915#2667</a>)</p>
</li>
<li>
<p>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19367/shard-hsw6/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/272=
4">i915#2724</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9622/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-iclb4/ig=
t@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/454">i915#454</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19367/shard-skl1/igt@i915_pm_dc@dc6-psr.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#45=
4</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb3/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/=
shard-tglb3/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#2574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-hsw6/igt@kms_big_fb@y-tiled-addfb-size-=
overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +243 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_ccs@pipe-c-bad-aux-stride=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-s=
kl1/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-hsw6/igt@kms_color_chamelium@pipe-c-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_color_chamelium@pipe-d-ct=
m-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-=
64x21-random.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/54">i915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19367/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19367/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-t=
ransitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19367/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2628">i915#2628</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-glk9/igt@kms_frontbuffer_tracking@fbcps=
r-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-skl8/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl3/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-skl7/igt=
@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-=
alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19367/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19367/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-c=
overage-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard=
-iclb1/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb2/igt@prime_vgem@sync@vcs0.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb3=
/igt@prime_vgem@sync@vcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_193=
67/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-kbl3/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
367/shard-kbl7/igt@sysfs_heartbeat_interval@mixed@vecs0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#17=
31</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-apl3/igt@api_intel_bb@render-ccs.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2499">i915#=
2499</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19367/shard-apl2/igt@api_intel_bb@render-ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19367/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vcs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_193=
67/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-throttle@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19367/shard-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl4/igt@gem_exec_flush@basic-uc-set-default.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19367/shard-skl4/igt@gem_exec_flush@basic-uc-set-default.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl9/igt@gem_workarounds@suspend-resume-context.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/14=
6">i915#146</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/198">i915#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19367/shard-skl10/igt@gem_workarounds@suspend-resume-co=
ntext.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-glk5/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19367/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl8/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i=
915#151</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19367/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19367/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/sha=
rd-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19367/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe=
-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-kbl2/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/78">i915#78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19367/shard-kbl1/igt@kms_plane_cursor@pipe-b-viewport-size-64=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19367/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19367/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19367/shard-kbl3/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard=
-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9622/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9622/shard-tglb3/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2667">i915#2667</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb2/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
367/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19367/shard-tglb8/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1764">i915#1764</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2667">i915#2667</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/409">i915#409</a>)</p>
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
<li>Linux: CI_DRM_9622 -&gt; Patchwork_19367</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9622: 1612b668c881dacf505c6f56c7b2a39d9e0d903a @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5959: c5cf0734c4f6c1fa17a6a15b5aa721c3a0b8c494 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19367: 08d07ca5c39955dfe0da7c54314e62d533609891 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1066765030149279475==--

--===============1489450854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1489450854==--
