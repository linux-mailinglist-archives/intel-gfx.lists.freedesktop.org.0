Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D9B13CE1A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 21:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059846EB3C;
	Wed, 15 Jan 2020 20:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7710A6EB3B;
 Wed, 15 Jan 2020 20:34:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E64FA47EB;
 Wed, 15 Jan 2020 20:34:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhang Xiaoxu" <zhangxiaoxu5@huawei.com>
Date: Wed, 15 Jan 2020 20:34:20 -0000
Message-ID: <157912046044.2009.13663583618462328379@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113105539.9493-1-zhangxiaoxu5@huawei.com>
In-Reply-To: <20200113105539.9493-1-zhangxiaoxu5@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Fix_implicit_declaration_of_function_=27acpi=5Fdev?=
 =?utf-8?b?KicgaW4gJ21pcGlfZXhlY19pMmMn?=
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

Series: drm/i915/dsi: Fix implicit declaration of function 'acpi_dev*' in 'mipi_exec_i2c'
URL   : https://patchwork.freedesktop.org/series/71972/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7735_full -> Patchwork_16079_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16079_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16079_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16079_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-hsw5/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16079_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([fdo#111736] / [i915#472])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#472] / [i915#476])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_parallel@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb9/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111593] / [i915#472])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb5/igt@gem_exec_parallel@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb4/igt@gem_exec_parallel@vcs0.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#109])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl7/igt@gem_exec_reloc@basic-wc-gtt-active.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-skl3/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#677]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +5 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#463] / [i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb8/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#460] / [i915#472])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_exec_suspend@basic-s4-devices.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][22] -> [TIMEOUT][23] ([fdo#112271] / [i915#530])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#470] / [i915#472])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@gem_sync@basic-all.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb3/igt@gem_sync@basic-all.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#34])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl8/igt@kms_flip@plain-flip-ts-check.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-skl6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#69])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb5/igt@kms_psr@psr2_suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109276]) +20 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][38] ([fdo#109276] / [fdo#112080]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][40] ([fdo#110841]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][42] ([fdo#110854]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][44] ([i915#470] / [i915#472]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb2/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@vcs1:
    - shard-iclb:         [SKIP][46] ([fdo#112080]) -> [PASS][47] +8 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@gem_exec_parallel@vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb4/igt@gem_exec_parallel@vcs1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][48] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][50] ([fdo#111677] / [i915#472]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][52] ([fdo#112146]) -> [PASS][53] +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][54] ([fdo#109276]) -> [PASS][55] +21 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][56] ([fdo#112271]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][58] ([i915#472] / [i915#707]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_sync@basic-each.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb7/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][60] ([i915#472]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb5/igt@gem_sync@basic-store-all.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb4/igt@gem_sync@basic-store-all.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][62] ([i915#109]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +5 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][66] ([i915#79]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [FAIL][68] ([i915#49]) -> [PASS][69] +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][70] ([fdo#108145]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][72] ([i915#173]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@kms_psr@no_drrs.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][74] ([fdo#109441]) -> [PASS][75] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@kms_psr@psr2_dpms.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-wait-idle-hang:
    - shard-hsw:          [DMESG-WARN][78] ([i915#44]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw5/igt@kms_vblank@pipe-c-wait-idle-hang.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-hsw2/igt@kms_vblank@pipe-c-wait-idle-hang.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][80] ([fdo#112080]) -> [SKIP][81] ([fdo#111912] / [fdo#112080])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb8/igt@gem_ctx_isolation@vcs2-none.html

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][82] ([fdo#111912] / [fdo#112080]) -> [SKIP][83] ([fdo#112080])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][84] ([i915#454]) -> [SKIP][85] ([i915#468])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-fencing:
    - shard-tglb:         [SKIP][86] ([fdo#112016] / [fdo#112021]) -> [SKIP][87] ([fdo#112021])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions-fencing.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-fencing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][88] ([fdo#107724]) -> [SKIP][89] ([fdo#109349])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7735 -> Patchwork_16079

  CI-20190529: 20190529
  CI_DRM_7735: 3093622134384342d2ce121a0ed2ada29423e762 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16079: bc9f30292a19b3867b3e94640a95c0809c9ea21d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16079/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
