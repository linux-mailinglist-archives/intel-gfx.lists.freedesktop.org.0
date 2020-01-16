Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC9913D317
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 05:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 296A06EBC9;
	Thu, 16 Jan 2020 04:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD6336EBC9;
 Thu, 16 Jan 2020 04:18:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2F11A0019;
 Thu, 16 Jan 2020 04:18:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 16 Jan 2020 04:18:56 -0000
Message-ID: <157914833676.12914.18303358762237082005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113214603.52158-1-jose.souza@intel.com>
In-Reply-To: <20200113214603.52158-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/psr=3A_Share_the_computation_of_idle_frames?=
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

Series: drm/i915/psr: Share the computation of idle frames
URL   : https://patchwork.freedesktop.org/series/71981/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7736_full -> Patchwork_16084_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16084_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16084_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16084_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-hsw7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16084_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +12 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#679])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl1/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-apl4/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111735])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([fdo#111593] / [i915#472]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb2/igt@gem_exec_parallel@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb8/igt@gem_exec_parallel@vcs0.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276]) +18 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([i915#677])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([fdo#111606] / [fdo#111677] / [i915#472])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#460] / [i915#472])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb5/igt@gem_exec_suspend@basic-s4-devices.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-tglb:         [PASS][24] -> [TIMEOUT][25] ([fdo#112126] / [fdo#112271] / [i915#530])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb8/igt@gem_persistent_relocs@forked-thrashing.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb4/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#644])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#472] / [i915#707])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb7/igt@gem_sync@basic-each.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb3/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#472])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb1/igt@gem_sync@basic-store-all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([i915#447])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#454])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_busy@basic-flip-pipe-a:
    - shard-kbl:          [PASS][36] -> [INCOMPLETE][37] ([fdo#103665])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-kbl3/igt@kms_busy@basic-flip-pipe-a.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-kbl4/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#79])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-kbl:          [PASS][40] -> [FAIL][41] ([i915#79])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#79])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][44] -> [FAIL][45] ([i915#49])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +7 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][48] -> [INCOMPLETE][49] ([i915#69]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109642] / [fdo#111068])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb1/igt@kms_psr@psr2_suspend.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][54] ([fdo#112080]) -> [PASS][55] +7 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][56] ([fdo#109276] / [fdo#112080]) -> [PASS][57] +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [DMESG-WARN][58] ([fdo#111764]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb1/igt@gem_ctx_isolation@vecs0-s3.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [FAIL][60] ([i915#679]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl3/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-apl8/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][62] ([fdo#111735]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb4/igt@gem_ctx_shared@q-smoketest-all.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [FAIL][64] ([i915#490]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [TIMEOUT][66] ([fdo#112271] / [i915#940]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk2/igt@gem_exec_create@forked.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-glk4/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][68] ([i915#470] / [i915#472]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb3/igt@gem_exec_parallel@contexts.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][70] ([fdo#111677] / [i915#472]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [INCOMPLETE][72] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb3/igt@gem_exec_schedule@preempt-queue-render.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb5/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][74] ([fdo#112146]) -> [PASS][75] +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][76] ([i915#463] / [i915#472]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][78] ([i915#472] / [i915#707]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][80] ([i915#470] / [i915#475]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb1/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][82] ([i915#472]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb3/igt@gem_sync@basic-store-each.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb3/igt@gem_sync@basic-store-each.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][84] ([i915#39]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl7/igt@i915_pm_rps@min-max-config-loaded.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-apl7/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-skl:          [INCOMPLETE][88] ([i915#300]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-tilingchange:
    - shard-tglb:         [FAIL][90] ([i915#49]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-tilingchange.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][92] ([i915#123] / [i915#69]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][94] ([fdo#108145] / [i915#265]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][96] ([fdo#109642] / [fdo#111068]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][98] ([fdo#109441]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][102] ([fdo#109276]) -> [PASS][103] +12 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][104] ([IGT#28]) -> [SKIP][105] ([fdo#109276] / [fdo#112080])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][106] ([i915#444]) -> [INCOMPLETE][107] ([i915#82])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-snb5/igt@gem_eio@kms.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][108] ([i915#818]) -> [FAIL][109] ([i915#694])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-hsw2/igt@gem_tiled_blits@interruptible.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][110] ([i915#694]) -> [FAIL][111] ([i915#818])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-hsw5/igt@gem_tiled_blits@normal.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][112] ([i915#468]) -> [FAIL][113] ([i915#454])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html

  * igt@runner@aborted:
    - shard-glk:          ([FAIL][114], [FAIL][115]) ([i915#940] / [i915#974] / [k.org#202321]) -> [FAIL][116] ([i915#974] / [k.org#202321])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk2/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk6/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-glk2/igt@runner@aborted.html
    - shard-snb:          [FAIL][117] ([i915#436]) -> [FAIL][118] ([i915#974])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-snb5/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/shard-snb5/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7736 -> Patchwork_16084

  CI-20190529: 20190529
  CI_DRM_7736: 2a7726472c7d4c39d23a491611068c2a969b9e02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16084: 4adf45e78718a1951f529cb8059aba99f55e33bd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16084/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
