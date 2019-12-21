Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4ED128904
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 13:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88A06E04B;
	Sat, 21 Dec 2019 12:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E04E6E04B;
 Sat, 21 Dec 2019 12:15:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45B5EA47DC;
 Sat, 21 Dec 2019 12:15:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Sat, 21 Dec 2019 12:15:17 -0000
Message-ID: <157693051725.32690.9441903537620571046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220010403.29111-1-manasi.d.navare@intel.com>
In-Reply-To: <20191220010403.29111-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Disable_Port_sync_mode_correctly_on_teardown_=28rev?=
 =?utf-8?q?2=29?=
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

Series: drm/i915/dp: Disable Port sync mode correctly on teardown (rev2)
URL   : https://patchwork.freedesktop.org/series/71196/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7612_full -> Patchwork_15856_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_15856_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15856_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15856_full:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - shard-snb:          [FAIL][1] -> ([FAIL][2], [FAIL][3]) ([i915#436])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-snb5/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-snb2/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-snb6/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7612_full and Patchwork_15856_full:

### New Piglit tests (8) ###

  * spec@!opengl 3.0@depth-cube-map:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@arb_framebuffer_object@framebuffer-blit-levels read rgba:
    - Statuses : 1 fail(s)
    - Exec time: [6.48] s

  * spec@arb_framebuffer_object@framebuffer-blit-levels read stencil:
    - Statuses : 1 fail(s)
    - Exec time: [6.42] s

  * spec@arb_sampler_objects@sampler-incomplete:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 8 64 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec2-short_ivec4-double_double-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat2_array3-position-double_dmat2x3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-int_ivec2-double_dmat3x4:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  

Known issues
------------

  Here are the changes found in Patchwork_15856_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#456])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb9/igt@gem_ctx_isolation@vecs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb3/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112080]) +5 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276]) +13 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +6 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#707])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb2/igt@gem_exec_schedule@smoketest-vebox.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb9/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#435])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@gem_exec_whisper@normal.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb4/igt@gem_exec_whisper@normal.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][18] -> [TIMEOUT][19] ([fdo#112126] / [i915#530])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#435] / [i915#472])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb1/igt@gem_sync@basic-store-each.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb6/igt@gem_sync@basic-store-each.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#454])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#54]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#109]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl10/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([IGT#5])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#34])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#49]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#456] / [i915#460]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb9/igt@kms_frontbuffer_tracking@psr-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][40] -> [FAIL][41] ([i915#31])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-apl4/igt@kms_setmode@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-apl6/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43] +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][44] ([i915#180]) -> [PASS][45] +4 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-tglb:         [INCOMPLETE][46] ([i915#456]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb1/igt@gem_ctx_isolation@rcs0-s3.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][48] ([fdo#109276] / [fdo#112080]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb2/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-glk:          [FAIL][50] ([i915#679]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-glk4/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-glk3/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][52] ([fdo#111735]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][54] ([i915#435]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb6/igt@gem_exec_create@madvise.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb9/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][56] ([fdo#112146]) -> [PASS][57] +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][58] ([i915#456] / [i915#472]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@gem_exec_suspend@basic-s0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb7/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [TIMEOUT][60] ([i915#530]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-glk7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [INCOMPLETE][62] ([i915#456] / [i915#460]) -> [PASS][63] +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb4/igt@gem_workarounds@suspend-resume-context.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          [SKIP][64] ([fdo#109271]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][66] ([i915#54]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][68] ([i915#460]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][70] ([i915#79]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][72] ([i915#49]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [DMESG-WARN][74] ([i915#766]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [INCOMPLETE][76] ([fdo#103665]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][78] ([i915#648] / [i915#667]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-skl:          [DMESG-WARN][80] ([i915#109]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl4/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl4/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][82] ([fdo#108145] / [i915#265]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [DMESG-WARN][84] ([IGT#6]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl1/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl9/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][88] ([i915#402]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb4/igt@kms_psr@psr2_suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb5/igt@kms_psr@psr2_suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][90] ([fdo#112080]) -> [PASS][91] +16 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][92] ([fdo#109276]) -> [PASS][93] +19 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][94] ([fdo#109276] / [fdo#112080]) -> [FAIL][95] ([IGT#28])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][96] ([fdo#112080]) -> [SKIP][97] ([fdo#111912] / [fdo#112080])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb7/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][98] ([i915#82]) -> [DMESG-WARN][99] ([i915#443] / [i915#444] / [i915#503])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-snb4/igt@gem_eio@kms.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-snb2/igt@gem_eio@kms.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-snb:          [SKIP][100] ([fdo#109271]) -> [INCOMPLETE][101] ([i915#82])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-snb1/igt@i915_pm_dc@dc5-dpms.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-snb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][102] ([i915#454]) -> [SKIP][103] ([i915#468])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_requests:
    - shard-iclb:         [DMESG-WARN][104] -> [INCOMPLETE][105] ([i915#140])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb6/igt@i915_selftest@mock_requests.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-iclb2/igt@i915_selftest@mock_requests.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][106] ([i915#648] / [i915#667]) -> [INCOMPLETE][107] ([i915#648])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#503]: https://gitlab.freedesktop.org/drm/intel/issues/503
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7612 -> Patchwork_15856

  CI-20190529: 20190529
  CI_DRM_7612: d8427504d16e1aa87eab972f812c02478522bd70 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15856: fd216e800c73d487c734de2a75a4357fd3abc3cf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15856/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
