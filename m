Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 698BB14A624
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 15:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE2B6EBC6;
	Mon, 27 Jan 2020 14:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 477446EBC2;
 Mon, 27 Jan 2020 14:30:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 426E5A0003;
 Mon, 27 Jan 2020 14:30:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 27 Jan 2020 14:30:49 -0000
Message-ID: <158013544926.9687.15697239163453074303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124195351.534551-1-matthew.d.roper@intel.com>
In-Reply-To: <20200124195351.534551-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Suppress_DC5/DC6_around_DSB_usage_=28rev2=29?=
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

Series: drm/i915/tgl: Suppress DC5/DC6 around DSB usage (rev2)
URL   : https://patchwork.freedesktop.org/series/72549/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7811_full -> Patchwork_16265_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16265_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16265_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16265_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  
#### Warnings ####

  * igt@kms_prime@basic-crc:
    - shard-skl:          [FAIL][3] ([i915#1031]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl10/igt@kms_prime@basic-crc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl3/igt@kms_prime@basic-crc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16265_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-apl7/igt@gem_ctx_isolation@vecs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-apl1/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#58] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#300])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-legacy:
    - shard-snb:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-snb1/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-snb6/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#52] / [i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-apl3/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-apl4/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-kbl2/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112080]) +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb1/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb3/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109276]) +20 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb5/igt@prime_busy@hang-bsd2.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][39] -> [FAIL][40] ([i915#831])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +8 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb7/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +16 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [INCOMPLETE][51] ([i915#61]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][55] ([i915#454]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [DMESG-WARN][57] ([i915#109]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl4/igt@kms_color@pipe-a-ctm-negative.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl2/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-size-change:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-size-change.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][65] ([i915#69]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][71] ([fdo#109642] / [fdo#111068]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][73] ([i915#173]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb1/igt@kms_psr@no_drrs.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][77] ([IGT#28]) -> [SKIP][78] ([fdo#109276] / [fdo#112080])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][79] ([i915#694]) -> [FAIL][80] ([i915#818])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1031]: https://gitlab.freedesktop.org/drm/intel/issues/1031
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7811 -> Patchwork_16265

  CI-20190529: 20190529
  CI_DRM_7811: f528982f5c837f075e82ca544df010ca5183064a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5384: fd6896567f7d612c76207970376d4f1e634ded55 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16265: cec46fed27c6321f2319a248dd20e8de7f01ad39 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16265/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
