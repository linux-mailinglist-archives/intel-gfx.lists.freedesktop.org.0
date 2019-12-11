Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E02011A560
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 08:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829B56EA8B;
	Wed, 11 Dec 2019 07:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FF0D6EA88;
 Wed, 11 Dec 2019 07:49:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96D5BA0114;
 Wed, 11 Dec 2019 07:49:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Dec 2019 07:49:35 -0000
Message-ID: <157605057558.30693.4195338550575503134@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210153620.3929372-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191210153620.3929372-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Check_we_are_the_Ironlake_IPS_provider_before_dereg?=
 =?utf-8?q?istering?=
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

Series: drm/i915/gt: Check we are the Ironlake IPS provider before deregistering
URL   : https://patchwork.freedesktop.org/series/70700/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7534_full -> Patchwork_15674_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15674_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@gem_ctx_isolation@vcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb8/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl4/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_basic@basic-vcs1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112080]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_basic@basic-vcs1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-iclb6/igt@gem_exec_basic@basic-vcs1.html

  * igt@gem_exec_capture@capture-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_capture@capture-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-iclb6/igt@gem_exec_capture@capture-bsd2.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@gem_exec_nop@basic-sequential.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb6/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#470])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@gem_exec_parallel@fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb3/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111736])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@gem_exec_parallel@vecs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb1/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#716])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl8/igt@gem_exec_parse_blt@allowed-single.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-apl7/igt@gem_exec_parse_blt@allowed-single.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103927] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-apl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][25] -> [DMESG-WARN][26] ([fdo#111870])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-snb6/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([i915#747])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb4/igt@i915_selftest@mock_sanitycheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-snb6/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#221])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl9/igt@kms_flip@flip-vs-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl6/igt@kms_flip@flip-vs-suspend.html
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl2/igt@kms_flip@flip-vs-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-apl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#49])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([fdo#103665])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665] / [i915#435])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][55] ([i915#69]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@pi-ringfull-bsd2:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +8 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_exec_schedule@pi-ringfull-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-iclb1/igt@gem_exec_schedule@pi-ringfull-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb7/igt@gem_userptr_blits@dmabuf-unsync.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-snb6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][65] ([i915#109]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl4/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          [FAIL][67] ([i915#54]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-apl:          [DMESG-WARN][69] ([IGT#6]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][71] ([i915#79]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [INCOMPLETE][73] ([i915#474] / [i915#667]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][75] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][77] ([i915#456] / [i915#460]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][81] ([fdo#108145] / [i915#265]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +5 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-iclb1/igt@perf_pmu@busy-accuracy-2-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][87] ([fdo#112080]) -> [SKIP][88] ([fdo#111912] / [fdo#112080])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-tglb3/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][89] ([i915#82]) -> [DMESG-WARN][90] ([i915#444])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb7/igt@gem_eio@kms.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-snb1/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][91] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][92] ([fdo#112391] / [i915#648] / [i915#667])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][93] ([i915#648]) -> [INCOMPLETE][94] ([fdo#112391] / [i915#648] / [i915#667])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
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
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15674

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15674: 40c3699ed3534730cd5059a0b08a98401adce857 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15674/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
