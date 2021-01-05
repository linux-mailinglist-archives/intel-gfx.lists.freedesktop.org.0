Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 248A32EA1F9
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 02:04:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F2189A8C;
	Tue,  5 Jan 2021 01:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 70A8689A86;
 Tue,  5 Jan 2021 01:04:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68D52A363D;
 Tue,  5 Jan 2021 01:04:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 05 Jan 2021 01:04:37 -0000
Message-ID: <160980867739.13808.7603132276274820608@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210104205654.238928-1-jose.souza@intel.com>
In-Reply-To: <20210104205654.238928-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm=3A_Add_function_to_convert?=
 =?utf-8?q?_rect_in_16=2E16_fixed_format_to_regular_format?=
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
Content-Type: multipart/mixed; boundary="===============0231374201=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0231374201==
Content-Type: multipart/alternative;
 boundary="===============4299748504497897407=="

--===============4299748504497897407==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm: Add function to convert rect in 16.16 fixed format to regular format
URL   : https://patchwork.freedesktop.org/series/85458/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9544_full -> Patchwork_19254_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19254_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19254_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19254_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_nop@basic-sequential:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-hsw6/igt@gem_exec_nop@basic-sequential.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-hsw6/igt@gem_exec_nop@basic-sequential.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9544_full and Patchwork_19254_full:

