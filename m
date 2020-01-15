Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCD113D094
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 00:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A98B26E113;
	Wed, 15 Jan 2020 23:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABB6C6E0DB;
 Wed, 15 Jan 2020 23:13:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2E5BA47E0;
 Wed, 15 Jan 2020 23:13:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhang Xiaoxu" <zhangxiaoxu5@huawei.com>
Date: Wed, 15 Jan 2020 23:13:55 -0000
Message-ID: <157913003563.2010.7588520030809313973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113081942.15982-1-zhangxiaoxu5@huawei.com>
In-Reply-To: <20200113081942.15982-1-zhangxiaoxu5@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_too_few_arguments_to_function_i915=5Fcapture=5Ferr?=
 =?utf-8?q?or=5Fstate?=
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

Series: drm/i915: Fix too few arguments to function i915_capture_error_state
URL   : https://patchwork.freedesktop.org/series/71974/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7735_full -> Patchwork_16081_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16081_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16081_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16081_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-hsw5/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16081_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [PASS][2] -> [INCOMPLETE][3] ([i915#69])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@gem_ctx_isolation@vecs0-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-skl6/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl1/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-apl7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb3/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111735]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][10] -> [FAIL][11] ([i915#232])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-snb5/igt@gem_eio@reset-stress.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#472])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_exec_reuse@single.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb3/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276]) +10 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([i915#677])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-blt:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111606] / [fdo#111677] / [i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112146]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([fdo#111736] / [i915#460] / [i915#472])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb4/igt@gem_exec_suspend@basic-s3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb6/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][24] -> [TIMEOUT][25] ([fdo#112271] / [i915#530])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-glk4/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl4/igt@i915_suspend@forcewake.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-iclb:         [PASS][32] -> [DMESG-WARN][33] ([fdo#111764])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@kms_flip@flip-vs-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#49]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#265]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109441]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb3/igt@kms_psr@psr2_suspend.html

  * igt@perf@disabled-read-error:
    - shard-iclb:         [PASS][40] -> [DMESG-WARN][41] ([i915#645])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@perf@disabled-read-error.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb8/igt@perf@disabled-read-error.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#112080]) +11 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [INCOMPLETE][44] ([fdo#111735]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_ctx_create@basic-files.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb2/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][46] ([fdo#109276] / [fdo#112080]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][48] ([fdo#110841]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][50] ([fdo#111736] / [i915#472]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_exec_balancer@nop.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb5/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][52] ([i915#472]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_exec_nop@basic-series.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb7/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][54] ([i915#470] / [i915#472]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb4/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][56] ([fdo#112146]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_exec_schedule@deep-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb3/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][58] ([fdo#109276]) -> [PASS][59] +8 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][60] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][62] ([fdo#111677] / [i915#472]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][64] ([fdo#112271]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][66] ([i915#707] / [i915#796]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_pipe_control_store_loop@reused-buffer.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][68] ([i915#472] / [i915#707]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_sync@basic-each.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][70] ([i915#109]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +4 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff:
    - shard-tglb:         [FAIL][76] ([i915#49]) -> [PASS][77] +4 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][78] ([i915#69]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][80] ([i915#173]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@kms_psr@no_drrs.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb2/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][82] ([fdo#109441]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-c-wait-idle-hang:
    - shard-hsw:          [DMESG-WARN][84] ([i915#44]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw5/igt@kms_vblank@pipe-c-wait-idle-hang.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-hsw2/igt@kms_vblank@pipe-c-wait-idle-hang.html

  * igt@perf_pmu@semaphore-wait-idle-vcs1:
    - shard-iclb:         [SKIP][86] ([fdo#112080]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@perf_pmu@semaphore-wait-idle-vcs1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb4/igt@perf_pmu@semaphore-wait-idle-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][88] ([IGT#28]) -> [SKIP][89] ([fdo#109276] / [fdo#112080])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][90] ([fdo#112080]) -> [SKIP][91] ([fdo#111912] / [fdo#112080]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb2/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][92] ([i915#694]) -> [FAIL][93] ([i915#818])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw7/igt@gem_tiled_blits@normal.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][94] ([i915#454]) -> [SKIP][95] ([i915#468]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][96] ([fdo#112021]) -> [SKIP][97] ([fdo#112016] / [fdo#112021])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-tglb2/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][98] ([fdo#107724]) -> [SKIP][99] ([fdo#109349])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][100] ([i915#180]) -> [DMESG-WARN][101] ([i915#180] / [i915#56])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl3/igt@kms_flip@flip-vs-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/shard-kbl3/igt@kms_flip@flip-vs-suspend.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#645]: https://gitlab.freedesktop.org/drm/intel/issues/645
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (12 -> 10)
------------------------------

  Missing    (2): pig-snb-2600 pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7735 -> Patchwork_16081

  CI-20190529: 20190529
  CI_DRM_7735: 3093622134384342d2ce121a0ed2ada29423e762 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16081: b29ce887f60e7c8018149e7c79f45a79a219e637 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16081/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
