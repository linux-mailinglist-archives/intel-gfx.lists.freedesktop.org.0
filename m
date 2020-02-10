Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A55157469
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 13:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E00D6E204;
	Mon, 10 Feb 2020 12:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65B1C6E204;
 Mon, 10 Feb 2020 12:20:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 559C3A00FD;
 Mon, 10 Feb 2020 12:20:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 10 Feb 2020 12:20:37 -0000
Message-ID: <158133723734.3098.10482671556611344197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZGlz?=
 =?utf-8?q?able_drm=5Fglobal=5Fmutex_for_most_drivers_=28rev7=29?=
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

Series: disable drm_global_mutex for most drivers (rev7)
URL   : https://patchwork.freedesktop.org/series/72711/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7877_full -> Patchwork_16468_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16468_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2] ([i915#61] / [i915#694] / [i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw5/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw7/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_isolation@vcs1-dirty-switch:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-switch.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-switch.html

  * igt@gem_ctx_persistence@clone:
    - shard-kbl:          [PASS][5] -> [SKIP][6] ([fdo#109271] / [i915#1099]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl2/igt@gem_ctx_persistence@clone.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl4/igt@gem_ctx_persistence@clone.html

  * igt@gem_ctx_persistence@file:
    - shard-tglb:         [PASS][7] -> [SKIP][8] ([fdo#112179] / [i915#1099]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@gem_ctx_persistence@file.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb2/igt@gem_ctx_persistence@file.html
    - shard-skl:          [PASS][9] -> [SKIP][10] ([fdo#109271] / [i915#1099]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl10/igt@gem_ctx_persistence@file.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl7/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][11] -> [SKIP][12] ([fdo#109271] / [i915#1099]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl4/igt@gem_ctx_persistence@processes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl2/igt@gem_ctx_persistence@processes.html
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112179] / [i915#1099]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb2/igt@gem_ctx_persistence@processes.html
    - shard-glk:          [PASS][15] -> [SKIP][16] ([fdo#109271] / [i915#1099]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk2/igt@gem_ctx_persistence@processes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#110841])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-10ms:
    - shard-skl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl1/igt@gem_eio@in-flight-10ms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl7/igt@gem_eio@in-flight-10ms.html
    - shard-kbl:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271]) +7 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl3/igt@gem_eio@in-flight-10ms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl4/igt@gem_eio@in-flight-10ms.html
    - shard-snb:          [PASS][23] -> [INCOMPLETE][24] ([i915#82]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-snb6/igt@gem_eio@in-flight-10ms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-snb6/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [PASS][25] -> [INCOMPLETE][26] ([i915#1098] / [i915#82]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-snb6/igt@gem_eio@in-flight-1us.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-snb4/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-skl:          [PASS][27] -> [TIMEOUT][28] ([fdo#111518] / [fdo#112271]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl9/igt@gem_eio@in-flight-contexts-10ms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl8/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@kms:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#198])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl2/igt@gem_eio@kms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl2/igt@gem_eio@kms.html
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([CI#80] / [fdo#103665])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl6/igt@gem_eio@kms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl1/igt@gem_eio@kms.html
    - shard-apl:          [PASS][33] -> [INCOMPLETE][34] ([CI#80] / [fdo#103927])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl8/igt@gem_eio@kms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl1/igt@gem_eio@kms.html
    - shard-glk:          [PASS][35] -> [INCOMPLETE][36] ([CI#80] / [i915#58] / [k.org#198133])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk2/igt@gem_eio@kms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk5/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-glk:          [PASS][37] -> [TIMEOUT][38] ([fdo#112271]) +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk9/igt@gem_eio@unwedge-stress.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk8/igt@gem_eio@unwedge-stress.html
    - shard-apl:          [PASS][39] -> [TIMEOUT][40] ([fdo#112271]) +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl1/igt@gem_eio@unwedge-stress.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#110854])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +15 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#112146]) +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][47] -> [FAIL][48] ([i915#644])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#454])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl9/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#413])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl1/igt@i915_suspend@sysfs-reader.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#1172]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb3/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#54]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([fdo#111703]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - shard-apl:          [PASS][63] -> [FAIL][64] ([i915#54])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
    - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#54])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - shard-tglb:         [PASS][67] -> [FAIL][68] ([i915#70])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb6/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb3/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-hsw:          [PASS][69] -> [FAIL][70] ([i915#54])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-tglb:         [PASS][71] -> [FAIL][72] ([i915#559]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-tglb:         [PASS][73] -> [DMESG-FAIL][74] ([i915#402]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-tglb:         [PASS][75] -> [FAIL][76] ([i915#699])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb6/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb3/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-tglb:         [PASS][77] -> [DMESG-FAIL][78] ([i915#402] / [i915#49])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb7/igt@kms_frontbuffer_tracking@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb7/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-kbl:          [PASS][79] -> [FAIL][80] ([i915#49])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
    - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#49])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
    - shard-apl:          [PASS][83] -> [FAIL][84] ([i915#49])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-iclb:         [PASS][85] -> [FAIL][86] ([i915#160]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-tglb:         [PASS][87] -> [FAIL][88] ([i915#160]) +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-tglb:         [PASS][89] -> [FAIL][90] ([i915#1184])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([fdo#108145])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-tglb:         [PASS][93] -> [FAIL][94] ([i915#1139])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb3/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb6/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-tglb:         [PASS][95] -> [FAIL][96] ([i915#899]) +8 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb3/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-iclb:         [PASS][97] -> [FAIL][98] ([i915#899]) +11 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@kms_plane_lowres@pipe-c-tiling-none.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb4/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#899]) +8 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk3/igt@kms_plane_lowres@pipe-c-tiling-x.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk5/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][101] -> [SKIP][102] ([fdo#109642] / [fdo#111068])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][103] -> [SKIP][104] ([fdo#109441])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@kms_psr@psr2_basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb6/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [PASS][105] -> [INCOMPLETE][106] ([fdo#103665])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][107] -> [INCOMPLETE][108] ([i915#69]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([fdo#112080]) +6 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][111] -> [FAIL][112] ([i915#831])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_self_import@export-vs-gem_close-race:
    - shard-hsw:          [PASS][113] -> [INCOMPLETE][114] ([i915#61])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw2/igt@prime_self_import@export-vs-gem_close-race.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw1/igt@prime_self_import@export-vs-gem_close-race.html

  
#### Possible fixes ####

  * igt@gem_busy@basic-hang-rcs0:
    - shard-kbl:          [SKIP][115] ([fdo#109271]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl4/igt@gem_busy@basic-hang-rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl1/igt@gem_busy@basic-hang-rcs0.html
    - shard-apl:          [SKIP][117] ([fdo#109271]) -> [PASS][118] +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl8/igt@gem_busy@basic-hang-rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl4/igt@gem_busy@basic-hang-rcs0.html
    - shard-skl:          [SKIP][119] ([fdo#109271]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl1/igt@gem_busy@basic-hang-rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl7/igt@gem_busy@basic-hang-rcs0.html
    - shard-hsw:          [SKIP][121] ([fdo#109271]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw5/igt@gem_busy@basic-hang-rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw1/igt@gem_busy@basic-hang-rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-snb:          [FAIL][123] ([i915#1148]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-snb2/igt@gem_ctx_exec@basic-nohangcheck.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-snb6/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-hsw:          [FAIL][125] ([i915#1148]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw2/igt@gem_ctx_exec@basic-nohangcheck.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [SKIP][127] ([fdo#109276]) -> [PASS][128] +14 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb7/igt@gem_exec_schedule@in-order-bsd2.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb4/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][129] ([i915#677]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][131] ([fdo#112146]) -> [PASS][132] +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][133] ([i915#716]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][135] ([i915#454]) -> [PASS][136] +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][137] ([i915#413]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb3/igt@i915_pm_rps@reset.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb3/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][139] ([i915#725]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw2/igt@i915_selftest@live_blt.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-tglb:         [FAIL][141] ([i915#1172]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb5/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-skl:          [FAIL][143] ([i915#54]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][145] ([i915#180]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [FAIL][147] ([i915#1181]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl2/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-tglb:         [DMESG-FAIL][149] ([i915#402]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-tglb:         [FAIL][151] ([i915#559]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [FAIL][153] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-glk:          [SKIP][155] ([fdo#109271]) -> [PASS][156] +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk9/igt@kms_fbcon_fbt@fbc.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk7/igt@kms_fbcon_fbt@fbc.html
    - shard-snb:          [SKIP][157] ([fdo#109271]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-snb2/igt@kms_fbcon_fbt@fbc.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-snb5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][159] ([i915#221]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [DMESG-WARN][161] ([i915#180]) -> [PASS][162] +3 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [FAIL][163] ([i915#49]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - shard-tglb:         [FAIL][165] ([i915#1183]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][167] ([fdo#103665]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparant-fb:
    - shard-tglb:         [FAIL][169] ([i915#1184]) -> [PASS][

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