### New IGT tests (1) ###

  * igt@gem_spin_batch@resubmit-new-all:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_19254_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hostile:
    - shard-hsw:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-hsw4/igt@gem_ctx_persistence@engines-hostile.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271]) +50 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-snb6/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-hsw:          NOTRUN -> [FAIL][7] ([i915#2724])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-hsw6/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [PASS][8] -> [INCOMPLETE][9] ([i915#926])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb7/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2574])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-tglb5/igt@kms_async_flips@test-time-stamp.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-tglb8/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-kbl7/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-tglb:         NOTRUN -> [FAIL][13] ([i915#1149] / [i915#315])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-tglb6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
    - shard-hsw:          NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-hsw4/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-snb6/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#54]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          NOTRUN -> [FAIL][18] ([i915#54]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +50 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#49])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#111825]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
    - shard-hsw:          NOTRUN -> [SKIP][23] ([fdo#109271]) +157 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-hsw7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +19 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#533])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1982])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][30] ([fdo#108145] / [i915#265])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [PASS][33] -> [INCOMPLETE][34] ([i915#409])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb4/igt@prime_vgem@sync@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb3/igt@prime_vgem@sync@rcs0.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - shard-kbl:          [INCOMPLETE][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-kbl4/igt@drm_import_export@prime.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-kbl7/igt@drm_import_export@prime.html

  * igt@gem_exec_balancer@waits:
    - shard-kbl:          [INCOMPLETE][37] ([i915#2877]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-kbl3/igt@gem_exec_balancer@waits.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-kbl3/igt@gem_exec_balancer@waits.html

  * {igt@gem_exec_fair@basic-pace@vcs0}:
    - shard-iclb:         [FAIL][39] ([i915#2842]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html

  * {igt@gem_exec_fair@basic-pace@vecs0}:
    - shard-glk:          [FAIL][41] ([i915#2842]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-glk2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [INCOMPLETE][43] ([i915#198]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl2/igt@gem_exec_suspend@basic-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][45] ([i915#118] / [i915#95]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-glk1/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-snb:          [INCOMPLETE][47] ([i915#2055]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-snb6/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_userptr_blits@huge-split:
    - shard-tglb:         [INCOMPLETE][49] ([i915#2502]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-tglb5/igt@gem_userptr_blits@huge-split.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-tglb6/igt@gem_userptr_blits@huge-split.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][51] ([i915#2521]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][53] ([i915#54]) -> [PASS][54] +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl2/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][57] ([i915#2346]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][59] ([i915#2122]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
    - shard-snb:          [SKIP][63] ([fdo#109271]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-snb6/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-snb7/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][65] ([fdo#109642] / [fdo#111068]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][69] ([i915#2681] / [i915#2684]) -> [WARN][70] ([i915#1804] / [i915#2684])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][71] ([i915#1226]) -> [SKIP][72] ([fdo#109349])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][73], [FAIL][74]) ([i915#2295] / [i915#2722] / [i915#483]) -> [FAIL][75] ([i915#2295] / [i915#483])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-kbl2/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-kbl4/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         [FAIL][76] ([i915#2295] / [i915#2724]) -> ([FAIL][77], [FAIL][78], [FAIL][79]) ([i915#1580] / [i915#2295] / [i915#2426] / [i915#2724] / [i915#409] / [i915#483])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-iclb4/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb3/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb8/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb6/igt@runner@aborted.html
    - shard-apl:          [FAIL][80] ([i915#2295]) -> ([FAIL][81], [FAIL][82]) ([i915#1610] / [i915#2295] / [i915#2426])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-apl7/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-apl7/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2877]: https://gitlab.freedesktop.org/drm/intel/issues/2877
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9544 -> Patchwork_19254

  CI-20190529: 20190529
  CI_DRM_9544: b950eb2b863a3e5de7b9647aa037ed50d7dd687c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19254: 7b34b5cee6ec5e996c12b1013f3f587b8e4e6d5c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/index.html

--===============4299748504497897407==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm: Add funct=
ion to convert rect in 16.16 fixed format to regular format</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85458/">https://patchwork.freedesktop.org/series/85458/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19254/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19254/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9544_full -&gt; Patchwork_19254_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19254_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19254_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19254_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_nop@basic-sequential:<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-hsw6/igt@gem_exec_nop@basic-sequential.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/sha=
rd-hsw6/igt@gem_exec_nop@basic-sequential.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9544_full and Patchwork_19=
254_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@gem_spin_batch@resubmit-new-all:<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19254_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hostile:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-hsw4/igt@gem_ctx_persistence@engines-ho=
stile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1099">i915#1099</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19254/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
5">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-snb6/igt@gem_userptr_blits@mmap-offset-=
invalidate-active@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-hsw6/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/27=
24">i915#2724</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-iclb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/sha=
rd-iclb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/926">i915#926</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/=
shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#2574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-kbl7/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-tglb6/igt@kms_color@pipe-b-ctm-0-25.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/114=
9">i915#1149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/315">i915#315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-hsw4/igt@kms_color_chamelium@pipe-b-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-snb6/igt@kms_color_chamelium@pipe-d-gam=
ma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19254/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-=
64x21-random.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-in=
dfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19254/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-prim=
scrn-cur-indfb-onoff.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-hsw7/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +157 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-skl10/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-=
skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19254/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19254/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/s=
hard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-iclb4/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-iclb3=
/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/409">i915#409</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-kbl4/igt@drm_import_export@prime.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/sha=
rd-kbl7/igt@drm_import_export@prime.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@waits:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-kbl3/igt@gem_exec_balancer@waits.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2877">i915#2877</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
54/shard-kbl3/igt@gem_exec_balancer@waits.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs0}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
254/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vecs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
254/shard-glk2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl2/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
54/shard-skl7/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
5">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19254/shard-glk1/igt@gem_exec_whisper@basic-contexts-all.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/20=
55">i915#2055</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19254/shard-snb6/igt@gem_fenced_exec_thrash@too-many-fences.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-tglb5/igt@gem_userptr_blits@huge-split.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#=
2502</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19254/shard-tglb6/igt@gem_userptr_blits@huge-split.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19254/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19254/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19254/shard-skl2/igt@kms_cursor_edge_walk@pipe-a-256x256-=
top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i=
915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19254/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19254/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-in=
terruptible@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19254/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-x:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-snb6/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19254/shard-snb7/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-iclb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19254/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/=
shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19254/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19254/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9544/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9544/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/483">i915#483</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19254/shard-kbl4/igt@runner@aborted.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#=
2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">=
i915#483</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9544/shard-iclb4/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard=
-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19254/shard-iclb8/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/=
shard-iclb6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1580">i915#1580</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483=
</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9544/shard-apl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19254/shard-apl7/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19254/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#=
2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426"=
>i915#2426</a>)</p>
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
<li>Linux: CI_DRM_9544 -&gt; Patchwork_19254</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9544: b950eb2b863a3e5de7b9647aa037ed50d7dd687c @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5942: e14e76a87c44c684ec958b391b030bb549254f88 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19254: 7b34b5cee6ec5e996c12b1013f3f587b8e4e6d5c @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4299748504497897407==--

--===============0231374201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0231374201==--
