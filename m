Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABA61FC176
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 00:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805C76E99A;
	Tue, 16 Jun 2020 22:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18C2F6E936;
 Tue, 16 Jun 2020 22:16:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13A29A00E6;
 Tue, 16 Jun 2020 22:16:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 16 Jun 2020 22:16:29 -0000
Message-ID: <159234578905.4595.10106455518193745480@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616141855.746-1-imre.deak@intel.com>
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/tgl+=3A_Use_the_correct_DP?=
 =?utf-8?q?=5FTP=5F*_register_instances_in_MST_encoders?=
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

Series: series starting with [1/6] drm/i915/tgl+: Use the correct DP_TP_* register instances in MST encoders
URL   : https://patchwork.freedesktop.org/series/78423/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8635_full -> Patchwork_17964_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17964_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-apl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@process:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl4/igt@gem_ctx_persistence@process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-kbl7/igt@gem_ctx_persistence@process.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_workarounds@basic-read:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb3/igt@gem_workarounds@basic-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-tglb7/igt@gem_workarounds@basic-read.html

  * igt@i915_pm_rps@waitboost:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#39])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk7/igt@i915_pm_rps@waitboost.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-glk6/igt@i915_pm_rps@waitboost.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1928])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl1/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +10 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl8/igt@kms_flip_tiling@flip-changes-tiling.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][19] -> [DMESG-FAIL][20] ([i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#95]) +10 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [PASS][23] -> [SKIP][24] ([i915#668]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb3/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-tglb6/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#1820])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_freq@sysfs:
    - shard-apl:          [DMESG-WARN][33] ([i915#95]) -> [PASS][34] +18 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl7/igt@gem_ctx_freq@sysfs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-apl1/igt@gem_ctx_freq@sysfs.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [FAIL][35] ([i915#1930]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_schedule@implicit-read-write@rcs0:
    - shard-snb:          [INCOMPLETE][37] ([i915#82]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-snb1/igt@gem_exec_schedule@implicit-read-write@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-snb4/igt@gem_exec_schedule@implicit-read-write@rcs0.html

  * igt@gem_exec_schedule@smoketest@bcs0:
    - shard-tglb:         [INCOMPLETE][39] ([i915#1829]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb1/igt@gem_exec_schedule@smoketest@bcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-tglb1/igt@gem_exec_schedule@smoketest@bcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-glk8/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][43] ([i915#402]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb8/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-tglb2/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][45] ([IGT#5]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-tglb:         [FAIL][47] ([i915#1928]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-tglb6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][53] ([i915#165] / [i915#78]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl2/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-kbl3/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-apl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl4/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-skl5/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][63] ([i915#1542]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-iclb8/igt@perf@blocking-parameterized.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-iclb5/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [INCOMPLETE][66] ([i915#155])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-tglb:         [DMESG-FAIL][67] ([i915#1149] / [i915#1982]) -> [FAIL][68] ([i915#1149] / [i915#315])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-tglb6/igt@kms_color@pipe-c-ctm-0-25.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-tglb6/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][70] ([fdo#108145] / [i915#1982])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8635/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1829]: https://gitlab.freedesktop.org/drm/intel/issues/1829
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-icl-1065g7 


Build changes
-------------

  * Linux: CI_DRM_8635 -> Patchwork_17964

  CI-20190529: 20190529
  CI_DRM_8635: f9acdb898773f94ac1bcb9a8826596f88412a53b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17964: d302e0a23522a808ab7073bf458e7b70df70def3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17964/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
