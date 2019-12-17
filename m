Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A86F71227D1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 10:43:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177566E165;
	Tue, 17 Dec 2019 09:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC0C46E0CA;
 Tue, 17 Dec 2019 09:43:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C21F9A0114;
 Tue, 17 Dec 2019 09:43:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 17 Dec 2019 09:43:04 -0000
Message-ID: <157657578476.21847.6647802137152810531@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216202906.1662893-1-hdegoede@redhat.com>
In-Reply-To: <20191216202906.1662893-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915_/_LPSS_/_mfd=3A_Select_correct_PWM_controller_to_use_base?=
 =?utf-8?q?d_on_VBT_=28rev3=29?=
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

Series: drm/i915 / LPSS / mfd: Select correct PWM controller to use based on VBT (rev3)
URL   : https://patchwork.freedesktop.org/series/69686/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7578_full -> Patchwork_15800_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15800_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl9/igt@gem_ctx_isolation@vcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl7/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@gem_ctx_persistence@vcs1-cleanup.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb5/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_exec_basic@readonly-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@gem_exec_basic@readonly-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb5/igt@gem_exec_basic@readonly-vcs1.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111736])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@gem_exec_create@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111593])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_exec_nop@basic-series.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb6/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#454])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_gem_contexts:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#455])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@i915_selftest@live_gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb6/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl10/igt@kms_color@pipe-b-ctm-0-5.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl9/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#34])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#123] / [i915#667])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([fdo#103665] / [i915#648] / [i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#456] / [i915#460])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_psr@psr2_suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#460])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][43] ([i915#435]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_busy@close-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb8/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [fdo#112080]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@banned:
    - shard-tglb:         [INCOMPLETE][47] ([i915#476]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_eio@banned.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb7/igt@gem_eio@banned.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [INCOMPLETE][49] ([i915#460]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@gem_eio@suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb9/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][51] ([fdo#110854]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-skl:          [DMESG-WARN][53] ([i915#109]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@gem_exec_reloc@basic-wc-active.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl6/igt@gem_exec_reloc@basic-wc-active.html

  * {igt@gem_exec_schedule@pi-common-bsd1}:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd1.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-glk:          [DMESG-WARN][57] ([i915#716]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-glk4/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [DMESG-WARN][59] ([i915#716]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][63] ([i915#456] / [i915#460]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][69] ([i915#221]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-iclb:         [INCOMPLETE][73] ([i915#123] / [i915#140]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][75] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@kms_psr@psr2_dpms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][83] ([fdo#112021]) -> [SKIP][84] ([fdo#112016] / [fdo#112021])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-tglb4/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][85] ([i915#648]) -> [INCOMPLETE][86] ([i915#648] / [i915#667])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][87] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][88] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7578 -> Patchwork_15800

  CI-20190529: 20190529
  CI_DRM_7578: cc329d389f5609d2969d0797bc96f754adb26d62 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15800: b075d00cadea3e5ffb29bf64c0a18c3aab85caba @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15800/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
