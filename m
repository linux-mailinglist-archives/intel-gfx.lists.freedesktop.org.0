Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1244B1222E8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 05:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62436E93A;
	Tue, 17 Dec 2019 04:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 718E56E938;
 Tue, 17 Dec 2019 04:14:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 681C7A0094;
 Tue, 17 Dec 2019 04:14:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Dec 2019 04:14:35 -0000
Message-ID: <157655607539.21845.5650453651727590092@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216161717.2688274-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191216161717.2688274-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Unpin_vma-=3Eobj_on_ear?=
 =?utf-8?q?ly_error?=
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

Series: series starting with [1/2] drm/i915: Unpin vma->obj on early error
URL   : https://patchwork.freedesktop.org/series/70990/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7576_full -> Patchwork_15795_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15795_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#679]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl10/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-skl5/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][5] -> [INCOMPLETE][6] ([i915#82])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb6/igt@gem_eio@kms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb6/igt@gem_exec_schedule@independent-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-iclb4/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-tglb:         [PASS][11] -> [TIMEOUT][12] ([i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][13] -> [DMESG-WARN][14] ([fdo#111870]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#456] / [i915#460])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb5/igt@i915_suspend@debugfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb5/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#667])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#474] / [i915#667])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-iclb4/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-kbl:          [PASS][29] -> [DMESG-FAIL][30] ([i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl6/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-kbl4/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-apl7/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#460])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb6/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb5/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [fdo#112080]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb6/igt@gem_ctx_persistence@vcs1-persistence.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-iclb4/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-apl6/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-apl8/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [INCOMPLETE][39] ([i915#456] / [i915#460] / [i915#534]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb7/igt@gem_eio@in-flight-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][41] ([i915#470]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb6/igt@gem_exec_parallel@fds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb2/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][45] ([i915#520]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][51] ([fdo#111870]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][53] ([i915#716]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [DMESG-WARN][55] ([i915#747]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-hsw4/igt@i915_selftest@mock_sanitycheck.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-hsw1/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [DMESG-WARN][57] ([i915#747]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-snb7/igt@i915_selftest@mock_sanitycheck.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-snb4/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +5 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl3/igt@i915_suspend@forcewake.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [INCOMPLETE][63] ([i915#435] / [i915#667]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-modeset-vs-hang-interruptible:
    - shard-skl:          [INCOMPLETE][67] ([i915#198]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl10/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-skl5/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [INCOMPLETE][69] ([i915#460] / [i915#516]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb4/igt@kms_flip@flip-vs-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb7/igt@kms_flip@flip-vs-suspend.html
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-apl1/igt@kms_flip@flip-vs-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-apl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [INCOMPLETE][73] ([i915#456] / [i915#460] / [i915#516]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][75] ([i915#49]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [INCOMPLETE][77] ([i915#474] / [i915#667]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [INCOMPLETE][79] ([i915#456] / [i915#460]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][81] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][83] ([fdo#108145]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][87] ([fdo#109276]) -> [PASS][88] +6 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][89] ([i915#832]) -> [FAIL][90] ([i915#818])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-hsw4/igt@gem_tiled_blits@normal.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-hsw6/igt@gem_tiled_blits@normal.html

  * igt@kms_atomic_transition@6x-modeset-transitions-fencing:
    - shard-tglb:         [SKIP][91] ([fdo#112016] / [fdo#112021]) -> [SKIP][92] ([fdo#112021])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-fencing.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-fencing.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [INCOMPLETE][94] ([fdo#103665] / [i915#600])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][95] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][96] ([fdo#112347] / [i915#648] / [i915#667])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [INCOMPLETE][97] ([i915#456] / [i915#460]) -> [DMESG-WARN][98] ([i915#402])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7576/shard-tglb7/igt@kms_psr@psr2_suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/shard-tglb6/igt@kms_psr@psr2_suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7576 -> Patchwork_15795

  CI-20190529: 20190529
  CI_DRM_7576: 4073abc279f49e14faab8f9adc0149e04d0568e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15795: bce5074c0746d90effbaf6e5a87ffea73ae6ae2c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15795/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
