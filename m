Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 960A7144A26
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 04:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 092E26E2B4;
	Wed, 22 Jan 2020 03:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DE3A6E22F;
 Wed, 22 Jan 2020 03:02:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7428BA0088;
 Wed, 22 Jan 2020 03:02:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 22 Jan 2020 03:02:25 -0000
Message-ID: <157966214544.22394.7322586846393826319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120122103.26886-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200120122103.26886-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev20=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev20)
URL   : https://patchwork.freedesktop.org/series/70059/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7781_full -> Patchwork_16174_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16174_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16174_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16174_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb8/igt@i915_pm_rpm@cursor-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb8/igt@i915_pm_rpm@cursor-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16174_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-hsw:          [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw5/igt@gem_busy@close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-hsw7/igt@gem_busy@close-race.html

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb7/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk2/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-glk4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#679])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#110841])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472] / [i915#476])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@gem_eio@kms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111593] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb2/igt@gem_exec_parallel@vcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb5/igt@gem_exec_parallel@vcs0.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#463] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-hsw:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-glk:          [PASS][29] -> [INCOMPLETE][30] ([CI#80] / [i915#58] / [k.org#198133])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk8/igt@gem_persistent_relocs@forked-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-glk6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#644])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#694])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw4/igt@gem_tiled_blits@normal.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#198])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl4/igt@i915_selftest@mock_requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl6/igt@i915_selftest@mock_requests.html
    - shard-glk:          [PASS][37] -> [INCOMPLETE][38] ([i915#58] / [k.org#198133])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk2/igt@i915_selftest@mock_requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-glk4/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-apl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][41] -> [DMESG-WARN][42] ([i915#109]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][45] -> [FAIL][46] ([i915#96])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#49])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-iclb:         [PASS][51] -> [DMESG-WARN][52] ([fdo#111764]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109276]) +14 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +6 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-apl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [FAIL][59] ([i915#679]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl1/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][61] ([fdo#109276] / [fdo#112080]) -> [PASS][62] +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][63] ([i915#461] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][65] ([i915#140]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@gem_exec_balancer@hang.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][67] ([fdo#110854]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111593] / [i915#472]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@gem_exec_gttfill@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb2/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@vcs0-fds:
    - shard-tglb:         [INCOMPLETE][71] ([i915#470] / [i915#472]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb2/igt@gem_exec_parallel@vcs0-fds.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb2/igt@gem_exec_parallel@vcs0-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][73] ([i915#677]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +17 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][79] ([fdo#112271] / [i915#530]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [INCOMPLETE][81] ([CI#80] / [fdo#103927] / [i915#530]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [INCOMPLETE][83] ([i915#530] / [i915#61]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw6/igt@gem_persistent_relocs@forked-thrashing.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-hsw1/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][85] ([i915#472] / [i915#707]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb6/igt@gem_sync@basic-each.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb4/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][87] ([i915#472]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb7/igt@gem_sync@basic-store-each.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb4/igt@gem_sync@basic-store-each.html

  * igt@i915_selftest@live_gem_contexts:
    - shard-tglb:         [INCOMPLETE][89] ([i915#455] / [i915#472]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@i915_selftest@live_gem_contexts.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb1/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@mock_requests:
    - shard-hsw:          [INCOMPLETE][91] ([i915#61]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw1/igt@i915_selftest@mock_requests.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-hsw2/igt@i915_selftest@mock_requests.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][93] ([i915#49]) -> [PASS][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][95] ([i915#69]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-tglb:         [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb4/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb1/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][101] ([fdo#112080]) -> [PASS][102] +10 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][103] ([fdo#109276] / [fdo#112080]) -> [FAIL][104] ([IGT#28]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][105] ([i915#468]) -> [FAIL][106] ([i915#454])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-hsw:          [SKIP][107] ([fdo#109271]) -> [SKIP][108] ([fdo#109271] / [fdo#111827]) +51 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw7/igt@kms_chamelium@common-hpd-after-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-hsw7/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         [SKIP][109] ([fdo#109284]) -> [SKIP][110] ([fdo#109284] / [fdo#111827]) +52 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@kms_chamelium@dp-frame-dump.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb6/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-cmp-yv12:
    - shard-glk:          [SKIP][111] ([fdo#109271]) -> [SKIP][112] ([fdo#109271] / [fdo#111827]) +50 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk8/igt@kms_chamelium@hdmi-cmp-yv12.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-glk8/igt@kms_chamelium@hdmi-cmp-yv12.html

  * igt@kms_chamelium@hdmi-crc-xrgb1555:
    - shard-snb:          [SKIP][113] ([fdo#109271]) -> [SKIP][114] ([fdo#109271] / [fdo#111827]) +51 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-snb1/igt@kms_chamelium@hdmi-crc-xrgb1555.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-snb5/igt@kms_chamelium@hdmi-crc-xrgb1555.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          [SKIP][115] ([fdo#109271]) -> [SKIP][116] ([fdo#109271] / [fdo#111827]) +52 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          [SKIP][117] ([fdo#109271]) -> [SKIP][118] ([fdo#109271] / [fdo#111827]) +47 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl6/igt@kms_chamelium@vga-hpd-after-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl5/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          [SKIP][119] ([fdo#109271]) -> [SKIP][120] ([fdo#109271] / [fdo#111827]) +50 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl1/igt@kms_chamelium@vga-hpd-without-ddc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-kbl2/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][121], [FAIL][122]) ([fdo#111093]) -> ([FAIL][123], [FAIL][124], [FAIL][125]) ([fdo#108654] / [fdo#111093])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb8/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb8/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb4/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-iclb2/igt@runner@aborted.html
    - shard-glk:          [FAIL][126] ([i915#997] / [k.org#202321]) -> ([FAIL][127], [FAIL][128]) ([i915#873] / [i915#997] / [k.org#202321])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-glk4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-glk2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][129], [FAIL][130]) ([i915#69] / [i915#997]) -> ([FAIL][131], [FAIL][132], [FAIL][133]) ([i915#69] / [i915#873] / [i915#997])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl3/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl8/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl5/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/shard-skl9/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108654]: https://bugs.freedesktop.org/show_bug.cgi?id=108654
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7781 -> Patchwork_16174

  CI-20190529: 20190529
  CI_DRM_7781: 3f2b341ae1fde67f823aeb715c6f489affdef8b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5374: 83c32e859202e43ff6a8cca162c76fcd90ad6e3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16174: 553ba35fe574cc3b10b3fc35b9cfed78478bb38f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16174/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
