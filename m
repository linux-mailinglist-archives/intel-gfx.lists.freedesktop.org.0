Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F18F143476
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 00:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448886E8AA;
	Mon, 20 Jan 2020 23:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B2456E113;
 Mon, 20 Jan 2020 23:32:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02B06A363B;
 Mon, 20 Jan 2020 23:32:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 23:32:07 -0000
Message-ID: <157956312798.680.15697134901371852604@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200118212903.3606443-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200118212903.3606443-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/2=5D_drm/i915/gem=3A_Convert_vm_id?=
 =?utf-8?q?r_to_xarray?=
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

Series: series starting with [RFC,1/2] drm/i915/gem: Convert vm idr to xarray
URL   : https://patchwork.freedesktop.org/series/72240/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7772_full -> Patchwork_16166_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16166_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16166_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16166_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-hsw5/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16166_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][2] -> [DMESG-WARN][3] ([i915#180]) +4 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl1/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-skl8/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +7 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_parallel@bcs0-fds:
    - shard-hsw:          [PASS][8] -> [TIMEOUT][9] ([fdo#112271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-hsw7/igt@gem_exec_parallel@bcs0-fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-hsw5/igt@gem_exec_parallel@bcs0-fds.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112080]) +10 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][14] -> [INCOMPLETE][15] ([fdo#103927] / [i915#530])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
    - shard-kbl:          [PASS][16] -> [TIMEOUT][17] ([fdo#112271] / [i915#530]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#644])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#716])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-glk7/igt@gen9_exec_parse@allowed-all.html
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#716])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-iclb:         [PASS][24] -> [DMESG-WARN][25] ([fdo#111764])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb3/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#413])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@i915_pm_rps@reset.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_requests:
    - shard-kbl:          [PASS][28] -> [INCOMPLETE][29] ([fdo#103665])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl4/igt@i915_selftest@mock_requests.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl4/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#109]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl4/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-skl2/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#79]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#265])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109642] / [fdo#111068])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][40] -> [FAIL][41] ([i915#173])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@kms_psr@no_drrs.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109276]) +17 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-hostile:
    - shard-iclb:         [SKIP][46] ([fdo#109276] / [fdo#112080]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb5/igt@gem_ctx_persistence@vcs1-hostile.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb2/igt@gem_ctx_persistence@vcs1-hostile.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][48] ([fdo#110841]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][50] ([i915#677]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-iclb:         [SKIP][52] ([fdo#109276]) -> [PASS][53] +10 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb8/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb2/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-hsw:          [TIMEOUT][56] ([fdo#112271] / [i915#530]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-hsw2/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [INCOMPLETE][58] ([fdo#103665] / [i915#530]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][62] ([i915#454]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [INCOMPLETE][64] ([fdo#103665] / [i915#151]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl6/igt@i915_pm_rpm@system-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl7/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [INCOMPLETE][66] ([i915#82]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb5/igt@i915_selftest@mock_requests.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-snb4/igt@i915_selftest@mock_requests.html
    - shard-skl:          [INCOMPLETE][68] ([i915#198]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl7/igt@i915_selftest@mock_requests.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-skl2/igt@i915_selftest@mock_requests.html
    - shard-glk:          [INCOMPLETE][70] ([i915#58] / [k.org#198133]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk7/igt@i915_selftest@mock_requests.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-glk8/igt@i915_selftest@mock_requests.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][72] ([i915#221]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-skl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_lease@cursor_implicit_plane:
    - shard-snb:          [SKIP][74] ([fdo#109271]) -> [PASS][75] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-snb2/igt@kms_lease@cursor_implicit_plane.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-snb2/igt@kms_lease@cursor_implicit_plane.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +7 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][80] ([i915#31]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl2/igt@kms_setmode@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@idle-vcs1:
    - shard-iclb:         [SKIP][82] ([fdo#112080]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb6/igt@perf_pmu@idle-vcs1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb2/igt@perf_pmu@idle-vcs1.html

  
#### Warnings ####

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [TIMEOUT][84] ([fdo#112271] / [i915#530]) -> [INCOMPLETE][85] ([CI#80] / [fdo#103927] / [i915#530])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][86] ([fdo#109349]) -> [DMESG-WARN][87] ([fdo#107724])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][88], [FAIL][89]) ([i915#997]) -> ([FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93]) ([fdo#103665] / [i915#716] / [i915#873] / [i915#997])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-kbl7/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl4/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl7/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-kbl3/igt@runner@aborted.html
    - shard-glk:          [FAIL][94] ([i915#873] / [k.org#202321]) -> ([FAIL][95], [FAIL][96], [FAIL][97]) ([i915#997] / [k.org#202321])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-glk7/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-glk9/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-glk7/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-glk9/igt@runner@aborted.html
    - shard-skl:          ([FAIL][98], [FAIL][99], [FAIL][100]) ([i915#69] / [i915#873] / [i915#997]) -> ([FAIL][101], [FAIL][102]) ([i915#69] / [i915#997])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl10/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl8/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/shard-skl7/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-skl5/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/shard-skl6/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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
  * Linux: CI_DRM_7772 -> Patchwork_16166

  CI-20190529: 20190529
  CI_DRM_7772: f65c394056d8637ff151fa83d5d1613adc0932d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16166: f9aa20565ce1008169c28802307c9dbd448a556e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16166/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
