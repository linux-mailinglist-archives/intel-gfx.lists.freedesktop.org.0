Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFE11301EA
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 11:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598C46E3DF;
	Sat,  4 Jan 2020 10:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D2186E3DF;
 Sat,  4 Jan 2020 10:56:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4299BA363D;
 Sat,  4 Jan 2020 10:56:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Sat, 04 Jan 2020 10:56:59 -0000
Message-ID: <157813541924.3250.11410407243220762981@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103000050.8223-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200103000050.8223-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Parse_the_I2C_element_from_the_VBT_MIPI_sequence_b?=
 =?utf-8?q?lock_=28rev2=29?=
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

Series: drm/i915/dsi: Parse the I2C element from the VBT MIPI sequence block (rev2)
URL   : https://patchwork.freedesktop.org/series/71581/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7675_full -> Patchwork_15993_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15993_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15993_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15993_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@pi-distinct-iova-render}:
    - shard-glk:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-glk4/igt@gem_exec_schedule@pi-distinct-iova-render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova-render.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7675_full and Patchwork_15993_full:

### New Piglit tests (11) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x2-position-double_dmat4x2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uvec4_array3-double_dmat2x4_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec3_array3-position-double_dmat2x4:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec2_array3-double_dvec2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-ubyte_uint-short_ivec2-double_dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.19] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uint-position-short_ivec3-double_dmat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-es-3.00@execution@built-in-functions@fs-packsnorm2x16:
    - Statuses : 1 fail(s)
    - Exec time: [6.69] s

  * spec@glsl-es-3.00@execution@built-in-functions@fs-unpackunorm2x16:
    - Statuses : 1 fail(s)
    - Exec time: [6.12] s

  * spec@glsl-es-3.00@execution@built-in-functions@vs-packhalf2x16:
    - Statuses : 1 fail(s)
    - Exec time: [9.88] s

  * spec@glsl-es-3.00@execution@built-in-functions@vs-packunorm2x16:
    - Statuses : 1 fail(s)
    - Exec time: [6.41] s

  * spec@glsl-es-3.00@execution@built-in-functions@vs-unpackunorm2x16:
    - Statuses : 1 fail(s)
    - Exec time: [6.24] s

  

Known issues
------------

  Here are the changes found in Patchwork_15993_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#435])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb5/igt@gem_busy@close-race.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb3/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#570])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb5/igt@gem_ctx_persistence@processes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb9/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111593])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb7/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb7/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([fdo#112126] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb8/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb3/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#707] / [i915#796])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb9/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb1/igt@gem_sync@basic-store-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb5/igt@gem_sync@basic-store-all.html

  * igt@i915_selftest@live_gtt:
    - shard-skl:          [PASS][25] -> [TIMEOUT][26] ([fdo#111732])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl7/igt@i915_selftest@live_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl5/igt@i915_selftest@live_gtt.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#72])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([IGT#6])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl4/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl1/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-apl4/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@enable-race-vecs0:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#470] / [i915#923])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb2/igt@perf_pmu@enable-race-vecs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb2/igt@perf_pmu@enable-race-vecs0.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276]) +12 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb7/igt@gem_ctx_isolation@vcs1-reset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_persistence@processes:
    - shard-glk:          [FAIL][51] ([i915#570]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-glk8/igt@gem_ctx_persistence@processes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-glk6/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111735]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +12 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb6/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-other-bsd1:
    - shard-tglb:         [INCOMPLETE][59] -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb6/igt@gem_exec_schedule@preempt-other-bsd1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb7/igt@gem_exec_schedule@preempt-other-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111677]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111606] / [fdo#111677]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb7/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb9/igt@gem_exec_suspend@basic-s0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb1/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][67] ([i915#455]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb6/igt@i915_selftest@live_gt_timelines.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb8/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][69] ([i915#69]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][71] ([i915#129]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl4/igt@kms_color@pipe-a-ctm-green-to-red.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl1/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][73] ([IGT#5]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [FAIL][75] ([i915#52] / [i915#54]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-apl1/igt@kms_flip@flip-vs-expired-vblank.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-apl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][79] ([i915#34]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [FAIL][81] ([i915#49]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][85] ([i915#49]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [FAIL][87] ([i915#247]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl4/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl1/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][89] ([fdo#108145]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb7/igt@kms_psr@psr2_primary_blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][93] ([fdo#112080]) -> [PASS][94] +8 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][95] ([fdo#109276] / [fdo#112080]) -> [FAIL][96] ([IGT#28])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][97] ([fdo#112080]) -> [SKIP][98] ([fdo#111912] / [fdo#112080]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb2/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][99] ([i915#454]) -> [SKIP][100] ([i915#468])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7675/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#923]: https://gitlab.freedesktop.org/drm/intel/issues/923


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7675 -> Patchwork_15993

  CI-20190529: 20190529
  CI_DRM_7675: 9a97e886930c21e976205c47180ab256a6dbc135 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15993: 27998f819a388a0db0ae85764219c018b0cacb1b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15993/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
