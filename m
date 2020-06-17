Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DB11FD09E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 17:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D8666E15E;
	Wed, 17 Jun 2020 15:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8696C6E096;
 Wed, 17 Jun 2020 15:13:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80F2BA00CC;
 Wed, 17 Jun 2020 15:13:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 17 Jun 2020 15:13:19 -0000
Message-ID: <159240679950.29977.209540502128640430@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200617130916.15261-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200617130916.15261-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Enable_selfte?=
 =?utf-8?q?sting_of_busy-stats?=
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

Series: series starting with [1/2] drm/i915/selftests: Enable selftesting of busy-stats
URL   : https://patchwork.freedesktop.org/series/78472/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8639_full -> Patchwork_17981_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17981_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-spin-others@vcs0}:
    - shard-snb:          [WARN][1] ([i915#2036]) -> [WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb5/igt@gem_exec_reloc@basic-spin-others@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-snb2/igt@gem_exec_reloc@basic-spin-others@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17981_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@process:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#93] / [i915#95]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@gem_ctx_persistence@process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-kbl2/igt@gem_ctx_persistence@process.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [PASS][7] -> [INCOMPLETE][8] ([i915#82])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb2/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-snb5/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#95]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl3/igt@gem_mmap_wc@write-cpu-read-wc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-apl4/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-iclb:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_dp_aux_dev:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#402])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-tglb8/igt@kms_dp_aux_dev.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-tglb8/igt@kms_dp_aux_dev.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl2/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-kbl6/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +10 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][21] -> [DMESG-FAIL][22] ([i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-kbl1/igt@kms_setmode@basic.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#1542])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb5/igt@perf@blocking-parameterized.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-iclb6/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [DMESG-WARN][31] ([i915#118] / [i915#95]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-glk4/igt@gem_exec_gttfill@all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-glk1/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_schedule@implicit-write-read@rcs0:
    - shard-snb:          [INCOMPLETE][33] ([i915#82]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-snb2/igt@gem_exec_schedule@implicit-write-read@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-snb5/igt@gem_exec_schedule@implicit-write-read@rcs0.html

  * igt@gem_mmap_offset@ptrace@gtt:
    - shard-kbl:          [DMESG-WARN][35] ([i915#93] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl1/igt@gem_mmap_offset@ptrace@gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-kbl2/igt@gem_mmap_offset@ptrace@gtt.html

  * igt@gem_shrink@reclaim:
    - shard-hsw:          [SKIP][37] ([fdo#109271]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-hsw2/igt@gem_shrink@reclaim.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-hsw8/igt@gem_shrink@reclaim.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [DMESG-WARN][39] ([i915#183]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl2/igt@gem_tiled_swapping@non-threaded.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-apl1/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [INCOMPLETE][41] ([i915#155]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl8/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-skl1/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-tglb:         [DMESG-WARN][45] ([i915#402]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +6 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][49] ([i915#1928]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-rotation:
    - shard-apl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl6/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-apl7/igt@kms_plane_scaling@pipe-a-scaler-with-rotation.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-iclb4/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@invalid:
    - shard-apl:          [DMESG-WARN][59] ([i915#95]) -> [PASS][60] +13 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl4/igt@kms_vblank@invalid.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-apl8/igt@kms_vblank@invalid.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][61] ([i915#1820]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][63] ([fdo#109349]) -> [DMESG-WARN][64] ([i915#1226])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-apl:          [DMESG-FAIL][65] ([i915#95]) -> [FAIL][66] ([i915#1525])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-apl7/igt@kms_fbcon_fbt@fbc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-apl8/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][68] ([fdo#108145] / [i915#1982])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8639/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2036]: https://gitlab.freedesktop.org/drm/intel/issues/2036
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-icl-1065g7 


Build changes
-------------

  * Linux: CI_DRM_8639 -> Patchwork_17981

  CI-20190529: 20190529
  CI_DRM_8639: 47584e59cf51ec499d68a4cefbaf447448ce2894 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17981: 62c9c2ccee1d8883b1b1c83e3f179065f0491cae @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17981/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
