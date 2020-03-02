Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7FA17516E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 01:52:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DCFB6E029;
	Mon,  2 Mar 2020 00:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B7446E029;
 Mon,  2 Mar 2020 00:52:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 411ACA3C0D;
 Mon,  2 Mar 2020 00:52:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Mon, 02 Mar 2020 00:52:20 -0000
Message-ID: <158311034023.30643.12393862295476683630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200229012042.27487-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200229012042.27487-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/huc=3A_update_TGL_HuC?=
 =?utf-8?q?_to_v7=2E0=2E12?=
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

Series: series starting with [CI,1/2] drm/i915/huc: update TGL HuC to v7.0.12
URL   : https://patchwork.freedesktop.org/series/74099/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8035_full -> Patchwork_16771_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16771_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16771_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16771_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@gem_exec_whisper@basic-contexts-priority.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb3/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-hsw:          [PASS][5] -> [TIMEOUT][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-skl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl8/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl3/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  
#### Warnings ####

  * igt@kms_atomic_transition@2x-modeset-transitions-nonblocking:
    - shard-iclb:         [SKIP][9] ([fdo#109280]) -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb3/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb2/igt@kms_atomic_transition@2x-modeset-transitions-nonblocking.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-hsw:          [SKIP][11] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@kms_chamelium@dp-audio-edid.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw7/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_psr@primary_blt:
    - shard-hsw:          [SKIP][13] ([fdo#109271]) -> [TIMEOUT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@kms_psr@primary_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw7/igt@kms_psr@primary_blt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@perf@stress-open-close}:
    - shard-hsw:          [PASS][15] -> [TIMEOUT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@perf@stress-open-close.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw7/igt@perf@stress-open-close.html

  
Known issues
------------

  Here are the changes found in Patchwork_16771_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@wait-immediate:
    - shard-hsw:          [PASS][17] -> [TIMEOUT][18] ([i915#1084])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@gem_eio@wait-immediate.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw7/igt@gem_eio@wait-immediate.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276] / [i915#677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +18 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([i915#677]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-vebox:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#859])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl2/igt@gem_exec_schedule@pi-distinct-iova-vebox.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-apl4/igt@gem_exec_schedule@pi-distinct-iova-vebox.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][29] -> [FAIL][30] ([i915#96])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#46])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#221])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][37] -> [INCOMPLETE][38] ([i915#61])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1188]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-hsw:          [PASS][41] -> [DMESG-WARN][42] ([IGT#6])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw7/igt@kms_plane@pixel-format-pipe-b-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw6/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145] / [i915#265]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#899])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#899])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#173])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb8/igt@kms_psr@no_drrs.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-tglb:         [PASS][55] -> [SKIP][56] ([i915#668]) +7 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb1/igt@kms_psr@psr2_sprite_blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-tglb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-kbl:          [PASS][57] -> [DMESG-FAIL][58] ([i915#1041] / [i915#95])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl7/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-kbl6/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#112080]) +10 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb3/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +16 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [FAIL][63] ([i915#679]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [FAIL][65] ([i915#679]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-skl:          [INCOMPLETE][67] ([i915#1239]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-tglb:         [INCOMPLETE][69] ([i915#1239]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-tglb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][71] ([fdo#110841]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][73] ([fdo#109276] / [i915#677]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][75] ([i915#677]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][79] ([fdo#109276]) -> [PASS][80] +21 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-iclb:         [INCOMPLETE][81] -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@gem_exec_whisper@basic-fds-forked.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][83] ([i915#644]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@gem-pread:
    - shard-skl:          [SKIP][87] ([fdo#109271]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl9/igt@i915_pm_rpm@gem-pread.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl8/igt@i915_pm_rpm@gem-pread.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [DMESG-WARN][89] ([i915#118] / [i915#95]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-glk9/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92] +8 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][93] ([IGT#5]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][95] ([i915#34]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-glk7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [SKIP][97] ([i915#668]) -> [PASS][98] +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][99] ([fdo#108145]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][101] ([IGT#6]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-common-vebox:
    - shard-hsw:          [SKIP][105] ([fdo#109271]) -> [TIMEOUT][106] ([i915#1084])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@gem_exec_schedule@pi-common-vebox.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-hsw7/igt@gem_exec_schedule@pi-common-vebox.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][107] ([i915#1226]) -> [SKIP][108] ([fdo#109349])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1041]: https://gitlab.freedesktop.org/drm/intel/issues/1041
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8035 -> Patchwork_16771

  CI-20190529: 20190529
  CI_DRM_8035: cacad502dcd40516c6a9be38ca3ef0c1288f4cf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16771: b61d7556aa264d94c60c6b5c00dfd80a47378d86 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
