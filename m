Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 512BB1365A3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 04:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177BB6E987;
	Fri, 10 Jan 2020 03:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C09BA6E987;
 Fri, 10 Jan 2020 03:03:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB07BA0087;
 Fri, 10 Jan 2020 03:03:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Jan 2020 03:03:50 -0000
Message-ID: <157862543067.30837.12541863626833182366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109085717.873326-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200109085717.873326-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Push_context_st?=
 =?utf-8?q?ate_allocation_earlier?=
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

Series: series starting with [CI,1/3] drm/i915/gt: Push context state allocation earlier
URL   : https://patchwork.freedesktop.org/series/71808/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7706_full -> Patchwork_16035_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16035_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16035_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16035_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@gem-idle:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb7/igt@i915_pm_rpm@gem-idle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb3/igt@i915_pm_rpm@gem-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_16035_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-apl3/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-apl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#461])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111735])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([CI#80] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb7/igt@gem_exec_nop@basic-series.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb6/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +10 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-blt:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#111606] / [fdo#111677] / [i915#472]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#460] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb8/igt@gem_exec_suspend@basic-s4-devices.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#470] / [i915#475])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ringfill@basic-default-fd:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb6/igt@gem_ringfill@basic-default-fd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb1/igt@gem_ringfill@basic-default-fd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#454])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#413])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@i915_pm_rps@reset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_gem_contexts:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#455])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb5/igt@i915_selftest@live_gem_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb1/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#300])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#72])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#699])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-skl3/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-apl8/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-apl8/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#31])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl2/igt@kms_setmode@basic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-skl9/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +12 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-kbl7/igt@gem_ctx_isolation@vcs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-kbl1/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_eio@in-flight-immediate:
    - shard-tglb:         [INCOMPLETE][59] ([i915#534]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb3/igt@gem_eio@in-flight-immediate.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb1/igt@gem_eio@in-flight-immediate.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][61] ([i915#232]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-snb4/igt@gem_eio@reset-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-snb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][63] ([fdo#109276]) -> [PASS][64] +14 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb8/igt@gem_exec_schedule@preempt-queue-render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb7/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][69] ([i915#463] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][71] ([i915#520]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [FAIL][73] ([i915#644]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][75] ([i915#472] / [i915#707]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb3/igt@gem_sync@basic-many-each.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb2/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb5/igt@gem_sync@basic-store-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb5/igt@gem_sync@basic-store-all.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-glk:          [FAIL][79] ([fdo#103375]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-glk9/igt@i915_suspend@fence-restore-tiled2untiled.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][81] ([i915#109]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][83] ([i915#54]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][85] ([i915#79]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         [FAIL][87] ([i915#49]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][93] ([i915#31]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-glk6/igt@kms_setmode@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-glk4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][95] ([fdo#103665]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][99] ([i915#454]) -> [SKIP][100] ([i915#468])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][101] ([i915#468]) -> [FAIL][102] ([i915#454])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - shard-snb:          [INCOMPLETE][103] ([i915#82]) -> [SKIP][104] ([fdo#109271])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-snb2/igt@i915_pm_rpm@gem-evict-pwrite.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-snb4/igt@i915_pm_rpm@gem-evict-pwrite.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][105] ([fdo#107724]) -> [SKIP][106] ([fdo#109349])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7706 -> Patchwork_16035

  CI-20190529: 20190529
  CI_DRM_7706: 3d36ffaa59259e46de9dde125d18d228d764609f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16035: 775192ffb31a3c35238dcf751c8286aefa12b5b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16035/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
