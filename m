Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AC015CAE2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 20:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712106F62F;
	Thu, 13 Feb 2020 19:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F00886F62D;
 Thu, 13 Feb 2020 19:04:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8A56A0118;
 Thu, 13 Feb 2020 19:04:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 13 Feb 2020 19:04:46 -0000
Message-ID: <158162068694.17959.14088348106667985015@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211150951.1026811-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200211150951.1026811-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Sabotague_the_RING=5FHEAD?=
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

Series: drm/i915/selftests: Sabotague the RING_HEAD
URL   : https://patchwork.freedesktop.org/series/73308/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7916_full -> Patchwork_16523_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16523_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_blits@basic:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2] ([fdo#103665])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-kbl3/igt@gem_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-kbl7/igt@gem_blits@basic.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-tglb1/igt@gem_exec_balancer@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-tglb8/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_color@pipe-c-ctm-max:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#168])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl2/igt@kms_color@pipe-c-ctm-max.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-skl3/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-kbl3/igt@kms_flip@flip-vs-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-kbl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [PASS][19] -> [SKIP][20] ([i915#668])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-hsw7/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-hsw2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +10 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb8/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +15 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@engines-mixed-process@vecs0}:
    - shard-iclb:         [FAIL][31] ([i915#679]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd}:
    - shard-skl:          [FAIL][33] ([i915#679]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1}:
    - shard-skl:          [INCOMPLETE][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
    - shard-tglb:         [FAIL][37] ([i915#679]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2}:
    - shard-tglb:         [INCOMPLETE][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-hsw:          [FAIL][45] ([i915#694]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-hsw8/igt@gem_partial_pwrite_pread@write-uncached.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-hsw7/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][49] ([i915#454]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb1/igt@i915_pm_rps@waitboost.html

  * igt@kms_busy@basic-modeset-pipe-b:
    - shard-snb:          [SKIP][53] ([fdo#109271]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-snb6/igt@kms_busy@basic-modeset-pipe-b.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-snb4/igt@kms_busy@basic-modeset-pipe-b.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-skl:          [FAIL][55] ([i915#54]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][57] ([i915#79]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][59] ([i915#79]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][61] ([i915#34]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][69] ([i915#31]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-glk8/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-glk8/igt@kms_setmode@basic.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][71] ([i915#831]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +16 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][75] ([i915#818]) -> [FAIL][76] ([i915#694])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-hsw7/igt@gem_tiled_blits@normal.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-hsw6/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_rpm@universal-planes:
    - shard-snb:          [SKIP][77] ([fdo#109271]) -> [INCOMPLETE][78] ([i915#82]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7916/shard-snb5/igt@i915_pm_rpm@universal-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/shard-snb5/igt@i915_pm_rpm@universal-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#168]: https://gitlab.freedesktop.org/drm/intel/issues/168
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7916 -> Patchwork_16523

  CI-20190529: 20190529
  CI_DRM_7916: 6006a0cd15fdd07655be7c06729dd60b5135e42f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5435: 2b6d4476dde53c363b8808ed9f0dd5547ac78641 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16523: 09052ae6cf11773a151f5638edd959b4132d6b4d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16523/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
