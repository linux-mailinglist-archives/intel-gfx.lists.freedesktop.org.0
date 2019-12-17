Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 133FA12313A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 17:13:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73E7B6E197;
	Tue, 17 Dec 2019 16:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83A436E193;
 Tue, 17 Dec 2019 16:13:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BAE1A47DF;
 Tue, 17 Dec 2019 16:13:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Dec 2019 16:13:03 -0000
Message-ID: <157659918350.21847.3327176382490626507@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217091328.3093551-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191217091328.3093551-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Avoid_multi-LRI_on_Sandybridge?=
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

Series: drm/i915/gt: Avoid multi-LRI on Sandybridge
URL   : https://patchwork.freedesktop.org/series/71029/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7578_full -> Patchwork_15808_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15808_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl1/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-skl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-switch:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-switch.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-switch.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-apl7/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#679])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb7/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_exec_async@concurrent-writes-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd1.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#435])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@gem_exec_create@madvise.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb6/igt@gem_exec_create@madvise.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111593])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@gem_sync@basic-store-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#435] / [i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@gem_sync@basic-store-each.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb5/igt@gem_sync@basic-store-each.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#456] / [i915#460])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@i915_pm_backlight@fade_with_suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb4/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-hsw:          [PASS][31] -> [INCOMPLETE][32] ([i915#61]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw6/igt@i915_pm_rps@min-max-config-idle.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-hsw5/igt@i915_pm_rps@min-max-config-idle.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - shard-hsw:          [PASS][33] -> [DMESG-WARN][34] ([IGT#6])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw1/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#474] / [i915#667])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-iclb:         [PASS][43] -> [INCOMPLETE][44] ([i915#123] / [i915#140])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([fdo#103665] / [i915#648] / [i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][47] -> [DMESG-WARN][48] ([i915#402])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_psr@psr2_suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb7/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-apl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][51] ([i915#435]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_busy@close-race.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb8/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-tglb:         [INCOMPLETE][53] ([i915#456]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_ctx_isolation@bcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb5/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_ctx_isolation@vcs1-reset.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb4/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-apl:          [FAIL][57] ([i915#679]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-apl8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_eio@banned:
    - shard-tglb:         [INCOMPLETE][59] ([i915#476]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_eio@banned.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb3/igt@gem_eio@banned.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [INCOMPLETE][61] ([i915#460]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@gem_eio@suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb6/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][63] ([fdo#110854]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-skl:          [DMESG-WARN][65] ([i915#109]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@gem_exec_reloc@basic-wc-active.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-skl3/igt@gem_exec_reloc@basic-wc-active.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][67] ([i915#707]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd2.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-glk:          [DMESG-WARN][69] ([i915#716]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-glk8/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [DMESG-WARN][71] ([i915#716]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-hsw:          [DMESG-WARN][75] ([IGT#6]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-hsw1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][77] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][79] ([i915#79]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][81] ([i915#79]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][83] ([i915#221]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][89] ([fdo#108145]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][95] ([fdo#112080]) -> [PASS][96] +6 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][97] ([fdo#109276]) -> [PASS][98] +8 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][99] ([fdo#112021]) -> [SKIP][100] ([fdo#112016] / [fdo#112021])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-tglb6/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][101] ([i915#648]) -> [INCOMPLETE][102] ([i915#648] / [i915#667])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7578 -> Patchwork_15808

  CI-20190529: 20190529
  CI_DRM_7578: cc329d389f5609d2969d0797bc96f754adb26d62 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15808: 9825d1f6a29e153509e0fffe1edb3ddecd09e545 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15808/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
