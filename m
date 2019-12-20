Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5C9127872
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 10:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5756EBFE;
	Fri, 20 Dec 2019 09:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6AF06E40F;
 Fri, 20 Dec 2019 09:50:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CBA37A00E8;
 Fri, 20 Dec 2019 09:50:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Fri, 20 Dec 2019 09:50:48 -0000
Message-ID: <157683544879.9211.2805843537758006228@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218195823.130560-1-rajatja@google.com>
In-Reply-To: <20191218195823.130560-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRESEND=2Cv4=2C1/3=5D_drm/i915=3A_Move_the_?=
 =?utf-8?q?code_to_populate_ACPI_device_ID_into_intel=5Facpi?=
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

Series: series starting with [RESEND,v4,1/3] drm/i915: Move the code to populate ACPI device ID into intel_acpi
URL   : https://patchwork.freedesktop.org/series/71134/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7599_full -> Patchwork_15832_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15832_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb4/igt@gem_ctx_shared@q-smoketest-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb3/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#707])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb2/igt@gem_sync@basic-store-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb5/igt@gem_sync@basic-store-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#460])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#435])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#435] / [i915#456] / [i915#460])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#221])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#667]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([fdo#103665])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#456] / [i915#460]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#173])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb3/igt@kms_psr@no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb1/igt@kms_psr@no_drrs.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-tglb:         [INCOMPLETE][43] ([i915#456]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb1/igt@gem_ctx_isolation@vecs0-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb7/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [fdo#112080]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][47] ([fdo#110854]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +9 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][51] ([i915#530]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-snb:          [TIMEOUT][53] ([i915#530]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][57] ([i915#470] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@gem_sync@basic-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb9/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][59] ([i915#435] / [i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@gem_sync@basic-store-each.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb3/igt@gem_sync@basic-store-each.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][61] ([i915#716]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-apl3/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [DMESG-WARN][63] ([i915#716]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][65] ([i915#454]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][69] ([i915#54]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-hsw:          [DMESG-WARN][71] ([IGT#6]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-hsw2/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-skl:          [INCOMPLETE][73] ([i915#646]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [FAIL][75] ([i915#52] / [i915#54]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][77] ([i915#49]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [INCOMPLETE][79] ([i915#474] / [i915#667]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [FAIL][81] ([i915#49]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-tglb:         [INCOMPLETE][83] ([i915#456] / [i915#460]) -> [PASS][84] +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][89] ([fdo#108838] / [i915#435]) -> [INCOMPLETE][90] ([i915#435])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-tglb5/igt@gem_exec_create@forked.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-tglb9/igt@gem_exec_create@forked.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][91] ([i915#648]) -> [INCOMPLETE][92] ([i915#648] / [i915#667])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  Additional (1): pig-glk-j5005 
  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7599 -> Patchwork_15832

  CI-20190529: 20190529
  CI_DRM_7599: 03dfaf2e5f39b632d0187544f3c988b8596f11b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15832: 38d88a5a15cb2d6533ae571bb5378e6b1505218d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15832/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
