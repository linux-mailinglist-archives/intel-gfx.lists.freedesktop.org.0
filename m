Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A069E16F29B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 23:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799C66E231;
	Tue, 25 Feb 2020 22:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07F056E231;
 Tue, 25 Feb 2020 22:31:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBDB0A0009;
 Tue, 25 Feb 2020 22:31:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 25 Feb 2020 22:31:43 -0000
Message-ID: <158266990393.767.17643666253547024398@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224120828.22105-1-jani.nikula@intel.com>
In-Reply-To: <20200224120828.22105-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_split_intel=5Fmodeset=5Finit=28=29_to_pre/post_irq_ins?=
 =?utf-8?q?tall?=
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

Series: drm/i915: split intel_modeset_init() to pre/post irq install
URL   : https://patchwork.freedesktop.org/series/73849/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7997_full -> Patchwork_16686_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16686_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#570] / [i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-glk3/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-glk2/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +13 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb8/igt@gem_exec_schedule@preempt-self-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb4/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-skl5/igt@gem_workarounds@suspend-resume-fd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-skl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#72])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-apl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#699])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-skl9/igt@kms_flip_tiling@flip-y-tiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-skl7/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#173])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb2/igt@kms_psr@no_drrs.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb1/igt@kms_psr@psr2_dpms.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276]) +20 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb7/igt@prime_busy@hang-bsd2.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-tglb:         [PASS][35] -> [TIMEOUT][36] ([fdo#112271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-tglb7/igt@sw_sync@sync_multi_producer_single_consumer.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-tglb6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +11 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [DMESG-FAIL][47] ([i915#1233]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-tglb2/igt@i915_selftest@live_gt_lrc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-tglb5/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@mock_buddy:
    - shard-skl:          [INCOMPLETE][49] ([i915#1310]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-skl5/igt@i915_selftest@mock_buddy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-skl2/igt@i915_selftest@mock_buddy.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-glk:          [FAIL][51] ([i915#34]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][55] ([i915#34]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [SKIP][57] ([i915#668]) -> [PASS][58] +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-iclb4/igt@kms_psr@psr2_basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-glk2/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-glk4/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-snb:          [INCOMPLETE][69] ([i915#82]) -> [SKIP][70] ([fdo#109271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-snb4/igt@i915_pm_rpm@legacy-planes-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-snb4/igt@i915_pm_rpm@legacy-planes-dpms.html

  * igt@i915_pm_rpm@pm-caching:
    - shard-snb:          [SKIP][71] ([fdo#109271]) -> [INCOMPLETE][72] ([i915#82])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-snb6/igt@i915_pm_rpm@pm-caching.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-snb2/igt@i915_pm_rpm@pm-caching.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][73] ([fdo#112271] / [i915#727]) -> [TIMEOUT][74] ([fdo#112271])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7997/shard-kbl2/igt@kms_content_protection@atomic-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1310]: https://gitlab.freedesktop.org/drm/intel/issues/1310
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7997 -> Patchwork_16686

  CI-20190529: 20190529
  CI_DRM_7997: 3d3098d1384ee777baa141f69112669fed5ea90e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16686: 8af6978ef20bd1afa0234aabd96d9bd64e476758 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16686/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
