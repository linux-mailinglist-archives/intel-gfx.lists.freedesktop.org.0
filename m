Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB41F14C24A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 22:45:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4B56E136;
	Tue, 28 Jan 2020 21:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AE006E136;
 Tue, 28 Jan 2020 21:44:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71C92A0003;
 Tue, 28 Jan 2020 21:44:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Tue, 28 Jan 2020 21:44:58 -0000
Message-ID: <158024789846.20537.15149704314774229662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124235440.15974-1-manasi.d.navare@intel.com>
In-Reply-To: <20200124235440.15974-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Modeset_only_the_tiled_connectors_with_CRTC_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/dp: Modeset only the tiled connectors with CRTC (rev2)
URL   : https://patchwork.freedesktop.org/series/72559/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7827_full -> Patchwork_16281_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16281_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb7/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_mmap_gtt@hang:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#82]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb6/igt@gem_mmap_gtt@hang.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-snb4/igt@gem_mmap_gtt@hang.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_render_copy_redux@interruptible:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#910])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@gem_render_copy_redux@interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-hsw5/igt@gem_render_copy_redux@interruptible.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#44])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@i915_pm_lpsp@screens-disabled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-hsw5/igt@i915_pm_lpsp@screens-disabled.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-hsw:          [PASS][21] -> [DMESG-FAIL][22] ([i915#152] / [i915#44])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-hsw5/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [fdo#112080]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#110841]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][39] ([i915#69]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-skl8/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +20 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][53] ([i915#447]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][55] ([i915#413]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][57] ([i915#553] / [i915#725]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@i915_selftest@live_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][59] ([i915#300]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][61] ([i915#221]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][67] ([fdo#109276] / [fdo#112080]) -> [FAIL][68] ([IGT#28]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [FAIL][69] ([i915#1045]) -> [DMESG-FAIL][70] ([i915#1045])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1045]: https://gitlab.freedesktop.org/drm/intel/issues/1045
  [i915#152]: https://gitlab.freedesktop.org/drm/intel/issues/152
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#910]: https://gitlab.freedesktop.org/drm/intel/issues/910


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7827 -> Patchwork_16281

  CI-20190529: 20190529
  CI_DRM_7827: c8969aeacfff681c83a800e82b0f18a6ab3e77ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5389: 966c58649dee31bb5bf2fad92f75ffd365968b81 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16281: 37497c9a2541d7074ea72436475569bdaacd2bea @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16281/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
