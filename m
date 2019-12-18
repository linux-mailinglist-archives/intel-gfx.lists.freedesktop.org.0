Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C4712408D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 08:51:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3134892A0;
	Wed, 18 Dec 2019 07:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BF23892A0;
 Wed, 18 Dec 2019 07:51:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 735C9A0087;
 Wed, 18 Dec 2019 07:51:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 18 Dec 2019 07:51:15 -0000
Message-ID: <157665547544.8354.3884212763979594753@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217144758.101523-1-jose.souza@intel.com>
In-Reply-To: <20191217144758.101523-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2Crebased=2C1/2=5D_drm/i915/display/icl?=
 =?utf-8?q?+=3A_Do_not_program_clockgating?=
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

Series: series starting with [v4,rebased,1/2] drm/i915/display/icl+: Do not program clockgating
URL   : https://patchwork.freedesktop.org/series/71058/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7585_full -> Patchwork_15817_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15817_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110854])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10] ([fdo#112126] / [i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb9/igt@gem_sync@basic-store-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#435] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb4/igt@gem_sync@basic-store-each.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb7/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [PASS][15] -> [DMESG-WARN][16] ([fdo#111870])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb2/igt@gem_userptr_blits@sync-unmap.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-snb5/igt@gem_userptr_blits@sync-unmap.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][17] -> [INCOMPLETE][18] ([fdo#103927])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl2/igt@gem_workarounds@suspend-resume.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-apl8/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#435] / [i915#460])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb7/igt@i915_pm_rpm@system-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb3/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#460])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#34]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl1/igt@kms_flip@plain-flip-fb-recreate.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl6/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         [PASS][25] -> [INCOMPLETE][26] ([i915#140])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#474] / [i915#667])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#49]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([fdo#112393] / [i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl9/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#456] / [i915#460]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [PASS][39] -> [INCOMPLETE][40] ([fdo#103665] / [i915#648] / [i915#667])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145] / [i915#265])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([fdo#111842] / [i915#608])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@kms_psr2_su@frontbuffer.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][47] -> [FAIL][48] ([i915#173])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@kms_psr@no_drrs.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_vblank@pipe-b-wait-forked-hang:
    - shard-snb:          [PASS][49] -> [SKIP][50] ([fdo#109271])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb4/igt@kms_vblank@pipe-b-wait-forked-hang.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-snb7/igt@kms_vblank@pipe-b-wait-forked-hang.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109276]) +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][55] ([i915#679]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl7/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111735]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb4/igt@gem_ctx_shared@q-smoketest-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb9/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][61] ([i915#461]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][63] ([i915#470]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@gem_exec_parallel@fds.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb5/igt@gem_exec_parallel@fds.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_exec_schedule@preempt-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb1/igt@gem_exec_schedule@preempt-bsd2.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@gem_exec_schedule@promotion-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb3/igt@gem_exec_schedule@promotion-bsd.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_exec_store@pages-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb1/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][73] ([i915#472] / [i915#707]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb9/igt@gem_sync@basic-each.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb5/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][75] ([fdo#111870]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][77] ([i915#716]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-apl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [DMESG-WARN][79] ([i915#802]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-glk5/igt@i915_selftest@mock_requests.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-glk7/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][81] ([i915#54]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665] / [i915#667]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][85] ([i915#79]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +6 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-iclb:         [INCOMPLETE][89] ([i915#123] / [i915#140]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [INCOMPLETE][93] ([fdo#103665] / [i915#648] / [i915#667]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][95] ([fdo#112391] / [i915#648] / [i915#667]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-tglb:         [INCOMPLETE][97] ([i915#456] / [i915#460]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][101] ([fdo#108145]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-skl:          [DMESG-WARN][105] ([i915#109]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl2/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][107] ([i915#31]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl3/igt@kms_setmode@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][109] ([i915#69]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][111] ([i915#460]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb5/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb4/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][113] ([i915#468]) -> [FAIL][114] ([i915#454])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][115] ([i915#648]) -> [INCOMPLETE][116] ([fdo#112391] / [i915#648] / [i915#667])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][117] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][118] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [INCOMPLETE][119] ([i915#807]) -> [FAIL][120] ([i915#84])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@perf@oa-exponents.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/shard-tglb6/igt@perf@oa-exponents.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#802]: https://gitlab.freedesktop.org/drm/intel/issues/802
  [i915#807]: https://gitlab.freedesktop.org/drm/intel/issues/807
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7585 -> Patchwork_15817

  CI-20190529: 20190529
  CI_DRM_7585: 96c4bb3771fb5fda19a0fa83ec2e7dba9bf6f878 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15817: fb5b1ea87c178092dbc258fd255731a353d3873a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15817/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
