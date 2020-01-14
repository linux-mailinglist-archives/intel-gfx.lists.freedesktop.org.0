Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F6913B1A8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 19:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 120AC6E433;
	Tue, 14 Jan 2020 18:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21BA36E433;
 Tue, 14 Jan 2020 18:07:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1824DA00C7;
 Tue, 14 Jan 2020 18:07:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Tue, 14 Jan 2020 18:07:01 -0000
Message-ID: <157902522109.24909.16847114979591871581@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110222723.14724-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200110222723.14724-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_ops_to_intel=5Fuc_=28rev4=29?=
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

Series: Add ops to intel_uc (rev4)
URL   : https://patchwork.freedesktop.org/series/70716/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7721_full -> Patchwork_16061_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16061_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +16 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111735]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb6/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][11] -> [INCOMPLETE][12] ([i915#58] / [k.org#198133])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-glk8/igt@gem_exec_create@forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-glk9/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +18 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#460] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb1/igt@gem_exec_suspend@basic-s4-devices.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb8/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#454])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl7/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#118] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-glk7/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#69])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl2/igt@i915_suspend@fence-restore-untiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][39] -> [INCOMPLETE][40] ([i915#140] / [i915#249])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb2/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][41] -> [FAIL][42] ([i915#173])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@kms_psr@no_drrs.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@prime_vgem@sync-render:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#409])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb1/igt@prime_vgem@sync-render.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb3/igt@prime_vgem@sync-render.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb2/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111735]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [FAIL][53] ([i915#490]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb4/igt@gem_eio@in-flight-1us.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-snb2/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#108838] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_exec_create@forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb1/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][57] ([i915#472] / [i915#476]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_exec_parallel@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb5/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +10 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][63] ([i915#677]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111677] / [i915#472]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][69] ([i915#472] / [i915#707]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][71] ([fdo#112271] / [i915#530]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][73] ([i915#520]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][75] ([i915#707] / [i915#796]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][77] ([i915#470] / [i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_sync@basic-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb2/igt@gem_sync@basic-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [DMESG-WARN][79] ([i915#716]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-kbl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][81] ([i915#39]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@i915_pm_rps@min-max-config-loaded.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-apl6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][83] ([i915#413]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@i915_pm_rps@reset.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb4/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][87] ([i915#221]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][91] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][93] ([fdo#108145]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][95] ([fdo#108145] / [i915#265]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@kms_psr@psr2_basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl6/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-apl4/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][101] ([fdo#109276]) -> [PASS][102] +24 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][103] ([fdo#111912] / [fdo#112080]) -> [SKIP][104] ([fdo#112080])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][105] ([i915#694]) -> [INCOMPLETE][106] ([i915#61])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw2/igt@gem_tiled_blits@normal.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][107] ([i915#454]) -> [SKIP][108] ([i915#468])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][109], [FAIL][110]) ([i915#716] / [i915#974]) -> [FAIL][111] ([i915#974])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-kbl7/igt@runner@aborted.html
    - shard-tglb:         [FAIL][112] ([i915#584]) -> ([FAIL][113], [FAIL][114]) ([i915#409] / [i915#584])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb1/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb3/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/shard-tglb5/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#249]: https://gitlab.freedesktop.org/drm/intel/issues/249
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#584]: https://gitlab.freedesktop.org/drm/intel/issues/584
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7721 -> Patchwork_16061

  CI-20190529: 20190529
  CI_DRM_7721: 3a2436c56fcf2d133d701a112eb1e0dfce0b846d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16061: ab06f9906171849a5fc250a85df38475c9058094 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16061/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
