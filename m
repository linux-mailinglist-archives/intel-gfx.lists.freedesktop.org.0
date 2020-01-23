Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16141466EF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 12:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1246F9FF;
	Thu, 23 Jan 2020 11:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D469F6FBF0;
 Thu, 23 Jan 2020 11:39:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB5EEA0088;
 Thu, 23 Jan 2020 11:39:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Thu, 23 Jan 2020 11:39:26 -0000
Message-ID: <157977956680.1147.15297180121503425611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121134559.17355-1-wambui.karugax@gmail.com>
In-Reply-To: <20200121134559.17355-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_conversion_to_new_drm_logging_macros=2E_=28rev2=29?=
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

Series: drm/i915: conversion to new drm logging macros. (rev2)
URL   : https://patchwork.freedesktop.org/series/72350/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7787_full -> Patchwork_16205_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16205_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb7/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +6 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl7/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb5/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110841])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110854])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb2/igt@gem_exec_schedule@out-order-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb7/igt@gem_exec_schedule@out-order-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-kbl:          [PASS][17] -> [INCOMPLETE][18] ([fdo#103665]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#520])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-hsw:          [PASS][21] -> [INCOMPLETE][22] ([i915#61]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-hsw8/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl10/igt@i915_pm_backlight@fade_with_suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@debugfs-read:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#151])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl4/igt@i915_pm_rpm@debugfs-read.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl1/igt@i915_pm_rpm@debugfs-read.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#413])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb8/igt@i915_pm_rps@reset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#109])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-snb:          [PASS][31] -> [SKIP][32] ([fdo#109271]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49]) +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#123] / [i915#69])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145] / [i915#265])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb4/igt@kms_psr@psr2_primary_blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb3/igt@gem_ctx_isolation@vcs1-none.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +13 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb1/igt@gem_exec_schedule@promotion-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb5/igt@gem_exec_schedule@promotion-bsd.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb3/igt@gem_exec_store@cachelines-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb1/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-tglb:         [INCOMPLETE][49] ([i915#472] / [i915#530]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-tglb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
    - shard-hsw:          [INCOMPLETE][51] ([i915#530] / [i915#61]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [INCOMPLETE][53] ([i915#61]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-skl:          [INCOMPLETE][55] ([i915#530]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl10/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl6/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][57] ([fdo#103665]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-kbl2/igt@gem_persistent_relocs@forked-thrashing.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-apl:          [TIMEOUT][59] ([fdo#112271]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl6/igt@gem_ppgtt@blt-vs-render-ctx0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-apl3/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-hsw:          [FAIL][61] -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-hsw2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][63] ([i915#694]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw2/igt@gen7_exec_parse@basic-offset.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-hsw2/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][65] ([i915#413]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb8/igt@i915_pm_rps@reset.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-tglb2/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][67] ([i915#82]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-snb6/igt@i915_selftest@mock_requests.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-snb1/igt@i915_selftest@mock_requests.html
    - shard-skl:          [INCOMPLETE][69] ([i915#198]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl7/igt@i915_selftest@mock_requests.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl7/igt@i915_selftest@mock_requests.html
    - shard-glk:          [INCOMPLETE][71] ([i915#58] / [k.org#198133]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-glk3/igt@i915_selftest@mock_requests.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-glk8/igt@i915_selftest@mock_requests.html
    - shard-apl:          [INCOMPLETE][73] ([fdo#103927]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl2/igt@i915_selftest@mock_requests.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-apl3/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +7 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][77] ([IGT#5]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][79] ([i915#79]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84] +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-tglb:         [SKIP][85] ([i915#668]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][87] ([fdo#108145]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][89] ([fdo#109642] / [fdo#111068]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][93] ([i915#31]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl8/igt@kms_setmode@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-apl6/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [INCOMPLETE][95] ([fdo#103665]) -> [INCOMPLETE][96] ([fdo#103665] / [i915#530])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-kbl7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/shard-kbl7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (8 -> 10)
------------------------------

  Additional (2): pig-skl-6260u pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7787 -> Patchwork_16205
  * Piglit: None -> piglit_4509

  CI-20190529: 20190529
  CI_DRM_7787: b1ab43f77fe73cb93a1676454ae8374f9a439f4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16205: b7c886ad12c38788561a07f8cf4984eb65d47813 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16205/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
