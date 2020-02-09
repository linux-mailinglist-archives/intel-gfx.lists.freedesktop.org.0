Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2384156BBD
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 18:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 924026E846;
	Sun,  9 Feb 2020 17:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D9C66E846;
 Sun,  9 Feb 2020 17:13:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CCADA00C7;
 Sun,  9 Feb 2020 17:13:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sun, 09 Feb 2020 17:13:40 -0000
Message-ID: <158126842021.18128.15248526807924852001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200204150146.2006481-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZGlz?=
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
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7877_full -> Patchwork_16468_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16468_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16468_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16468_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  
#### Warnings ####

  * igt@gem_exec_balancer@hang:
    - shard-kbl:          [SKIP][3] ([fdo#109271]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl3/igt@gem_exec_balancer@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl3/igt@gem_exec_balancer@hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_16468_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - shard-hsw:          [PASS][5] -> [INCOMPLETE][6] ([i915#61] / [i915#694] / [i915#816])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw5/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw7/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_isolation@vcs1-dirty-switch:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-switch.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-switch.html

  * igt@gem_ctx_persistence@clone:
    - shard-kbl:          [PASS][9] -> [SKIP][10] ([fdo#109271] / [i915#1099]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl2/igt@gem_ctx_persistence@clone.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl4/igt@gem_ctx_persistence@clone.html

  * igt@gem_ctx_persistence@file:
    - shard-tglb:         [PASS][11] -> [SKIP][12] ([fdo#112179] / [i915#1099]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@gem_ctx_persistence@file.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb2/igt@gem_ctx_persistence@file.html
    - shard-skl:          [PASS][13] -> [SKIP][14] ([fdo#109271] / [i915#1099]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl10/igt@gem_ctx_persistence@file.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl7/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][15] -> [SKIP][16] ([fdo#109271] / [i915#1099]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl4/igt@gem_ctx_persistence@processes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl2/igt@gem_ctx_persistence@processes.html
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112179] / [i915#1099]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb2/igt@gem_ctx_persistence@processes.html
    - shard-glk:          [PASS][19] -> [SKIP][20] ([fdo#109271] / [i915#1099]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk2/igt@gem_ctx_persistence@processes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#110841])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-10ms:
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl1/igt@gem_eio@in-flight-10ms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl7/igt@gem_eio@in-flight-10ms.html
    - shard-kbl:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271]) +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl3/igt@gem_eio@in-flight-10ms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl4/igt@gem_eio@in-flight-10ms.html
    - shard-snb:          [PASS][27] -> [INCOMPLETE][28] ([i915#82]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-snb6/igt@gem_eio@in-flight-10ms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-snb6/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [PASS][29] -> [INCOMPLETE][30] ([i915#1098] / [i915#82]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-snb6/igt@gem_eio@in-flight-1us.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-snb4/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-skl:          [PASS][31] -> [TIMEOUT][32] ([fdo#111518] / [fdo#112271]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl9/igt@gem_eio@in-flight-contexts-10ms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl8/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@kms:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#198])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl2/igt@gem_eio@kms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl2/igt@gem_eio@kms.html
    - shard-kbl:          [PASS][35] -> [INCOMPLETE][36] ([CI#80] / [fdo#103665])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl6/igt@gem_eio@kms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl1/igt@gem_eio@kms.html
    - shard-apl:          [PASS][37] -> [INCOMPLETE][38] ([CI#80] / [fdo#103927])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl8/igt@gem_eio@kms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl1/igt@gem_eio@kms.html
    - shard-glk:          [PASS][39] -> [INCOMPLETE][40] ([CI#80] / [i915#58] / [k.org#198133])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk2/igt@gem_eio@kms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk5/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-glk:          [PASS][41] -> [TIMEOUT][42] ([fdo#112271]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk9/igt@gem_eio@unwedge-stress.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk8/igt@gem_eio@unwedge-stress.html
    - shard-apl:          [PASS][43] -> [TIMEOUT][44] ([fdo#112271]) +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl1/igt@gem_eio@unwedge-stress.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#110854])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109276]) +15 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#112146]) +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][51] -> [FAIL][52] ([i915#644])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#454])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl9/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][57] -> [FAIL][58] ([i915#413])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl1/igt@i915_suspend@sysfs-reader.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#54]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([fdo#111703]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - shard-apl:          [PASS][65] -> [FAIL][66] ([i915#54])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
    - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#54])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - shard-tglb:         [PASS][69] -> [FAIL][70] ([i915#70])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb6/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb3/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-hsw:          [PASS][71] -> [FAIL][72] ([i915#54])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-tglb:         [PASS][73] -> [FAIL][74] ([i915#559]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-tglb:         [PASS][75] -> [DMESG-FAIL][76] ([i915#402]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

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

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][89] -> [FAIL][90] ([fdo#108145])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-tglb:         [PASS][91] -> [FAIL][92] ([i915#1139])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb3/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb6/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-tglb:         [PASS][93] -> [FAIL][94] ([i915#899]) +8 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb3/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-iclb:         [PASS][95] -> [FAIL][96] ([i915#899]) +11 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@kms_plane_lowres@pipe-c-tiling-none.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb4/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-glk:          [PASS][97] -> [FAIL][98] ([i915#899]) +8 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk3/igt@kms_plane_lowres@pipe-c-tiling-x.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk5/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][99] -> [SKIP][100] ([fdo#109642] / [fdo#111068])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][101] -> [SKIP][102] ([fdo#109441])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@kms_psr@psr2_basic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb6/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [PASS][103] -> [INCOMPLETE][104] ([fdo#103665])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][105] -> [INCOMPLETE][106] ([i915#69]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][107] -> [SKIP][108] ([fdo#112080]) +6 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][109] -> [FAIL][110] ([i915#831])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_self_import@export-vs-gem_close-race:
    - shard-hsw:          [PASS][111] -> [INCOMPLETE][112] ([i915#61])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw2/igt@prime_self_import@export-vs-gem_close-race.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw1/igt@prime_self_import@export-vs-gem_close-race.html

  
#### Possible fixes ####

  * igt@gem_busy@basic-hang-rcs0:
    - shard-kbl:          [SKIP][113] ([fdo#109271]) -> [PASS][114] +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl4/igt@gem_busy@basic-hang-rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl1/igt@gem_busy@basic-hang-rcs0.html
    - shard-apl:          [SKIP][115] ([fdo#109271]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl8/igt@gem_busy@basic-hang-rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl4/igt@gem_busy@basic-hang-rcs0.html
    - shard-skl:          [SKIP][117] ([fdo#109271]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl1/igt@gem_busy@basic-hang-rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl7/igt@gem_busy@basic-hang-rcs0.html
    - shard-hsw:          [SKIP][119] ([fdo#109271]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw5/igt@gem_busy@basic-hang-rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw1/igt@gem_busy@basic-hang-rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-snb:          [FAIL][121] ([i915#1148]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-snb2/igt@gem_ctx_exec@basic-nohangcheck.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-snb6/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-hsw:          [FAIL][123] ([i915#1148]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw2/igt@gem_ctx_exec@basic-nohangcheck.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [SKIP][125] ([fdo#109276]) -> [PASS][126] +14 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb7/igt@gem_exec_schedule@in-order-bsd2.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb4/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][127] ([i915#677]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][129] ([fdo#112146]) -> [PASS][130] +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][131] ([i915#716]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][133] ([i915#454]) -> [PASS][134] +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][135] ([i915#413]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb3/igt@i915_pm_rps@reset.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb3/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][137] ([i915#725]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-hsw2/igt@i915_selftest@live_blt.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-tglb:         [FAIL][139] ([i915#1172]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb5/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-skl:          [FAIL][141] ([i915#54]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][143] ([i915#180]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [FAIL][145] -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl2/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-tglb:         [DMESG-FAIL][147] ([i915#402]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-tglb:         [FAIL][149] ([i915#559]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [FAIL][151] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-glk:          [SKIP][153] ([fdo#109271]) -> [PASS][154] +2 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk9/igt@kms_fbcon_fbt@fbc.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk7/igt@kms_fbcon_fbt@fbc.html
    - shard-snb:          [SKIP][155] ([fdo#109271]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-snb2/igt@kms_fbcon_fbt@fbc.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-snb5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][157] ([i915#221]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [DMESG-WARN][159] ([i915#180]) -> [PASS][160] +3 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [FAIL][161] ([i915#49]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - shard-tglb:         [FAIL][163] -> [PASS][164] +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-tglb2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-tglb2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [INCOMPLETE][165] ([fdo#103665]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_bl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16468/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
