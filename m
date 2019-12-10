Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1011189E5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 14:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6BA6E8E5;
	Tue, 10 Dec 2019 13:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E98C96E8EB;
 Tue, 10 Dec 2019 13:33:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0B91A00C7;
 Tue, 10 Dec 2019 13:33:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 10 Dec 2019 13:33:42 -0000
Message-ID: <157598482288.23231.12498454879193584529@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210150415.10705-1-shawn.c.lee@intel.com>
In-Reply-To: <20191210150415.10705-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/cml=3A_Remove_unsupport_PCI_ID?=
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

Series: drm/i915/cml: Remove unsupport PCI ID
URL   : https://patchwork.freedesktop.org/series/70668/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7524_full -> Patchwork_15663_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15663_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#570])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl10/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl10/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_schedule@independent-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-iclb1/igt@gem_exec_schedule@independent-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-iclb5/igt@gem_exec_schedule@independent-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#707])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-iclb1/igt@gem_exec_store@pages-vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-iclb5/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][13] -> [DMESG-WARN][14] ([fdo#111870])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-snb4/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#766])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb3/igt@i915_pm_rpm@fences-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb2/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#455])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb2/igt@i915_selftest@live_gt_timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb6/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#747])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-kbl1/igt@i915_selftest@mock_sanitycheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-kbl1/igt@i915_selftest@mock_sanitycheck.html
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#747])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl10/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#456] / [i915#460]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb3/igt@i915_suspend@sysfs-reader.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb5/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [PASS][27] -> [SKIP][28] ([fdo#109271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#456] / [i915#460] / [i915#474])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][37] -> [INCOMPLETE][38] ([fdo#103665])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#460])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb9/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#62]) +11 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-apl2/igt@prime_vgem@basic-fence-flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-apl2/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [FAIL][47] ([i915#679]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-apl2/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-apl3/igt@gem_ctx_persistence@vecs0-mixed-process.html
    - shard-glk:          [FAIL][49] ([i915#679]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-glk9/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-glk7/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][51] ([i915#435]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb8/igt@gem_exec_nop@basic-parallel.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb1/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111736]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb1/igt@gem_exec_parallel@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb7/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111606] / [fdo#111677]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb6/igt@gem_exec_schedule@preempt-queue-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb9/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][61] ([i915#435] / [i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb3/igt@gem_sync@basic-store-each.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb2/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-snb:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-snb4/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-hsw:          [DMESG-WARN][65] ([IGT#6]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-hsw8/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-skl:          [FAIL][67] ([i915#54]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
    - shard-skl:          [INCOMPLETE][69] ([i915#646]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][75] ([fdo#112391] / [i915#648] / [i915#667]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][79] ([fdo#109642] / [fdo#111068]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-apl3/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-apl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][83] ([fdo#111912] / [fdo#112080]) -> [SKIP][84] ([fdo#112080])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-tglb8/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][85] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][86] ([fdo#112347] / [i915#648] / [i915#667])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][87] ([i915#648]) -> [INCOMPLETE][88] ([i915#648] / [i915#667])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][89] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][90] ([i915#648])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7524 -> Patchwork_15663

  CI-20190529: 20190529
  CI_DRM_7524: 28ecf94a6f1072fc4744c06f5b3d267297125b37 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15663: f5de2b3208a57efe8d2a1e8fa53dbd5da9028a87 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15663/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
