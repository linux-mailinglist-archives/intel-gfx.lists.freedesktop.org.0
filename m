Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50311558FD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 15:07:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277516EAB9;
	Fri,  7 Feb 2020 14:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D43C6EAB8;
 Fri,  7 Feb 2020 14:06:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66034A0118;
 Fri,  7 Feb 2020 14:06:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sharma, Shashank" <Shashank.Sharma@amd.com>
Date: Fri, 07 Feb 2020 14:06:57 -0000
Message-ID: <158108441738.8754.1144536741814847486@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205143854.10557-1-shawn.c.lee@intel.com>
In-Reply-To: <20200205143854.10557-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_require_bandwidth_did_not_exceed_LSPCON_limitati?=
 =?utf-8?b?b24gKHJldjYp?=
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

Series: drm/i915: Check require bandwidth did not exceed LSPCON limitation (rev6)
URL   : https://patchwork.freedesktop.org/series/72157/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7867_full -> Patchwork_16426_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16426_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_caching@reads:
    - shard-hsw:          [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw6/igt@gem_caching@reads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-hsw6/igt@gem_caching@reads.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb7/igt@gem_exec_async@concurrent-writes-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-tglb5/igt@gem_exec_balancer@hang.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +12 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#716])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#413])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@i915_pm_rps@reset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#56] / [i915#78])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-kbl4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-kbl2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#899])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#173])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb6/igt@kms_psr@no_drrs.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf@oa-exponents:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#84])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw8/igt@perf@oa-exponents.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-hsw2/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][31] ([fdo#110854]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][33] ([fdo#112146]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb3/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-hsw:          [FAIL][35] ([i915#694]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw7/igt@gem_partial_pwrite_pread@write-snoop.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-hsw4/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][37] ([i915#447]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][39] ([i915#725]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw8/igt@i915_selftest@live_blt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-hsw6/igt@i915_selftest@live_blt.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][41] ([i915#79]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-apl:          [FAIL][45] ([i915#34]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-apl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-apl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +13 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][51] ([i915#899]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb1/igt@kms_psr@psr2_basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-apl2/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-apl3/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][57] ([i915#31]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl3/igt@kms_setmode@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-skl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb8/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb1/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +15 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][63] ([i915#694]) -> [FAIL][64] ([i915#818])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-hsw4/igt@gem_tiled_blits@normal.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-iclb:         [SKIP][65] ([fdo#109278] / [fdo#112010]) -> [SKIP][66] ([fdo#109278] / [fdo#112010] / [i915#1149]) +9 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-iclb2/igt@kms_color@pipe-d-ctm-0-25.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-iclb2/igt@kms_color@pipe-d-ctm-0-25.html
    - shard-tglb:         [FAIL][67] ([i915#315]) -> [FAIL][68] ([i915#1149] / [i915#315])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-tglb7/igt@kms_color@pipe-d-ctm-0-25.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-tglb8/igt@kms_color@pipe-d-ctm-0-25.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [SKIP][69] ([CI#80] / [fdo#109271]) -> [SKIP][70] ([fdo#109271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112010]: https://bugs.freedesktop.org/show_bug.cgi?id=112010
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7867 -> Patchwork_16426

  CI-20190529: 20190529
  CI_DRM_7867: a4c409e48c6281538b1e375545dfb5989fa02063 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5418: 4028bd390b41925f6e26f6f11b31e05054652527 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16426: 2e67c0e852f6e0098bae5a86fd5783595512fe7c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16426/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
