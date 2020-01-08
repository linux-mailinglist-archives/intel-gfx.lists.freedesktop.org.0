Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F68133D10
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 09:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D816E876;
	Wed,  8 Jan 2020 08:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52DAB6E872;
 Wed,  8 Jan 2020 08:26:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A765A47DC;
 Wed,  8 Jan 2020 08:26:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jan 2020 08:26:51 -0000
Message-ID: <157847201129.23227.14365253957453142705@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200107154407.3308936-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200107154407.3308936-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Pin_the_context_as_we_work_on_it?=
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

Series: drm/i915: Pin the context as we work on it
URL   : https://patchwork.freedesktop.org/series/71700/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7696_full -> Patchwork_16017_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16017_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16017_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16017_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@enable-disable:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb4/igt@perf@enable-disable.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb3/igt@perf@enable-disable.html
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-kbl3/igt@perf@enable-disable.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl2/igt@perf@enable-disable.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-skl5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-skl8/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-apl6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-apl1/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-glk3/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-glk7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb7/igt@perf@oa-exponents.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb4/igt@perf@oa-exponents.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][13], [FAIL][14], [FAIL][15]) ([fdo#111732])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl2/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl4/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          NOTRUN -> ([FAIL][16], [FAIL][17], [FAIL][18]) ([fdo#111732])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-apl1/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-apl3/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-apl6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16017_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-apl3/igt@gem_ctx_isolation@rcs0-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276] / [fdo#112080]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111593] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb7/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb9/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472] / [i915#476])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb5/igt@gem_exec_parallel@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb9/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +12 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([fdo#111677] / [i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112146]) +7 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#460] / [i915#472])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb2/igt@gem_exec_suspend@basic-s4-devices.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-tglb:         [PASS][35] -> [TIMEOUT][36] ([fdo#112126] / [i915#530])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][37] -> [FAIL][38] ([i915#520])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#644])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#472] / [i915#707])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb1/igt@gem_sync@basic-many-each.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb9/igt@gem_sync@basic-many-each.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#413])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb2/igt@i915_pm_rps@reset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb7/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_execlists:
    - shard-kbl:          [PASS][45] -> [INCOMPLETE][46] ([fdo#103665] / [fdo#112175] / [fdo#112259])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-kbl2/igt@i915_selftest@live_execlists.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl2/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - shard-tglb:         [PASS][47] -> [INCOMPLETE][48] ([i915#455])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb2/igt@i915_selftest@live_gem_contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb5/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-kbl3/igt@i915_suspend@forcewake.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][51] -> [DMESG-WARN][52] ([i915#109])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#54])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [PASS][55] -> [INCOMPLETE][56] ([i915#140])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb1/igt@kms_fbcon_fbt@psr-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#79])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#699])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-skl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-snb:          [PASS][61] -> [SKIP][62] ([fdo#109271]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#49]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([fdo#108145]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb7/igt@kms_psr@psr2_suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109276]) +16 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +10 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][73] ([fdo#109276] / [fdo#112080]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][75] ([fdo#111735]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][77] ([fdo#111736] / [i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb4/igt@gem_exec_await@wide-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb5/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][79] ([fdo#109276]) -> [PASS][80] +21 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [INCOMPLETE][81] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb8/igt@gem_exec_schedule@preempt-queue-render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb2/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@preemptive-hang-render:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-kbl2/igt@gem_exec_schedule@preemptive-hang-render.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl4/igt@gem_exec_schedule@preemptive-hang-render.html
    - shard-apl:          [INCOMPLETE][85] ([fdo#103927]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-apl3/igt@gem_exec_schedule@preemptive-hang-render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-apl4/igt@gem_exec_schedule@preemptive-hang-render.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][87] ([fdo#112146]) -> [PASS][88] +8 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [INCOMPLETE][89] ([fdo#109100] / [i915#140] / [i915#530]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb8/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][91] ([i915#470] / [i915#475]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb4/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][93] ([i915#644]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-iclb:         [INCOMPLETE][95] ([fdo#109100] / [i915#140]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb3/igt@gem_softpin@noreloc-s3.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][97] ([i915#470] / [i915#472]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb6/igt@gem_sync@basic-all.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb7/igt@gem_sync@basic-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][99] ([i915#454]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][101] ([i915#109]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [FAIL][105] ([i915#34]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][109] ([i915#49]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [INCOMPLETE][113] ([i915#435] / [i915#472]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb8/igt@perf_pmu@enable-race-vcs1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb1/igt@perf_pmu@enable-race-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][115] ([fdo#109276] / [fdo#112080]) -> [FAIL][116] ([IGT#28])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][117] ([fdo#112080]) -> [SKIP][118] ([fdo#111912] / [fdo#112080])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb6/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][119] ([fdo#111912] / [fdo#112080]) -> [SKIP][120] ([fdo#112080]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb5/igt@gem_ctx_isolation@vcs2-reset.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][121] ([i915#468]) -> [FAIL][122] ([i915#454])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7696/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7696 -> Patchwork_16017

  CI-20190529: 20190529
  CI_DRM_7696: 2333c946e97c61a7bc60a56b180f76638adfc312 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16017: 35325e0a23376298eb20a8aad287b58f40178ba1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16017/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
