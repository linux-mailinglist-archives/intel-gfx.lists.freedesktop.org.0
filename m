Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F6616FC1F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:26:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E92116E252;
	Wed, 26 Feb 2020 10:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D94E76E252;
 Wed, 26 Feb 2020 10:26:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF380A363D;
 Wed, 26 Feb 2020 10:26:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 26 Feb 2020 10:26:40 -0000
Message-ID: <158271280088.21010.15028366178053147125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200201082834.10163-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200201082834.10163-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F1606054188=3Atgl_=28rev3=29?=
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

Series: drm/i915/tgl: Add Wa_1606054188:tgl (rev3)
URL   : https://patchwork.freedesktop.org/series/72839/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8000_full -> Patchwork_16695_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16695_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112146]) +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +16 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#96])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-apl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#221])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-snb:          [PASS][13] -> [SKIP][14] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-snb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#49])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb6/igt@kms_psr@psr2_no_drrs.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112080]) +10 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-apl7/igt@gem_ctx_isolation@bcs0-s3.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
    - shard-skl:          [FAIL][27] ([i915#679]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [INCOMPLETE][29] ([i915#1239]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#110841]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd2}:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@dpms-vs-vblank-race:
    - shard-apl:          [INCOMPLETE][41] ([fdo#103927]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-apl3/igt@kms_flip@dpms-vs-vblank-race.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-apl8/igt@kms_flip@dpms-vs-vblank-race.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][45] ([i915#61]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-hsw5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-skl:          [FAIL][47] ([i915#699]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-skl2/igt@kms_flip_tiling@flip-y-tiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-skl2/igt@kms_flip_tiling@flip-y-tiled.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +16 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +18 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb1/igt@prime_busy@hang-bsd2.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-iclb:         [TIMEOUT][57] ([fdo#112271]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb6/igt@sw_sync@sync_multi_producer_single_consumer.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb5/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [FAIL][60] ([IGT#28])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-x:
    - shard-iclb:         [TIMEOUT][61] ([fdo#112271]) -> [TIMEOUT][62] ([fdo#112271] / [i915#1321]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-iclb4/igt@gem_fence_thrash@bo-write-verify-threaded-x.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-iclb3/igt@gem_fence_thrash@bo-write-verify-threaded-x.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-y:
    - shard-skl:          [TIMEOUT][63] ([fdo#112271]) -> [TIMEOUT][64] ([fdo#112271] / [i915#1321]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-skl7/igt@gem_fence_thrash@bo-write-verify-threaded-y.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-skl7/igt@gem_fence_thrash@bo-write-verify-threaded-y.html

  * igt@gem_linear_blits@interruptible:
    - shard-apl:          [TIMEOUT][65] ([fdo#112271]) -> [TIMEOUT][66] ([fdo#112271] / [i915#1322])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-apl4/igt@gem_linear_blits@interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-apl1/igt@gem_linear_blits@interruptible.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [INCOMPLETE][67] ([i915#58] / [k.org#198133]) -> [DMESG-WARN][68] ([i915#716])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][69] ([fdo#112271] / [i915#1319] / [i915#727]) -> [TIMEOUT][70] ([fdo#112271] / [i915#1319])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-kbl2/igt@kms_content_protection@atomic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][71] ([fdo#112271] / [i915#1319]) -> [FAIL][72] ([fdo#110321] / [fdo#110336])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8000/shard-apl3/igt@kms_content_protection@legacy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/shard-apl8/igt@kms_content_protection@legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1321]: https://gitlab.freedesktop.org/drm/intel/issues/1321
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8000 -> Patchwork_16695

  CI-20190529: 20190529
  CI_DRM_8000: e231691d89abd1b3fff01e75f142e435b44b522f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16695: e991932d7a0ddafc06838a359da645e28d3b0091 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16695/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
