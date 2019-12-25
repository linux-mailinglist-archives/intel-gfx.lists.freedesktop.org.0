Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F9812A640
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Dec 2019 07:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A4989F07;
	Wed, 25 Dec 2019 06:00:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7731389F07;
 Wed, 25 Dec 2019 06:00:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DA7BA00E8;
 Wed, 25 Dec 2019 06:00:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 25 Dec 2019 06:00:52 -0000
Message-ID: <157725365228.4278.11457109353012180844@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223154522.9797-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191223154522.9797-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev12=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev12)
URL   : https://patchwork.freedesktop.org/series/70059/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7628_full -> Patchwork_15897_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7628_full and Patchwork_15897_full:

### New Piglit tests (11) ###

  * spec@arb_texture_rg@fbo-rg-gl_red:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * spec@arb_uniform_buffer_object@rendering-dsa-offset:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2_array3-position-double_dvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat2x3-float_vec3_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@ext_framebuffer_multisample@alpha-to-one-dual-src-blend 2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_framebuffer_multisample@alpha-to-one-single-sample-buffer 4:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@ext_framebuffer_multisample@draw-buffers-alpha-to-coverage 8:
    - Statuses : 1 fail(s)
    - Exec time: [0.22] s

  * spec@ext_packed_depth_stencil@fbo-stencil-gl_depth24_stencil8-copypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  * spec@ext_transform_feedback@position-render-bufferbase:
    - Statuses : 1 fail(s)
    - Exec time: [0.08] s

  * spec@glsl-4.10@execution@vs_in@vs-input-float_vec3_array3-position-double_double_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3x2-float_mat2x3_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  

Known issues
------------

  Here are the changes found in Patchwork_15897_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-apl7/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#456]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb4/igt@gem_ctx_isolation@vcs1-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb7/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#435])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb2/igt@gem_exec_nop@basic-sequential.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb6/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111606] / [fdo#111677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-snb:          [PASS][9] -> [TIMEOUT][10] ([i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#455])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb1/igt@i915_selftest@live_gt_timelines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb9/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#109])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl5/igt@kms_color@pipe-b-ctm-0-25.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([IGT#5])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip_tiling@flip-to-yf-tiled:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#107931] / [i915#167])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl8/igt@kms_flip_tiling@flip-to-yf-tiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl8/igt@kms_flip_tiling@flip-to-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@suspend:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#456] / [i915#460])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb4/igt@kms_psr@suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb4/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#460])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb9/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [FAIL][31] ([i915#679]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl2/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl4/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [FAIL][33] ([i915#490]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-snb7/igt@gem_eio@in-flight-contexts-1us.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][35] ([i915#476]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb6/igt@gem_eio@kms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [INCOMPLETE][37] ([fdo#111593]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb4/igt@gem_exec_parallel@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb1/igt@gem_exec_parallel@vcs0.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][39] ([i915#435]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb5/igt@gem_exec_reuse@single.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb3/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [INCOMPLETE][41] ([fdo#111606] / [fdo#111677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb4/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-glk:          [TIMEOUT][43] ([i915#530]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [FAIL][45] ([i915#520]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][51] ([i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb3/igt@gem_sync@basic-store-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb2/igt@gem_sync@basic-store-all.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][53] ([i915#716]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][55] ([i915#454]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_requests:
    - shard-iclb:         [INCOMPLETE][57] ([i915#140]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-iclb2/igt@i915_selftest@mock_requests.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-iclb2/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][61] ([i915#109]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl5/igt@kms_color@pipe-a-ctm-0-75.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][63] ([i915#54]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][65] ([i915#221]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl8/igt@kms_flip@flip-vs-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-glk:          [FAIL][67] ([i915#34]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-glk3/igt@kms_flip@plain-flip-fb-recreate.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-glk4/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][69] ([i915#49]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +9 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [FAIL][75] ([fdo#111842] / [i915#608]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb6/igt@kms_psr2_su@frontbuffer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          [DMESG-FAIL][77] ([i915#118] / [i915#95]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-glk3/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-glk8/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][79] ([i915#456] / [i915#460]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][81] ([fdo#111912] / [fdo#112080]) -> [SKIP][82] ([fdo#112080])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-tglb8/igt@gem_ctx_isolation@vcs2-s3.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][83] ([i915#832]) -> [FAIL][84] ([i915#818])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7628/shard-hsw2/igt@gem_tiled_blits@interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7628 -> Patchwork_15897

  CI-20190529: 20190529
  CI_DRM_7628: 22f0a3a9b0f332ef75988890b7f1d5881588a1dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15897: 85da2a5391a636492d78ab3b8bf91ce22403c5e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15897/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
