Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D84122CE6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 14:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A16CF6E126;
	Tue, 17 Dec 2019 13:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D4A66E126;
 Tue, 17 Dec 2019 13:31:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 351B2A0073;
 Tue, 17 Dec 2019 13:31:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 17 Dec 2019 13:31:11 -0000
Message-ID: <157658947118.21846.6109103124432421874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/7=5D_drm/i915/guc=3A_Merge_communic?=
 =?utf-8?q?ation=5Fstop_and_communication=5Fdisable?=
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

Series: series starting with [v2,1/7] drm/i915/guc: Merge communication_stop and communication_disable
URL   : https://patchwork.freedesktop.org/series/71020/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7578_full -> Patchwork_15805_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15805_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@ext_framebuffer_multisample@bitmap 6 (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][1] +4 similar issues
   [1]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_7578_full and Patchwork_15805_full:

### New Piglit tests (5) ###

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rg-0-unorm-2darray-const:
    - Statuses : 1 fail(s)
    - Exec time: [7.36] s

  * spec@arb_stencil_texturing@draw:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat3_array3-position-double_dvec3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@ext_framebuffer_multisample@bitmap 6:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@glsl-4.10@execution@vs_in@vs-input-uint_uvec4_array3-double_double_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  

Known issues
------------

  Here are the changes found in Patchwork_15805_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb3/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#456] / [i915#460] / [i915#534])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb3/igt@gem_eio@in-flight-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#476])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb7/igt@gem_eio@kms.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#470])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb3/igt@gem_exec_parallel@fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb9/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111736])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb3/igt@gem_exec_parallel@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb2/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb6/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb3/igt@gem_exec_schedule@independent-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb1/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#644])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@gem_sync@basic-store-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112080]) +6 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb3/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#118] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk4/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-hsw:          [PASS][24] -> [DMESG-WARN][25] ([IGT#6])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw4/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#54]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#79])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [PASS][30] -> [INCOMPLETE][31] ([i915#61])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw6/igt@kms_flip@flip-vs-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-hsw4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#456] / [i915#460] / [i915#474])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#474] / [i915#667])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][38] -> [INCOMPLETE][39] ([i915#456] / [i915#460]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#265])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][44] -> [FAIL][45] ([i915#31])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#84])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@perf@oa-exponents.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb6/igt@perf@oa-exponents.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][48] ([i915#435]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_busy@close-race.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb2/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-tglb:         [INCOMPLETE][50] ([i915#456]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_ctx_isolation@bcs0-s3.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][52] ([i915#679]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-apl1/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [SKIP][54] ([fdo#109276] / [fdo#112080]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb3/igt@gem_ctx_persistence@vcs1-persistence.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb1/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_eio@banned:
    - shard-tglb:         [INCOMPLETE][56] ([i915#476]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_eio@banned.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb9/igt@gem_eio@banned.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-skl:          [DMESG-WARN][58] ([i915#109]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@gem_exec_reloc@basic-wc-active.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl7/igt@gem_exec_reloc@basic-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][60] ([fdo#111677]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][62] ([fdo#112146]) -> [PASS][63] +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][64] ([i915#472] / [i915#707]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@gem_sync@basic-each.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb9/igt@gem_sync@basic-each.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][66] ([i915#818]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][68] ([i915#716]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-hsw:          [DMESG-WARN][72] ([IGT#6]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-hsw4/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][74] ([i915#460]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][76] ([i915#79]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][78] ([i915#79]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][80] ([i915#221]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][82] ([i915#49]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][84] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-iclb:         [INCOMPLETE][86] ([i915#140] / [i915#246]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb2/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89] +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][90] ([fdo#108145]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][92] ([fdo#108145] / [i915#265]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][94] ([fdo#109441]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][96] ([fdo#112080]) -> [PASS][97] +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][98] ([fdo#109276]) -> [PASS][99] +10 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][100] ([fdo#111912] / [fdo#112080]) -> [SKIP][101] ([fdo#112080]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][102] ([i915#818]) -> [FAIL][103] ([i915#832])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw7/igt@gem_tiled_blits@normal.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-hsw4/igt@gem_tiled_blits@normal.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][104] ([fdo#112021]) -> [SKIP][105] ([fdo#112016] / [fdo#112021])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-tglb6/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][106] ([i915#648]) -> [INCOMPLETE][107] ([i915#648] / [i915#667])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][108] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][109] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#246]: https://gitlab.freedesktop.org/drm/intel/issues/246
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7578 -> Patchwork_15805

  CI-20190529: 20190529
  CI_DRM_7578: cc329d389f5609d2969d0797bc96f754adb26d62 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15805: ea5f8a3163af3b8faacefeaca30363aeebd40ef7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15805/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
