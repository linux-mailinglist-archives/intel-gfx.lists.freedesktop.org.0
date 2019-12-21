Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE28128941
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 14:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B575D6E46C;
	Sat, 21 Dec 2019 13:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 229B46E16F;
 Sat, 21 Dec 2019 13:47:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1981FA0087;
 Sat, 21 Dec 2019 13:47:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sat, 21 Dec 2019 13:47:36 -0000
Message-ID: <157693605607.32690.13461999300063183548@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218161105.30638-1-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Render/media_decompression_support_=28rev10=29?=
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

Series: drm/i915/tgl: Render/media decompression support (rev10)
URL   : https://patchwork.freedesktop.org/series/71125/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7612_full -> Patchwork_15859_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15859_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15859_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15859_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  
Known issues
------------

  Here are the changes found in Patchwork_15859_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-apl7/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-apl6/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_parallel@vcs1:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111593])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb9/igt@gem_exec_parallel@vcs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb4/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#109]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl10/igt@gem_exec_reloc@basic-gtt-read-active.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl1/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +15 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#707])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb2/igt@gem_exec_schedule@smoketest-vebox.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#470] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb9/igt@gem_sync@basic-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb4/igt@gem_sync@basic-all.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#435] / [i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb1/igt@gem_sync@basic-store-each.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb7/igt@gem_sync@basic-store-each.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl5/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][29] -> [INCOMPLETE][30] ([i915#140])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-mmap-cpu:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-apl3/igt@i915_pm_rpm@gem-mmap-cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-apl2/igt@i915_pm_rpm@gem-mmap-cpu.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#456] / [i915#460])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb6/igt@i915_suspend@debugfs-reader.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#54]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#667])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          [PASS][47] -> [DMESG-FAIL][48] ([i915#118] / [i915#95])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-glk8/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-glk9/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [INCOMPLETE][53] ([i915#456]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb2/igt@gem_ctx_isolation@vcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb3/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-glk:          [FAIL][57] ([i915#679]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-glk4/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-glk9/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111735]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][61] ([i915#435]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb6/igt@gem_exec_reuse@single.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb5/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][63] ([fdo#109276]) -> [PASS][64] +10 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd}:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][69] ([i915#456] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@gem_exec_suspend@basic-s0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb6/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [TIMEOUT][71] ([i915#530]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-glk7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-glk8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [INCOMPLETE][73] ([i915#456] / [i915#460]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb4/igt@gem_workarounds@suspend-resume-context.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb5/igt@gem_workarounds@suspend-resume-context.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][75] ([i915#716]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo:
    - shard-tglb:         [SKIP][77] ([i915#400]) -> [PASS][78] +13 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@kms_ccs@pipe-b-ccs-on-another-bo.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb9/igt@kms_ccs@pipe-b-ccs-on-another-bo.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          [SKIP][79] ([fdo#109271]) -> [PASS][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-snb1/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][81] ([i915#54]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [FAIL][83] ([i915#52] / [i915#54]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][85] ([i915#79]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][87] ([i915#49]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [DMESG-WARN][89] ([i915#766]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [INCOMPLETE][91] ([fdo#103665]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-skl:          [DMESG-WARN][93] ([i915#109]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl4/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl4/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][97] ([fdo#108145] / [i915#265]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [DMESG-WARN][99] ([IGT#6]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-skl1/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-skl9/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][103] ([i915#402]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb4/igt@kms_psr@psr2_suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb5/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][105] ([i915#460]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][107] ([fdo#112080]) -> [PASS][108] +9 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][109] ([fdo#109276] / [fdo#112080]) -> [FAIL][110] ([IGT#28])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][111] ([i915#454]) -> [SKIP][112] ([i915#468])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@mock_requests:
    - shard-iclb:         [DMESG-WARN][113] -> [INCOMPLETE][114] ([i915#140])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/shard-iclb6/igt@i915_selftest@mock_requests.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/shard-iclb2/igt@i915_selftest@mock_requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#400]: https://gitlab.freedesktop.org/drm/intel/issues/400
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7612 -> Patchwork_15859

  CI-20190529: 20190529
  CI_DRM_7612: d8427504d16e1aa87eab972f812c02478522bd70 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15859: 64e5f7fd003bf2907733d63def8aeccf77297e40 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15859/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
