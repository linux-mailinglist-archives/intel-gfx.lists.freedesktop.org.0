Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA20144ACC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 05:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0701A6EF29;
	Wed, 22 Jan 2020 04:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BC166EF28;
 Wed, 22 Jan 2020 04:31:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 221C3A0119;
 Wed, 22 Jan 2020 04:31:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Wed, 22 Jan 2020 04:31:06 -0000
Message-ID: <157966746610.22392.5535697333298885026@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121070955.26426-1-ramalingam.c@intel.com>
In-Reply-To: <20200121070955.26426-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/hdcp=3A_optimizing_the_srm_handling?=
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

Series: drm/hdcp: optimizing the srm handling
URL   : https://patchwork.freedesktop.org/series/72312/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7782_full -> Patchwork_16182_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16182_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16182_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16182_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  
Known issues
------------

  Here are the changes found in Patchwork_16182_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd1.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#108838] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb8/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb5/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][15] -> [TIMEOUT][16] ([fdo#112271] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-hsw:          [PASS][17] -> [TIMEOUT][18] ([fdo#112271] / [i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl9/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [PASS][21] -> [INCOMPLETE][22] ([i915#530] / [i915#61])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw1/igt@gem_persistent_relocs@forked-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw7/igt@gem_persistent_relocs@forked-thrashing.html
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103665] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb8/igt@gem_sync@basic-store-each.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb5/igt@gem_sync@basic-store-each.html

  * igt@i915_selftest@mock_requests:
    - shard-apl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103927])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-apl4/igt@i915_selftest@mock_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-apl4/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#109]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-hsw:          [PASS][31] -> [INCOMPLETE][32] ([i915#61])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-hsw:          [PASS][33] -> [DMESG-WARN][34] ([i915#44])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw6/igt@kms_flip@modeset-vs-vblank-race.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw5/igt@kms_flip@modeset-vs-vblank-race.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#69])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-iclb:         [PASS][47] -> [INCOMPLETE][48] ([i915#140])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_create@forked:
    - shard-kbl:          [TIMEOUT][51] ([fdo#112271] / [i915#940]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-kbl1/igt@gem_exec_create@forked.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-kbl3/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][53] ([i915#472] / [i915#476]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb7/igt@gem_exec_parallel@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb6/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +15 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][59] ([i915#530] / [i915#61]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible:
    - shard-skl:          [FAIL][61] ([i915#520]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl1/igt@gem_persistent_relocs@forked-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl5/igt@gem_persistent_relocs@forked-interruptible.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [TIMEOUT][63] ([fdo#112271] / [i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-tglb:         [TIMEOUT][65] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [TIMEOUT][67] ([fdo#112271] / [i915#530]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][69] ([i915#470] / [i915#472] / [i915#475]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb1/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][71] ([i915#454]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@universal-planes-dpms:
    - shard-iclb:         [INCOMPLETE][73] ([i915#140] / [i915#189]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb2/igt@i915_pm_rpm@universal-planes-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb3/igt@i915_pm_rpm@universal-planes-dpms.html

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [INCOMPLETE][75] ([i915#472]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb8/igt@i915_selftest@mock_requests.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb6/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [INCOMPLETE][77] ([fdo#103665]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-kbl7/igt@i915_selftest@mock_requests.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-kbl1/igt@i915_selftest@mock_requests.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-hsw:          [DMESG-WARN][79] ([i915#44]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw5/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw2/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [DMESG-WARN][81] ([i915#109]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl7/igt@kms_color@pipe-b-ctm-0-5.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl7/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][83] ([IGT#5]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - shard-glk:          [FAIL][85] ([i915#52] / [i915#54]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90] +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +11 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][93] ([i915#69]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][97] ([fdo#108145] / [i915#265]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][101] ([fdo#112080]) -> [PASS][102] +11 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-hsw:          [TIMEOUT][103] ([fdo#112271] / [i915#530]) -> [INCOMPLETE][104] ([i915#530] / [i915#61])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][105] ([i915#818]) -> [FAIL][106] ([i915#694])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-hsw5/igt@gem_tiled_blits@interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][107] ([i915#468]) -> [FAIL][108] ([i915#454])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][109] ([i915#454]) -> [SKIP][110] ([i915#468])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7782/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7782 -> Patchwork_16182

  CI-20190529: 20190529
  CI_DRM_7782: 088c75b6c6f800c7c1f04c4b90a73a2c2eef7c96 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5375: 6a6f7a50c5b2a62f5294b37a810ec7458aaeb774 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16182: 4f9d6fab8a62fa6965e3912cd5bfc3595be2f77e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16182/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
