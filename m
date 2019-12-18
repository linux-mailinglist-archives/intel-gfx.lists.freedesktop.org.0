Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B309123F4A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 06:56:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C795A6E223;
	Wed, 18 Dec 2019 05:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC4846E21F;
 Wed, 18 Dec 2019 05:56:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB169A010F;
 Wed, 18 Dec 2019 05:56:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 18 Dec 2019 05:56:08 -0000
Message-ID: <157664856873.8355.10277447216503865334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217135646.89481-1-jose.souza@intel.com>
In-Reply-To: <20191217135646.89481-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Force_the_state_compute_phase_once_to_enable_P?=
 =?utf-8?b?U1IgKHJldjMp?=
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

Series: drm/i915/display: Force the state compute phase once to enable PSR (rev3)
URL   : https://patchwork.freedesktop.org/series/70000/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7585_full -> Patchwork_15815_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15815_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15815_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15815_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uint-short_int-position-double_dmat4x2 (NEW):
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][3] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/pig-hsw-4770r/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uint-short_int-position-double_dmat4x2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-bvec4-bvec4-using-if:
    - {pig-hsw-4770r}:    NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/pig-hsw-4770r/spec@glsl-4.30@execution@built-in-functions@cs-op-eq-bvec4-bvec4-using-if.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7585_full and Patchwork_15815_full:

### New Piglit tests (5) ###

  * spec@arb_stencil_texturing@draw:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uint-short_int-position-double_dmat4x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@ext_packed_depth_stencil@texwrap formats offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.20@execution@vs_in@vs-input-columns-dmat3x4-1-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_double_array3-double_dmat2x4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_15815_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][7] -> [FAIL][8] ([i915#490])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#108838] / [i915#435])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb2/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#463])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111736] / [i915#460])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb5/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-snb:          [PASS][17] -> [TIMEOUT][18] ([i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][19] -> [TIMEOUT][20] ([i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl3/igt@gem_softpin@noreloc-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][25] -> [DMESG-WARN][26] ([fdo#111870]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb7/igt@gem_userptr_blits@dmabuf-sync.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-snb6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103927])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl2/igt@gem_workarounds@suspend-resume.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-apl8/igt@gem_workarounds@suspend-resume.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb8/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#747])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#435] / [i915#667])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb6/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [PASS][37] -> [INCOMPLETE][38] ([i915#82]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-snb5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#49])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([fdo#112393] / [i915#667])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#123] / [i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#460])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#173])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@kms_psr@no_drrs.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-tglb:         [PASS][55] -> [INCOMPLETE][56] ([i915#456] / [i915#460])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109276]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][61] ([i915#461]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][63] ([i915#470]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@gem_exec_parallel@fds.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb4/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preempt-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_exec_schedule@preempt-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb1/igt@gem_exec_schedule@preempt-bsd2.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][67] ([i915#707]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb9/igt@gem_exec_schedule@smoketest-vebox.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_exec_store@pages-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb1/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][71] ([i915#832]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][73] ([fdo#111870]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][75] ([i915#716]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-apl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [DMESG-WARN][77] ([i915#802]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-glk5/igt@i915_selftest@mock_requests.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-glk3/igt@i915_selftest@mock_requests.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [DMESG-WARN][79] ([i915#747]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-hsw1/igt@i915_selftest@mock_sanitycheck.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-hsw5/igt@i915_selftest@mock_sanitycheck.html
    - shard-kbl:          [DMESG-WARN][81] ([i915#747]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl3/igt@i915_selftest@mock_sanitycheck.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-kbl1/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [DMESG-WARN][83] ([i915#747]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb5/igt@i915_selftest@mock_sanitycheck.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-snb7/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][85] ([i915#54]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-kbl:          [FAIL][87] ([i915#54]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-kbl:          [INCOMPLETE][89] ([fdo#103665] / [i915#667]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][91] ([i915#79]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-iclb:         [INCOMPLETE][93] ([i915#123] / [i915#140]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [FAIL][95] ([i915#49]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes:
    - shard-tglb:         [INCOMPLETE][99] ([i915#460]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][101] ([fdo#108145]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [INCOMPLETE][105] ([i915#456] / [i915#460]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb1/igt@kms_psr@psr2_suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb1/igt@kms_psr@psr2_suspend.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-skl:          [DMESG-WARN][107] ([i915#109]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl10/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][109] ([fdo#103665]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112] +6 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][113] ([i915#69]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][115] ([i915#82]) -> [DMESG-FAIL][116] ([i915#436])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb1/igt@gem_eio@kms.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-snb7/igt@gem_eio@kms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][117] ([i915#468]) -> [FAIL][118] ([i915#454])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][119] ([fdo#112021]) -> [SKIP][120] ([fdo#112016] / [fdo#112021])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-tglb5/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][121] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][122] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#802]: https://gitlab.freedesktop.org/drm/intel/issues/802
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7585 -> Patchwork_15815

  CI-20190529: 20190529
  CI_DRM_7585: 96c4bb3771fb5fda19a0fa83ec2e7dba9bf6f878 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15815: 36f82833b1ecb11bd207bcdd852bbaccf747e069 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15815/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
