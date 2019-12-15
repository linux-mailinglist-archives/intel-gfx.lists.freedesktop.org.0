Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43A811FBD8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 00:26:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6006E17A;
	Sun, 15 Dec 2019 23:26:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B0DC6E17A;
 Sun, 15 Dec 2019 23:26:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6204A363B;
 Sun, 15 Dec 2019 23:26:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Sun, 15 Dec 2019 23:26:44 -0000
Message-ID: <157645240493.27846.1150970139699831133@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191215205210.31667-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191215205210.31667-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev9=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev9)
URL   : https://patchwork.freedesktop.org/series/70059/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7569_full -> Patchwork_15776_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15776_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15776_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15776_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_framebuffer_object@fbo-drawbuffers-none glclearbuffer (NEW):
    - pig-hsw-4770r:      NOTRUN -> [FAIL][1] +7 similar issues
   [1]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_7569_full and Patchwork_15776_full:

### New Piglit tests (8) ###

  * spec@arb_es2_compatibility@fbo-alphatest-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@arb_es2_compatibility@fbo-blending-formats:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@arb_framebuffer_object@fbo-drawbuffers-none glclearbuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_gpu_shader5@texturegather@vs-rg-0-uint-2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.97] s

  * spec@arb_gpu_shader5@texturegatheroffset@vs-rgba-3-float-2d:
    - Statuses : 1 fail(s)
    - Exec time: [7.22] s

  * spec@arb_sample_shading@builtin-gl-sample-mask-simple 6:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_sample_shading@builtin-gl-sample-mask-simple 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.23] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ushort_uint-double_dmat4-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  

Known issues
------------

  Here are the changes found in Patchwork_15776_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#109276] / [fdo#112080])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_eio@in-flight-10ms:
    - shard-snb:          [PASS][4] -> [FAIL][5] ([i915#490])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb7/igt@gem_eio@in-flight-10ms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-snb7/igt@gem_eio@in-flight-10ms.html

  * igt@gem_exec_async@concurrent-writes-bsd2:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd2.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd2.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111736])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb8/igt@gem_exec_create@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#470])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_exec_parallel@fds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb6/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#707])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [PASS][16] -> [INCOMPLETE][17] ([i915#530] / [i915#58] / [k.org#198133])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-glk1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-glk9/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][18] -> [FAIL][19] ([i915#644])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [PASS][20] -> [DMESG-WARN][21] ([fdo#110789] / [fdo#111870])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb1/igt@gem_userptr_blits@sync-unmap.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-snb1/igt@gem_userptr_blits@sync-unmap.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [PASS][22] -> [DMESG-WARN][23] ([fdo#111870]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb5/igt@gem_userptr_blits@sync-unmap-after-close.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-snb6/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#112080])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-iclb8/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([i915#455])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb5/igt@i915_selftest@live_gt_timelines.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb6/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_atomic_interruptible@atomic-setmode:
    - shard-kbl:          [PASS][28] -> [INCOMPLETE][29] ([fdo#103665])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl2/igt@kms_atomic_interruptible@atomic-setmode.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-kbl1/igt@kms_atomic_interruptible@atomic-setmode.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#300])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([IGT#5])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#646])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#79])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][38] -> [INCOMPLETE][39] ([i915#221])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([fdo#108145])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][44] -> [FAIL][45] ([i915#31])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw5/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-hsw4/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][46] -> [FAIL][47] ([i915#31])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl1/igt@kms_setmode@basic.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-kbl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49] +7 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-apl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-apl6/igt@gem_ctx_isolation@vcs0-s3.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-apl4/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][52] ([fdo#111735]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][54] ([i915#232]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb2/igt@gem_eio@reset-stress.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][56] ([i915#435]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb6/igt@gem_exec_create@madvise.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb3/igt@gem_exec_create@madvise.html

  * {igt@gem_exec_schedule@pi-userfault-bsd2}:
    - shard-iclb:         [SKIP][58] ([fdo#109276]) -> [PASS][59] +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][60] ([fdo#112146]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][62] ([fdo#111870]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-iclb:         [INCOMPLETE][64] ([i915#140]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@gem_workarounds@suspend-resume-fd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-iclb4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][66] ([i915#54]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-hsw:          [DMESG-WARN][68] ([IGT#6]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][70] ([i915#456] / [i915#460]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [INCOMPLETE][72] ([i915#435] / [i915#667]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [INCOMPLETE][74] ([i915#435] / [i915#474] / [i915#667]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][76] ([fdo#108145]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-kbl:          [INCOMPLETE][78] ([fdo#103665]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-kbl7/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-kbl2/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@perf@disabled-read-error:
    - shard-hsw:          [INCOMPLETE][80] ([i915#61]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-hsw8/igt@perf@disabled-read-error.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-hsw6/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][82] ([fdo#112080]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][84] ([fdo#112080]) -> [SKIP][85] ([fdo#111912] / [fdo#112080])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb6/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][86] ([i915#444]) -> [INCOMPLETE][87] ([i915#82])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-snb4/igt@gem_eio@kms.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-snb4/igt@gem_eio@kms.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][88] ([fdo#112016] / [fdo#112021]) -> [SKIP][89] ([fdo#112021])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7569 -> Patchwork_15776

  CI-20190529: 20190529
  CI_DRM_7569: 62c2abc0df8983aba79ba093413683c44e9c4748 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15776: 5540cb82cfb653ff4e0d74342cd28178ddacaf80 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15776/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
