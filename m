Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5CE16FC58
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B55C6E243;
	Wed, 26 Feb 2020 10:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD11689E63;
 Wed, 26 Feb 2020 10:35:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C51C1A0138;
 Wed, 26 Feb 2020 10:35:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 10:35:49 -0000
Message-ID: <158271334980.21012.18238845944293340734@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224155601.4125280-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200224155601.4125280-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Cleanup_shadow_batch_after_I915=5FEXEC=5FSECURE?=
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

Series: drm/i915/gem: Cleanup shadow batch after I915_EXEC_SECURE
URL   : https://patchwork.freedesktop.org/series/73857/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7999_full -> Patchwork_16692_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16692_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +14 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +12 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl7/igt@gem_workarounds@suspend-resume.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-skl8/igt@gem_workarounds@suspend-resume.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#221])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#899])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb5/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl7/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-kbl3/igt@kms_setmode@basic.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-iclb:         [PASS][31] -> [TIMEOUT][32] ([fdo#112271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb7/igt@sw_sync@sync_multi_producer_single_consumer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-kbl:          [DMESG-WARN][33] ([i915#56]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl7/igt@gem_ctx_isolation@vcs1-s3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-kbl6/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][35] ([fdo#110854]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * {igt@gem_exec_schedule@implicit-both-bsd2}:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][43] ([i915#644]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][45] ([i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [INCOMPLETE][47] ([i915#151] / [i915#69]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][53] ([fdo#109642] / [fdo#111068]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][57] ([i915#31]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-apl6/igt@kms_setmode@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +9 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +20 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb8/igt@prime_busy@after-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb2/igt@prime_busy@after-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [FAIL][64] ([IGT#28])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-x:
    - shard-iclb:         [TIMEOUT][65] ([fdo#112271]) -> [TIMEOUT][66] ([fdo#112271] / [i915#1321]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb6/igt@gem_fence_thrash@bo-write-verify-threaded-x.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb1/igt@gem_fence_thrash@bo-write-verify-threaded-x.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-y:
    - shard-skl:          [TIMEOUT][67] ([fdo#112271]) -> [TIMEOUT][68] ([fdo#112271] / [i915#1321]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-skl2/igt@gem_fence_thrash@bo-write-verify-threaded-y.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-skl2/igt@gem_fence_thrash@bo-write-verify-threaded-y.html

  * igt@gem_linear_blits@interruptible:
    - shard-apl:          [TIMEOUT][69] ([fdo#112271]) -> [TIMEOUT][70] ([fdo#112271] / [i915#1322])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-apl7/igt@gem_linear_blits@interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-apl1/igt@gem_linear_blits@interruptible.html

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-snb:          [INCOMPLETE][71] ([i915#82]) -> [SKIP][72] ([fdo#109271])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-snb5/igt@i915_pm_rpm@legacy-planes-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-snb2/igt@i915_pm_rpm@legacy-planes-dpms.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-glk:          [TIMEOUT][73] ([fdo#112271]) -> [TIMEOUT][74] ([fdo#112271] / [i915#1320]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][75] ([fdo#112271]) -> [TIMEOUT][76] ([fdo#112271] / [i915#1319]) +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-kbl6/igt@kms_content_protection@atomic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-kbl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][77] ([fdo#112271]) -> [TIMEOUT][78] ([fdo#112271] / [i915#1319]) +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-apl6/igt@kms_content_protection@lic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-apl4/igt@kms_content_protection@lic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][79] ([i915#1226]) -> [SKIP][80] ([fdo#109349])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-modeset-vs-hang-interruptible:
    - shard-glk:          [TIMEOUT][81] ([fdo#112271]) -> [TIMEOUT][82] ([fdo#112271] / [i915#1284]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7999/shard-glk5/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/shard-glk9/igt@kms_flip@flip-vs-modeset-vs-hang-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1284]: https://gitlab.freedesktop.org/drm/intel/issues/1284
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1320]: https://gitlab.freedesktop.org/drm/intel/issues/1320
  [i915#1321]: https://gitlab.freedesktop.org/drm/intel/issues/1321
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7999 -> Patchwork_16692

  CI-20190529: 20190529
  CI_DRM_7999: e853e3d470d1bb4ac87042094b99adbdbaa87944 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16692: afccf9a3632c60cfee91fdf498010dbcb75b08d3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16692/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
