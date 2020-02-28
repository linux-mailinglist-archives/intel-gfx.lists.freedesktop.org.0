Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F41B173E50
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 18:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E5F6F49E;
	Fri, 28 Feb 2020 17:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E24EE6F49E;
 Fri, 28 Feb 2020 17:22:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA14AA011B;
 Fri, 28 Feb 2020 17:22:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Fri, 28 Feb 2020 17:22:10 -0000
Message-ID: <158291053075.7475.11185492065652446606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev6=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Refactor Gen11+ SAGV support (rev6)
URL   : https://patchwork.freedesktop.org/series/73856/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8018_full -> Patchwork_16732_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16732_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16732_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16732_full:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries_display_on:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-glk6/igt@debugfs_test@read_all_entries_display_on.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-glk1/igt@debugfs_test@read_all_entries_display_on.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_rotation_crc@sprite-rotation-180:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb5/igt@kms_rotation_crc@sprite-rotation-180.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] +10 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-tglb2/igt@kms_rotation_crc@sprite-rotation-270.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb5/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> ([FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb7/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb8/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb2/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb6/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb5/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb6/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb5/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb7/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb8/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb2/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb3/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb6/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb5/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][21] ([i915#92]) -> ([FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35]) ([fdo#109383] / [fdo#111012] / [i915#92])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl6/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl7/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl6/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl7/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl4/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl6/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl1/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl7/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl4/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl6/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl4/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl3/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl2/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl2/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          [FAIL][36] ([fdo#103927]) -> ([FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44]) ([fdo#103927] / [i915#211])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl7/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl6/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl3/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl3/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl7/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl8/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl8/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl8/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl1/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8018_full and Patchwork_16732_full:

### New IGT tests (4) ###

  * igt@drm_mm@all:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@mock:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@perf:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_selftest@all:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16732_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276] / [i915#677])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#112146]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][49] -> [FAIL][50] ([i915#413]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb3/igt@i915_pm_rps@reset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-kbl:          [PASS][51] -> [INCOMPLETE][52] ([fdo#103665] / [i915#639])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl4/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl2/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-apl:          [PASS][53] -> [INCOMPLETE][54] ([fdo#103927]) +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][55] -> [INCOMPLETE][56] ([i915#300])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#54])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-skl:          [PASS][59] -> [INCOMPLETE][60] ([i915#69])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl8/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl9/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-kbl:          [PASS][61] -> [INCOMPLETE][62] ([fdo#103665]) +11 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-skl:          [PASS][63] -> [FAIL][64] ([IGT#5]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
    - shard-glk:          [PASS][65] -> [DMESG-FAIL][66] ([i915#118] / [i915#54] / [i915#95]) +16 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-glk6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-glk2/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html

  * igt@kms_draw_crc@fill-fb:
    - shard-glk:          [PASS][67] -> [DMESG-FAIL][68] ([i915#118] / [i915#95])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-glk6/igt@kms_draw_crc@fill-fb.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-glk4/igt@kms_draw_crc@fill-fb.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][69] -> [DMESG-WARN][70] ([i915#180]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack:
    - shard-glk:          [PASS][71] -> [DMESG-WARN][72] ([i915#118] / [i915#95]) +42 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][73] -> [DMESG-FAIL][74] ([i915#118] / [i915#49] / [i915#95]) +7 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#1188]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [PASS][77] -> [INCOMPLETE][78] ([i915#648])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([fdo#108145] / [i915#265])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-glk:          [PASS][81] -> [INCOMPLETE][82] ([i915#58] / [k.org#198133]) +12 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-glk7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-glk6/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
    - shard-skl:          [PASS][83] -> [INCOMPLETE][84] ([i915#198])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl9/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl1/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-tglb:         [PASS][87] -> [INCOMPLETE][88] ([i915#750])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-tglb8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][89] -> [FAIL][90] ([i915#31])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl2/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl1/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][91] -> [FAIL][92] ([i915#31])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl2/igt@kms_setmode@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [PASS][93] -> [SKIP][94] ([fdo#112080]) +5 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb7/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([fdo#109276]) +14 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][97] ([fdo#110841]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-independent-blt:
    - shard-tglb:         [FAIL][99] -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-tglb7/igt@gem_ctx_shared@q-independent-blt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb2/igt@gem_ctx_shared@q-independent-blt.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][101] ([fdo#109276] / [i915#677]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][103] ([fdo#109276]) -> [PASS][104] +13 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][105] ([i915#677]) -> [PASS][106] +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][107] ([fdo#112146]) -> [PASS][108] +5 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][109] ([i915#644]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][113] ([i915#54]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb4/igt@kms_psr@psr2_no_drrs.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][117] ([i915#180]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][119] ([fdo#112080]) -> [PASS][120] +10 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][121] ([fdo#112080]) -> [FAIL][122] ([IGT#28])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][123] ([i915#454]) -> [SKIP][124] ([i915#468])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][125] ([i915#899]) -> [INCOMPLETE][126] ([i915#58] / [k.org#198133])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8018/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#639]: https://gitlab.freedesktop.org/drm/intel/issues/639
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8018 -> Patchwork_16732

  CI-20190529: 20190529
  CI_DRM_8018: d2d7fd43fafd159b7d9d957340e4ed9775ab20b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16732: 92ef8dc6a4f25ddc463b7cc74d4dfafe8913e708 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16732/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
