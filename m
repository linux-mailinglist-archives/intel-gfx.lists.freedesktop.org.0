Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E3D11DBC0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 02:40:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C02C46E25A;
	Fri, 13 Dec 2019 01:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED8F56E10C;
 Fri, 13 Dec 2019 01:40:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBBE1A0087;
 Fri, 13 Dec 2019 01:40:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Date: Fri, 13 Dec 2019 01:40:34 -0000
Message-ID: <157620123486.23799.11561718801403819494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212091130.zf2g53njf5u24wk6@kili.mountain>
In-Reply-To: <20191212091130.zf2g53njf5u24wk6@kili.mountain>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_fix_off_by_one_in_parse=5Fgeneric=5Fdtd=28=29?=
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

Series: drm/i915/bios: fix off by one in parse_generic_dtd()
URL   : https://patchwork.freedesktop.org/series/70820/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7549_full -> Patchwork_15714_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15714_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#800])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl7/igt@gem_exec_balancer@bonded-slice.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_reloc@basic-active:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb2/igt@gem_exec_reloc@basic-active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-tglb6/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_schedule@deep-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_exec_schedule@deep-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb6/igt@gem_exec_schedule@deep-bsd2.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb8/igt@gem_exec_schedule@fifo-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb2/igt@gem_exec_schedule@fifo-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#707])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@gem_exec_schedule@smoketest-vebox.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-tglb6/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-iclb:         [PASS][15] -> [DMESG-WARN][16] ([fdo#111764])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_exec_suspend@basic-s0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb1/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-iclb:         [PASS][17] -> [TIMEOUT][18] ([i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@wait-vcs1:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112080])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_wait@wait-vcs1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb5/igt@gem_wait@wait-vcs1.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#747])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl10/igt@i915_selftest@mock_sanitycheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl7/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#52] / [i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#177] / [i915#52] / [i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#34])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-glk1/igt@kms_flip@2x-flip-vs-wf_vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-glk2/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#221])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-snb:          [PASS][37] -> [SKIP][38] ([fdo#109271]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#49]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([fdo#112393] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#123] / [i915#667])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl4/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl10/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#69]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665] / [i915#648] / [i915#667]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#31])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl1/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-apl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][57] ([i915#232]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb2/igt@gem_eio@reset-stress.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111593]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb1/igt@gem_exec_parallel@vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-tglb3/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][63] ([i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-snb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [FAIL][65] ([i915#520]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-hsw8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [TIMEOUT][67] ([i915#530]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][69] ([i915#644]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-iclb:         [FAIL][71] ([i915#644]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][73] ([i915#69]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@gem_softpin@noreloc-s3.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl8/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-b-ctm-max:
    - shard-skl:          [DMESG-WARN][75] ([i915#109]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl1/igt@kms_color@pipe-b-ctm-max.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl2/igt@kms_color@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][77] ([i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [FAIL][79] ([i915#52] / [i915#54]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-snb:          [DMESG-WARN][83] ([i915#42]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-kbl:          [INCOMPLETE][85] ([fdo#103665]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl7/igt@kms_flip@plain-flip-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-kbl2/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][87] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [INCOMPLETE][89] ([i915#474] / [i915#667]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][91] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][93] ([fdo#109642] / [fdo#111068]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][95] ([fdo#109441]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][97] ([i915#31]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl7/igt@kms_setmode@basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +10 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][101] ([fdo#112080]) -> [PASS][102] +8 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][103] ([fdo#109276]) -> [PASS][104] +7 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][105] ([fdo#109276] / [fdo#112080]) -> [FAIL][106] ([IGT#28])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][107] ([i915#69]) -> ([FAIL][108], [FAIL][109]) ([i915#69] / [k.org#204565])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7549/shard-skl4/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl7/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/shard-skl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7549 -> Patchwork_15714

  CI-20190529: 20190529
  CI_DRM_7549: 9573e1b7d1cb54cc984cf5c4f93a743641d868da @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15714: 88c80f89a4ce5cd0652ee3f523f24c82d2549566 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15714/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
