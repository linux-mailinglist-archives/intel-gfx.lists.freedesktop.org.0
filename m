Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD73211CEBF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 14:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E703893A7;
	Thu, 12 Dec 2019 13:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6B8F8893A7;
 Thu, 12 Dec 2019 13:49:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63433A47DA;
 Thu, 12 Dec 2019 13:49:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 12 Dec 2019 13:49:58 -0000
Message-ID: <157615859840.32010.2267307275694569126@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
In-Reply-To: <20191211211425.17821-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5_fixes_to_handle_hotplug_cases_on_8K_tiled_monitor?=
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

Series: i915 fixes to handle hotplug cases on 8K tiled monitor
URL   : https://patchwork.freedesktop.org/series/70788/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7545_full -> Patchwork_15700_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15700_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#461])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@kms:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#56])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl7/igt@gem_eio@kms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-kbl2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@gem_exec_balancer@nop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb5/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#470])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb2/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb6/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#766])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@i915_pm_rpm@drm-resources-equal.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb8/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#456] / [i915#460]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb1/igt@i915_pm_rpm@system-suspend-devices.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb5/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#413])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@i915_pm_rps@waitboost.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb3/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl9/igt@kms_color@pipe-b-ctm-0-5.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl4/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#52] / [i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#667]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#221])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl1/igt@kms_flip@flip-vs-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#34])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl4/igt@kms_flip@plain-flip-fb-recreate.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#474] / [i915#667])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#456] / [i915#460] / [i915#474])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][43] -> [INCOMPLETE][44] ([fdo#103665] / [i915#648] / [i915#667])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-kbl6/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][47] -> [FAIL][48] ([i915#31])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw4/igt@kms_setmode@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-hsw7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [PASS][51] -> [INCOMPLETE][52] ([i915#460])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb3/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109276]) +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [INCOMPLETE][55] ([i915#69]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@gem_ctx_isolation@vcs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl8/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [FAIL][59] ([i915#232]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_eio@unwedge-stress.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-snb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         [FAIL][61] ([i915#800]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@gem_exec_balancer@bonded-slice.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb5/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][63] ([i915#476]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@gem_exec_parallel@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb8/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_exec_schedule@fifo-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb7/igt@gem_exec_schedule@fifo-bsd.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +8 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111606] / [fdo#111677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-iclb:         [DMESG-WARN][71] ([fdo#111764]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@gem_exec_suspend@basic-s0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-snb:          [DMESG-WARN][73] ([fdo#111870]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [INCOMPLETE][75] ([fdo#112057]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb7/igt@i915_selftest@live_requests.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb5/igt@i915_selftest@live_requests.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [DMESG-WARN][77] ([i915#747]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw4/igt@i915_selftest@mock_sanitycheck.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-hsw8/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [INCOMPLETE][79] ([i915#456] / [i915#460]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@i915_suspend@debugfs-reader.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb8/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][83] ([i915#54]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen:
    - shard-hsw:          [DMESG-WARN][85] ([IGT#6]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-hsw2/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [FAIL][87] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][89] ([i915#79]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [INCOMPLETE][91] ([i915#82]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb1/igt@kms_flip@flip-vs-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-snb5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-hsw:          [INCOMPLETE][93] ([i915#61]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw2/igt@kms_flip@plain-flip-interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-hsw5/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +4 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][97] ([i915#49]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][99] ([fdo#108145]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_sequence@get-forked-busy:
    - shard-snb:          [SKIP][103] ([fdo#109271]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb2/igt@kms_sequence@get-forked-busy.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-snb7/igt@kms_sequence@get-forked-busy.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][105] ([fdo#112080]) -> [PASS][106] +6 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][107] ([IGT#28]) -> [SKIP][108] ([fdo#109276] / [fdo#112080])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][109] ([i915#444]) -> [INCOMPLETE][110] ([i915#82])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_eio@kms.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-snb4/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][111] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][112] ([fdo#112391] / [i915#648] / [i915#667])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][113] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][114] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7545 -> Patchwork_15700

  CI-20190529: 20190529
  CI_DRM_7545: b1b808dff985c3c2050b20771050453589a60ca3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15700: 58e4b57a23e011523571977f21a2d476e7f349fb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15700/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
