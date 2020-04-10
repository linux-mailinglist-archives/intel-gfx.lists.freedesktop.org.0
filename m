Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E03131A3EB8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 05:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B6F16EC48;
	Fri, 10 Apr 2020 03:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC93A6EC48;
 Fri, 10 Apr 2020 03:26:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD973A41FB;
 Fri, 10 Apr 2020 03:26:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 10 Apr 2020 03:26:12 -0000
Message-ID: <158648917267.10045.6151694528865730455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_perf/core=3A_Only_copy-to-user_af?=
 =?utf-8?q?ter_completely_unlocking_all_locks=2C_v3=2E?=
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

Series: series starting with [01/23] perf/core: Only copy-to-user after completely unlocking all locks, v3.
URL   : https://patchwork.freedesktop.org/series/75668/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8275_full -> Patchwork_17253_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17253_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17253_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17253_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-tglb6/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-tglb5/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-snb5/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-snb2/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-iclb3/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb1/igt@gem_close@many-handles-one-vma.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] +12 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl5/igt@gem_ctx_persistence@smoketest.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl8/igt@gem_ctx_persistence@smoketest.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-apl:          [PASS][9] -> [INCOMPLETE][10] +15 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-apl3/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl8/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - shard-iclb:         [PASS][11] -> [INCOMPLETE][12] +11 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-iclb4/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb6/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] +13 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-tglb3/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-kbl:          [PASS][15] -> [INCOMPLETE][16] +14 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-kbl2/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl1/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> ([FAIL][17], [FAIL][18])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb7/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb7/igt@runner@aborted.html
    - shard-tglb:         NOTRUN -> ([FAIL][19], [FAIL][20]) ([i915#1389])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-tglb7/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-tglb8/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][21] ([i915#1423] / [i915#92]) -> ([FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26]) ([i915#1389] / [i915#1402] / [i915#1423] / [i915#92])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-kbl6/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl1/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl2/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl4/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl7/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@basic}:
    - shard-apl:          [PASS][27] -> [INCOMPLETE][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-apl3/igt@gem_exec_parallel@engines@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl2/igt@gem_exec_parallel@engines@basic.html
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl8/igt@gem_exec_parallel@engines@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl6/igt@gem_exec_parallel@engines@basic.html

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-kbl3/igt@gem_exec_reloc@basic-parallel.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl3/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-tglb7/igt@gem_exec_reloc@basic-parallel.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-tglb6/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-iclb7/igt@gem_exec_reloc@basic-parallel.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb8/igt@gem_exec_reloc@basic-parallel.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8275_full and Patchwork_17253_full:

### New IGT tests (1) ###

  * igt@gem_exec_store@pages:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17253_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#1402])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [PASS][39] -> [INCOMPLETE][40] ([i915#1402])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [PASS][41] -> [INCOMPLETE][42] ([i915#1402])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb7/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [PASS][43] -> [INCOMPLETE][44] ([i915#1402])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#1402])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl1/igt@gem_ctx_persistence@close-replace-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [PASS][47] -> [INCOMPLETE][48] ([i915#1402] / [i915#58] / [k.org#198133])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109276])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-kbl:          [PASS][51] -> [INCOMPLETE][52] ([i915#1318]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-kbl7/igt@gem_exec_whisper@basic-contexts-priority.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl4/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-kbl:          [PASS][53] -> [INCOMPLETE][54] ([i915#794])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-kbl3/igt@gem_exec_whisper@basic-fds-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl4/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-skl:          [PASS][55] -> [INCOMPLETE][56] ([i915#1318])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl10/igt@gem_exec_whisper@basic-fds-forked-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl8/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-kbl7/igt@gem_softpin@noreloc-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl6/igt@gem_softpin@noreloc-s3.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - shard-skl:          [PASS][59] -> [INCOMPLETE][60] ([i915#655])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl2/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][61] -> [INCOMPLETE][62] ([i915#58] / [k.org#198133]) +21 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-glk5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-glk3/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-apl:          [PASS][63] -> [FAIL][64] ([i915#54] / [i915#95])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#79])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#49])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#1188])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl1/igt@kms_hdr@bpc-switch.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109642] / [fdo#111068])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-glk:          [FAIL][79] ([i915#52] / [i915#54]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145] / [i915#265]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][87] ([i915#588]) -> [SKIP][88] ([i915#658])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-snb:          [SKIP][89] ([fdo#109271]) -> [INCOMPLETE][90] ([i915#82])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-snb6/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-snb5/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][91] ([i915#1423]) -> ([FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95]) ([fdo#109271] / [i915#1402] / [i915#1423] / [i915#1610])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8275/shard-apl8/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl3/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl8/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl1/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#655]: https://gitlab.freedesktop.org/drm/intel/issues/655
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8275 -> Patchwork_17253

  CI-20190529: 20190529
  CI_DRM_8275: f2a4da2bcd576d1b56aeb53600e8a0b710117a20 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5581: ab0620e555119ec55f12ba9ab9e6e9246d407648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17253: 68e985f3b25a85cda132487d89625696488d1ed7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17253/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
