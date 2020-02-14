Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A2D15D073
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 04:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B449A6E071;
	Fri, 14 Feb 2020 03:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 29E606E06D;
 Fri, 14 Feb 2020 03:27:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 184B0A00C7;
 Fri, 14 Feb 2020 03:27:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 14 Feb 2020 03:27:04 -0000
Message-ID: <158165082407.9930.9125262704826961814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5/gem=5Fctx=5Fpersistence=3A_Race_context_closure_with_replace-?=
 =?utf-8?q?engines?=
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

Series: i915/gem_ctx_persistence: Race context closure with replace-engines
URL   : https://patchwork.freedesktop.org/series/73339/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7918_full -> IGTPW_4135_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in IGTPW_4135_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@gem_ctx_persistence@close-replace-race} (NEW):
    - shard-tglb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-glk3/igt@gem_ctx_persistence@close-replace-race.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7918_full and IGTPW_4135_full:

### New IGT tests (1) ###

  * igt@gem_ctx_persistence@close-replace-race:
    - Statuses : 3 fail(s) 2 pass(s) 2 skip(s)
    - Exec time: [0.0, 5.91] s

  

Known issues
------------

  Here are the changes found in IGTPW_4135_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] ([fdo#103665])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#110841])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([i915#677])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [PASS][14] -> [FAIL][15] ([i915#694])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [PASS][16] -> [DMESG-WARN][17] ([fdo#111870] / [i915#478])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb6/igt@gem_userptr_blits@dmabuf-unsync.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb5/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180:
    - shard-tglb:         [PASS][18] -> [DMESG-FAIL][19] ([i915#402]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-tglb:         [PASS][20] -> [FAIL][21] ([fdo#111703]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-tglb:         [PASS][24] -> [FAIL][25] ([i915#70])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][26] -> [FAIL][27] ([i915#57])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-tglb:         [PASS][28] -> [FAIL][29] ([i915#559]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb8/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb5/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [PASS][30] -> [INCOMPLETE][31] ([i915#61])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-hsw8/igt@kms_flip@flip-vs-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-hsw5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#49])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#1139])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf_pmu@busy-start-vcs1:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#112080]) +8 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb2/igt@perf_pmu@busy-start-vcs1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb6/igt@perf_pmu@busy-start-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109276]) +14 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_caching@reads:
    - shard-hsw:          [FAIL][42] ([i915#694]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-hsw7/igt@gem_caching@reads.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-hsw5/igt@gem_caching@reads.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][44] ([fdo#110854]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][46] ([fdo#109276]) -> [PASS][47] +20 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][48] ([fdo#112146]) -> [PASS][49] +5 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][52] ([i915#413]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][54] ([i915#56]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-kbl2/igt@i915_suspend@sysfs-reader.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-tglb:         [FAIL][56] ([i915#1149]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb3/igt@kms_color@pipe-a-ctm-negative.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb2/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_color@pipe-c-ctm-max:
    - shard-kbl:          [FAIL][58] ([i915#168]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-kbl3/igt@kms_color@pipe-c-ctm-max.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-kbl4/igt@kms_color@pipe-c-ctm-max.html
    - shard-apl:          [FAIL][60] ([i915#168]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-apl8/igt@kms_color@pipe-c-ctm-max.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-apl2/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-tglb:         [FAIL][62] ([fdo#111703]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-tglb:         [DMESG-FAIL][64] ([i915#402]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb1/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-tglb:         [FAIL][66] ([i915#559]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-snb:          [DMESG-WARN][70] ([i915#478]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb4/igt@kms_psr@psr2_no_drrs.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][74] ([i915#31]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-apl8/igt@kms_setmode@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-apl8/igt@kms_setmode@basic.html
    - shard-hsw:          [FAIL][76] ([i915#31]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-hsw6/igt@kms_setmode@basic.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-hsw6/igt@kms_setmode@basic.html

  * igt@perf@rc6-disable:
    - shard-iclb:         [SKIP][78] ([i915#405]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb2/igt@perf@rc6-disable.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb8/igt@perf@rc6-disable.html
    - shard-hsw:          [SKIP][80] ([fdo#109271]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-hsw5/igt@perf@rc6-disable.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-hsw2/igt@perf@rc6-disable.html
    - shard-kbl:          [SKIP][82] ([fdo#109271]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-kbl6/igt@perf@rc6-disable.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-kbl3/igt@perf@rc6-disable.html
    - shard-apl:          [SKIP][84] ([fdo#109271]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-apl3/igt@perf@rc6-disable.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-apl6/igt@perf@rc6-disable.html
    - shard-tglb:         [SKIP][86] ([fdo#111719] / [i915#405]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb8/igt@perf@rc6-disable.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb3/igt@perf@rc6-disable.html
    - shard-glk:          [SKIP][88] ([fdo#109271]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-glk9/igt@perf@rc6-disable.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-glk2/igt@perf@rc6-disable.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][90] ([fdo#112080]) -> [PASS][91] +12 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb5/igt@perf_pmu@busy-vcs1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][92] ([i915#831]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][94] ([IGT#28]) -> [SKIP][95] ([fdo#112080])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][96] ([fdo#112080]) -> [FAIL][97] ([IGT#28])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][98] ([i915#694]) -> [FAIL][99] ([i915#818])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][100] ([i915#468]) -> [FAIL][101] ([i915#454])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-snb:          [SKIP][102] ([fdo#109271]) -> [INCOMPLETE][103] ([i915#82])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@universal-planes:
    - shard-snb:          [INCOMPLETE][104] ([i915#82]) -> [SKIP][105] ([fdo#109271])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb4/igt@i915_pm_rpm@universal-planes.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb5/igt@i915_pm_rpm@universal-planes.html

  * igt@runner@aborted:
    - shard-snb:          ([FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113]) ([fdo#111870] / [i915#1077] / [i915#698]) -> ([FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([fdo#111870] / [i915#1077])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb4/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb6/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb6/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb5/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb4/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb5/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/shard-snb6/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb2/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb2/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb6/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb5/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb2/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb5/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/shard-snb2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111703]: https://bugs.freedesktop.org/show_bug.cgi?id=111703
  [fdo#111719]: https://bugs.freedesktop.org/show_bug.cgi?id=111719
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#1139]: https://gitlab.freedesktop.org/drm/intel/issues/1139
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#168]: https://gitlab.freedesktop.org/drm/intel/issues/168
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#405]: https://gitlab.freedesktop.org/drm/intel/issues/405
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 8)
------------------------------

  Missing    (2): pig-skl-6260u pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5435 -> IGTPW_4135
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_7918: d9dbc4c91c2c141a9492c88255231ef6aae6fbd9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4135: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/index.html
  IGT_5435: 2b6d4476dde53c363b8808ed9f0dd5547ac78641 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
