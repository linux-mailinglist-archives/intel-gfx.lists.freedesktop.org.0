Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB95E11F3A1
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 20:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC256E3D2;
	Sat, 14 Dec 2019 19:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F55C6E2D1;
 Sat, 14 Dec 2019 19:19:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 675C9A0075;
 Sat, 14 Dec 2019 19:19:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 14 Dec 2019 19:19:45 -0000
Message-ID: <157635118539.13803.6714398825166323676@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_device_name_to_display_tracepoints?=
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

Series: drm/i915: Add device name to display tracepoints
URL   : https://patchwork.freedesktop.org/series/70886/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7563_full -> Patchwork_15750_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15750_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15750_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15750_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen7_exec_parse@cmd-crossing-page}:
    - shard-tglb:         NOTRUN -> [SKIP][1] +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb5/igt@gen7_exec_parse@cmd-crossing-page.html

  * {igt@gen9_exec_parse@unaligned-access}:
    - shard-iclb:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb8/igt@gen9_exec_parse@unaligned-access.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@ext_packed_float@fbo-alphatest-formats (NEW):
    - pig-hsw-4770r:      NOTRUN -> [FAIL][3] +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/pig-hsw-4770r/spec@ext_packed_float@fbo-alphatest-formats.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7563_full and Patchwork_15750_full:

### New Piglit tests (7) ###

  * spec@!opengl 3.2@coord-replace-doesnt-eliminate-frag-tex-coords:
    - Statuses : 1 fail(s)
    - Exec time: [0.56] s

  * spec@arb_es2_compatibility@fbo-alphatest-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgb-2-int-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [7.38] s

  * spec@arb_stencil_texturing@draw:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@ext_packed_float@fbo-alphatest-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec4-int_int:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-ubyte_uvec3-short_int-double_dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_15750_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#435]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb8/igt@gem_exec_create@madvise.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb6/igt@gem_exec_create@madvise.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([fdo#111593])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb3/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb7/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#470])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb4/igt@gem_exec_parallel@contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb6/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([fdo#111677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [PASS][16] -> [DMESG-WARN][17] ([fdo#111870])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-snb4/igt@gem_userptr_blits@dmabuf-unsync.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-snb6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#747])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl3/igt@i915_selftest@mock_sanitycheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-kbl2/igt@i915_selftest@mock_sanitycheck.html
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#747])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl10/igt@i915_selftest@mock_sanitycheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl4/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [PASS][22] -> [DMESG-WARN][23] ([i915#747])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-snb5/igt@i915_selftest@mock_sanitycheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-snb6/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][24] -> [FAIL][25] ([fdo#103375])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#54]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#88])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#221])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl2/igt@kms_flip@flip-vs-suspend.html
    - shard-snb:          [PASS][32] -> [INCOMPLETE][33] ([i915#82])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-snb2/igt@kms_flip@flip-vs-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-snb1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#34])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][38] -> [INCOMPLETE][39] ([i915#456] / [i915#460] / [i915#474])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-iclb:         [PASS][42] -> [INCOMPLETE][43] ([i915#140] / [i915#246])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb1/igt@kms_plane@pixel-format-pipe-a-planes.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb6/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [PASS][44] -> [INCOMPLETE][45] ([i915#456] / [i915#460]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([IGT#6])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl4/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#109441])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][52] ([fdo#109276] / [fdo#112080]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@gem_ctx_isolation@vcs1-reset.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb1/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][54] ([i915#461]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-skl:          [FAIL][56] -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl7/igt@gem_eio@in-flight-contexts-1us.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl3/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl1/igt@gem_eio@in-flight-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][60] ([fdo#110854]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][62] ([i915#435]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb4/igt@gem_exec_nop@basic-parallel.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb1/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [SKIP][64] ([fdo#112146]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb2/igt@gem_exec_schedule@fifo-bsd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb8/igt@gem_exec_schedule@fifo-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [INCOMPLETE][66] ([fdo#111677]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb4/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][70] ([i915#472]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb6/igt@gem_sync@basic-store-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb9/igt@gem_sync@basic-store-all.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [DMESG-WARN][72] ([fdo#111870]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-snb2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [DMESG-WARN][74] ([i915#109]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl9/igt@kms_color@pipe-a-ctm-0-25.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
    - shard-skl:          [DMESG-WARN][76] ([i915#744]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-skl:          [FAIL][78] ([i915#54]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][80] ([i915#456] / [i915#460]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-tglb:         [INCOMPLETE][82] ([i915#667]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][84] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-kbl:          [INCOMPLETE][86] ([fdo#103665] / [i915#667]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][88] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][90] ([fdo#108145] / [i915#265]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][92] ([fdo#112080]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][94] ([fdo#109276]) -> [PASS][95] +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][96] ([fdo#112016] / [fdo#112021]) -> [SKIP][97] ([fdo#112021])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-tglb6/igt@kms_atomic_transition@6x-modeset-transitions.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][98] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][99] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][100] ([i915#69]) -> [FAIL][101] ([i915#69] / [k.org#204565])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7563/shard-skl10/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/shard-skl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#246]: https://gitlab.freedesktop.org/drm/intel/issues/246
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#744]: https://gitlab.freedesktop.org/drm/intel/issues/744
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7563 -> Patchwork_15750

  CI-20190529: 20190529
  CI_DRM_7563: aa81d2aa468b726e50faba4a455efae4c4be2a67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15750: 78e6434185eb07eaf4410704fa7401dc8bb62e44 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15750/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
