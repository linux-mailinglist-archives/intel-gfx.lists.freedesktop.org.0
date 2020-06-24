Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7A32074CB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 15:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27326EB54;
	Wed, 24 Jun 2020 13:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 596B46EB54;
 Wed, 24 Jun 2020 13:44:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53AA2A0009;
 Wed, 24 Jun 2020 13:44:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 24 Jun 2020 13:44:56 -0000
Message-ID: <159300629632.19238.12460931133524104554@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623215235.125665-1-jose.souza@intel.com>
In-Reply-To: <20200623215235.125665-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display/rkl=3A_Implement_W?=
 =?utf-8?q?A_14011471926?=
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

Series: series starting with [1/2] drm/i915/display/rkl: Implement WA 14011471926
URL   : https://patchwork.freedesktop.org/series/78761/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8661_full -> Patchwork_18015_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18015_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18015_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18015_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb1/igt@kms_hdmi_inject@inject-audio.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-tglb7/igt@kms_hdmi_inject@inject-audio.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-tglb7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18015_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [PASS][4] -> [INCOMPLETE][5] ([i915#198])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl5/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [PASS][6] -> [TIMEOUT][7] ([i915#1340] / [i915#1958])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_create@madvise:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118] / [i915#95]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk6/igt@gem_exec_create@madvise.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-glk6/igt@gem_exec_create@madvise.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-snb:          [PASS][10] -> [INCOMPLETE][11] ([i915#82])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-snb2/igt@gem_fenced_exec_thrash@too-many-fences.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-snb6/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_userptr_blits@map-fixed-invalidate@gtt:
    - shard-tglb:         [PASS][12] -> [DMESG-WARN][13] ([i915#402]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb7/igt@gem_userptr_blits@map-fixed-invalidate@gtt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-tglb6/igt@gem_userptr_blits@map-fixed-invalidate@gtt.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-kbl:          [PASS][14] -> [INCOMPLETE][15] ([i915#151] / [i915#155])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl7/igt@i915_pm_rpm@system-suspend-execbuf.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl3/igt@i915_suspend@forcewake.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1635] / [i915#95]) +15 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl8/igt@i915_suspend@sysfs-reader.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-iclb:         [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-iclb4/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-kbl:          [PASS][22] -> [DMESG-FAIL][23] ([i915#54] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +13 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-kbl:          [PASS][26] -> [DMESG-FAIL][27] ([fdo#108145] / [i915#54] / [i915#95])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [PASS][28] -> [DMESG-FAIL][29] ([i915#1635] / [i915#95])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling.html
    - shard-kbl:          [PASS][30] -> [DMESG-FAIL][31] ([i915#95])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][32] -> [DMESG-WARN][33] ([i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#1188]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#69])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#93] / [i915#95]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#265])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][42] -> [FAIL][43] ([i915#31])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl3/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][44] -> [FAIL][45] ([i915#1820])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [FAIL][46] ([i915#1528]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][48] ([i915#1930]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][50] ([i915#118] / [i915#95]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk7/igt@gem_exec_whisper@basic-contexts.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-glk9/igt@gem_exec_whisper@basic-contexts.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][52] ([i915#402]) -> [PASS][53] +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-tglb7/igt@i915_module_load@reload.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-tglb5/igt@i915_module_load@reload.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - shard-apl:          [DMESG-WARN][56] ([i915#1635] / [i915#95]) -> [PASS][57] +16 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-apl:          [FAIL][58] ([IGT#5]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
    - shard-skl:          [DMESG-FAIL][60] ([i915#1982]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][62] ([i915#79]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +5 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][66] ([i915#1928]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [FAIL][68] ([i915#699]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][70] ([fdo#108145] / [i915#265]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-apl:          [TIMEOUT][72] ([i915#1635] / [i915#1958]) -> [INCOMPLETE][73] ([i915#1635] / [i915#1958])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl8/igt@gem_exec_reloc@basic-concurrent16.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          [SKIP][74] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [DMESG-FAIL][76] ([i915#1635] / [i915#95]) -> [FAIL][77] ([i915#1525])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-apl:          [SKIP][78] ([fdo#109271] / [i915#1635]) -> [SKIP][79] ([fdo#109271])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-apl:          [SKIP][80] ([fdo#109271]) -> [SKIP][81] ([fdo#109271] / [i915#1635]) +5 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-apl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-apl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          [FAIL][82] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][83] ([fdo#108145] / [i915#1982])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8661/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8661 -> Patchwork_18015

  CI-20190529: 20190529
  CI_DRM_8661: 64cab0b9f9bfeb14d3ec2452d76b56915cdeb09f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5717: 725bf2dae51f0087eaa64f1931a2ef9d22f070dd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18015: b6b9f0c4c19d69b948abeeecd9850c72f02875ef @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18015/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
