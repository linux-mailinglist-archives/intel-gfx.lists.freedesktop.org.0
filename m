Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF09121E21
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 23:34:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA9B6E8EB;
	Mon, 16 Dec 2019 22:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEE896E8F1;
 Mon, 16 Dec 2019 22:34:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85CF4A0096;
 Mon, 16 Dec 2019 22:34:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 16 Dec 2019 22:34:22 -0000
Message-ID: <157653566251.5611.64527941583891229@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Call_hsw=5Ffdi=5Flink?=
 =?utf-8?b?X3RyYWluKCkgZGlyZWN0bHkoKSAocmV2Mik=?=
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

Series: series starting with [1/5] drm/i915: Call hsw_fdi_link_train() directly() (rev2)
URL   : https://patchwork.freedesktop.org/series/70905/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7574_full -> Patchwork_15788_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15788_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][1] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/pig-hsw-4770r/spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7574_full and Patchwork_15788_full:

### New Piglit tests (6) ###

  * spec@arb_gpu_shader5@texturegather@vs-r-0-float-2drect:
    - Statuses : 1 fail(s)
    - Exec time: [1.77] s

  * spec@arb_gpu_shader5@texturegather@vs-rgba-1-float-cube:
    - Statuses : 1 fail(s)
    - Exec time: [1.79] s

  * spec@arb_stencil_texturing@draw:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec2-double_dmat2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.30@execution@texelfetch@fs-texelfetch-isampler1darray:
    - Statuses : 1 fail(s)
    - Exec time: [5.15] s

  * spec@glsl-4.30@execution@built-in-functions@cs-any-bvec4-using-if:
    - Statuses : 1 fail(s)
    - Exec time: [4.03] s

  

Known issues
------------

  Here are the changes found in Patchwork_15788_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [PASS][2] -> [FAIL][3] ([i915#679])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl8/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-apl2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@gem_ctx_persistence@vcs1-cleanup.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-iclb5/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#456] / [i915#460] / [i915#534])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@gem_eio@in-flight-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_basic@readonly-vcs1:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112080]) +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@gem_exec_basic@readonly-vcs1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-iclb5/igt@gem_exec_basic@readonly-vcs1.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111593])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb9/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb6/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([fdo#111606] / [fdo#111677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#707])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#472] / [i915#707])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb1/igt@gem_sync@basic-each.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb5/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [PASS][24] -> [DMESG-WARN][25] ([fdo#111870])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb1/igt@gem_userptr_blits@sync-unmap-after-close.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-snb7/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][26] -> [INCOMPLETE][27] ([i915#69]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl5/igt@gem_workarounds@suspend-resume.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl4/igt@gem_workarounds@suspend-resume.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [PASS][28] -> [DMESG-WARN][29] ([i915#747])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw7/igt@i915_selftest@mock_sanitycheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-hsw6/igt@i915_selftest@mock_sanitycheck.html
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#747])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl9/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#109]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl2/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl1/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
    - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#744])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#54]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#72])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([IGT#5])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][42] -> [INCOMPLETE][43] ([i915#221])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +5 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#648] / [i915#667])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][48] -> [INCOMPLETE][49] ([fdo#103665] / [i915#648] / [i915#667])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [PASS][50] -> [INCOMPLETE][51] ([i915#456] / [i915#460])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([fdo#108145])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][56] -> [INCOMPLETE][57] ([i915#460])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@enable-disable:
    - shard-hsw:          [PASS][58] -> [INCOMPLETE][59] ([i915#61])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw5/igt@perf@enable-disable.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-hsw5/igt@perf@enable-disable.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][60] ([fdo#109276] / [fdo#112080]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][62] ([i915#461]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][64] ([fdo#111735]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@hibernate:
    - shard-tglb:         [INCOMPLETE][66] ([i915#456]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb8/igt@gem_eio@hibernate.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb9/igt@gem_eio@hibernate.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][68] ([fdo#109276]) -> [PASS][69] +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [INCOMPLETE][70] ([fdo#111606] / [fdo#111677]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [TIMEOUT][72] ([i915#530]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-glk1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [DMESG-WARN][76] ([fdo#111870]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb4/igt@gem_userptr_blits@sync-unmap-cycles.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-snb6/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-hsw:          [DMESG-WARN][80] ([IGT#6]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-hsw4/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-apl:          [DMESG-WARN][82] ([IGT#6]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-hsw:          [DMESG-FAIL][84] ([i915#407] / [i915#44]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw5/igt@kms_flip@2x-dpms-vs-vblank-race.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-hsw1/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-hsw:          [DMESG-FAIL][86] ([i915#44]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw5/igt@kms_flip@plain-flip-fb-recreate.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-hsw7/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][88] ([i915#49]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][90] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][92] ([fdo#108145]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][94] ([fdo#108145] / [i915#265]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@perf@create-destroy-userspace-config:
    - shard-hsw:          [INCOMPLETE][96] ([i915#61]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@perf@create-destroy-userspace-config.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-hsw1/igt@perf@create-destroy-userspace-config.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][98] ([fdo#111912] / [fdo#112080]) -> [SKIP][99] ([fdo#112080])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb7/igt@gem_ctx_isolation@vcs2-s3.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][100] ([i915#832]) -> [FAIL][101] ([i915#818])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][102] ([i915#39]) -> [FAIL][103] ([i915#413])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb5/igt@i915_pm_rps@waitboost.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-tglb5/igt@i915_pm_rps@waitboost.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][104] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][105] ([fdo#112347] / [i915#648] / [i915#667]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#744]: https://gitlab.freedesktop.org/drm/intel/issues/744
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7574 -> Patchwork_15788

  CI-20190529: 20190529
  CI_DRM_7574: 950244ca586c6f0efe243bf8c505c01ea5e579fa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15788: 3ff0b7b16527049cb26d8260f396b54cd6e5a966 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15788/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
