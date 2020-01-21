Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6623E1434E1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 01:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829D06E153;
	Tue, 21 Jan 2020 00:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B04F86E138;
 Tue, 21 Jan 2020 00:52:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6D6FA0138;
 Tue, 21 Jan 2020 00:52:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 00:52:25 -0000
Message-ID: <157956794565.11481.300516309101801082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200119135558.3943738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200119135558.3943738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Acquire_ce-=3Eactive?=
 =?utf-8?q?_before_ce-=3Epin=5Fcount/ce-=3Epin=5Fmutex?=
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

Series: series starting with [1/2] drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
URL   : https://patchwork.freedesktop.org/series/72249/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7772_full -> Patchwork_16168_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16168_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][9] -> [TIMEOUT][10] ([fdo#112271] / [i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#520])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-apl:          [PASS][13] -> [INCOMPLETE][14] ([CI#80] / [fdo#103927])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl1/igt@gem_persistent_relocs@forked-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-apl3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-glk5/igt@gen9_exec_parse@allowed-all.html
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#716])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#454])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][21] -> [DMESG-FAIL][22] ([i915#553] / [i915#725])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-hsw7/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@mock_requests:
    - shard-iclb:         [PASS][23] -> [INCOMPLETE][24] ([i915#140])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb1/igt@i915_selftest@mock_requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb8/igt@i915_selftest@mock_requests.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl6/igt@i915_suspend@debugfs-reader.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-apl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +15 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#110841]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +15 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +6 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-hsw:          [TIMEOUT][49] ([fdo#112271] / [i915#530]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-hsw2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [INCOMPLETE][51] ([fdo#103665] / [i915#530]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-kbl7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [TIMEOUT][53] ([fdo#112271] / [i915#530]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][57] ([i915#69]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-skl6/igt@gem_softpin@noreloc-s3.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][59] ([i915#694]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-hsw8/igt@gen7_exec_parse@basic-offset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-hsw5/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][61] ([i915#82]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb5/igt@i915_selftest@mock_requests.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-snb5/igt@i915_selftest@mock_requests.html
    - shard-glk:          [INCOMPLETE][63] ([i915#58] / [k.org#198133]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk7/igt@i915_selftest@mock_requests.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-glk8/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +7 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][67] ([i915#221]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_lease@cursor_implicit_plane:
    - shard-snb:          [SKIP][69] ([fdo#109271]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb2/igt@kms_lease@cursor_implicit_plane.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-snb1/igt@kms_lease@cursor_implicit_plane.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +5 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][77] ([fdo#109276] / [fdo#112080]) -> [FAIL][78] ([IGT#28])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][79], [FAIL][80]) ([i915#997]) -> ([FAIL][81], [FAIL][82], [FAIL][83]) ([i915#716] / [i915#997])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl7/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl7/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-kbl6/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-kbl2/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-kbl2/igt@runner@aborted.html
    - shard-glk:          [FAIL][84] ([i915#873] / [k.org#202321]) -> ([FAIL][85], [FAIL][86]) ([i915#997] / [k.org#202321])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-glk5/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/shard-glk2/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7772 -> Patchwork_16168

  CI-20190529: 20190529
  CI_DRM_7772: f65c394056d8637ff151fa83d5d1613adc0932d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16168: d9228769075ac40a8364a750bf2d75ae70089e0e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
