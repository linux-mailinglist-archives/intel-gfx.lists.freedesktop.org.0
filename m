Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6AB13D49C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 07:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A846EBF5;
	Thu, 16 Jan 2020 06:48:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F7536EBF5;
 Thu, 16 Jan 2020 06:48:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27D90A0118;
 Thu, 16 Jan 2020 06:48:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Thu, 16 Jan 2020 06:48:54 -0000
Message-ID: <157915733413.12914.7192055896299088500@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103000050.8223-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200103000050.8223-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Parse_the_I2C_element_from_the_VBT_MIPI_sequence_b?=
 =?utf-8?q?lock_=28rev4=29?=
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

Series: drm/i915/dsi: Parse the I2C element from the VBT MIPI sequence block (rev4)
URL   : https://patchwork.freedesktop.org/series/71581/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7737_full -> Patchwork_16086_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16086_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@gem_ctx_persistence@vcs1-cleanup.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb6/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][7] -> [FAIL][8] ([i915#490])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb4/igt@gem_exec_balancer@nop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb4/igt@gem_exec_nop@basic-series.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb1/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112080]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#151] / [i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-skl3/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#109]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-hsw:          [PASS][31] -> [DMESG-WARN][32] ([IGT#6])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-hsw7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-hsw7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#173])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@kms_psr@no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl1/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@enable-race-vcs0:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#472] / [i915#480])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb7/igt@perf_pmu@enable-race-vcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb5/igt@perf_pmu@enable-race-vcs0.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109276]) +13 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  * igt@prime_vgem@sync-render:
    - shard-tglb:         [PASS][47] -> [INCOMPLETE][48] ([i915#409])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb3/igt@prime_vgem@sync-render.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb8/igt@prime_vgem@sync-render.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][49] ([fdo#112080]) -> [PASS][50] +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-apl3/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [DMESG-WARN][55] ([fdo#111764]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb8/igt@gem_ctx_isolation@vecs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][57] ([i915#677]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +13 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111736] / [i915#460] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb3/igt@gem_exec_suspend@basic-s3.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-glk:          [TIMEOUT][65] ([fdo#112271] / [i915#530]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-glk9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_tiled_blits@normal:
    - shard-tglb:         [INCOMPLETE][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb2/igt@gem_tiled_blits@normal.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb4/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][69] ([i915#447]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][71] ([i915#413]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb6/igt@i915_pm_rps@reset.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb3/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][73] ([i915#109]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-skl7/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +7 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
    - shard-snb:          [SKIP][81] ([fdo#109271]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-snb1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145] / [i915#265]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][89] ([IGT#28]) -> [SKIP][90] ([fdo#109276] / [fdo#112080])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][91] ([i915#444]) -> [INCOMPLETE][92] ([i915#82])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb5/igt@gem_eio@kms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][93] ([i915#818]) -> [FAIL][94] ([i915#694]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-hsw2/igt@gem_tiled_blits@normal.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][95] ([i915#454]) -> [SKIP][96] ([i915#468])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-snb:          [SKIP][97] ([fdo#109271]) -> [INCOMPLETE][98] ([i915#82])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb4/igt@i915_pm_rpm@gem-execbuf-stress.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@kms_atomic_transition@3x-modeset-transitions-nonblocking:
    - shard-snb:          [SKIP][99] ([fdo#109271]) -> [SKIP][100] ([fdo#109271] / [i915#439])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb2/igt@kms_atomic_transition@3x-modeset-transitions-nonblocking.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-snb1/igt@kms_atomic_transition@3x-modeset-transitions-nonblocking.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][101] ([fdo#109349]) -> [DMESG-WARN][102] ([fdo#107724])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][103] ([i915#974]) -> ([FAIL][104], [FAIL][105]) ([i915#716] / [i915#974])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl3/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-kbl1/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-kbl1/igt@runner@aborted.html
    - shard-tglb:         [FAIL][106] ([i915#584]) -> ([FAIL][107], [FAIL][108]) ([i915#409] / [i915#584])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb6/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb8/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-tglb3/igt@runner@aborted.html
    - shard-snb:          ([FAIL][109], [FAIL][110]) ([i915#436] / [i915#974]) -> [FAIL][111] ([i915#974])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb5/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb1/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/shard-snb1/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#439]: https://gitlab.freedesktop.org/drm/intel/issues/439
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#480]: https://gitlab.freedesktop.org/drm/intel/issues/480
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#584]: https://gitlab.freedesktop.org/drm/intel/issues/584
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7737 -> Patchwork_16086

  CI-20190529: 20190529
  CI_DRM_7737: 2a331333791d2e499ac843e1dc25cd8ea5bdc81f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16086: b0cb0e2f41fc1cdfa12e5e26b43812746b140c47 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16086/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
